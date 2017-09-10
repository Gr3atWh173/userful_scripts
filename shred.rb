#!/usr/bin/env ruby

def shred(filename)
	size = File.size(filename)
	1.upto 10 do
		overwrite(filename, size)
	end
	overwrite_null(filename, size)
	delete(filename)
end

def overwrite(filename, size)
	f = File.open(filename, "w")

	0.upto size do 
		f.syswrite(random_charachter)
	end

	f.close
end

def overwrite_null(filename, size)
	f = File.open(filename, "w")

	0.upto size do
		f.syswrite("\0")
	end

	f.close
end

def random_charachter
	rand(0..127).chr
end

def delete(filename)
	File.unlink(filename)
end

if ARGV[0] == "" || ARGV[0].nil? then
	puts "Usage"
	exit
end

if File.file? ARGV[0] then shred(ARGV[0]) else puts "No such file." end
exit
