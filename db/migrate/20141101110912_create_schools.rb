class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.integer :user_id
      t.string :reg_id
      t.string :school_name
      t.text :address
      t.string :district
      t.string :state
      t.integer :pin
      t.string :phone
      t.string :phone2
      t.string :email_id
      t.string :fax
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
