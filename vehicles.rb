class Vehicles
  def initialize
    @registrations = [
      {
        registration_number: 'AB01 CDE',
        year: '2001',
        vehicle_id: '12345'
      },
      {
        registration_number: 'FG02 HJK',
        year: '2002',
        vehicle_id: '67890'
      },
      {
        registration_number: 'L33T H4X0R',
        year: '2022',
        vehicle_id: nil
      }
    ]
  end

  # Feature 1
  def total_vehicles
    @registrations.length
  end

  # Feature 2
  def return_vehicle_id(registration_number)
    @registrations.each do |record|
      return record[:vehicle_id] if record[:registration_number] == registration_number
    end
  end

  registration = Vehicles.new
  puts "Total registrations: #{registration.total_vehicles}"

  puts 'Enter your registration number:'
  registration_number = gets.chomp.upcase
  vehicle_id = registration.return_vehicle_id(registration_number)
  if vehicle_id
    puts "Vehicle ID: #{vehicle_id}"
  else
    puts 'No vehicle found'
  end
end
