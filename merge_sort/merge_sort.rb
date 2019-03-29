def merge_sort(unsorted_a)
  return unsorted_a if unsorted_a.length < 2
  left = merge_sort(unsorted_a[0...unsorted_a.length/2])
  right = merge_sort(unsorted_a[unsorted_a.length/2..unsorted_a.length])
  merge_unsorted_arrays(left, right)
end

def merge_unsorted_arrays(unsorted_a1, unsorted_a2, sorted_a=[]) # helper to merge_sort
  return sorted_a + unsorted_a2 if unsorted_a1.empty?
  return sorted_a + unsorted_a1 if unsorted_a2.empty?
  (unsorted_a1[0] <= unsorted_a2[0]) ? sorted_a << unsorted_a1.shift : sorted_a << unsorted_a2.shift
  merge_unsorted_arrays(unsorted_a1, unsorted_a2, sorted_a)
end

p merge_sort([500, -10, 44, 713, -222])
p merge_sort([5, 1, 3, 4, 2])