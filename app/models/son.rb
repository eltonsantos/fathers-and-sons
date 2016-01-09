class Son < ActiveRecord::Base
  belongs_to :father

  validates :name, presence: true
  validates :father_id, presence: true
end
