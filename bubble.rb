def bubble_sort(arr)
  changes = true
  while changes  do
    changes = false
    0.upto(arr.length - 2) do |i|
      if arr[i] > arr[i + 1]
        temp = arr[i + 1]
        arr[i + 1] = arr[i]
        arr[i] = temp
        changes = true
      end
    end
  end
  puts arr
  puts
end

bubble_sort([1, 3, 7, 2, 5])
bubble_sort([1, 3, 3, 7, 2, 5])
bubble_sort([1, -1, 3, -3, 7, 2, 5])
