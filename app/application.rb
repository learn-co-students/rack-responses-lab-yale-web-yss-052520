class Application
    def call(env)
        resp = Rack::Response.new

        time = Time.now.strftime("%H%M").to_i
        if time < 1200
            resp.write "Good Morning!"
        else
            resp.write "Good Afternoon!"
        end

        resp.finish
    end
end