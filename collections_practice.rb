require 'pry'
def begins_with_r(array)
  array.all? do |element|
    element[0] == "r"
  end
end

def contain_a(array)
  array.select do |element|
    element.include?("a")
  end
end

def first_wa(array)
  array.find do |element|
    element[0..1] == "wa"
  end
end

def remove_non_strings(array)
  array.delete_if do |element|
    !element.is_a?(String)
  end
end

def count_elements(array)
  array.uniq.each do |word|
    count = 0
    array.each do |second_time_words|
      if second_time_words == word
        count += 1
      end
    end
    word[:count] = count
  end
end

def merge_data(keys, data)
  merged_hashes = []
  data.each do |hash|
    hash.each do |name, info|
      keys.each do |key_val|
        if key_val.values[0] == name
          merged_hashes << key_val.merge(info)
        end
      end
    end
  end
  merged_hashes


  # iterate over the keys array
  # {first_name: 'blake'}
  # find the hash in the data array where the key matches the first_name
  # then merge in the data values from the data array
end

def find_cool(hash)
  cool_hashes = []
  hash.select do |data|
    data.any? do |key, value|
      if value == "cool"
        cool_hashes << data
      end
    end
  end
  return cool_hashes
end

def organize_schools(schools)
  organized_schools = {}
  city_array = []
  schools.each do |school, data|
    city_array << school
    city = data[:location]
    if organized_schools[city]
      organized_schools[city] << school
    else
      organized_schools[city] = [school]
    end
  end
  organized_schools
end
