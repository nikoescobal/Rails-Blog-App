class VotesController < ApplicationController
  def create
    @vote = current_user.votes.build(article_id: params[:article_id])
    end
  end

  def destroy
    @vote = Vote.find_by(user_id:@current_user.id)
    @vote.destroy
    # respond_to do |format|
    #   format.html { redirect_to votes_url, notice: "Vote was successfully deleted." }
    #   format.json { head :no_content }
    # end
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

