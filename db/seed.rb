require_relative '../models/address_book'
require_relative '../models/entry'
require 'bloc_record'

BlocRecord.connect_to('db/address_bloc.sqlite')

book = AddressBook.create(name: 'My Address Blook')

puts 'Address Book created'
 puts 'Entry created'
#  puts Entry.create(address_book_id: book.id, name: 'Foo One', phone_number: '999-999-9999', email: 'foo_one@gmail.com' )
#  puts Entry.create(address_book_id: book.id, name: 'Foo Two', phone_number: '111-111-1111', email: 'foo_two@gmail.com' )
#  puts Entry.create(address_book_id: book.id, name: 'Foo Three', phone_number: '222-222-2222', email: 'foo_three@gmail.com' )
#  puts Entry.create(address_book_id: book.id, name: 'Eduardo', phone_number: '305-990-2218', email: 'eduardo@gmail.com' )

#  puts Entry.find_by('name', 'Foo One')

#  puts Entry.find_by('name', 'Foo Three')
#  puts Entry.find_by('name', 'Eduardo')

#  Entry.find_each(start: 3, batch_size: 5) do |row|
#         puts row

#  end
 
#  Entry.find_in_batches(start: 2, batch_size: 5) do |contacts|
#         contacts.each { |contact| puts contact }

#  end


# puts Entry.order(:name, phone_number: :desc)
# puts Entry.order(name: :asc, phone_number: :desc)


# puts Entry.order("name ASC", "phone_number DESC")

# puts Entry.order("name ASC, phone_number DESC")


 AddressBook.join(:entry)

all_the_updates = { 1 => { "name" => "Dave", "email" => "david@bloc.com", "phone_number" => "111-111-1111" }, 2 => { "name" => "Jeremy", "email" => "jeremy@bloc.com", "phone_number" => "222-222-2222" }, 3 => { "name" => "Juan", "email" => "juan@bloc.com", "phone_number" => "333-333-3333" } }
#  puts Entry.update_mult(all_the_updates.keys, all_the_updates.values)
 people =  Entry.update(all_the_updates.keys, all_the_updates.values)
puts Entry.order("name ASC")


#  people = Entry.all
# puts Entry.all
 

#  people.update(name: "Dave", email: "david@bloc.com", phone_number: "111-111-1111", name: "Jaun", email: "juan@bloc.com", phone_number: "111-111-1111" )

# puts Entry.all

# people = Entry.all

# puts Entry.take(name: "Foo One")


#  all_the_updates works
 




#  people = Entry.all
# puts Entry.all
 

#  people.update(name: "Dave", email: "david@bloc.com", phone_number: "111-111-1111", name: "Jaun", email: "juan@bloc.com", phone_number: "111-111-1111" )

# puts Entry.all

# people = Entry.all
puts Entry.where(phone_number: '999-999-9999') 
# where works

puts people.not(phone_number: '999-999-9999')
# not is the only one not working with an error in a database : SQL /Users/eduardolowensohn/.rvm/gems/ruby-2.5.1/gems/sqlite3-1.4.1/lib/sqlite3/database.rb:147:in `initialize': near ";": syntax error (SQLite3::SQLException)

# puts Entry.take(name: "Foo One")
puts Entry.take(name: 'Dave')

# take fixed both take and take_one in  case  is string 





# Entry.where(name: "Dave")

# Entry.not(name: "Dave")





all_the_updates.not(name: "Dave")




# Entry.where(name: "Dave")

# Entry.not(name: "Dave")





# all_the_updates.not(name: "Dave")





