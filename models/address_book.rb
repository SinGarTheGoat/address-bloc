require_relative 'entry'
require 'pry'

 class AddressBook
    attr_reader :entries

  def initialize
     @entries = []
  end
  def add_entry(name, phone_number, email)
     # #9
     index = 0
     entries.each do |entry|
     # #10
    if name < entry.name
     break
    end
       index += 1
     end
     # #11
     entries.insert(index, Entry.new(name, phone_number, email))
   end

  #past the follow along code
  def remove_entry(name, phone_number, email)
    entries.each_with_index do |entry, index|
      if name == entry.name
        entries.delete_at(index)
      end
    end
  end
 end

 #eddit entry
