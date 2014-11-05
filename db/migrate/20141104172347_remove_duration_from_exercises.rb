class RemoveDurationFromExercises < ActiveRecord::Migration
  def change
    remove_column :exercises, :duration, :time
  end
end
