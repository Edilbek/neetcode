def visible_building(arr)
  max_height = -Float::INFINITY
  count = 0

  arr.each_with_index do |a|
    if a > max_height
      count += 1
      max_height = a
    end
  end

  count
end

arr = [5, 3, 6, 4, 7] # Output: 3
p visible_building(arr)

arr = [5]             # Output: 1
p visible_building(arr)

arr = [1, 2, 3, 4, 5] # Output: 5
p visible_building(arr)

arr = [5, 4, 3, 2, 1] # Output: 1
p visible_building(arr)

arr = [7, 4, 8, 2, 9] # Output: 3
p visible_building(arr)

arr = [3, 3, 3, 5, 5, 6] # Output: 3
p visible_building(arr)
