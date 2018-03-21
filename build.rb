require 'yaml'
require 'erb'

entries = []
Dir.new('entries').each do |filename|
  if filename.end_with? '.yml'
    e = YAML.load_file("entries/#{filename}")
    entries << e
  end
end

entries = entries.sort_by { |e| e["headword"].downcase }

erb = ERB.new(File.read('src/erb/index.html.erb'))
erb.run()
# rendered = erb.run()

# File.open('build/index.html', 'w') { |f| f.write(rendered) }