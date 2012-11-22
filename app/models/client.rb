# == Schema Information
#
# Table name: clients
#
#  id                 :integer          not null, primary key
#  num_client         :integer
#  surname1           :string(255)
#  surname2           :string(255)
#  name1              :string(255)
#  name2              :string(255)
#  adress             :text
#  zip                :integer
#  city               :text
#  ph1                :string(255)
#  ph2                :string(255)
#  port1              :string(255)
#  port2              :string(255)
#  mail1              :string(255)
#  mail2              :string(255)
#  date               :datetime
#  canal              :string(255)
#  origin             :string(255)
#  note               :text
#  encrypted_password :string(255)
#  salt               :string(255)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Client < ActiveRecord::Base
  attr_accessible :surname1, :surname2, :name1, :name2, :adress, :zip, :city, :ph1, :ph2, :port1, :port2, :mail1, :mail2, :date, :canal, :origin, :note
  
  ###RELATIONSHIPS##########
  has_many :sells, :dependent => :destroy
  has_many :buys, :foreign_key => "client_id", :dependent => :destroy
  has_many :steps, :through => :buys
  has_many :products, :through => :steps
  has_many :products, :through => :sells
  ############################################
  
  
  ###ATTRIBUTES VALIDATION##########
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :surname1, :presence => true
  validates :mail1, :uniqueness => {:case_sensitive => false}, :format => { :with => email_regex }
  validates :mail2, :uniqueness => {:case_sensitive => false}, :format => { :with => email_regex }
  ############################################
  
end
