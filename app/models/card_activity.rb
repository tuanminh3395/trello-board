# == Schema Information
#
# Table name: card_activities
#
#  id          :integer          not null, primary key
#  member_id   :integer          not null
#  card_id     :integer          not null
#  description :text(65535)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_card_activities_on_card_id  (card_id)
#

class CardActivity < ApplicationRecord
  belongs_to  :card
end
