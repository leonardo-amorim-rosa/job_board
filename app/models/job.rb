# encoding: utf-8
class Job < ActiveRecord::Base
  attr_accessible :description, :title, :premium
  
#  validates_presence_of :title, :description #validação para mais de uma propriedade
  validates :title, :presence => {:message => "O título é obrigatório."} 	#com sintax sugar ficaria validates :title, :presence => true
  validates("description", {:presence => true}) #com sintax sugar ficaria validates :description, :presence => true
  
  scope :most_recent, order("created_at DESC")
  
  has_many :comments  
end
