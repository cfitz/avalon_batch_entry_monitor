
# This is a monkey patch for the Avalon BatchEntires
# https://github.com/avalonmediasystem/avalon/blob/master/app/models/batch_entries.rb
# Adds some stuff to as_json to ensure the payload is serialized.
class BatchEntries

  # Parse the payload, which is a string by default.
  def as_json(options ={} )
    json = super(options)
    json["payload"] = JSON.parse(json["payload"]) 
    json
  end

end
