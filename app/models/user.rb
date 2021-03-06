class User < ApplicationRecord
  before_save {  |user| user.email = email.downcase }
  validates :first_name, 
    presence: true, 
    length: { in: 2..14 }
  validates :last_name, 
    presence: true, 
    length: { in: 2..14 }
  validates :email, 
    presence: true, 
    format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "email adress please" }
  validates :age, 
    presence: true, 
    length: { maximum: 3} #format: { with: /^\d{3}$/ }
  validates :description, 
    presence: true, 
    length: { maximum: 500 }
  validates :password, 
    presence: true,
    length: { minimum: 6 }
  validates :password_confirmation, presence: true

  belongs_to :city
  has_many :gossips
  has_many :sent_messages, foreign_key: 'sender_id', class_name: "PrivateMessage"
  has_many :received_messages, foreign_key: 'recipient_id', class_name: "PrivateMessage"
  has_many :comments
  has_secure_password
end
