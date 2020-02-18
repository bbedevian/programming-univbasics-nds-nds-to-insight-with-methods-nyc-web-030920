$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
dir_total = 0 
i = 0 #movies 
while i < director_data[:movies].length do
dir_total += director_data[:movies][i][:worldwide_gross]  
i+=1
end 
dir_total 
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  i = 0 # director index
  while i < nds.length do
    dir_name = nds[i][:name]
    result[dir_name] = 
  end 
  
  result 
  nil
end
