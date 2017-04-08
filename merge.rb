def merge_sort(arr)
  left = []
  right = []
  if arr.length == 1
    return arr
  else

      half = arr.length / 2
      half.times do
        left << arr.shift
      end
      right = arr
    return merge(left, right)
  end
  puts new_arr
  puts
end

def merge(left, right)
  new_arr = []
  i = 0
  j = 0
  until ((i > left.length) || (j > right.length))
    if right[j]  == nil
      new_arr << left[i]
      i += 1
    elsif left[i] == nil
      new_arr << right[j]
      j += 1
    elsif (left[i] <= right[j])
      new_arr << left[i]
      i += 1
    else
      new_arr << right[j]
      j += 1
    end
  end

  puts new_arr
  return new_arr
end

merge_sort([1, 3, 7, 2, 5, 6])
merge_sort([1, 3, 3, 7, 2, 5])
merge_sort([1, -1, 3, -3, 7, 2, 5])
