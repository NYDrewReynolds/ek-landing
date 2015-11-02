class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.boolean :waiting_list, default: false
      t.boolean :mailing_list, default: true

      t.timestamps null: false
    end
  end
end
