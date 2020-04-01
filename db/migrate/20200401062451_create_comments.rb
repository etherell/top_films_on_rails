class CreateComments < ActiveRecord::Migration[6.0]
  # This file is create automatically 

  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :body
      
      t.references :article, null: false, foreign_key: true

      t.timestamps
    end
  end
end
