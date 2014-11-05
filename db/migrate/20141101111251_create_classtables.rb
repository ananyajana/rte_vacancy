class CreateClasstables < ActiveRecord::Migration
  def change
    create_table :classtables do |t|
      t.integer :school_id
      t.integer :class_no
      t.integer :gen_seats
      t.integer :obc_seats
      t.integer :sc_seats
      t.integer :st_seats
      t.integer :other_seats

      t.timestamps
    end
  end
end
