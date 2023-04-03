# Given this data structure write some code to return an array containing the colors of the fruits and the size of the vegetables.
# The sizes should be uppercase and the colors should be capitalized.
#
# -----------
# - set `result` to []
# - for each k/v pair in hsh:
#   - if value[:type] == 'fruit'
#     - add value[:size] to `result`, all uppercase
#   - if value[:type] == 'vegetable'
#     - add value[:colors] to `result`, with each element capitalized


hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

details_arr = hsh.each_with_object([]) do |(_, v), arr|
  if v[:type] == 'vegetable'
    arr << v[:size].upcase
  elsif v[:type] == 'fruit'
    arr << v[:colors].map { |color| color.capitalize}
  end
end

p details_arr == [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]