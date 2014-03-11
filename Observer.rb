require 'observer'

class TaxMan
  def update( changed_employee )
    puts("Send #{changed_employee.name} a new tax bill!")
  end
end
class Payroll
  def update( changed_employee )
    puts("Cut a new check for #{changed_employee.name}!")
    puts("His salary is now #{changed_employee.salary}!")
  end
end

class Employee
  include Observable

  attr_reader :name, :title, :salary

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
  end

  def salary=(new_salary)
    @salary = new_salary
    changed
    notify_observers(self)
  end

  def info
    puts name, title, salary
  end
end

fred = Employee.new("Fred Flintstone", "Crane Operator", 3000)
payroll = Payroll.new
tax_man = TaxMan.new
fred.add_observer( payroll )
fred.add_observer( tax_man )

fred.salary = 3500 #Giving Fred a raise
#fred.info
