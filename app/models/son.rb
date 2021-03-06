class Son < ActiveRecord::Base
  belongs_to :father

  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/missing.png"
  validates_attachment_content_type :picture, content_type: /\Aimage\/.*\Z/

  validates :name, presence: true
  validates :father_id, presence: true
end
