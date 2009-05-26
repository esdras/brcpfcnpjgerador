$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'brcpfcnpjgerador/brcpfcnpjgerador.rb'
require 'brcpfcnpj'

module Brcpfcnpjgerador
  VERSION = '0.1.1'
end
