class Sneaker < ApplicationRecord
 validates :size, numericality: { greater_than: 0, less_than: 100 }
 validates :size_category, inclusion: { in: %w(M W GS PS TD) }   
end
