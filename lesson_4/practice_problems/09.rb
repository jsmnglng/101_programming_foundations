# What is the return value of map in the foloowing code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# => [nil, "bear"]
# because if the value is greater than 3, return the value but there is a nil
# in the return value because the first element "ant" is evaluated false in
# the condition therefore there is nothing to return. When there is nothing to
# return in the if statement, if statement will return nil.
