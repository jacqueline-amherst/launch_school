def prompt(message)
  puts "=> #{message}"
end

prompt "Welcome to the Mortgage Calculator!"

loop do
  loan_amount = nil
  loop do
    prompt "What is the total loan amount?"
    loan_amount = gets.chomp.to_f
    break if loan_amount > 0
    prompt "I'm sorry, the loan amount must be an integer greater than 0."
    prompt "Please try again."
  end
  
  duration_in_months = nil
  loop do
    prompt "What is the duration of the loan in months?"
    duration_in_months = gets.chomp.to_i
    break if duration_in_months > 0
    prompt "I'm sorry, the duration must be an integer greater than 0."
    prompt "Please try again."
  end

  apr = nil
  loop do
    prompt "What is the APR?"
    apr = gets.chomp.to_f
    break if apr > 0
    prompt "I'm sorry, the apr must be an integer greater than 0."
    prompt "Please try again."
  end

  monthly_interest = (apr / 100) / 12
  monthly_payment = loan_amount * (monthly_interest / (1 - (1 + monthly_interest)**(-duration_in_months)))
  result = sprintf('%.2f', monthly_payment)

  prompt "Your monthly payment is #{result}"

  prompt "Would you like to do another calculation? (Y/N)"
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt "Thank you for using the Mortgage Calculator."
prompt "See you next time!"
