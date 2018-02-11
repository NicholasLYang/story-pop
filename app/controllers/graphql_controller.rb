class GraphqlController < ApplicationController
  def execute
    if params[:operations].present?
      operations = ensure_hash(params[:operations])
      variables = {
        "input" => operations[:variables].
                     merge({"file" => params["variables.file"]})
      }
      query     = operations[:query]
    else
      variables = ensure_hash(params[:variables])
      query     = params[:query]
    end
    context = {
      # Query context goes here, for example:
      # current_user: current_user,
    }
    result = StoryPopSchema.execute(
      query,
      variables: variables,
      context: context,
#      operation_name: operation_name
    )
    render json: result
  end

  private

  # Handle form data, JSON body, or a blank value
  def ensure_hash(ambiguous_param)
    case ambiguous_param
    when String
      if ambiguous_param.present?
        ensure_hash(JSON.parse(ambiguous_param))
      else
        {}
      end
    when Hash, ActionController::Parameters
      ambiguous_param
    when nil
      {}
    else
      raise ArgumentError, "Unexpected parameter: #{ambiguous_param}"
    end
  end
end
