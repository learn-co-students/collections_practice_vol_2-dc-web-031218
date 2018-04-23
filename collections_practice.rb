def begins_with_r(tools)
  tools.all? do |x|
    x[0] == "r"
  end
end

def contain_a(elements)
  elements.select do |x|
    x.include?("a")
  end
end

def first_wa(element)
  element.find do |x|
    x.to_s.include?("wa")
  end
end

def remove_non_strings(array)
  arr = []
  array.delete_if do |element|
    arr << element if element.is_a?(String)
  end
  arr
end

def count_elements(array)
  array.each do |original_hash|
    original_hash[:count] = 0
    name = original_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        original_hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(keys, values)
  container = []
  keys.each do |person_name|
    name = person_name[:first_name]
    values.each do |person_data|
      if person_data[name]
        merged_person = person_data[name]
        merged_person[:first_name] = name
        container << merged_person
      end
    end
  end
  container
end

def find_cool(array)
  container = []
  array.each do |element|
    container << element if element[:temperature] == "cool"
  end
  container
end

def organize_schools(schools)
  organized_schools = {}
  schools.each do |name, location_hash|
    location = location_hash[:location]
    if organized_schools[location]
      organized_schools[location] << name
    else
      organized_schools[location] = []
      organized_schools[location] << name
    end
  end
  organized_schools
end
