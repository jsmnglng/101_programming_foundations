```ruby
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
end
# 1
# 3
# => [nil, nil]
```

| Line | Action  | Object | Side Effect | Return Value | Is Return Value Used? |
|:----:|:------- |:-------|:----------- |:------------ |:--------------------- |
| 1 | method call (`map`) | The outer array | None | New array `[nil, nil]` | No |
| 1-3 | block execution | Each sub-array | None | `nil` | Yes, used by `map` for transformation|
| 2 | method call (`first`) | Each sub-array | None | Element at index 0 of sub-array | Yes, used by `puts` |
| 2 | method call (`puts`) | Element at index 0 of sub-array | Outputs string representation of an integer | `nil` | Yes, used to determine the block's return value |

The `Array#map` method is being called by the nested array `[[1, 2], [3, 4]]`. Each inner array 
is passed to the block and assigned to the local variable arr. The `first` method is 
being called by each inner array and returns its element index `0`. Then the return value 
of `first` method, which are `1` and `3`, respectively is used by the `puts` method to output 
their string representation. The return value of `puts` now is used by the block which 
in this case is nil, and `map` method's return value is determined on the block's return 
value which is nil and so `map` returns a new array containing the block's return value: 
`[nil, nil]`