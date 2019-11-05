class PortCall < ApplicationRecord
  belongs_to :voyage
  belongs_to :terminal
  has_many :shifts, dependent: :destroy
end
