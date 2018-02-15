
class BatchEntriesController < ApplicationController

  def index
    @entries = BatchEntries.where('id IS NOT ? ', nil) 
    render json: @entries.as_json
  end

end
