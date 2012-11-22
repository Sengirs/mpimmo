# == Schema Information
#
# Table name: sells
#
#  id         :integer          not null, primary key
#  client_id  :integer
#  product_id :integer
#  date       :date
#  origin     :string(255)
#  mandat     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Sell < ActiveRecord::Base
  attr_accessible :client_id, :product_id, :date, :origin, :mandat
  
  ###RELATIONSHIPS##########
  belongs_to :client
  has_one :product
  ############################################
  
  ###ATTRIBUTES VALIDATION##########
  validates :client_id, :presence => true
  validates :product_id, :presence => true
  ############################################
  
end
