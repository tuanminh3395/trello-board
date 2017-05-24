# == Schema Information
#
# Table name: boards
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  open        :boolean          default("1"), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_boards_on_open  (open)
#

class Board < ApplicationRecord
  # Define has_many User through board_members
  has_many  :board_members, :class_name => 'BoardMember'
  has_many  :users, :through => :board_members

  # Define has_many List
  has_many  :lists

  # Define has_many BoardActivity
  has_many  :board_activities

end
