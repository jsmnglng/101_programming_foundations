```ruby
my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end
```

Output:
```
18
7
12
```

Return Value:
```
=> [[18, 7], [3, 12]]
```

| Line | Action  | Object | Side Effect | Return Value | Is Return Value Used? |
|:----:|:------- |:-------|:----------- |:------------ |:--------------------- |
| 1 | variable assignment | n/a | None | `[[18, 7], [3, 12]]` | No |
| 1 | method call (`each`) | `[[18, 7], [3, 12]]` | None | The calling object: `[[18, 7], [3, 12]]` | Yes, used by variable assignment to `my_arr` |
| 1-7 | outer block execution | Each sub-array | None | Each sub-array | No |
| 2 | method call (`each`) | Each sub-array | None | The calling object: sub-array in current iteration | Yes, to determine return value of outer block |
| 2-6 | inner block execution | Element of the sub-array in current iteration | None | `nil` | No |
| 3 | comparison (`>`) | Element of the sub-array in current iteration | None | Boolean | Yes, by conditional |
| 3-5 | conditional (`if`) | Element of the sub-array in current iteration | None | `nil` | Yes, to detrmine inner block's return value |
| 4 | method call (`puts`) | Element of the sub-array in current iteration | Outputs string representation of an Integer | `nil` | Yes, by conditional if evaluated to `true` |

The local variable `my_arr` is assigned to a code block. The first invocation of `Array#each` method is being called on a multi-dimensional array `[[18, 7], [3, 12]]`. Each inner array is passed to the block one after the other and assigned to the block parameter `arr`. `arr` then calls another `Array#each` and each of its elements is passed to the block one by one and assigned to the block parameter `num`. `num` is evaluated by a comparison `>`. If `num` is `true`, the `if` block is executed. The `if` block outputs the `num` by using `puts`. `puts`'s return value is `nil`, therefore the return value of `if` is `nil` as well. The inner block's return value is determine by the last expression which is the `if` condition, therefore the inner block's return value is also `nil`, but is ignored by the `each` method. Then, the outer block's return value is determined by its last expression which is the return value of the inner `each` method: each of the sub-array, but then again is ignored by the outer `each` method. So the return value of the variable `my_arr` is the return value of the outer `each` method, its calling object `[[18, 7], [3, 12]]`.