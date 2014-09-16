class CityspringController < ApplicationController
  def home #show home page
    render "home"
  end

  def index #show home page
    render "home"
  end

def results #current controller for results
   if params[:search].present? #only capture parameters if something has been entered
         puts params[:search]
         @your_address = params[:search]
     @resources = Resource.near(params[:search], 1, :order => :activity) #use the geocoded address to search the database for locations w/i 1 mile
     if Resource.geocoded #checking to see that the user input has been geocoded
      puts "geocoded"
      @geocode_true = 1
      puts @geocode_true
    else      
      puts "not geocoded"  #if user input was not geocoded then note that fact
      @geocode_true = 0
      puts @geocode_true
     end

     if @resources.empty? #note if that the user input was geocoded but was not near any resources in the database
       puts "no results"
       @geocode_true = -1
       puts @geocode_true
       end
    
   end
end

def show #original controller for view
if params[:search].present? #only capture parameters if something has been entered
         puts params[:search]
         @your_address = params[:search]
     @resources = Resource.near(params[:search], 1, :order => :activity) #use the geocoded address to search the database for nearby locations
     if Resource.geocoded #checking to see that the user input has been geocoded
      puts "geocoded"
      @geocode_true = 1
      puts @geocode_true
    else      
      puts "not geocoded"  #if user input was not geocoded then note that fact
      @geocode_true = 0
      puts @geocode_true
     end

     if @resources.empty? #note if that the user input was geocoded but was not near any resources in the database
       puts "no results"
       @geocode_true = -1
       puts @geocode_true
       end
    
   end


end

def useful_resources #show other nyc agencies and resources for children
  render "useful_resources"
  end

  def contact_us #page for contacting web developer
    render "contact_us"
  end

end