def welcome(&block)
  p block
end

welcome { |a, b| p b }