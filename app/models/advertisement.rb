class Advertisement < ApplicationRecord
  validates :position_id,  presence: true
  validates :issue_id, presence: true

end
