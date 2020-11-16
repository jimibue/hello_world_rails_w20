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
    #.new just makes a new page object in memory
    #.create store to database
    @page = Page.new
  end

  def create
    @page = Page.new(pages_params)

    # this is always go work for now
    if @page.save
      redirect_to pages_path
    else
      # might have validations like must be present
      # we return user to the new form
      render :new
    end
  end

  private

  def pages_params
    params.require(:page).permit(:title, :author, :body)
  end
end
