```ruby
[[1, 2], [3, 4]].each do |arr|
  puts arr.first
end
# 1
# 3
# => [[1, 2], [3, 4]]
```

| Line | Action  | Object | Side Effect | Return Value | Is Return Value Used? |
|:----:|:------- |:-------|:----------- |:------------ |:--------------------- |
| 1 | method call (`each`) | The outer array | None | The calling object [[1, 2], [3, 4]]| No, but shown on line 6 |
| 1-3 | block execution      | Each sub-array  | None | `nil` | No |
| 2 | method call (`first`)| Each sub-array  | None | Element at index 0 of sub-array | Yes, used by `puts` |
| 2 | method call (`puts`) | Element at index 0 of sub-array | Outputs string representation of an integer | `nil` | Yes, used to determine the block's return value |

The `Array#each` method is being called on the nested array `[[1, 2], [3, 4]]`. The `each` 
method iterates through the elements of the outer array with the help of a block. On 
each iteration, in the block, each inner array is being assigned on the local variable 
`arr`. Inside the block, the first element of `arr` is being returned by the `first` method 
and its return value is being used by `puts` to output the string representation of the 
return value of `first` method which is `1` and `3`, respectively. The return value of the 
block is not used by `each` as its return value, rather it's the original collection and 
the calling object `[[1, 2], [3, 4]]`.