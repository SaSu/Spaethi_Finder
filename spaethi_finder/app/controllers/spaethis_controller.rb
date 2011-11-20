class SpaethisController < ApplicationController
  # GET /spaethis
  # GET /spaethis.json
  def index
    @spaethis = Spaethi.all
    @spaethis = Spaethi.search(params[:search])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @spaethis }
    end

  end

  # GET /spaethis/1
  # GET /spaethis/1.json
  def show
    @spaethi = Spaethi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @spaethi }
    end
  end

  # GET /spaethis/new
  # GET /spaethis/new.json
  def new
    @spaethi = Spaethi.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @spaethi }
    end
  end

  # GET /spaethis/1/edit
  def edit
    @spaethi = Spaethi.find(params[:id])
  end

  # POST /spaethis
  # POST /spaethis.json
  def create
    @spaethi = Spaethi.new(params[:spaethi])

    respond_to do |format|
      if @spaethi.save
        format.html { redirect_to @spaethi, notice: 'Spaethi was successfully created.' }
        format.json { render json: @spaethi, status: :created, location: @spaethi }
      else
        format.html { render action: "new" }
        format.json { render json: @spaethi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /spaethis/1
  # PUT /spaethis/1.json
  def update
    @spaethi = Spaethi.find(params[:id])

    respond_to do |format|
      if @spaethi.update_attributes(params[:spaethi])
        format.html { redirect_to @spaethi, notice: 'Spaethi was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @spaethi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spaethis/1
  # DELETE /spaethis/1.json
  def destroy
    @spaethi = Spaethi.find(params[:id])
    @spaethi.destroy

    respond_to do |format|
      format.html { redirect_to spaethis_url }
      format.json { head :ok }
    end
  end
end
