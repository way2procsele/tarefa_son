class CreateTarefas < ActiveRecord::Migration
  def change
    create_table :tarefas do |t|
      t.string :name
      t.text :descripton
      t.boolean :status

      t.timestamps
    end
  end
end
