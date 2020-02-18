$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
dir_total = 0 
i = 0 
x = 0 #directors 
while i < director_data[x][:movies][i].length do
dir_total += director_data[x][:movies][i][:worldwide_gross]  
i+=1
end 
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nil
end
