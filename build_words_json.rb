#!/usr/bin/env ruby

require 'yaml'
require 'json'

entries = {}
Dir.new('entries').each do |filename|
  if filename.end_with? '.yml'
    e = YAML.load_file("entries/#{filename}")
    entries[e['headword'].downcase] = e
  end
end

puts entries.to_json
