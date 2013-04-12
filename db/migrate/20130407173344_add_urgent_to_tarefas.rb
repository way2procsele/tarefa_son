class AddUrgentToTarefas < ActiveRecord::Migration
  def change
    add_column :tarefas, :urgent, :boolean
  end
end
