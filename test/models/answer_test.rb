require 'test_helper'

class AnswerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  question_id :integer
#  desc        :text
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_answers_on_question_id  (question_id)
#
