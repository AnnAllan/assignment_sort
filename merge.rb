def merge_sort(arr)
  return arr if (arr.length) <= 1
  right_start = left_end = (arr.length) / 2
  arr.length.even? ? left_end -= 1 : right_start += 1
  left = merge_sort(arr[0..left_end])
  right = merge_sort(arr[right_start..arr.length])
  new_arr = []
  until left.empty? && right.empty?
    l = left[0]
    r =  right[0]
    if l && r
      value = r < l ? right.shift : left.shift
      new_arr << value
    elsif l
      new_arr << left.shift
    elsif r
      new_arr << right.shift
    end
  end
  new_arr
end

puts merge_sort([1, 3, 7, 2, 5, 6]).join("  ")
puts merge_sort([1, 3, 3, 7, 2, 5]).join("  ")
puts merge_sort([1, -1, 3, -3, 7, 2, 5]).join("  ")
