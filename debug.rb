require "pry-byebug"

def capitalize(first_name, last_name)
  # binding.pry # breakpoint
  first_name.capitalize!
  last_name.capitalize!
  # first_name = first_name.capitalize
  # last_name = last_name.capitalize
  # binding.pry # breakpoint
  return "#{first_name} #{last_name}"
end

puts capitalize("vicent", "molla")

# next -> goes to the next line
# continue -> goes to the next breakpoint
# exit OR !!! -> exit byebug