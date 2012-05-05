class PartOfSpeechesController < ApplicationController
  load_and_authorize_resource

  # GET /part_of_speeches
  # GET /part_of_speeches.json
  def index
    @part_of_speeches = PartOfSpeech.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @part_of_speeches }
    end
  end

  # GET /part_of_speeches/1
  # GET /part_of_speeches/1.json
  def show
    @part_of_speech = PartOfSpeech.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @part_of_speech }
    end
  end

  # GET /part_of_speeches/new
  # GET /part_of_speeches/new.json
  def new
    @part_of_speech = PartOfSpeech.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @part_of_speech }
    end
  end

  # GET /part_of_speeches/1/edit
  def edit
    @part_of_speech = PartOfSpeech.find(params[:id])
  end

  # POST /part_of_speeches
  # POST /part_of_speeches.json
  def create
    @part_of_speech = PartOfSpeech.new(params[:part_of_speech])

    respond_to do |format|
      if @part_of_speech.save
        format.html { redirect_to @part_of_speech, notice: 'Part of speech was successfully created.' }
        format.json { render json: @part_of_speech, status: :created, location: @part_of_speech }
      else
        format.html { render action: "new" }
        format.json { render json: @part_of_speech.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /part_of_speeches/1
  # PUT /part_of_speeches/1.json
  def update
    @part_of_speech = PartOfSpeech.find(params[:id])

    respond_to do |format|
      if @part_of_speech.update_attributes(params[:part_of_speech])
        format.html { redirect_to @part_of_speech, notice: 'Part of speech was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @part_of_speech.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /part_of_speeches/1
  # DELETE /part_of_speeches/1.json
  def destroy
    @part_of_speech = PartOfSpeech.find(params[:id])
    @part_of_speech.destroy

    respond_to do |format|
      format.html { redirect_to part_of_speeches_url }
      format.json { head :no_content }
    end
  end
end
