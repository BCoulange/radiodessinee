class SoireesController < ApplicationController
  # GET /soirees
  # GET /soirees.json
  def index
    @soirees = Soiree.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @soirees }
    end
  end

  # GET /soirees/1
  # GET /soirees/1.json
  def show
    @soiree = Soiree.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @soiree }
    end
  end

  # GET /soirees/new
  # GET /soirees/new.json
  def new
    @soiree = Soiree.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @soiree }
    end
  end

  # GET /soirees/1/edit
  def edit
    @soiree = Soiree.find(params[:id])
  end

  # POST /soirees
  # POST /soirees.json
  def create
    @soiree = Soiree.new(params[:soiree])

    respond_to do |format|
      if @soiree.save
        format.html { redirect_to @soiree, notice: 'Soiree was successfully created.' }
        format.json { render json: @soiree, status: :created, location: @soiree }
      else
        format.html { render action: "new" }
        format.json { render json: @soiree.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /soirees/1
  # PUT /soirees/1.json
  def update
    @soiree = Soiree.find(params[:id])

    respond_to do |format|
      if @soiree.update_attributes(params[:soiree])
        format.html { redirect_to @soiree, notice: 'Soiree was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @soiree.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /soirees/1
  # DELETE /soirees/1.json
  def destroy
    @soiree = Soiree.find(params[:id])
    @soiree.destroy

    respond_to do |format|
      format.html { redirect_to soirees_url }
      format.json { head :no_content }
    end
  end
end
