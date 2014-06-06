class AdminController < ApplicationController
  layout 'admin'

  def index

  end

  def new_dashboard
    @sub_domain = current_subdomain.present? ? SubDomain.find_by_name(current_subdomain) : nil
    #login
  end

  def about_us
    @sub_domain = current_subdomain
    #login
  end

  def gallery
    @sub_domain = current_subdomain
    #login
  end

  def home
    authenticate
    @school = School.new
  end

  def abc
    @school = School.new(params[:school])
    if @school.save!
      redirect_to '/admin/home', :notice => 'school created successfully'
    else
      render :home, :error => 'school not saved'
    end
  end

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == "fedena" && password == "admin"
    end
  end
end
