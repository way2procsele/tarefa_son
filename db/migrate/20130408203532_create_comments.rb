class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.text :content
      t.integer :tarefa_id

      t.timestamps
    end
  end
end
