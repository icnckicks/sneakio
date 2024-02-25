class Sneaker < ApplicationRecord
    validates :size, numericality: { greater_than: 0, less_than: 100 }

end
