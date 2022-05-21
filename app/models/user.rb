class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :events, foreign_key: :user_id, dependent: :destroy
  has_many :attendances, foreign_key: :user_id, dependent: :destroy
  has_many :attended_events, through: :attendances, dependent: :destroy

  
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
