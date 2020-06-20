require 'date'
# require 'pry'
class Application
 
    def call(env)
      resp = Rack::Response.new
      date = Time.now.hour
    #   resp.write date 

    
      if date < 12
        resp.write "Good Morning!" 
      else
        resp.write"Good Afternoon!"
      end
      resp.finish

    end
   
  end