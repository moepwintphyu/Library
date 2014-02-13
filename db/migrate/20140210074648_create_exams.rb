class CreateExams < ActiveRecord::Migration
  def change
    create_table :exams do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
