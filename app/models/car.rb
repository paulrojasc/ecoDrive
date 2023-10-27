class Car < ApplicationRecord
  has_one_attached :image
  
  belongs_to :user
  belongs_to :modelcar
  belongs_to :brand
  has_many :features, through: :car_feature
end
