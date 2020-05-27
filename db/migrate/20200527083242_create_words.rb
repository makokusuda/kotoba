class CreateWords < ActiveRecord::Migration[6.0]
  def change
    create_table :words do |t|
      t.string :question
      t.string :answer
      t.integer :memorize

      t.timestamps
    end
  end
end
