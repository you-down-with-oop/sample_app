class Api::ExamplePagesController < ApplicationController
  def hello_method
    render json: { message: "Hello!" }
  end

  def time_method
    @raw_time = Time.now
    @time = Time.now.strftime("%b %e, %l:%M %p")
    render "time.json.jb"
  end

  def stuff
    render html: "<h1>This is cool</h1><p>yhid igfdgdfg</p>".html_safe
  end
end
