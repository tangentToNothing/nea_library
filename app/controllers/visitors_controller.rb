 class VisitorsController < ApplicationController
  def index
  #flash[:notice] = t(:hello_flash)


    @techareas=Technicalarea.all
    @targetgroups=Targetgroup.all
    @countries = Country.all
    @tags = Tag.all
    @latest_resources = Resource.order('created_at DESC LIMIT 10',)
    @featured = Resource.where('is_featured = true')
    @toppost = Post.where('is_featured = true')

    render 'visitors/index'
  end

  def about

    @thispage = Page.find_by_id(1)

    render 'visitors/about'
  end


end
