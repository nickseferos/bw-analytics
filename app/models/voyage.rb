class Voyage < ApplicationRecord
  belongs_to :vessel
  has_many :port_calls
end
