class AddActivationCodeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :activation_code, :string
    add_column :users, :activated_at, :datetime
  end
end
