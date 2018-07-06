class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now <=> 11:59
    if t = -1
      resp.write "Good Morning!"
    elsif t = 1
      resp.write "Good Afternoon!"
    end

    resp.finish
  end


end
