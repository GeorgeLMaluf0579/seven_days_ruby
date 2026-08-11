 DEFAULT_OPTIONS = { 
  timeout: 10,
  retries: 3
 }

 def configure(options)
   options[:timeout] = 30
 end

 configure(DEFAULT_OPTIONS)
  
 puts DEFAULT_OPTIONS
