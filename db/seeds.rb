# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
Product.delete_all
Advertisement.delete_all
#Ruby 
Product.create( title: 'Ruby Ring', description:
		%{<p>A gift for a programmer.</p>}, 
		image_url: 'ruby_ring.jpg',
		price: 9.99 )

#Coffee
Product.create( title: 'Coffee-Script Earrings',
	description:
		%{<p>A gift for a scripter.</p>}, 
		image_url: 'coffee_script.jpg',
		price: 0.99 )

#Cucumber
Product.create( title: 'Cucumber Errings',
	description:
		%{<p>A gift for a tester.</p>}, 
		image_url: 'cucumber_earring.jpg',
		price: 10000.99 )
#Happy
Advertisement.create( title: 'zHappy',
		image_url: 'happy.jpg' )

#Roper
Advertisement.create( title: 'Roper',
		image_url: 'roper.jpg' )

#Dior
Advertisement.create( title: 'Dior',
		image_url: 'dior.jpg' )


