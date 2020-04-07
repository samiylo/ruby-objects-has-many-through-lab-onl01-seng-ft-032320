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
    Appointment.all.map do |appointment|
      appointment.doctor
    end
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  # Class Methods
  
  def self.all 
    @@all
  end
end