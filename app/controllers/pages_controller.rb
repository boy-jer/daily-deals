class PagesController < ApplicationController

  unloadable

  rescue_from ActionView::MissingTemplate, :with => :invalid_page

  def show
    render :template => current_page
  end
  
  def contact
    #TODO: Write the actionmailer form
    respond_to do |format|
      format.html # contact.html.erb
    end
  end
  

  protected

    def invalid_page
      render :nothing => true, :status => 404
    end

    def current_page
      "pages/#{params[:id].to_s.downcase}"
    end
end