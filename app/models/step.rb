# == Schema Information
#
# Table name: steps
#
#  id            :integer          not null, primary key
#  buy_id        :integer
#  product_id    :integer
#  status        :boolean
#  date          :date
#  origin        :string(255)
#  contact1      :datetime
#  contact1_note :text
#  contact2      :datetime
#  contact2_note :text
#  contact3      :datetime
#  contact3_note :text
#  contact4      :datetime
#  contact4_note :text
#  note          :text
#  fail_note     :text
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Step < ActiveRecord::Base
  attr_accessible :buy_id :product_id :status :date :origin :contact1 :contact1_note :contact2 :contact2_note :contact3 :contact3_note :contact4 :contact4_note :note :fail_note
  

  ###RELATIONSHIPS##########
  belongs_to :buy
  has_one :product
  ############################################
  
  
  ###ATTRIBUTES VALIDATION##########
  validates :buy_id, :presence => true
  validates :product_id, :presence => true
  ############################################
  
end
