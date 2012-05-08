class MasterTagsController < ApplicationController
  load_and_authorize_resource

  # GET /master_tags
  # GET /master_tags.json
  def index
    @master_tags = MasterTag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @master_tags }
    end
  end

  # GET /master_tags/1
  # GET /master_tags/1.json
  def show
    @master_tag = MasterTag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @master_tag }
    end
  end

  # GET /master_tags/new
  # GET /master_tags/new.json
  def new
    @master_tag = MasterTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @master_tag }
    end
  end

  # GET /master_tags/1/edit
  def edit
    @master_tag = MasterTag.find(params[:id])
  end

  # POST /master_tags
  # POST /master_tags.json
  def create
    @master_tag = MasterTag.new(params[:master_tag])

    respond_to do |format|
      if @master_tag.save
        format.html { redirect_to @master_tag, notice: 'Master tag was successfully created.' }
        format.json { render json: @master_tag, status: :created, location: @master_tag }
      else
        format.html { render action: "new" }
        format.json { render json: @master_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /master_tags/1
  # PUT /master_tags/1.json
  def update
    @master_tag = MasterTag.find(params[:id])

    respond_to do |format|
      if @master_tag.update_attributes(params[:master_tag])
        format.html { redirect_to @master_tag, notice: 'Master tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @master_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_tags/1
  # DELETE /master_tags/1.json
  def destroy
    @master_tag = MasterTag.find(params[:id])
    @master_tag.destroy

    respond_to do |format|
      format.html { redirect_to master_tags_url }
      format.json { head :no_content }
    end
  end
end
