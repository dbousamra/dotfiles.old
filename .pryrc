require 'awesome_print'
require 'awesome_print/ext/active_record'
require 'awesome_print/ext/active_support'
Pry.print = proc { |output, value| output.puts value.ai }
