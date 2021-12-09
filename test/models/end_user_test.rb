# == Schema Information
#
# Table name: end_users
#
#  id                     :bigint           not null, primary key
#  birth_date             :date
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  introduction           :text(65535)      not null
#  name                   :string(255)      not null
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string(255)
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_end_users_on_email                 (email) UNIQUE
#  index_end_users_on_reset_password_token  (reset_password_token) UNIQUE
#
require "test_helper"

class EndUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
