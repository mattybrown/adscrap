class Publication < ApplicationRecord
  belongs_to :organisation
  has_many :issues
  has_many :positions
end
