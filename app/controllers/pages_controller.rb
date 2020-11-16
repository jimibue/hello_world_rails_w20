class PagesController < ApplicationController

  # street officer directing traffic
  # just grab all pages (generally for crud but not all the time)
  def index
    @pages = Page.all
    # rail convention... if you dont explicity tell rails what to return here
    # it will automatically look in views/pages/index.html.erb and return that
  end

  # just grab one page (generally for crud but not all the time)
  def show
    @page = Page.find(params[:id])
    # it will automatically look in views/pages/show.html.erb and return that
  end

  def new
  end
end
