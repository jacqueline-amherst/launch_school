class Diamond
  def self.make_diamond(letter)
    line_length = ((letter.ord - 64) * 2) - 1
    left_spaces = line_length / 2
    right_spaces = 0
    lines = []

    return "A\n" if letter == 'A'

    lines << (' ' * left_spaces) + 'A' + (' ' * left_spaces)

    ('B'..letter).each do |subletter|
      left_spaces -= 1
      right_spaces += 1
      lines << (" " * left_spaces) + subletter + (" " * right_spaces) + (" " * (right_spaces - 1)) + subletter + (" " * left_spaces)
    end

    lines += lines[0..-2].reverse
    lines.map { |line| line + "\n" }.join
  end
end

puts Diamond.make_diamond('B')
