# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  full_name       :string(255)
#  email           :string(255)      not null
#  password_digest :string(255)
#  session_key     :string(255)
#  activation_key  :string(255)
#  bio             :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email        (email) UNIQUE
#  index_users_on_full_name    (full_name) UNIQUE
#  index_users_on_session_key  (session_key)
#

class User < ApplicationRecord
  # Define has_many Board through joint table board_members
  has_many  :board_members, :foreign_key => 'member_id', :class_name => 'BoardMember'
  has_many  :boards, :through => :board_members

  # Define has_many CardMember
  has_many  :card_members, :class_name => 'CardMember', :foreign_key => 'member_id'
  has_many  :cards, :through => :card_members
end
