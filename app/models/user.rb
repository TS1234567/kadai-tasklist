class Task < ApplicationRecord
  before_save { self.email.downcase! }
  validates :content, presence: true, length: { maximum: 255 }
  validates :status, presence: true, length: { maximum: 10 }
  
  has_secure_password

  has_many :microposts
end
