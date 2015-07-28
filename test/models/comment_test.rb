require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  desc       :string(255)
#  answer_id  :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_comments_on_answer_id  (answer_id)
#
