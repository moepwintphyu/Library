class User < ActiveRecord::Base

  attr_accessible :avatar, :name, :resume
  has_attached_file :avatar, :style => {:thumb => "100x100>"}
  has_attached_file :resume
end
