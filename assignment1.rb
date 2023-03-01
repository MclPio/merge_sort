def fibs(n)
  array = [0, 1]
  while array.length < n
    array.push(array[-2] + array[-1])
  end
  if n <= 2
    if n == 1
      array = [0]
    elsif n == 0
      array = []
    end
  end
  array
end

def fibs_rec(n, array = [0])
  # I know this is not great to read, but 1 line for the win!
  n == 1 ? array << 1 : (fibs_rec(n - 1, array); array << array[n - 1] + array [n - 2])
end
