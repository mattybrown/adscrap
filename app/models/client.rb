class Client < ApplicationRecord
  belongs_to :organisation
  has_many :advertisements
end
