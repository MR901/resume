#!/usr/bin/env ruby
# YAML Validation Script
# Checks all YAML files in _data directory for syntax errors

require 'yaml'

# Check if colorize gem is available, otherwise provide fallback
begin
  require 'colorize'
rescue LoadError
  class String
    [:red, :green, :yellow, :cyan, :bold].each do |method|
      define_method(method) { self }
    end
  end
  puts "Note: Install 'colorize' gem for colored output (gem install colorize)"
  puts ""
end

def validate_yaml_file(file_path)
  begin
    content = File.read(file_path)
    # Use safe_load to prevent arbitrary code execution
    YAML.safe_load(content, permitted_classes: [], permitted_symbols: [], aliases: true)
    puts "✓ #{file_path}".green
    return true
  rescue Psych::SyntaxError => e
    puts "✗ #{file_path}".red
    puts "  Error: #{e.message}".yellow
    puts "  Line: #{e.line}, Column: #{e.column}".yellow
    
    # Show context around the error
    lines = content.split("\n")
    error_line = e.line - 1
    
    puts "\n  Context:".cyan
    start_line = [error_line - 2, 0].max
    end_line = [error_line + 2, lines.length - 1].min
    
    (start_line..end_line).each do |i|
      prefix = i == error_line ? "→ " : "  "
      line_num = (i + 1).to_s.rjust(4)
      if i == error_line
        puts "#{prefix}#{line_num} | #{lines[i]}".red
      else
        puts "#{prefix}#{line_num} | #{lines[i]}"
      end
    end
    puts ""
    
    return false
  rescue => e
    puts "✗ #{file_path}".red
    puts "  Error: #{e.message}".yellow
    return false
  end
end

def main
  puts "="*60
  puts "YAML Validation Check".cyan.bold
  puts "="*60
  puts ""
  
  data_dir = File.join(Dir.pwd, '_data')
  
  unless Dir.exist?(data_dir)
    puts "Warning: _data directory not found".yellow
    return
  end
  
  yaml_files = Dir.glob(File.join(data_dir, '**', '*.{yml,yaml}'))
  
  if yaml_files.empty?
    puts "No YAML files found in _data directory".yellow
    return
  end
  
  puts "Found #{yaml_files.length} YAML file(s) to validate\n\n"
  
  results = yaml_files.map { |file| validate_yaml_file(file) }
  
  puts "\n" + "="*60
  
  if results.all?
    puts "✓ All YAML files are valid!".green.bold
    puts "="*60
    exit 0
  else
    failed_count = results.count(false)
    puts "✗ #{failed_count} file(s) failed validation".red.bold
    puts "="*60
    exit 1
  end
end

main if __FILE__ == $0

