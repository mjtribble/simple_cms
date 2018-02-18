class DemoController < ApplicationController

  layout false
# index action is referencing the hello template
# since we are in the demo controller it is looking in the demo folder of the view
  def index
    @array = [45, 6, 32, 0]
  end

  def hello
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
    render('hello')

  end

##### EXAMPLE #####
# if a user logs in successfully render welcome page else render login page

### Redirect example ######
  def other_hello
    # redirect_to(:controller => 'demo', :action =>'index')
    redirect_to(:action => 'hello')
  end

  def lynda
    redirect_to('http://lynda.com')
  end

end
