class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validatable :name, presence: true
  validates_format_of :password, with: /([0-9].*[a-zA-Z]|[ a-zA-Z].*[0-9])/, on: :create
  has_many :groups, through: :group_users
  has_many :messages
  has_many :group_users
end
