class Issue < ApplicationRecord
  belongs_to :publication
  has_many :advertisements
end
