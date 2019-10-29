class Voyage < ApplicationRecord
  belongs_to :vessel
  has_many :port_calls, dependent: :destroy

  def to_param
    "#{id} #{number}".parameterize
  end
end
