class School < ActiveRecord::Base
  attr_accessible :address, :district, :email_id, :fax, :latitude, :longitude, :phone, :phone2, :pin, :reg_id, :school_name, :state, :user_id
	

def self.search(search)
  if search
    find(:all, :conditions => ['school_name LIKE ? OR state LIKE ? OR district LIKE ? OR address LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
  else
	find(:all)
  end
end


  end
