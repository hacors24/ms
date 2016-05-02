class Ventum < ActiveRecord::Base
	belongs_to :cliente
	has_many :detalle_ventum

end
