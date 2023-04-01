# Given the `munsters` hash below, modify the hash such that each member of the Munster family has an additional "age_group" key
# that has one of three values describing the age grouop the family member is in (kid, adult, or senior).
# 0-17 = kid, 18-64 = adult, 65+ = senior

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case details["age"]
  when (0..17) then details["age_group"] = "kid"
  when (18..64) then details["age_group"] = "adult"
  else details["age_group"] = "senior"
  end
end

p munsters