require 'rubygems'
require 'sinatra'

require 'soap/wsdlDriver'
require 'net/http'
require 'rexml/document'

def render_file(filename)
  contents = File.read('views/'+filename+'.haml')
  Haml::Engine.new(contents).render
end

def object_import(xml_data)
		
		product_hash = {}
		n = xml_data.product_ListRetrieveResult.products.length
		for i in 0..n -1 do
		
		product_hash[i] = {
			"titulo" => xml_data.product_ListRetrieveResult.products[i].productTitle ,
			"especs" => xml_data.product_ListRetrieveResult.products[i].custom1,
			"precio" => xml_data.product_ListRetrieveResult.products[i].pricesSaleArray.string,
		  "imagen" => xml_data.product_ListRetrieveResult.products[i].smallImage}

		end
		for i in 0..30 -1 do	
			puts String(i) + " : " + (product_hash[i])["titulo"]
			puts String(i) + " : " + (product_hash[i])["especs"]	
			puts String(i) + " : " + (product_hash[i])["precio"]	
		end
	return product_hash
end


get '/connect' do
  ENV['SHOWSOAP'] = 'true'
  url = 'http://www.btc.cr/CatalystWebService/CatalystEcommerceWebservice.asmx?WSDL'
	driver = SOAP::WSDLDriverFactory.new(url).create_rpc_driver
	#driver.options['protocol.http.ssl_config.verify_mode'] = OpenSSL::SSL::VERIFY_NONE
	result= driver.Product_ListRetrieve(:Username=> "rrodriguez@incompanysolutions.com",:Password => "monomono",:SiteId =>100917,:CatalogId =>"-1")
	#result.inspect
  object_import(result).inspect
end
