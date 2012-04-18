# Rides connect the User and Trip models in a many-to-many relationship
# Passengers can take many trips and trips can have many passengers
class Ride < ActiveRecord::Base
  belongs_to :trip
  belongs_to :passenger, :primary_key => "passenger_id", :foreign_key => "user_id", :class_name => "User"
  
  # TODO(gaye): Add validations

  validates :trip_id, :numericality => true # but can post a trip without trip_id
  validates :passenger_id, :numericality => true # driver posts a ride, turns into trip w/o passenger_id?

end
