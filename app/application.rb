class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now <=> 12
    if t = -1
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end


end
