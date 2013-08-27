class MicsropostsController < ApplicationController
  # GET /micsroposts
  # GET /micsroposts.json
  def index
    @micsroposts = Micsropost.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micsroposts }
    end
  end

  # GET /micsroposts/1
  # GET /micsroposts/1.json
  def show
    @micsropost = Micsropost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micsropost }
    end
  end

  # GET /micsroposts/new
  # GET /micsroposts/new.json
  def new
    @micsropost = Micsropost.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micsropost }
    end
  end

  # GET /micsroposts/1/edit
  def edit
    @micsropost = Micsropost.find(params[:id])
  end

  # POST /micsroposts
  # POST /micsroposts.json
  def create
    @micsropost = Micsropost.new(params[:micsropost])

    respond_to do |format|
      if @micsropost.save
        format.html { redirect_to @micsropost, notice: 'Micsropost was successfully created.' }
        format.json { render json: @micsropost, status: :created, location: @micsropost }
      else
        format.html { render action: "new" }
        format.json { render json: @micsropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micsroposts/1
  # PUT /micsroposts/1.json
  def update
    @micsropost = Micsropost.find(params[:id])

    respond_to do |format|
      if @micsropost.update_attributes(params[:micsropost])
        format.html { redirect_to @micsropost, notice: 'Micsropost was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @micsropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micsroposts/1
  # DELETE /micsroposts/1.json
  def destroy
    @micsropost = Micsropost.find(params[:id])
    @micsropost.destroy

    respond_to do |format|
      format.html { redirect_to micsroposts_url }
      format.json { head :no_content }
    end
  end
end
