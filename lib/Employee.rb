class Employee

    @@all = []

    attr_reader :name, :salary, :manager_name

    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name
        @@all << self
    end


    def self.all
        @@all
    end

    def self.paid_over(monies)
        all.select { |employee| employee.salary > monies}
    end

    def self.find_by_department(department)
        department_manager = Manager.all.find { |manager| manager.department == department}
        department_manager.employees[0]
    end

    def tax_bracket
        Employee.all.select { |employee| employee.salary >= self.salary - 1000 && employee.salary <= self.salary + 1000}
    end

end