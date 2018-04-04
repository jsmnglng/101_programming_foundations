```ruby
[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end
```
Output: 
```
1
3
```
Return Value:
```
=> [1, 3]
```

| Line | Action  | Object | Side Effect | Return Value | Is Return Value Used? |
|:----:|:------- |:-------|:----------- |:------------ |:--------------------- |
| 1 | method call (`map`) | The outer array | None | New array `[1, 3]` | No |
| 1-4 | block execution | Each sub-array | None | Integer at index 0 of sub-array | Yes, used by map for transformation |
| 2 | method call (`first`) | Each sub-array | None | Element at index 0 of sub-array | Yes, used by `puts` |
| 2 | method call (`puts`) | Element at index 0 of sub-array | Outputs string representation of an integer | `nil` | No |
| 3 | method call (`first`) | Each sub-array | None | Element at index 0 of sub-array | Yes, used to determine block's return value | 

On line 1, `Array#map` method is being called by the nested array `[[1, 2], [3, 4]]`. Each 
inner array is passed to the block and assigned to the local variable `arr`. On line 2, 
the `Array#first` method is called on `arr`, and returns the object at index `0` of the 
current array - in this case the integers `1` and `3`, respectively. The `puts` method then 
outputs the string representation of the integers `1` and `3` and returns `nil`. On line 3, 
which is the last expression from the block, another `first` method is called on `arr` and 
returns the object at index `0` of the current array. Because the code on line 3 is the 
last expression, its return value will be the return value of the block as well as the 
return value of `map`. `map` now returns a new array containing the return value of the 
block on each iteration which is `[1, 3]`. 
 