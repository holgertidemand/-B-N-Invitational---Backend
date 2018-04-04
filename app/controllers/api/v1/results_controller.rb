class Api::V1::ResultsController < ApplicationController
  def index
    render json: final_result, status: :ok
  end

  private

  def final_result
    results = Result.all
    results.each { |result| result.valid_score = true if result.number_of_votes > 4 }
    final_result = results.sort_by {|result| result[:score] }.reverse
    final_result
  end
end
