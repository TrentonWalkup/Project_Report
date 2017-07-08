class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string :story
      t.boolean :qapass
      t.integer :passpercentage
      t.string :team

      t.timestamps
    end
  end
end
