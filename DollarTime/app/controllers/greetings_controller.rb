class GreetingsController < ApplicationController
  def hello
    @currentTime = Time.now
  end
 

end
