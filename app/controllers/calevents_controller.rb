class CaleventsController < ApplicationController
  # GET /calevents
  # GET /calevents.json
  def index
    @calevents = Calevent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @calevents }
    end
  end

  # GET /calevents/1
  # GET /calevents/1.json
  def show
    @calevent = Calevent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @calevent }
    end
  end

  # GET /calevents/new
  # GET /calevents/new.json
  def new
    @calevent = Calevent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @calevent }
    end
  end

  # GET /calevents/1/edit
  def edit
    @calevent = Calevent.find(params[:id])
  end

  # POST /calevents
  # POST /calevents.json
  def create
    @calevent = Calevent.new(params[:calevent])

    respond_to do |format|
      if @calevent.save
        format.html { redirect_to @calevent, notice: 'Calevent was successfully created.' }
        format.json { render json: @calevent, status: :created, location: @calevent }
      else
        format.html { render action: "new" }
        format.json { render json: @calevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /calevents/1
  # PUT /calevents/1.json
  def update
    @calevent = Calevent.find(params[:id])

    respond_to do |format|
      if @calevent.update_attributes(params[:calevent])
        format.html { redirect_to @calevent, notice: 'Calevent was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @calevent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calevents/1
  # DELETE /calevents/1.json
  def destroy
    @calevent = Calevent.find(params[:id])
    @calevent.destroy

    respond_to do |format|
      format.html { redirect_to calevents_url }
      format.json { head :no_content }
    end
  end
end
