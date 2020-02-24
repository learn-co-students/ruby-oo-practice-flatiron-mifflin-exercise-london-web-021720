class Manager
    attr_accessor :name, :department
    attr_reader :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def employees
        Employee.all.select{ |employee| employee.manager_name == self }
    end

    def self.all
        @@all
    end

    def hire_employee(employee, salary)
        hire = Employee.new(employee, salary)
        hire.manager_name = self
    end

    def self.all_departments
        x = @@all.map { |manager| manager.department }
        x.uniq
    end

    def self.average_age
        x = @@all.map{ |manager| manager.age }
        y = x.sum
        z = y / (@@all.size).to_f
        z
    end


end
