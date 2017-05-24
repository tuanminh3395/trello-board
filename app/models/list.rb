# == Schema Information
#
# Table name: lists
#
#  id         :integer          not null, primary key
#  board_id   :integer          not null
#  title      :string(255)
#  open       :boolean          default("1"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_lists_on_board_id  (board_id)
#

class List < ApplicationRecord
  # Define belongs_to Board
  belongs_to  :board

  # Define has_many Card
  has_many  :cards
end
