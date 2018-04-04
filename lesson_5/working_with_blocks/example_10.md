```ruby
[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end
```

| Line | Action  | Object | Side Effect | Return Value | Is Return Value Used? |
|:----:|:------- |:-------|:----------- |:------------ |:--------------------- |
| 1 | method call (`map`) | outer array: `[[[1, 2], 3, 4], [5, 6]]` | None | New array: `[[[2, 3], [4, 5]], [6, 7]]` | No |
| 1-11 | outer block execution | Each sub-array | None | New array | Yes, used by top-level `map` |
| 2 | method call (`map`) | Each sub-array | None | New array | Yes, used to determine outer block's return value |
| 2-10 | Inner block execution | Each element of each sub-array | None | New array | Yes, used by inner `map` |
| 3 | equality comparison `==` | Object on left side of `==` | None | Boolean | Yes, used by `if` |
| 3 | method call (`to_s`) | Element of each sub-array | None | String object | Yes, used by `size` |
| 3 | method call (`size`) | Return value of `to_s` | None | Integer | Yes, used to determine return value of `==` |
| 4 | method call (`+`) | Object on left side of `+` | None | Integer | Yes, used to determine inner block's return value |
| 6 | method call (`map`) | Element of sub-array | None | New array | Yes, used to determine inner block's return value |
| 6-8 | innermost block execution | Element of sub-array | None | Integer or array | Yes, used by `map` |
| 3- 8| conditional (`if`) | Element of sub-array | None | Integer or array | Yes, used to determine innermost block's return value |