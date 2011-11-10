class DashboardController < ApplicationController
  def index
    api = Netflix4Ruby::API.from_file( Rails.root.join('config', 'oauth.yml') )
    puts 'Display Disc Queue...'
    search = params[:sort]
   # @list = api.title_search(search)
    @discqueue = api.disc_queue()
  end
  def search
    puts 'Searching for movie titles...'
  end
end