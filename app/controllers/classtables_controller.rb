class ClasstablesController < ApplicationController
  # GET /classtables
  # GET /classtables.json
  def index
#    @classtable = Classtable.all
	@school2 = School.find(params[:id])
	 @classtables = Classtable.find(:all,:conditions => { :school_id => @school2.id })
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @classtables }
    end
  end

  # GET /classtables/1
  # GET /classtables/1.json
  def show
    @classtable = Classtable.find(params[:id])
    #@classtable = Classtable.find(:all, :conditions => { :school_id => @classtable1.id })

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @classtable }
    end
  end

  # GET /classtables/new
  # GET /classtables/new.json
  def new
    @classtable = Classtable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @classtable }
    end
  end

  # GET /classtables/1/edit
  def edit
    @classtable = Classtable.find(params[:id])
  end

  # POST /classtables
  # POST /classtables.json
  def create
    @classtable = Classtable.new(params[:classtable])
	#@classtable.school_id = 29
    respond_to do |format|
      if @classtable.save
        format.html { redirect_to @classtable, notice: 'Classtable was successfully created.' }
        format.json { render json: @classtable, status: :created, location: @classtable }
      else
        format.html { render action: "new" }
        format.json { render json: @classtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /classtables/1
  # PUT /classtables/1.json
  def update
    @classtable = Classtable.find(params[:id])

    respond_to do |format|
      if @classtable.update_attributes(params[:classtable])
        format.html { redirect_to @classtable, notice: 'Classtable was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @classtable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classtables/1
  # DELETE /classtables/1.json
  def destroy
    @classtable = Classtable.find(params[:id])
    @classtable.destroy

    respond_to do |format|
      format.html { redirect_to classtables_url }
      format.json { head :no_content }
    end
  end
end
