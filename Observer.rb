class Employee
  attr_reader :name
  attr_accessor :title, :salary

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
  end

  def info
    puts name,title,salary
  end
end

fred = Employee.new("Fred Flintstone", "Crane Operator", 3000)
fred.salary = 3500 #Giving Fred a raise
fred.info
