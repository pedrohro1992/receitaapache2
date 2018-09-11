package 'httpd'

file '/var/www/html/index.html' do 
	content "<h1> Informações sobre o node</h1>
	 <h1>HHOSTNAME:#{node['hostname']}</h1>
	 <h1> IPADDRES: #{node['ipaddress']}</h1> 
         <h1>CPU: #{node['cpu']['0']['mhz']}</h1>
         <h1>  MEMORY: #{node['memory']['total']}</h1>"
end 

service 'httpd' do 
	action [ :enable, :start ]
end 
