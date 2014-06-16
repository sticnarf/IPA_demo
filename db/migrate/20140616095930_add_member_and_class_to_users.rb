class AddMemberAndClassToUsers < ActiveRecord::Migration
  def change
    add_column :users, :member, :integer
    add_column :users, :classroom, :string
  end
end
