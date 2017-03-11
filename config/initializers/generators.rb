# this will Add ability to default to uuid as primary key 
# when generating database migrations
Rails.application.config.generators do |g|
  g.orm :active_record, primary_key_type: :uuid
end