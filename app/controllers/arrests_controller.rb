class ArrestsController < ApplicationController
  # GET /arrests
  # GET /arrests.json
  def index
    @arrests = Arrest.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @arrests }
    end
  end

  # GET /arrests/1
  # GET /arrests/1.json
  def show
    @arrest = Arrest.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @arrest }
    end
  end

  # GET /arrests/new
  # GET /arrests/new.json
  def new
    @arrest = Arrest.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @arrest }
    end
  end

  # GET /arrests/1/edit
  def edit
    @arrest = Arrest.find(params[:id])
  end

  # POST /arrests
  # POST /arrests.json
  def create
    @arrest = Arrest.new(params[:arrest])

    respond_to do |format|
      if @arrest.save
        format.html { redirect_to @arrest, notice: 'Arrest was successfully created.' }
        format.json { render json: @arrest, status: :created, location: @arrest }
      else
        format.html { render action: "new" }
        format.json { render json: @arrest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /arrests/1
  # PUT /arrests/1.json
  def update
    @arrest = Arrest.find(params[:id])

    respond_to do |format|
      if @arrest.update_attributes(params[:arrest])
        format.html { redirect_to @arrest, notice: 'Arrest was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @arrest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arrests/1
  # DELETE /arrests/1.json
  def destroy
    @arrest = Arrest.find(params[:id])
    @arrest.destroy

    respond_to do |format|
      format.html { redirect_to arrests_url }
      format.json { head :no_content }
    end
  end
end
