class Tarefa < ActiveRecord::Base

  has_many :comments

  attr_accessible :descripton, :name, :status, :urgent
  validates_presence_of :descripton, :name
  scope :recentes, order("created_at DESC")
end
