# == Schema Information
#
# Table name: buys
#
#  id         :integer          not null, primary key
#  client_id  :integer
#  cat        :string(255)
#  budget     :text
#  bdr        :integer
#  tipe       :integer
#  surface    :text
#  sector1    :text
#  sector2    :text
#  sector3    :text
#  sector4    :text
#  ground     :text
#  age        :string(255)
#  travaux    :boolean
#  plain      :boolean
#  garage     :boolean
#  standing   :string(255)
#  note       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Buy < ActiveRecord::Base
  attr_accessible :client_id, :cat, :budget, :bdr, :tipe, :surface, :sector1, :sector2, :sector3, :sector4, :ground, :age, :travaux, :plain, :garage, :standing, :note

  ###RELATIONSHIPS##########
  belongs_to :client
  has_many :steps, :dependent => :destroy
  ############################################
  
  ###ATTRIBUTES VALIDATION##########
  validates :client_id, :presence => true
  validates :cat, :presence => true
  ############################################

  
  
end
