class AddDefaultToMemberColumn < ActiveRecord::Migration
  def change
    change_column :users, :member, :integer, default: 1
  end
end
