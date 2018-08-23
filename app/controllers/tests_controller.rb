class TestsController < ApplicationController
 #before_action :authenticate_user!
 
 def index
  @pages = Page.all
 end
 def about
 end
 def contact
 end
 def help
 end
     


end
