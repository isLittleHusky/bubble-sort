def bubble_sort(array)
  until is_sorted(array) do
    for i in 0...(array.length - 1)
      if array[i] > array[i + 1]
        temp = array[i + 1]
        array[i + 1] = array[i]
        array[i] = temp
      end
    end
  end
  return array
end

def is_sorted(array)
  for i in 0...(array.length - 1)
    if array[i] > array[i + 1]
      return false
    end
  end
  return true
end

p bubble_sort([3, 5, 1, 2, 6, 2, 9, 5, 9, 8])