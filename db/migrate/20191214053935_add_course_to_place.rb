class AddCourseToPlace < ActiveRecord::Migration[5.0]
  def change
    add_reference :places, :course, foreign_key: true
  end
end
