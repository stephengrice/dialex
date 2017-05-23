class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.string :original
      t.string :translation
      t.references :lesson, foreign_key: true

      t.timestamps
    end
  end
end
