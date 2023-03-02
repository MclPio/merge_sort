array = [5, 2, 1, 3, 6, 4]
arr1 = [5, 5]
arr2 = [1, 2]

def merge_sort(array)
  ls = array_left(array)
  rs = array_right(array)
  p "left: #{ls}, right: #{rs}"
  if ls.length < 2 && rs.length < 2
    ex = merge(ls, rs)
    p ex
    ex
  else
    merge(merge_sort(ls), merge_sort(rs))
  end

  # keep dividing array into sub arrays until they are of length 1

  # merge sub-arrays together

  #return new array
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

#p merge(arr1,arr2)

# p "left: #{array_left(array)}, right: #{array_right(array)}"

# right_side = array.slice(array.length / 2..-1) # right side
# left_side = array.slice(0..array.length / 2 - 1) # left side

# p "left: #{left_side}, right: #{right_side}"

# p left_left_side = left_side.slice(0..left_side.length / 2 - 1)
# p left_right_side = left_side.slice(left_side.length / 2..-1)
