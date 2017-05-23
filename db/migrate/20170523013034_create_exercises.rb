class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.references :lesson, foreign_key: true
      t.string :type

      t.timestamps
    end
  end
end
