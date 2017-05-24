# == Schema Information
#
# Table name: card_members
#
#  id         :integer          not null, primary key
#  card_id    :integer          not null
#  member_id  :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_card_members_on_card_id                (card_id)
#  index_card_members_on_card_id_and_member_id  (card_id,member_id) UNIQUE
#

class CardMember < ApplicationRecord
  belongs_to  :user, :class_name => 'User'
  belongs_to  :card
end
