require "adt/version"

require 'rubygems'
require 'date'
require 'active_support/all'

if RUBY_VERSION > '1.9'
 require 'csv'
 unless defined? FCSV
   class Object
     FCSV = CSV
     alias_method :FCSV, :CSV
   end
 end
else
 require 'fastercsv'
end

require 'adt/globals'
require 'adt/record'
require 'adt/column'
require 'adt/table'
