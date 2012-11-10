class Product < ActiveRecord::Base
  
  attr_accessible :description, :image_url, :price, :size, :title

	has_many :line_items
	has_many :orders, through: :line_items
	
	before_destroy :ensure_not_referenced_by_any_line_items
	
	validates :price, presence: true, numericality: {greater_than_or_equal_to: 0.01}
	
	validates :description, presence: true
	
	validates :title, presence: true, uniqueness: true
	
	validates :image_url, presence: true, allow_blank: true, format: 
	{
		with:	%r{\.(gif|jpg|png|jpeg)$}i,
		message: 'must be a URL for GIF, JPG or PNG image.'
	}

	private
	
		def ensure_not_referenced_by_any_line_items
			if line_items.empty?
				return true
			else
				errors.add(:base, 'Line Items present')
				return false
			end
		end
			
end
