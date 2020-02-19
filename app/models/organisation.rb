class Organisation < ApplicationRecord
  has_many :publications
  has_many :clients
  has_many :users
end
