class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :last_name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
