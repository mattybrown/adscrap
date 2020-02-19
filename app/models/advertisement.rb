class Advertisement < ApplicationRecord
  validates :position,  presence: true
  validates :issue_id, presence: true

end
