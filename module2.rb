module Chatty
  def say_hi
    puts "Hello, my name is #{name}"
    puts "My job title is #{title}"
    puts "I work in the #{department} department"
  end
end

class Employee
  include Chatty
  attr_reader :name, :title, :department

  def initialize(name,title,department)
    @name = name
    @title = title
    @department = department
  end
end

employee = Employee.new("Abraham", "Intern", "Consulting")
employee.say_hi
