#!/usr/bin/env ruby

if ARGV[0] == nil then puts "No file supplied."; exit end
if ! File.file? ARGV[0] then puts "No such file."; exit end

str = IO.read(ARGV[0], :mode => 'rb')
inascii = %r{[A-Za-z0-9`~!@#%^&*()-_=+|'";:/?.>,< \t\$\{\}\[\]\\]{10,}}

str.scan(inascii).each do |m|
  puts m
end