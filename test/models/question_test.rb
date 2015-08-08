require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  user_id    :integer
#  desc       :text
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_questions_on_user_id  (user_id)
#
