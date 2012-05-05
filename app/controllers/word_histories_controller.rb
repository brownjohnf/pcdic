class WordHistoriesController < ApplicationController
  load_and_authorize_resource

  # GET /word_histories
  # GET /word_histories.json
  def index
    @word_histories = WordHistory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @word_histories }
    end
  end

  # GET /word_histories/1
  # GET /word_histories/1.json
  def show
    @word_history = WordHistory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @word_history }
    end
  end

  # GET /word_histories/new
  # GET /word_histories/new.json
  def new
    @word_history = WordHistory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @word_history }
    end
  end

  # GET /word_histories/1/edit
  def edit
    @word_history = WordHistory.find(params[:id])
  end

  # POST /word_histories
  # POST /word_histories.json
  def create
    @word_history = WordHistory.new(params[:word_history])

    respond_to do |format|
      if @word_history.save
        format.html { redirect_to @word_history, notice: 'Word history was successfully created.' }
        format.json { render json: @word_history, status: :created, location: @word_history }
      else
        format.html { render action: "new" }
        format.json { render json: @word_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /word_histories/1
  # PUT /word_histories/1.json
  def update
    @word_history = WordHistory.find(params[:id])

    respond_to do |format|
      if @word_history.update_attributes(params[:word_history])
        format.html { redirect_to @word_history, notice: 'Word history was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @word_history.errors, status: :unprocessable_entity }
      end
    end
  end

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
