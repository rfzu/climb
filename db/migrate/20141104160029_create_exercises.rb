class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.text :description
      t.time :duration
      t.integer :attr_id

      t.timestamps
    end
  end
end
