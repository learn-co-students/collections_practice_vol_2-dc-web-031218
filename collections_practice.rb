
def begins_with_r(tools_array)
  #Return true if every element of the tools array starts with an "r" and
  #false otherwise.
  #should return false if there's an element that does not begin with r
  first_letters = tools_array.collect { |array_element| array_element[0]}

  first_letters.all? {|a_first_letter| a_first_letter == "r"}

  #end of function
end

def contain_a(tools_array)
  #return all elements that contain the letter 'a'
  elements_with_a = []

  tools_array.each do |element|
    if element.include?("a")
      elements_with_a.push(element)
    end
  end
  elements_with_a
  #end of function
end

def first_wa(array)
  #Return the first element that begins with the letters 'wa'

  array.each do |element|
    #for some reason element.start_with? produces
    # NoMethodError:
    #   undefined method `start_with?'
    if element[0] == "w" && element[1] == "a"
      return element
    end
  end
  #end of function
end

def remove_non_strings(array)
  #remove anything that's not a string from an array
  output_array = []

  array.each do |element|
    if element.class == String
      output_array.push(element)
    end
  end
  output_array
  #end of function
end

def count_elements(array)
  #count how many times something appears in an array
  #returns an array of hashes. each hash includes (1) K/V pair being counted
  #and (2) :count => count_num

  #expect(count_elements([{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]))
  #.to eq([{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}

  #get unique elements from argument array
  output_array = array.uniq


  output_array.each do |hash|
    count = array.count(hash)
    #access aray index first:
    hash[:count] = count
  end

  output_array
  #end of function
end

def merge_data(keys, data)# = arrays of hashes,
  #                           keys object: each hash with one key
  #combines two nested data structures into one
  #the key for an entire hash becomes a key within the hash, key = :first_name


  #end of function
end


def find_cool(array)
  output_array = []

  array.each do |hash_element|
    if hash_element[:temperature] == "cool"
      output_array.push(hash_element)
    end
  end

  output_array
  #end of function
end

def organize_schools(array)
  output_hash = {}
  all_cities_array = []

  array.each_pair do |school_name, school_info_hash|
    all_cities_array.push(school_info_hash[:location])
  end

  unique_cities = all_cities_array.uniq

  unique_cities.each do |city|
    output_hash[city] = []
    array.each_pair do |school_name, school_info_hash|
      if school_info_hash[:location] == city
        output_hash[city].push(school_name)
      end
    end
  end
  output_hash
  #end of function
end
