class Trip
  include ActiveModel::Model
  attr_accessor :driver, :cost, :origin_id, :destination_id, :distance
end


def cost
  self[:cost]
end
