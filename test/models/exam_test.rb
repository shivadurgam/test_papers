# == Schema Information
#
# Table name: exams
#
#  id         :integer          not null, primary key
#  answers    :text
#  opt1       :string
#  opt2       :string
#  opt3       :string
#  opt4       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ExamTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
