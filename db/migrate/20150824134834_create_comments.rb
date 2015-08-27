class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name, null: false
      t.string :mail_address
      t.text :comment, null: false
      t.timestamps null: false
    end
  end
end
