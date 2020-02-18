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
 new_hash = {}
 dir_index = 0
  while dir_index < nds.length do 
  dir_name = nds[dir_index][:name]
  new_hash[dir_name] = 0
  i = 0
  while i < nds[dir_index][:movies].length do
    new_hash[dir_name] += nds[dir_index][:movies][i][:worldwide_gross]
    i+=1
  end
  dir_index +=1
end
new_hash
end
