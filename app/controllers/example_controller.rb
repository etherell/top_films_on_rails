class ExampleController < ApplicationController
  def test
    @current_time = Time.now
    @foo = "Hi, I'm foo variable"
  end
  def index
    @foo = "Hi, I'm foo variable twice"
  end
end
