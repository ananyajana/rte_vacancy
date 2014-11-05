class Classtable < ActiveRecord::Base
  attr_accessible :class_no, :gen_seats, :obc_seats, :other_seats, :sc_seats, :school_id, :st_seats
end
