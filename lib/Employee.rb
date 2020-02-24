class Employee
    attr_accessor :name, :manager_name
    attr_reader :salary

    @@all = []

    def initialize(name, salary)
        @name = name
        @salary = salary
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(number)
        @@all.select{ |employee| employee.salary > number }
    end

    def self.find_by_department(string)
        (@@all.find{ |employee| employee.manager_name.department == string })
    end

    def tax_bracket
        @@all.select{ |employee| (((employee.salary)+1000)-self.salary) < 2000 }
    end

end
