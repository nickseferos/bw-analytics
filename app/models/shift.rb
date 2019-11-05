class Shift < ApplicationRecord
  belongs_to :port_call
  has_many :counts, dependent: :destroy
end
