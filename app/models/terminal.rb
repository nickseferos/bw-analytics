class Terminal < ApplicationRecord
  belongs_to :country
  belongs_to :port
  has_many :port_calls
  has_many :users
end
