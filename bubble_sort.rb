def bubble_sort(array)
  until is_sorted(array) do
    for first in 0..(array.length - 1)
      for second in 1..(array.length - 2)
        if array[first] > array[second]
          temp = array[second]
          array[second] = array[first]
          array[first] = temp
        end
      end
    end
  end
  return array
end

def is_sorted(array)
  array[0..-2].each do |first|
    array[1..-1].each do |second|
      if first > second
        return false
      end
    end
  end
  return true
end

p bubble_sort([3, 5, 1, 2, 6, 2, 9, 5, 9, 8])