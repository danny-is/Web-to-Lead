require 'rubygems'
require 'sinatra'
require 'rforce'
require 'pony'
#afd cr

	def enviar_correo()
	
	body = "error al acceder al salesforce ocurrido en la fecha: " + String(Time.now) + " desde la ip: " + String(request.env['REMOTE_ADDR'].split(',').first)
	
	 	Pony.mail(:to => 'admin@incompanysolutions.com',  :subject => "error en acceso a Salesforce", :body => "#{body}", :via => :smtp, :via_options => {
    :address              => 'smtp.gmail.com',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => 'admin@incompanysolutions.com',
    :password             => 'company1',
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
  })
		haml :red3
	
	end



  get '/afdcr-en' do

        haml :contact
    end
    
    
	post '/afdcr-en' do
		     # name = params[:name]
		      name = params[:name]
		      lname = params[:lname]
		      email= params[:email]
		      phone = params[:phone]
		      aux = params[:aux]
		      
		      
		      
		      puts "nombre:" + "#{name}"
		      puts "apellido:" + "#{lname}"
		      puts "email:" + "#{email}"
		      puts "telefono:" + "#{phone}"
		      puts "aux:" + "#{aux}"
		      
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr', 'afdincompanysolutions01u99EvNElGJBGtLhdeiyW0dmiY'
   
   
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Pertenece__c, "AFD Costa Rica",
                    :Idioma__c, "Ingles",
                    :Origen__c, "Web"
                   ]

     			binding.create :sObject => cliente		      
					
		      haml :red1
		  end


  get '/afdcr-es' do

        haml :contact
    end
    
    
	post '/afdcr-es' do
		     # name = params[:name]
		      name = params[:name]
		      lname = params[:lname]
		      email= params[:email]
		      phone = params[:phone]
		      aux = params[:aux]
		      
		      
		      
		      puts "nombre:" + "#{name}"
		      puts "apellido:" + "#{lname}"
		      puts "email:" + "#{email}"
		      puts "telefono:" + "#{phone}"
		      puts "aux:" + "#{aux}"
		      
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr', 'afdincompanysolutions01u99EvNElGJBGtLhdeiyW0dmiY'
   
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Pertenece__c, "AFD Costa Rica",
                    :Idioma__c, "Español",
                    :Origen__c, "Web"
                   ]

     			binding.create :sObject => cliente		      
					
		      haml :red1
		  end
		#AFD nic
    get '/afdni-en' do

        haml :contact
    end
    
    
		post '/afdni-en' do
		     # name = params[:name]
		      name = params[:name]
		      lname = params[:lname]
		      email= params[:email]
		      phone = params[:phone]
		      aux = params[:aux]
		      
		      
		      
		      puts "nombre:" + "#{name}"
		      puts "apellido:" + "#{lname}"
		      puts "email:" + "#{email}"
		      puts "telefono:" + "#{phone}"
		      puts "aux:" + "#{aux}"
		      
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr', 'afdincompanysolutions01u99EvNElGJBGtLhdeiyW0dmiY'
   
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Pertenece__c, "AFD Nicaragua",
                    :Idioma__c, "Ingles",
                    :Origen__c, "Web"
                   ]

     			binding.create :sObject => cliente		      

		      haml :red1
		  end

    get '/afdni-es' do

        haml :contact
    end
    
    
		post '/afdni-es' do
		     # name = params[:name]
		      name = params[:name]
		      lname = params[:lname]
		      email= params[:email]
		      phone = params[:phone]
		      aux = params[:aux]
		      
		      
		      
		      puts "nombre:" + "#{name}"
		      puts "apellido:" + "#{lname}"
		      puts "email:" + "#{email}"
		      puts "telefono:" + "#{phone}"
		      puts "aux:" + "#{aux}"
		      
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr', 'afdincompanysolutions01u99EvNElGJBGtLhdeiyW0dmiY'
   
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Pertenece__c, "AFD Nicaragua",
                    :Idioma__c, "Español",
                    :Origen__c, "Web"
                   ]

     			binding.create :sObject => cliente		      

		      haml :red1
		  end

		  #AFD Panamá
    get '/afdpa-en' do

        haml :contact
    end
    
    
		post '/afdpa-en' do
		     # name = params[:name]
		      name = params[:name]
		      lname = params[:lname]
		      email= params[:email]
		      phone = params[:phone]
		      aux = params[:aux]
		      
		      
		      
		      puts "nombre:" + "#{name}"
		      puts "apellido:" + "#{lname}"
		      puts "email:" + "#{email}"
		      puts "telefono:" + "#{phone}"
		      puts "aux:" + "#{aux}"
		      
        
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr', 'afdincompanysolutions01u99EvNElGJBGtLhdeiyW0dmiY'
   
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Pertenece__c, "AFD Panamá",
                    :Idioma__c, "Ingles",
                    :Origen__c, "Web"
                   ]

     			binding.create :sObject => cliente		      
					#puts binding.inspect
		      haml :red1
		  end
    get '/afdpa-es' do

        haml :contact
    end
    
    
		post '/afdpa-es' do
		     # name = params[:name]
		      name = params[:name]
		      lname = params[:lname]
		      email= params[:email]
		      phone = params[:phone]
		      aux = params[:aux]
		      
		      
		      
		      puts "nombre:" + "#{name}"
		      puts "apellido:" + "#{lname}"
		      puts "email:" + "#{email}"
		      puts "telefono:" + "#{phone}"
		      puts "aux:" + "#{aux}"
		      
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr', 'afdincompanysolutions01u99EvNElGJBGtLhdeiyW0dmiY'
   
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Pertenece__c, "AFD Panamá",
                    :Idioma__c, "Español",
                    :Origen__c, "Web"
                   ]

     			binding.create :sObject => cliente		      

		      haml :red1
		  end
		  
		  
    get '/altercr-en' do

        haml :contact
    end
    #alternativa cr
    
		post '/altercr-en' do
		     # name = params[:name]
		      name = params[:name]
		      lname = params[:lname]
		      email= params[:email]
		      phone = params[:phone]
		      aux = params[:aux]
		      
		      
		      
		      puts "nombre:" + "#{name}"
		      puts "apellido:" + "#{lname}"
		      puts "email:" + "#{email}"
		      puts "telefono:" + "#{phone}"
		      puts "aux:" + "#{aux}"
		      
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr', 'afdincompanysolutions01u99EvNElGJBGtLhdeiyW0dmiY'
   
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Pertenece__c, "AlternativaCR",
                    :Idioma__c, "Ingles",
                    :Origen__c, "Web"
                   ]

     			binding.create :sObject => cliente		      

		      haml :red2
		  end
    get '/altercr-es' do

        haml :contact
    end
    #alternativa cr
    
		post '/altercr-es' do
		     # name = params[:name]
		      name = params[:name]
		      lname = params[:lname]
		      email= params[:email]
		      phone = params[:phone]
		      aux = params[:aux]
		      
		      
		      
		      puts "nombre:" + "#{name}"
		      puts "apellido:" + "#{lname}"
		      puts "email:" + "#{email}"
		      puts "telefono:" + "#{phone}"
		      puts "aux:" + "#{aux}"
		      
		      
				  binding = RForce::Binding.new \
     'https://www.salesforce.com/services/Soap/u/20.0'

   				binding.login \
     'admin@afd.co.cr', 'afdincompanysolutions01u99EvNElGJBGtLhdeiyW0dmiY'
   
     			cliente = [
                    :type,      'Candidato__c',
                    :name,      "#{name}",
                    :Apellidos__c,      "#{lname}",
                    :CorreoElectronico__c,      "#{email}",
                    :Telefono__c,      "#{phone}",
                    :Descripcion__c,      "#{aux}",
                    :Pertenece__c, "AlternativaCR",
                    :Idioma__c, "Español",
                    :Origen__c, "Web"
                   ]

     			binding.create :sObject => cliente		      

		      haml :red2
		  end
