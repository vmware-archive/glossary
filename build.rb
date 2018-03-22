require 'yaml'
require 'erb'

entries = []
Dir.new('entries').each do |filename|
  if filename.end_with? '.yml'
    e = YAML.load_file("entries/#{filename}")
    entries << e
  end
end

def blank(val)
  val.nil? || val.size == 0
end

repo_location = 'https://github.com/pivotal-cf/glossary'

needs_work = entries.select { |e| blank(e["expansion"]) && blank(e["definition"]) }

entries = entries.sort_by { |e| e["headword"].downcase }
entries = entries - needs_work

erb = ERB.new(File.read('src/erb/index.html.erb'))
erb.run()