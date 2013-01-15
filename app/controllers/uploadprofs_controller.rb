class UploadprofsController < ApplicationController
  # GET /uploadprofs
  # GET /uploadprofs.json
  def index
    @uploadprofs = Uploadprof.paginate(:page => params[:page], :per_page => 3)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @uploadprofs }
    end
  end

  # GET /uploadprofs/1
  # GET /uploadprofs/1.json
  def show
    @uploadprof = Uploadprof.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @uploadprof }
    end
  end

  # GET /uploadprofs/new
  # GET /uploadprofs/new.json
  def new
    @uploadprof = Uploadprof.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @uploadprof }
    end
  end

  # GET /uploadprofs/1/edit
  def edit
    @uploadprof = Uploadprof.find(params[:id])
  end

  # POST /uploadprofs
  # POST /uploadprofs.json
  def create
    @uploadprof = Uploadprof.new(params[:uploadprof])

    respond_to do |format|
      if @uploadprof.save
        format.html { redirect_to @uploadprof, notice: 'Uploadprof was successfully created.' }
        format.json { render json: @uploadprof, status: :created, location: @uploadprof }
      else
        format.html { render action: "new" }
        format.json { render json: @uploadprof.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /uploadprofs/1
  # PUT /uploadprofs/1.json
  def update
    @uploadprof = Uploadprof.find(params[:id])

    respond_to do |format|
      if @uploadprof.update_attributes(params[:uploadprof])
        format.html { redirect_to @uploadprof, notice: 'Uploadprof was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @uploadprof.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /uploadprofs/1
  # DELETE /uploadprofs/1.json
  def destroy
    @uploadprof = Uploadprof.find(params[:id])
    @uploadprof.destroy

    respond_to do |format|
      format.html { redirect_to uploadprofs_url }
      format.json { head :no_content }
    end
  end
end
