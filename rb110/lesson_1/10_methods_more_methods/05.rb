# What does `shift` do in the following code? How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# `shift` will destructively remove the first key/value pair and return it as an array.
# This information can be found in the Ruby docs under Hash#shift
