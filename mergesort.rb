def mergesort(a)
    # if the array size is 0|1 then the list is considered sorted, return sorted array
    if a.length == 0 || a.length == 1
      return a
    # split the list into two halves
    left, right = split_array(a) # if odd, put one less element on the left
    # merge sort each half
    left = mergesort(left)
    right = mergesort(right)
    # combine the sorted halves
    combine(left, right)
end

def split_array(a)
    # find the middle index
    len = a.length
    len / 2
    # split the array in half - take a look at take and drop in the ruby docs, or use ranges
    c = a.length
    d = c / 2
    a.drop(d)
    # return left and right halves of array as separate arrays - did you know a method can return multiple arrays? look it up
      a.each_slice(a.size / 2).to_a
end

# precondition: a and b are sorted
# a = [3, 4, 4, 5]
# b = [5, 6, 12, 66, 123]
def combine(a, b)
    # create a results array
    results_array = []
    # counters pointing to the index of the smallest elements in each array
    until left.empty? || righ.empty?
    # check that we have elements to compare
        if a.first <= b.first
        # push the smaller element onto the result array
        results_array  << a.shift
        else
        results_array  << b.shift
    # if there are elements left over in a, move them to result
    # if there are elements left over in b, move them to result
end

# TEST IT
a = [6,23,53,1,2,5,62,61,33,21,14,6,23]
a = a.shuffle
puts "ORIGINAL \n" + a.to_s
a = mergesort(a)
puts "AFTER MERGESORT \n" + a.to_s
