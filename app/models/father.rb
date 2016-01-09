class Father < ActiveRecord::Base
  has_many :sons

  validates :name, presence: true
end
