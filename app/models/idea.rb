# == Schema Information
#
# Table name: ideas
#
#  id          :bigint           not null, primary key
#  idea_image  :string(255)
#  opinion     :text(65535)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  end_user_id :integer
#
class Idea < ApplicationRecord
  belongs_to :end_user
end
