require 'pry'
class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now <=> 12
    binding.pry
    if t = -1
      resp.write "Good Morning!"
    elsif t = 0 || t = 1
      resp.write "Good Afternoon!"
    end

    resp.finish
  end


end
