class Appointment

    attr_accessor :location, :purpose, :hour, :min

    def initialize(location,purpose,hour,min)
        @location = location
        @purpose = purpose
        @hour = hour
        @min = min 
    end

    def location
        @location
    end

    def purpose
        @purpose    
    end

    def hour
        @hour
    end

    def min
        @min
    end 
end

class MonthlyAppointment < Appointment
    attr_accessor :day
    def initialize(location,purpose,hour,min,day)
        super(location,purpose,hour,min)
        @day = day
    end

    def day
        @day
    end 

    def occurs_on?(day)
        if self.day == day
            puts "true"
        else 
            puts "false"
        end
    end

    def to_s
        "Reunion unica en #{self.location} sobre #{self.purpose} el día #{self.day} a la(s) #{self.hour}:#{self.min}"
    end
end

class DailyAppointment < Appointment

    def occurs_on?(hour,min)
        if self.day == hour && self.min == min
            puts "true"
        else 
            puts "false"
        end
    end

    def to_s
        "Reunion unica en #{self.location} sobre #{self.purpose} a la(s) #{self.hour}:#{self.min}"
    end
end

class OneTimeAppointment < Appointment
    attr_accessor :day ,:month,:year
    def initialize(location,purpose,hour,min,day,month,year)
        super(location,purpose,hour,min)
        @day = day
        @month = month
        @year = year
    end

    def occurs_on?(day,month,year)
        if self.day == day && self.min == month && self.year == year
            puts "true"
        else 
            puts "false"
        end
    end

    def to_s
        "Reunion unica en #{self.location} sobre #{self.purpose} el #{self.day}/#{self.month}/#{self.year} a la(s) #{self.hour}:#{self.min}"
    end
end

#a1 = OneTimeAppointment.new('Desafio Latam','Trabajo',14,30,4,6,2019)
#a2 = DailyAppointment.new('Desafio Latam','Educacion',8,15)
#a3 = MonthlyAppointment.new('NASA','Aliens',8,15,23)
#a1.to_s
#a2.to_s
#a3.to_s