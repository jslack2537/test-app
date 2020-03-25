class User < ApplicationRecord
  has_many :logins, class_name: "Login", foreign_key: "user_id" 
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,  :validatable   
end
