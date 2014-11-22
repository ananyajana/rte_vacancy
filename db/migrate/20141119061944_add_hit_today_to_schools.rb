class AddHitTodayToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :hit_today, :integer, :default=>0
  end
end
