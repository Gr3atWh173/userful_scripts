#!/usr/bin/env ruby

require 'digest'

if ARGV[0].nil? then puts "File not given."; exit end
if ! File.file? ARGV[0] then puts "No such file."; exit end

sha1 = Digest::SHA1.file ARGV[0]
puts sha1.hexdigest
 