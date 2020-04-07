class Patient
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name 
    
    @@all << self
  end
  
  def appointments
    Appointment.all.select {|app| app.patient == self}
  end
  
  def doctors
    appointments.collect {|appointment| appointment.doctor}
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  # Class Methods
  
  def self.all 
    @@all
  end
end