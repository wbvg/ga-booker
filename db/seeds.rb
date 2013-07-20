User.destroy_all
Booking.destroy_all
Room.destroy_all

u1 = User.create(:name => 'admin', :email => 'admin@gmail.com', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:name => 'sue', :email => 'sue@gmail.com', :password => 'a', :password_confirmation => 'a')
u3 = User.create(:name => 'sam', :email => 'sam@gmail.com', :password => 'a', :password_confirmation => 'a')

b1 = Booking.create(:time => '0900-1200', :date => 'Friday', :description => 'WDI')
b2 = Booking.create(:time => '1200-1500', :date => 'Thursday', :description => 'UX workshop')
b3 = Booking.create(:time => '1500-1800', :date => 'Wednesday', :description => 'BEWD')
b4 = Booking.create(:time => '1800-2100', :date => 'Tuesday', :description => 'Codehire Expo')
b5 = Booking.create(:time => '1500-1800', :date => 'Monday', :description => 'Meetup')

r1 = Room.create(:name => 'Room 1', :status => true)
r2 = Room.create(:name => 'Room 2', :status => true)
r3 = Room.create(:name => 'Room 3', :status => true)


r1.bookings << b1 << b2 << b3
u1.bookings << b1 << b2 << b3
