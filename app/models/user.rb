class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :fullname, presence: true
  validates :email, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :validatable

  has_many :categories, dependent: :destroy
end
