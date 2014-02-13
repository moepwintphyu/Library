class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :Title
      t.string :Tag
      t.string :Content
      t.string :Image
      t.string :Reference
      t.string :File

      t.timestamps
    end
  end
end
