class Feature < ApplicationRecord
    has_many :cars, through: :car_feature
end
