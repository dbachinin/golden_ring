class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
   index = Indexpage.first
    @descr = index.description.split('#').first
    @hello = index.description.split('#')[1]
    @address = index.description.split('#')[2]
end
