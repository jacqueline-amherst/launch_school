=begin
The following list contains the names of individuals who are pioneers in the field of computing or that have had a significant influence on the field. 
The names are in an encrypted form, though, using a simple (and incredibly weak) form of encryption called Rot13.

----- PROBLEM

Write a program that deciphers strings using ROT13.

 - input: a string
 - output: a new string

 - rules:
  - New string consists of the alphabetic characters of the input string, each rotated by 13 letters.

----- SCRATCH

First idea -- 

- using the ASCII values
  - 'a' = 97, z = 122
  - 'A' = 65, 'Z' = 90

- add 13 to the ACSII value of the given character
  - need a way to  deal with any value that exceeds bounds (97..122) for lowercase, (65..90) for upper

Second idea --

- create a hash with the number correspondences
- compare and replace this way

----- ALGORITHM

- create a hash with the letter correspondences, 'a' - 'm' being keys, 'n' - 'z' being values

- enter method, given `string`
  - initialize empty array `result`
  - split string on whitespace, yielding `word`s
  - iterate over each word:
    - iterate over each character `char`
      - transform `char` to corresponding character in cipher
        - if 'a' - 'm' use as key and transform to value
        - if 'n' - 'z' use as value and transform to key
    - add word to `result`

=end

CIPHER = {
  'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q', 'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u', 'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y', 'm' => 'z',
  'A' => 'N', 'B' => 'O', 'C' => 'P', 'D' => 'Q', 'E' => 'R', 'F' => 'S', 'G' => 'T', 'H' => 'U', 'I' => 'V', 'J' => 'W', 'K' => 'X', 'L' => 'Y', 'M' => 'Z'
}

def convert_character(char)
  case char
  when ('a'..'m')
    CIPHER[char]
  when ('A'..'M')
    CIPHER[char]
  when ('n'..'z')
    CIPHER.key(char)
  when ('N'..'Z')
    CIPHER.key(char)
  end
end

def unencrypt(string)
  string.split.map do |word|
    word.chars.map { |char| convert_character(char) }.join
  end.join(' ')
end

puts unencrypt("Nqn Ybirynpr \n
Tenpr Ubccre \n
Nqryr Tbyqfgvar \n
Nyna Ghevat \n
Puneyrf Onoontr \n
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv \n
Wbua Ngnanfbss \n
Ybvf Unvog \n
Pynhqr Funaaba \n
Fgrir Wbof \n
Ovyy Tngrf \n
Gvz Orearef-Yrr \n
Fgrir Jbmavnx \n
Xbaenq Mhfr \n
Fve Nagbal Ubner \n
Zneiva Zvafxl \n
Lhxvuveb Zngfhzbgb \n
Unllvz Fybavzfxv \n
Tregehqr Oynapu")

=begin

NOTES:

During this exercise, I realized that I had lost some of my grip of using `#map` as well as using multiple ranges in a case statement.

=end