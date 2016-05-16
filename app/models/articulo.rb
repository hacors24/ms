class Articulo < ActiveRecord::Base
	has_attached_file :imagen2 ,styles: {thumb:"800x600"}
	validates_attachment_content_type :imagen2, :content_type => /\Aimage\/.*\Z/
	

end
