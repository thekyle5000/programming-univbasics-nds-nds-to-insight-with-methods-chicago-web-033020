$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  total = 0 
  movie_index = 0 
  while movie_index < director_data[:movies].length do 
  total += director_data[:movies][movie_index][:worldwide_gross]
  movie_index += 1
end 
total 
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  element_index = 0
  while element_index < nds.length do
    result[nds[element_index][:name]] = gross_for_director(nds[element_index])
    element_index += 1
end
result
end
