# == Schema Information
#
# Table name: cards
#
#  id          :integer          not null, primary key
#  list_id     :integer          not null
#  title       :string(255)      not null
#  description :text(65535)
#  due_date    :datetime
#  open        :boolean          default("1"), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_cards_on_list_id  (list_id)
#

class Card < ApplicationRecord
  # Define has_many CardMember
  has_many  :card_members, :class_name => 'CardMember', :foreign_key => 'card_id'
  has_many  :users, :through => :card_members

  # Define belongs_to List
  belongs_to  :list

  # Define has_many CardActivity
  has_many  :card_activities, :foreign_key => 'card_id', :class_name => 'CardActivity'

  # Define has_many CardComment
  has_many  :card_comments, :foreign_key => 'card_id', :class_name => 'CardComment'
end
