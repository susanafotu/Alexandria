# == Schema Information
#
# Table name: permissions
#
#  id          :integer         not null, primary key
#  user_id     :integer
#  document_id :integer
#  access      :string
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class Permission < ActiveRecord::Base
  attr_accessible :user_id, :document_id, :access 
  belongs_to :user
  belongs_to :document
end
