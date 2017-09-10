#!/usr/bin/env ruby

require 'digest'

if ARGV[0].nil? then puts "File not given."; exit end
if ! File.file? ARGV[0] then puts "No such file."; exit end

sha2 = Digest::SHA2.file ARGV[0]
puts sha2.hexdigest
 