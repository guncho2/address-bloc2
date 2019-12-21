
require 'bloc_record/base'
 
class Entry < BlocRecord::Base



  # Because our instance variables are now determined from the 
  # database table, we no longer need initialize or attr_accessor declarations for Entry:
# class Entry
   # These must be accessors since we mutate them
#   attr_accessor :name, :phone_number, :email

#   def initialize(name, phone_number, email)
#     @name = name
#     @phone_number = phone_number
#     @email = email
#   end

  def to_s
    "Name: #{name}\nPhone Number: #{phone_number}\nEmail: #{email}"
  end
end
