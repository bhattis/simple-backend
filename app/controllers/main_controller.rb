class MainController < ApplicationController
  
  layout 'application'
  before_action :check_tenant

  def current_tenant
    if request.subdomain
      @current_tenant = Tenant.find_by(subdomain: request.subdomain)
    end
  end

  def check_tenant
    if !current_tenant
      render json: {
        error: 'Unknown Tenant',
        message: 'This app can only be accessed from within a Tenant context.'
      }, status: 422
    end
  end
  
  def index
  end
end
