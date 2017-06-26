class PagesController < ApplicationController
  
  def services
    @layout='none'
    @description = 'Consected provides business consulting services, from leadership, to strategy, through implementation'
    @title = 'Consected Services'

    render :services
  end
  
  def privacy
    @layout='wide'
    @description = 'Consected Privacy Policy. Clear, concise and transparent.'
@title = 'Consected Privacy Policy'
    render :privacy
  end  
  
  def contact
    @layout=''
    @description = 'Contact Consected for more information about how we can help your business.'
    @title = 'Contact Consected'
    render :contact
  end  
  
  
  def index
    @layout='wide'
    @title = 'Consected: Feel Good About Your Business'
    @description = 'Since 2009, Consected has been helping companies and non-profits understand how processes and technology can help them work better.'

    
    render :index
  end  
end
