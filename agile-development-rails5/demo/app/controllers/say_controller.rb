class SayController < ApplicationController
  
  def hello
    @time = Time.now
  end

  def goodbye
    @time = Time.now
  end

  def ahoy
  end

  def archivos
    @files = Dir.glob('*')
  end
end
