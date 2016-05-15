require_relative 'entry'
require 'pry'
require "csv"

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
   def import_from_csv(file_name)
     csv_text = File.read(file_name)
     csv = CSV.parse(csv_text, headers: true, skip_blanks: true)
# #8
     csv.each do |row|
     row_hash = row.to_hash
     add_entry(row_hash["name"], row_hash["phone_number"], row_hash["email"])
   end
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
