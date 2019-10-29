class Vessel < ApplicationRecord
  belongs_to :steamshipline

  def to_param
    "#{id} #{name}".parameterize
  end
end
