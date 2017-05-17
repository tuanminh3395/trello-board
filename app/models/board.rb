class Board < ApplicationRecord
  # Define has_many User through board_members
  has_many  :board_members, :class_name => 'BoardMember'
  has_many  :users, :through => :board_members

  # Define has_many List
  has_many  :lists

  # Define has_many BoardActivity
  has_many  :board_activities

end
