# Come up with at least two solutions for previous problem without using String#capitalize

# Solution 1

CASE_SWAP = {
  a: 'A', b: 'B', c: 'C', d: 'D', e: 'E', f: 'F', 
  g: 'G', h: 'H', i: 'I', j: 'J', k: 'K', l: 'L', 
  m: 'M', n: 'N', o: 'O', p: 'P', q: 'Q', r: 'R',
  s: 'S', t: 'T', u: 'U', v: 'V', w: 'W', x: 'X',
  y: 'Y', z: 'Z'
}

ALPHABET = ('a'..'z')

def word_cap(str)
  arr = str.split.each do |word|
    if ALPHABET.include?(word.downcase[0])
      key = word[0].to_sym
      word[0] = CASE_SWAP[key]
    end
  end
  arr.join(' ')
end

p word_cap('four score and seven') #== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'