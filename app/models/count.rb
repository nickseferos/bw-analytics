class Count < ApplicationRecord
  belongs_to :crane_operator
  belongs_to :shift
end
