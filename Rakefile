require 'fileutils'
require 'yaml'

task default: %w[build]

task :build do
    FileUtils.rm_rf('build')
    FileUtils.mkdir_p('build')
    `ruby ./build.rb > build/index.html`
    `sass "src/scss/styles.scss" "build/styles.css"`
end

task :add_word, [:word] do |t, args|
  word = args[:word]
  outfile = "entries/#{word}.yml"

  if word.nil? || word.empty?
    puts "word cannot be empty. Try `rake add_word[\"Pair Programming\"]`"
    exit 1
  end

  if File.file?(outfile)
    puts "File #{outfile} already exists."
    exit 1
  end

  template = <<-TEMP
---
headword: #{word}
expansion: 
definition:
links:
see_also:
TEMP

  File.open(outfile, 'w') { |f| f.write(template) }

  puts "New entry template created in #{outfile}"
end