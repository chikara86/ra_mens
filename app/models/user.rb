class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :ramens, dependent: :destroy
  has_many :ramen_comments, dependent: :destroy
  has_many :ramen_favorites, dependent: :destroy
end
