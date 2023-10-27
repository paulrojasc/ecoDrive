class Car < ApplicationRecord
  has_one_attached :image
  
  belongs_to :user
  belongs_to :modelcar
  belongs_to :brand
  has_many :features, through: :car_feature

  include PgSearch::Model

    pg_search_scope :search_full_text,
    againts: {
        username: 'A',
        description: 'B',
        id: 'C',
    },
    using: {
        tsearch: {
            prefix: true,
            any_word: true,
            dictionary: "spanish"
        }
    }

end
