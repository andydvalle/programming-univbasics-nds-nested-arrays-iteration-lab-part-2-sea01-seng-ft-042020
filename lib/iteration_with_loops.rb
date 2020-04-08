require = 'pry'

def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays

  row_index = 0 
  
  while row_index < src.length do
    element_index = 0 
    smallest_number_array = []
    smallest_number = src[row_index][element_index]
    current_index = src[row_index][element_index]
    while element_index < src[row_index].length do
      binding.pry
      if smallest_number > src[row_index][element_index]
        smallest_number = src[row_index][element_index]
        smallest_number_array << smallest_number
      end
      element_index += 1 
    end
    row_index += 1
  end
  return smallest_number_array
end