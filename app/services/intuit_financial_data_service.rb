class IntuitFinancialDataService

  def initialize(customer_id)
    # @customer_id = customer_id
    @client = Aggcat.scope(customer_id)
    # Rails.logger.info Rails.application.secrets.intuit_saml_id  
    # Rails.logger.info Rails.application.secrets.intuit_cert_value
  end

  def get_institutions
    insts = @client.institutions     
    Rails.logger.info "institutions"
    Rails.logger.info insts
  end

  attr_reader :client

  private


end
