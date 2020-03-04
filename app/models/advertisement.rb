class Advertisement < ApplicationRecord
  validates :position_id,  presence: true
  validates :issue_id, presence: true

  belongs_to :client
  belongs_to :issue

end
