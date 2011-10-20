class DashboardController < ApplicationController
  def index
    api = Netflix4Ruby::API.from_file( Rails.root.join('config', 'oauth.yml') )

    search = params[:search] || "sneakers"
    @list = api.title_search(search)
  end
end