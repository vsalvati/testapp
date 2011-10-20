class DashboardController < ApplicationController
  def index
    @list = NetFlix::Title.search(:term => 'sneakers', :max_results => 10)
  end
end