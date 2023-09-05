def compute(arg)
  return "Does not #{arg}." unless block_given?
  yield(arg)
end

p compute(5) { |num| num + 3 } == 8
p compute('a') { |char| char + 'b' } == 'ab'
p compute("compute") == 'Does not compute.'