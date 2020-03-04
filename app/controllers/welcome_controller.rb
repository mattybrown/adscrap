class WelcomeController < ApplicationController
  before_action :authenticate_user!
  def index
    ads = Advertisement.order(created_at: :desc).where("user_id = ?", current_user[:id])
    @ads = ads.limit(6)
    # Totaling the value of ads running in the current month
    @this_months_issues = Issue.where(pub_date: Time.now.beginning_of_month..Time.now.end_of_month)
    #@month_total = ads.map{ |a| }

  end
end
