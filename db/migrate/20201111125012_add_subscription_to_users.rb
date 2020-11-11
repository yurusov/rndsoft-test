class AddSubscriptionToUsers < ActiveRecord::Migration[6.0]
  def change
    # subscriptions: 0 = disabled, 1 = daily, 2 = weekly
    add_column :users, :subscription, :integer
  end
end
