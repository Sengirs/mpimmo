# == Schema Information
#
# Table name: products
#
#  id           :integer          not null, primary key
#  class        :string(255)
#  num_mandat   :integer
#  status       :boolean
#  date1        :date
#  date2        :date
#  adress       :text
#  zip          :integer
#  city         :text
#  cat          :string(255)
#  price1       :decimal(, )
#  price2       :decimal(, )
#  price3       :decimal(, )
#  price4       :decimal(, )
#  etat         :string(255)
#  year         :integer
#  tipe         :integer
#  bdr          :integer
#  surface      :decimal(, )
#  ground       :decimal(, )
#  story        :integer
#  sector1      :text
#  sector2      :text
#  sector3      :text
#  sector4      :text
#  pool         :boolean
#  travaux      :boolean
#  travaux_note :text
#  note         :text
#  vitrine      :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Product < ActiveRecord::Base
  attr_accessible :class :num_mandat :status :date1 :date2 :adress :zip :city :cat :price1 :price2 :price3 :price4 :etat :year :tipe :bdr :surface :ground :story :sector1 :sector2 :sector3 :sector4 :pool :travaux :travaux_note :note :vitrine
  
  ###RELATIONSHIPS##########
  has_many :steps
  ############################################
  
  ###ATTRIBUTES VALIDATION##########
  validates :class, :presence => true
  validates :num_mandat, :presence => true
  validates :status, :presence => true
  ############################################
  
end
