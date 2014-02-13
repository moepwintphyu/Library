class Book < ActiveRecord::Base
  attr_accessible :Content, :File, :Image, :Reference, :Tag, :Title, :attach
  attr_accessor :attach_file_name
  has_attached_file :attach
  #attr_accessor :pic_file_name
  #attr_accessor :File
  mount_uploader :Image, PictureUploader
 

  #PDF.generate do |pdf|
   # pdf << column_names
    #@books.each do |pdf|
     # pdf << book.attributes.values_at(*column_names)
   # end 
 # end
  #send_data(book_pdf, :text => "text/pdf" , :string.encode => 'UTF-8', filename=>'all_books.pdf' )
  #mount_uploader :File, DataFileUploader
  #attr_accessor :File
  ##name = book['datafile'].original_filename
  	##path = File.join(directroy,name), 
  	#File.open(path,"wp") { |f| f.write(book['datafile'].read)}
	#end



   #validates :name, :presence => true    
   #validates :email, :presence => true
   #Shas_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>" }
   
end