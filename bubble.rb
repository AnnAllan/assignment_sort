def bubble_sort(arr)
  unsorted_portion = arr.length
  changes = true
  while changes  do
    changes = false
    (unsorted_portion - 1).times  do |i|
      puts "arr[i] is #{arr[i]} and arr[i + 1] is #{arr[i+1]}"
      if arr[i] > arr[i + 1]
        temp = arr[i + 1]
        arr[i + 1] = arr[i]
        arr[i] = temp
        changes = true
      end
    end
    unsorted_portion -= 1
  end
  puts arr
  puts
end

bubble_sort([1, 3, 7, 2, 5])
bubble_sort([1, 3, 3, 7, 2, 5])
bubble_sort([1, -1, 3, -3, 7, 2, 5])
