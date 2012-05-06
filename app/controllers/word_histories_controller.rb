class WordHistoriesController < ApplicationController
  load_and_authorize_resource

  # DELETE /word_histories/1
  # DELETE /word_histories/1.json
  def destroy
    @word_history = WordHistory.find(params[:id])
    @word_history.destroy

    respond_to do |format|
      format.html { redirect_to word_histories_url }
      format.json { head :no_content }
    end
  end
end
