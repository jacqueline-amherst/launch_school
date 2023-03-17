# Q1 - In this hash of people and their age,

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# see if Spot is present in three ways

ages.include?("Spot")

ages.has_key?("Spot")

ages.member?("Spot")

---------------

# Q2 - Starting with this string:

munsters_description = "The Munsters are creepy in a good way."

# Convert the string in the following ways:
#
# "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.swapcase!

# "The munsters are creepy in a good way."
munsters_description.capitalize!

# "the munsters are creepy in a good way."
munsters_description.downcase!

# "THE MUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.upcase!

------------------

# Q3 - We have most of the Munster family in our age hash:

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }

# add ages for Marily and Spot into the existing hash

additional_ages = { "Marilyn" => 22, "Spot" => 237 }

ages.merge!(additional_ages)

---------------------

# Q4 - See if the name "Dino" appears in the string below:

advice = "Few things in life are as important as house training your pet dinosaur."

advice.include?("Dino")

-----------------------

# Q5 - Show an easier way to write this array:

flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

-----------------------

# Q6 - How can we add the family pet Dino to our usual array:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones << "Dino"

-----------------------

# Q7 - How can we add multiple items to our array? (Dino and Hoppy)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.insert(-1, 'Dino', 'Hoppy')

------------------------

# Q8 - Shorten the following sentence:

advice = "Few things in life are as important as house training your pet dinosaur."

# Use String#slice! to make the return value "Few things in life are as important as",
# But leave the `advice` varialbe as "house training your pet dinosaur."

advice.slice!("Few things in life are as important as ")

# Bonuse: if the String#slice method was used instead, the return value would be the same but `advice` would remain as it originally was.

-------------------------

# Q9 - Write a one-liner to count the number of lower-case 't' characters in the following string:

statement = "The Flintstones Rock!"

statement.count('t')

-------------------------

# Q10 - If we had a table of Flintstone family members that was forty characters in width, how could we easily center the title above the table with spaces?

title = "Flintstone Family Members"

title.center(40)
