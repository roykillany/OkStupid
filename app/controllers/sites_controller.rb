class SitesController < ApplicationController
  def root
    @current_user = current_user
  end
end
