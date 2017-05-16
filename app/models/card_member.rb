class CardMember < ApplicationRecord
  belongs_to  :user, :class_name => 'User'
  belongs_to  :card
end
