require 'pry'

# your code goes here
def begins_with_r(array)
  i = 0
  while i < array.length
    # binding.pry
    if array[i][0] != 'r'
      return false
    end
    i += 1
  end
  return true
end

def contain_a(array)
  i = 0
  a_array = []

  while i < array.length
    # binding.pry
    if array[i].include?('a')
      a_array << array[i]
    end
    i += 1
  end
  return a_array
end

def first_wa(array)
  i = 0
  while i < array.length
    # binding.pry
    if array[i][0] == 'w' && array[i][1] == 'a'
      return array[i]
    end
    i += 1
  end
  return "No words starting with wa."
end

def remove_non_strings(array)
  i = 0
  while i < array.length
    # binding.pry
    if array[i].is_a? String
      i += 1
    else
      array.delete(array[i])
    end
  end
  return array
end

def count_elements(array)
  i = 0
  count_array = []
  names_array = []

  while i < array.length
    # binding.pry
    curr_obj = array[i]
    curr_obj.each do |key, value|
      j = 0
      while j <= count_array.length
        if count_array[j] ==  nil
          count_array[j] = {:name => value, :count => 1}
          names_array << value
          j += 2
        else
          if names_array.include? (value)
            count_array[j][:count] = count_array[j][:count] + 1
          else
            count_array[count_array.length] = {:name => value, :count => 1}
            names_array << value
          end
          j += 2
        end
        j += 1
      end
    end
    i += 1
  end
  return count_array
end

def merge_data(obj_one, obj_two) #is there a better way to do this

  merged = []
  name_collection = []

  i = 0
# binding.pry

  while i < obj_one.size
    obj_one.each do |key|
      key.each do |usable_key, name|
        # binding.pry
        if name_collection.include? (name)
          i += 1
        else
          merged[i] = {}
          merged[i][usable_key] = name
          name_collection << name
          # binding.pry
          i += 1
        end #if
      end #key.each
    end #obj_one.each
  end #while

  j = 0
  while j < merged.size
    obj_two.each do |list|
      list.each do |usable2_key, attributes|
        attributes.each do |final_key, specs|
          if merged[j][:first_name] == usable2_key
            merged[j][final_key] = specs
          end #if
        end #attributes
      end #list
    end #obj_two
    j += 1
  end #while

  return merged
end


def find_cool(hash)
  # binding.pry
  i = 0
  cool_array = []
  # binding.pry
  while i < hash.size
    hash[i].each do |key, value|
      if value == "cool"
        cool_array[0] = {} #is there a better way to do this?
        cool_array[0][:name] = hash[i][:name]
        cool_array[0][:temperature] = value
        return cool_array
      end
    end
      i += 1
  end
  return cool_array
end

def organize_schools(hash)
  organized_by_location = {}

  hash.each do |key, value|
    # binding.pry
    value.each do |key2, location|
      # binding.pry
      if organized_by_location[location] == nil
        organized_by_location[location] = [key]
      else
        organized_by_location[location] << key
      end
    end
  end
  return organized_by_location
end
