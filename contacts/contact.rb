require 'pry'
require 'csv'
require 'pg'

class Contact < ActiveRecord::Base

@@conn = PG.connect(
  host: 'localhost',
  dbname: 'contact',
  user: 'devone',
  password: 'devone'
)

  attr_accessor :contact
  ## In-memory list of contacts
  @@contacts = []
  
  CSV.foreach('contacts.csv') do |row|
    @@contacts << row
  end

  attr_accessor :id
  attr_accessor :name
  attr_accessor :email

  def initialize(id, name, email)
    # TODO: assign local variables to instance variables
    @id = id
    @name = name
    @email = email
  end

  ## Class Methods
  class << self
  
    def save(name, email)
      @@conn.exec_params("INSERT INTO contact (name, email) VALUES ($1, $2)", [name, email]) 
    end
=begin
    def create(name, email)
      @id = @@contacts.length + 1
      new_contact = Contact.new(id, name, email)
      @@contacts.push(new_contact)
    end
=end
    def all
      @@conn.exec("SELECT * FROM contact;") do |results|
  		#results is a collection (array) of records (hashes)
  		results.each do |contact|
    	  puts contact.inspect
          end
        end

#      @@contacts
    end

  def find(id)
    result = @@conn.exec_params("SELECT * FROM contact WHERE id = $1::int;", [id]).to_a
    puts result
  end

  def search_result(term)
    result = @@conn.exec("SELECT * FROM contact WHERE name LIKE $1 OR email LIKE $1", [term])
      pp result
  end

  
=begin    
    def find(id)
      #@@contacts.find { |contact| contact.id == id }
      id = id.to_i
      if id == 0 || id > Contact.all.length
        raise "Invalid ID"
      end
      id -= 1
      all[id]
    end
=end
  end
end

