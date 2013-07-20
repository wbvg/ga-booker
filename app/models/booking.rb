# == Schema Information
#
# Table name: bookings
#
#  id          :integer          not null, primary key
#  time        :string(255)
#  date        :string(255)
#  description :string(255)
#  user_id     :integer
#  room_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Booking < ActiveRecord::Base
  attr_accessible :time, :date, :description, :user_id, :room_id
  belongs_to :room
  belongs_to :user

  validates :name, :presence => true
  validates :time, :presence => true
  validates :date, :presence => true
end
