#!/usr/bin/env ruby

require 'digest'

if ARGV[0].nil? then puts "No file given."; exit end
if ! File.file? ARGV[0] then puts "No such file."; exit end

md = Digest::MD5.file ARGV[0] 
puts md.hexdigest