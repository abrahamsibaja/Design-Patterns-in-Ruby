class Payroll
  def update( changed_employee )
    puts("Cut a new check for #{changed_employee.name}!")
    puts("His salary is now #{changed_employee.salary}!")
  end
end

class Employee
  attr_reader :name, :title, :salary

  def initialize(name, title, salary)
    @name = name
    @title = title
    @salary = salary
    @observers = []
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end

  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end

  def add_observer( observer )
    @observers << observer
  end

  def delete_observer( observer )
    @observer.delete( observer )
  end

  def info
    puts name, title, salary
  end
end

fred = Employee.new("Fred Flintstone", "Crane Operator", 3000)
payroll = Payroll.new
fred.add_observer( payroll )
fred.salary = 3500 #Giving Fred a raise
#fred.info
