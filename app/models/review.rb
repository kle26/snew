class Review < ApplicationRecord
  belongs_to :user
  belongs_to :prodotto
end
