# your code goes here

def begins_with_r(array)
  array.all? { |element| element.start_with? "r" }
end

def contain_a(array)
  array.select { |element| element.include? "a" }
end

def first_wa(array)
  array.find do |element|
    element.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if { |element| element.is_a?(String) == false }
end

def count_elements(array)
  counter_array = []

  array.uniq.each do |element|
    element[:count] = array.count(element)
    counter_array << element
  end

  counter_array
end

def merge_data(keys, data)
  merged = []
  keys.each do |key|
    data.each do |object|
      object.each do |object_key, object_value|
        if object_key == key[:first_name]
          merged << key.merge(object_value)
        end
      end
    end
  end
  merged
end

def find_cool(array)
  array.select { |hash| hash[:temperature] == "cool" }
end

def organize_schools(schools)
  organized_schools = {}

  schools.each do |school, hash|
    if !organized_schools[hash[:location]]
      organized_schools[hash[:location]] = [school]
    else
      organized_schools[hash[:location]] << school
    end
  end
  organized_schools
end
