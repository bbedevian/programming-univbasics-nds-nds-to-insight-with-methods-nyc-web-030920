$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
dir_total = 0 
i = 0 #movies 
while i < director_data[:movies].length do
dir_total += director_data[:movies][i][:worldwide_gross]  
i+=1
end 
dir_total 
end

def gross_for_director(nds)
dir_total = 0 
i = 0 #movies 
while i < nds[:movies].length do
dir_total += nds[:movies][i][:worldwide_gross]  
i+=1
end 
dir_total 
end

def directors_totals(nds)
 new_hash = {}
 dir_index = 0
  while dir_index < nds.length do 
  dir_name = nds[dir_index][:name]
  new_hash[dir_name] = gross_for_director(nds)
  dir_index +=1
end
new_hash
end
