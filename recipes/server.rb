package 'http'

file '/var/www/html/index.html' do 
	content '<h1>Hello, Word'
end 

service 'http' do 
	action [ :enable, :start ]
end 
