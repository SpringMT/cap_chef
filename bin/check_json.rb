#!/usr/bin/env ruby
# encoding: UTF-8

require 'json'
require 'optparse'
require 'ap'

file_path = nil
opt = OptionParser.new ARGV
opt.on('-f file_path') {|f| file_path = f }
opt.parse!

val = IO.read file_path

ap JSON.parse(val)


