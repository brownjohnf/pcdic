class UsagesController < ApplicationController
  load_and_authorize_resource

  # GET /usages/new
  # GET /usages/new.json
  def new
    @usage = Usage.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @usage }
    end
  end

  # GET /usages/1/edit
  def edit
    @usage = Usage.find(params[:id])
  end

  # POST /usages
  # POST /usages.json
  def create
    @usage = Usage.new(params[:usage])

    respond_to do |format|
      if @usage.save
        format.html { redirect_to @usage.word, notice: 'Usage was successfully created.' }
        format.json { render json: @usage, status: :created, location: @usage }
      else
        format.html { render action: "new" }
        format.json { render json: @usage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /usages/1
  # PUT /usages/1.json
  def update
    @usage = Usage.find(params[:id])

    respond_to do |format|
      if @usage.update_attributes(params[:usage])
        format.html { redirect_to @usage.word, notice: 'Usage was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @usage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /usages/1
  # DELETE /usages/1.json
  def destroy
    @usage = Usage.find(params[:id])
    @usage.destroy

    respond_to do |format|
      format.html { redirect_to usages_url }
      format.json { head :no_content }
    end
  end
end
