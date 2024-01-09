class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  scope :by_newest, -> { self.order(created_at: :desc) }

end
