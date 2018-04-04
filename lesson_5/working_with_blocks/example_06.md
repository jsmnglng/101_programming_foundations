```ruby
[{ a: 'ant', b: 'elephant'}, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
```

| Line | Action  | Object | Side Effect | Return Value | Is Return Value Used? |
|:----:|:------- |:-------|:----------- |:------------ |:--------------------- |
| 1 | method call (`select`) | Array of hashes `[{ a: 'ant', b: 'elephant'}, { c: 'cat' }]` | None | New array `[{c: 'cat}]` | No |
| 1-5 | outer block execution | Each hash from the array | None | Boolean | Yes, used by `select` for selection |
| 2 | method call (`all?`) | Each hash from the array | None | Boolean | Yes, used to determine outer block's return value|
| 2-4 | inner block execution | Each key and value of the hash | None | Boolean | Yes, used by `all?` |
| 3 | equality comparison | object on left side of `==` (right side as argument) | None | Boolean | Yes, to determine inner block's return value |
| 3 | element reference (`[]`) | Each value of each hash | None | First element of the object | Yes, to determine the return value of `==` |
| 3 | method call (`to_s`) | Each key of each hash | None | String object | Yes, to determine the return value of `==` |

Bonus Question: What would happen if, instead of using all?, we used any?. Why would this affect the return value of select?

- The return value of `select` will now be a new array containing `[{ a: 'ant', b: 'elephant'}, { c: 'cat' }]` since `any?` returns `true` if at least one of the elements of the collection is not `false` or `nil`.