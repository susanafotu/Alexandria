# == Schema Information
#
# Table name: likes
#
#  id            :integer         not null, primary key
#  user_id       :integer
#  document_id   :integer
#  collection_id :integer
#  created_at    :datetime        not null
#  updated_at    :datetime        not null
#

class Like < ActiveRecord::Base
  attr_accessible :document_id, :user_id, :collection_id
  belongs_to :user
  belongs_to :document
  belongs_to :collection
end
