class TeammingsController < ApplicationController
  # GET /teammings
  # GET /teammings.json
  def index
    @teammings = Teamming.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @teammings }
    end
  end

  # GET /teammings/1
  # GET /teammings/1.json
  def show
    @teamming = Teamming.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @teamming }
    end
  end

  # GET /teammings/new
  # GET /teammings/new.json
  def new
    @teamming = Teamming.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @teamming }
    end
  end

  # GET /teammings/1/edit
  def edit
    @teamming = Teamming.find(params[:id])
  end

  # POST /teammings
  # POST /teammings.json
  def create
    @teamming = Teamming.new(params[:teamming])

    respond_to do |format|
      if @teamming.save
        format.html { redirect_to edit_user_path(@teamming.user_id), notice: 'Teamming was successfully created.' }
        format.json { render json: @teamming, status: :created, location: @teamming }
      else
        format.html { render action: "new" }
        format.json { render json: @teamming.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /teammings/1
  # PUT /teammings/1.json
  def update
    @teamming = Teamming.find(params[:id])

    respond_to do |format|
      if @teamming.update_attributes(params[:teamming])
        format.html { redirect_to @teamming, notice: 'Teamming was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @teamming.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /teammings/1
  # DELETE /teammings/1.json
  def destroy
    @teamming = Teamming.find(params[:id])
    @teamming.destroy

    respond_to do |format|
      format.html { redirect_to edit_user_path(@teamming.user_id) }
      format.json { head :no_content }
    end
  end
end
