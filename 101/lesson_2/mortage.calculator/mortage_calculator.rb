require 'yaml'
MESSAGES = YAML.load_file('mortage_calculator_msg.yml')



def print_text(text)
  Kernel.puts("=> #{text}")
end

def number_is_valid?(input)
  input.to_f.to_s == input
end

print_text(MESSAGES['welcome'])

print_text(MESSAGES['name'])
name = Kernel.gets().chomp()
print_text("Hello #{name}")

loan_amount = ''
loop do
  print_text(MESSAGES['loan_amount'])
  loan_amount = Kernel.gets().chomp()
  
  break unless loan_amount.number_is_valid?
  print_text("Please enter a valid number...")
  
end



print_text(MESSAGES['loan_duration'])
loan_duration_in_years = Kernel.gets().chomp()

print_text(MESSAGES['name_output'], name)
puts("You have entered #{loan_amount}")
puts("You have entered #{loan_duration_in_years}")
