#!/usr/bin/env ruby

def help
	puts "USAGE: touch <filename>"
end

if ARGV[0] != nil
	filename = ARGV[0]
else
	help
	exit
end

if File.file? filename then
	# do nothing
else
	begin
		file = File.open(filename, "w")
	ensure
		file.close
	end
end