class CardComment < ApplicationRecord
  # Define belongs_to Card
  belongs_to  :card
end
