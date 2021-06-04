class StaticPagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :landing_page
  
  def landing_page
    @courses = Course.all.limit(3)
    @latest_courses = Course.all.order(created_at: :desc).limit(3)
  end

  def privacy_policy
  end
end
