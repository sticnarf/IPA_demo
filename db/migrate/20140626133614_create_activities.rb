class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.timestamp :start_time
      t.timestamp :end_time
      t.string :title

      t.timestamps
    end
  end
end
