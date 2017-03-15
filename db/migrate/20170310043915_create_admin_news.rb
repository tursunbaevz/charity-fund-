class CreateAdminNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :text 
      t.boolean :is_published


      t.timestamps null: false
    end
  end
end
