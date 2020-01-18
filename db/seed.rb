require_relative '../models/address_book'
require_relative '../models/entry'
require 'bloc_record'

BlocRecord.connect_to('db/address_bloc.sqlite')

book = AddressBook.create(name: 'My Address Blook')

puts 'Address Book created'
 puts 'Entry created'
#  Entry.create(address_book_id: book.id, name: 'Foo One', phone_number: '999-999-9999', email: 'foo_one@gmail.com' )
#   Entry.create(address_book_id: book.id, name: 'Foo Two', phone_number: '111-111-1111', email: 'foo_two@gmail.com' )
#   Entry.create(address_book_id: book.id, name: 'Foo Three', phone_number: '222-222-2222', email: 'foo_three@gmail.com' )
#  Entry.create(address_book_id: book.id, name: 'Eduardo', phone_number: '305-990-2218', email: 'eduardo@gmail.com' )
#  Entry.create(address_book_id: book.id, name: "Dave", phone_number: '444-444-4444', email: "davyboy@gmail.com")

#  puts Entry.find_by('name', 'Foo One')
#  puts Entry.find_by('name', 'Foo Three')
#  puts Entry.find_by('name', 'Eduardo')

#  Entry.find_each(start: 3, batch_size: 5) do |row|
#         puts row

#  end
 
#  Entry.find_in_batches(start: 2, batch_size: 5) do |contacts|
#         contacts.each { |contact| puts contact }

#  end

all_the_updates = { 1 => { "name" => "Dave", "email" => "david@bloc.com", "phone_number" => "111-111-1111" }, 2 => { "name" => "Jeremy", "email" => "jeremy@bloc.com", "phone_number" => "222-222-2222" }, 3 => { "name" => "Juan", "email" => "juan@bloc.com", "phone_number" => "333-333-3333" } }
Entry.update_mult(all_the_updates.keys, all_the_updates.values)

people = Entry.first

people.update_name("Dave")

puts Entry.all

people = Entry.all

puts people.where(name: "Dave")

puts people.not(name: "Dave")









# puts Entry.order(:name, phone_number: :desc)
# puts Entry.order(name: :asc, phone_number: :desc)


# puts Entry.order("name ASC", "phone_number DESC")

# puts Entry.order("name ASC, phone_number DESC")


#  AddressBook.join(:entry)
