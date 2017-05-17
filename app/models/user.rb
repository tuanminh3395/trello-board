class User < ApplicationRecord
  # Define has_many Board through joint table board_members
  has_many  :board_members, :foreign_key => 'member_id', :class_name => 'BoardMember'
  has_many  :boards, :through => :board_members

  # Define has_many CardMember
  has_many  :card_members, :class_name => 'CardMember', :foreign_key => 'member_id'
  has_many  :cards, :through => :card_members
end
