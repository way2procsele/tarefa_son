class Comment < ActiveRecord::Base
  
  belongs_to :tarefa

  attr_accessible :content, :name, :tarefa_id
  validates_presence_of :name, :content, :tarefa_id


  
end
