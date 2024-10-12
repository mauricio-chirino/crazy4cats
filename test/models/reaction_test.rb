# == Schema Information
#
# Table name: reactions
#
#  id         :bigint           not null, primary key
#  post_id    :bigint           not null
#  user_id    :bigint           not null
#  kind       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class ReactionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
