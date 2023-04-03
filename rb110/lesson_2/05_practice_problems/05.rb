# Determine the total age of just the male members of the family:

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_age = munsters.map do |_, details|
   details['gender'] == 'male' ? details['age'] : 0
end.inject(:+)

p total_male_age
