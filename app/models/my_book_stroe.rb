class MyBookStroe < ActiveRecord::Base
  attr_accessible :Content, :File, :Image, :Reference, :Tag, :Title
end
