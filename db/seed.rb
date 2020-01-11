require_relative '../models/address_book'
require_relative '../models/entry'
require 'bloc_record'

BlocRecord.connect_to('db/address_bloc.sqlite')

book = AddressBook.create(name: 'My Address Blook')

puts 'Address Book created'
 puts 'Entry created'
 puts Entry.create(address_book_id: book.id, name: 'Foo One', phone_number: '999-999-9999', email: 'foo_one@gmail.com' )
 puts Entry.create(address_book_id: book.id, name: 'Foo Two', phone_number: '111-111-1111', email: 'foo_two@gmail.com' )
 puts Entry.create(address_book_id: book.id, name: 'Foo Three', phone_number: '222-222-2222', email: 'foo_three@gmail.com' )
 puts Entry.create(address_book_id: book.id, name: 'Eduardo', phone_number: '305-990-2218', email: 'eduardo@gmail.com' )

#  puts Entry.find_by('name', 'Foo One')
#  puts Entry.find_by('name', 'Foo Three')
#  puts Entry.find_by('name', 'Eduardo')

#  Entry.find_each(start: 3, batch_size: 5) do |row|
#         puts row

#  end
 
#  Entry.find_in_batches(start: 2, batch_size: 5) do |contacts|
#         contacts.each { |contact| puts contact }

#  end


puts Entry.order(:name, phone_number: :desc)
puts Entry.order(name: :asc, phone_number: :desc)


puts Entry.order("name ASC", "phone_number DESC")

puts Entry.order("name ASC, phone_number DESC")


 AddressBook.join(:entry)
