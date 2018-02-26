class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render text: "Hello lego"
  end

  def goodBye
    render text: 'GoodBye'
  end
end
