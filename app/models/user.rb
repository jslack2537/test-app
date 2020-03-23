class User < ApplicationRecord
  has_many :logins, foreign_key: "user_id", class_name: "Login"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable   
end
