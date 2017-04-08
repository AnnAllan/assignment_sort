def insertion_sort(arr)
  0.upto(arr.length - 2) do |right_index|
    compare(arr, right_index)
  end
  puts arr
  puts
end

def compare(arr, right_index)
  if arr[right_index] > arr[right_index + 1]
    insert(arr, right_index, arr[right_index + 1])
  end
end

def insert(arr, right_index, value)
  i = right_index
  while(i >= 0 && arr[i] > value)
    arr[i + 1] = arr[i]
    i -= 1
  end
  arr[i + 1] = value
end

insertion_sort([1, 3, 7, 2, 5])
insertion_sort([1, 3, 3, 7, 2, 5])
insertion_sort([1, -1, 3, -3, 7, 2, 5])
