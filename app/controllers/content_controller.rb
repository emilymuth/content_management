class ContentController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  def grab_content(feature_name)
  	render json: { test_file: 'good files', status: 200}, status: 200
  end

  private

  def record_not_found
    render json: { message: '404 Not Found', status: 404 }, status: 404
  end
end
