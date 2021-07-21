class VotesController < ApplicationController
  before_action :authenticate_user!
  def create
    Vote.new(user_id: current_user.id, article_id: params[:article_id]).save
    respond_to do |format|
      format.html { redirect_to article_url(params[:article_id]), notice: 'Vote successfully added.' }
      format.json { head :no_content }
      format.js { render nothing: true }
    end
  end

  def destroy
    @vote = Vote.find_by(user_id: current_user.id, article_id: params[:article_id])
    @vote.destroy
    respond_to do |format|
      format.html { redirect_to article_url(params[:article_id]), alert: 'Vote successfully deleted.' }
      format.json { head :no_content }
      format.js { render nothing: true }
    end
    # redirect_to article_url(params[:article_id])
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_vote
    @vote = Vote.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def vote_params
    params.fetch(:vote, {})
  end
end
