class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :session_id, null: false
      t.string :stripe_checkout_id, null: false
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
