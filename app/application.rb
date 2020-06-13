class Application

    def call(env)
        resp = Rack::Response.new
        time_string = Time.now.strftime('%H')
        if time_string.to_i >= 12
           resp.write "Good Afternoon!"
        else
            resp.write "Good Morning!"
        end
        resp.finish
    end

end
