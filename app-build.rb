require 'erb'
require 'active_support/all'

TextPath = ARGV.shift || "moby_dick.txt"
DestPath = ARGV.shift || "app-dist/test.html"
DestFolder = DestPath.split("/")[0..-2].join("/")

CSS = File.read "./app-source/index.css"
Script = File.read "./app-source/index.js"
Text = File.read TextPath

result = ERB.new(File.read "./app-source/index.html.erb").result binding

!DestFolder.blank? && `mkdir -p #{DestFolder}`
File.open(DestPath, 'w') { |f| f.write result }

puts "wrote #{result.count "\n"} lines to #{DestPath}"
