class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :datings
  has_many :participants
  has_one_attached :photo
  GENDERS = ["Féminin", "Masculin", "Non-binaire", "Gender queer", "Gender fluid"]
  validates :gender, inclusion: { in: GENDERS }
  validates :username, presence: true
  validates :gender, presence: true
  validates :email, format: { with: /.*@.*\..*/,
    message: "Format d'une adresse mail attendu ;)" }
end
