class Classtable < ActiveRecord::Base
  attr_accessible :class_no, :gen_seats, :obc_seats, :other_seats, :sc_seats, :school_id, :st_seats
  validates_format_of :class_no, :with => /^[1-8]$/,:message => "can contain only numbers from 1-8. "
  validates_format_of :gen_seats, :with => /^\d*$/,:message => "can contain only numbers. Please enter 0 if empty. "
  validates_format_of :obc_seats, :with => /^\d*$/,:message => "can contain only numbers. Please enter 0 if empty. "
  validates_format_of :st_seats, :with => /^\d*$/,:message => "can contain only numbers. Please enter 0 if empty. "
  validates_format_of :other_seats, :with => /^\d*$/,:message => "can contain only numbers. Please enter 0 if empty. "
  belongs_to :school
end
