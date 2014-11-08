class School < ActiveRecord::Base
  attr_accessible :address, :district, :email_id, :fax, :latitude, :longitude, :phone, :phone2, :pin, :reg_id, :school_name, :state, :user_id
  validates_format_of :reg_id, :with => /^[a-zA-Z][a-zA-Z\d_]*$/,:message => "can only be alphanumeric with no spaces"	
  validates_format_of :pin, :with => /(?:^|\D)\d{6}(?:\D|$)/,:message => "can only be 6 digit number with no spaces" 
  validates_format_of :phone, :with => /(?:^|\D)\d{10}(?:\D|$)/,:message => " can only be 10 digit mobile number with no spaces " 
  validates :phone2, :format => {:with => /(?:^|\D)\d{11}(?:\D|$)/}, :allow_nil => true
  validates :phone2, :format => {:with => /(?:^|\D)\d{11}(?:\D|$)/}, :allow_nil => true
  validates :district, :presence => true, :format => { :with=>/^[a-zA-Z\s]*$/} 
  validates :state, :presence => true, :format => { :with=>/^[a-zA-Z\s]*$/} 
  validates :email_id, :presence => true, :uniqueness=>true 
def self.search(search)
  if search
    find(:all, :conditions => ['school_name LIKE ? OR state LIKE ? OR district LIKE ? OR address LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%"])
  else
	find(:all)
  end
end
 has_many :classtables 
 belongs_to :users
  end
