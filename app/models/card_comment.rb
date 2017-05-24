# == Schema Information
#
# Table name: card_comments
#
#  id           :integer          not null, primary key
#  card_id      :integer          not null
#  commenter_id :integer          not null
#  content      :text(65535)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_card_comments_on_card_id  (card_id)
#

class CardComment < ApplicationRecord
  # Define belongs_to Card
  belongs_to  :card
end
