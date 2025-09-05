class User < ApplicationRecord
  belongs_to :location, optional: true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
