# In the ages hash, remove people with age 100 and greater:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.select! { |_, age| age < 100 }
