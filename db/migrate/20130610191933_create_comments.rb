class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author_name
      t.text :body
      t.references :clinic

      t.timestamps
    end
    add_index :comments, :clinic_id
  end
end
