class EstrenosController < ApplicationController
  # GET /estrenos
  # GET /estrenos.json
  def index
    @estrenos = Estreno.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @estrenos }
    end
  end

  # GET /estrenos/1
  # GET /estrenos/1.json
  def show
    @estreno = Estreno.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @estreno }
    end
  end

  # GET /estrenos/new
  # GET /estrenos/new.json
  def new
    @estreno = Estreno.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @estreno }
    end
  end

  # GET /estrenos/1/edit
  def edit
    @estreno = Estreno.find(params[:id])
  end

  # POST /estrenos
  # POST /estrenos.json
  def create
    @estreno = Estreno.new(params[:estreno])

    respond_to do |format|
      if @estreno.save
        format.html { redirect_to @estreno, notice: 'Estreno was successfully created.' }
        format.json { render json: @estreno, status: :created, location: @estreno }
      else
        format.html { render action: "new" }
        format.json { render json: @estreno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /estrenos/1
  # PUT /estrenos/1.json
  def update
    @estreno = Estreno.find(params[:id])

    respond_to do |format|
      if @estreno.update_attributes(params[:estreno])
        format.html { redirect_to @estreno, notice: 'Estreno was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @estreno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estrenos/1
  # DELETE /estrenos/1.json
  def destroy
    @estreno = Estreno.find(params[:id])
    @estreno.destroy

    respond_to do |format|
      format.html { redirect_to estrenos_url }
      format.json { head :no_content }
    end
  end
end
