array = [5, 2, 1, 3, 6, 4]

def merge_sort(array)
  ls = array_left(array)
  rs = array_right(array)
  if ls.length < 2 && rs.length < 2
    merge(ls, rs)
  else
    if ls.length < 2 && rs.length >= 2
      merge(ls, merge_sort(rs))
    elsif ls.length >= 2 && rs.length < 2
      merge(merge_sort(ls), rs)
    else
      merge(merge_sort(ls), merge_sort(rs))
    end
  end
end

def array_left(array)
  array.slice(0..array.length / 2 - 1)
end

def array_right(array)
  array.slice(array.length / 2..-1)
end

def merge(arr1, arr2)
  merged_array = []
  idx1 = 0
  idx2 = 0
  len1 = arr1.length
  len2 = arr2.length
  loop do
    if arr1[idx1] <= arr2[idx2]
      merged_array.push(arr1[idx1])
      idx1 += 1
    elsif arr1[idx1] >= arr2[idx2]
      merged_array.push(arr2[idx2])
      idx2 += 1
    end
    if idx1 == len1
      merged_array += arr2.slice(idx2..-1)
      break
    elsif idx2 == len2
      merged_array += arr1.slice(idx1..-1)
      break
    end
  end
  merged_array
end

p merge_sort(array)
