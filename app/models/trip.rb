class Trip
  include ActiveModel::Model
  attr_accessor :driver_id, :cost, :origin_id, :destination_id, :distance
end
