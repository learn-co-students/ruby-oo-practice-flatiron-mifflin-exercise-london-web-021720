class Manager

    attr_reader :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []
        @@all << self
    end

    def employees
        @employees
    end

    def hire_employee(employee_name, salary)
        @employees << Employee.new(employee_name, salary, self)
    end

    def self.all
        @@all
    end

    def self.all_departments
        all.map { |manager| manager.department}
    end

    def self.manager_ages
        all.map { |manager| manager.age }
    end

    def self.average_age
        manager_ages.sum.to_f / all.size
    end
end