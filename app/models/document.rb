# == Schema Information
#
# Table name: documents
#
#  id             :integer         not null, primary key
#  users_id       :integer
#  collections_id :integer
#  name           :string
#  filePath       :string
#  isPublished    :boolean
#  created_at     :datetime        not null
#  updated_at     :datetime        not null
#

class Document < ActiveRecord::Base
  attr_accessible :name, :collections_id
  has_attached_file :document
  do_not_validate_attachment_file_type :document
  #, :default_url => "/images/:style/missing-document"  #default page for non-existing document
  # validates_attachment_content_type :doc, :content_type => /\Afile\/.*\Z/
  belongs_to :users
  has_many :collections
  
end
