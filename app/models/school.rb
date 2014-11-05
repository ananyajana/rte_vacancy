class School < ActiveRecord::Base
  attr_accessible :address, :district, :email_id, :fax, :latitude, :longitude, :phone, :phone2, :pin, :reg_id, :school_name, :state, :user_id
end
