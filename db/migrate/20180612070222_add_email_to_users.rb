class AddEmailToUsers < ActiveRecord::Migration[5.0]
  def change

    add_column :users, :email, :string
    add_column :users, :created_at, :datetime
    add_column :users, :uptaded_at, :datetime

  end
end
