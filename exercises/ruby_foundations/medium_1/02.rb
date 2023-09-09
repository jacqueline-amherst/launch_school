=begin
  --- PROBLEM ---

  - input: a text file
  - 

  --- SCRATCH ---

- To count paragraphs:
  - number of blank lines + 1?
    - how to count blank lines?
    - count the number of repeated newlines

  --- ALGORITHM ---


=end

class TextAnalyzer
  def process
    text = File.open("sample_text.txt").read
    yield(text) if block_given?
    # puts text
  end
end

analyzer = TextAnalyzer.new
analyzer.process { |text| puts "#{text.split("\n\n").count} paragraphs" }
analyzer.process { |text| puts "#{text.count("\n")} lines" } # lines
analyzer.process { |text| puts "#{text.split.count} words" } # words