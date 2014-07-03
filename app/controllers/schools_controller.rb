class SchoolsController < ApplicationController
  layout 'admin'

  def create
  end

  def edit
    @school = School.find params[:id]
  end

  def update
    @school = School.find params[:id]
    if @school.update_attributes(params[:school])
      redirect_to '/admin/all_subdomains', :notice => 'school updated successfully'
    else
      render :edit, :error => 'school not updated'
    end
  end
end
