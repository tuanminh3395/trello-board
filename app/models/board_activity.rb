# == Schema Information
#
# Table name: board_activities
#
#  id          :integer          not null, primary key
#  member_id   :integer          not null
#  board_id    :integer          not null
#  description :text(65535)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_board_activities_on_board_id  (board_id)
#

class BoardActivity < ApplicationRecord
  belongs_to  :board
end
