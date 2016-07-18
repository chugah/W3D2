require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

#@store1 = Store.find(1)
#@store2 = Store.find(2)

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Johnny", last_name: "Johnnie", hourly_rate: 45)
@store2.employees.create(first_name: "Jamie", last_name: "Jammie", hourly_rate: 40)
@store2.employees.create(first_name: "Josh", last_name: "Joshin", hourly_rate: 45)


=begin

Exercise 6: One-to-many association

We haven't used the Employee class (and employees table) at all
yet. If you look at this table's column structure, you'll find
that it has a store_id (integer) column. This is a column that
identifies which store each employee belongs to. It points to the
id (integer) column of their store.

Let's tell Active Record that these two tables are in fact related
via the store_id column.

Add the following code directly inside the Store model (class):

has_many :employees 

Add the following code directly inside the
Employee model (class): belongs_to :store 

Add some data into employees. Here's an example of one (note how it differs from how
you create stores): 

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60) 

Go ahead and create some more employees using the create method. You can do
this by making multiple calls to create (like you have before.) No
need to assign the employees to variables though. 

Create them through the @store# instance variables that you defined in
previous exercises. Create a bunch under @store1 (Burnaby) and
@store2 (Richmond). Eg: @store1.employees.create(...).

@store4 = Store.find(4)
@store5 = Store.find(5)
@store6 = Store.find(6)


@store4.employees.create(first_name: "Jocelyn", last_name: "Jocklyn", hourly_rate: 45)
@store4.employees.create(first_name: "Jacob", last_name: "Jacobsen", hourly_rate: 50)
@store5.employees.create(first_name: "Jacquie", last_name: "Jacqueline", hourly_rate: 40)
@store5.employees.create(first_name: "Joseph", last_name: "Josephina", hourly_rate: 41)
@store6.employees.create(first_name: "Jill", last_name: "Jillianson", hourly_rate: 50)
@store6.employees.create(first_name: "Joel", last_name: "Joelson", hourly_rate: 40)

@store1.mens_apparel = false
@store1.womens_apparel = false
@store1.save

p @store1

p @store6.employees




=end