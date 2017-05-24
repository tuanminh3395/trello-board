# == Schema Information
#
# Table name: board_members
#
#  id         :integer          not null, primary key
#  board_id   :integer          not null
#  member_id  :integer          not null
#  admin      :boolean          default("1"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_board_members_on_board_id                (board_id)
#  index_board_members_on_board_id_and_member_id  (board_id,member_id) UNIQUE
#

class BoardMember < ApplicationRecord
  belongs_to  :user, :class_name => 'User'
  belongs_to  :board

end
