module RescuedApartmentMiddleware
  def call(*args)
    begin
      super
    rescue Apartment::TenantNotFound
      Rails.logger.error "ERROR: Apartment Tenant not found: #{Apartment::Tenant.current.inspect}"
      return [404, {"Content-Type" => "application/json"}, ["Tenant not found!"]]
    end
  end
end