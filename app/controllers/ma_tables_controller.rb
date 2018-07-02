class MaTablesController < ApplicationController
  before_action :set_ma_table, only: [:show, :edit, :update, :destroy]

  # GET /ma_tables
  # GET /ma_tables.json
  def index
    @ma_tables = MaTable.all
    respond_to do |format|
	format.html
	format.json
	format.pdf{render template: 'ma_tables/resultat', pdf:'Resultat'}
    end
  end

  # GET /ma_tables/1
  # GET /ma_tables/1.json
  def show
  end

  # GET /ma_tables/new
  def new
    @ma_table = MaTable.new
  end

  # GET /ma_tables/1/edit
  def edit
  end

  # POST /ma_tables
  # POST /ma_tables.json
  def create
    @ma_table = MaTable.new(ma_table_params)

    respond_to do |format|
      if @ma_table.save
        format.html { redirect_to @ma_table, notice: 'Ma table was successfully created.' }
        format.json { render :show, status: :created, location: @ma_table }
      else
        format.html { render :new }
        format.json { render json: @ma_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ma_tables/1
  # PATCH/PUT /ma_tables/1.json
  def update
    respond_to do |format|
      if @ma_table.update(ma_table_params)
        format.html { redirect_to @ma_table, notice: 'Ma table was successfully updated.' }
        format.json { render :show, status: :ok, location: @ma_table }
      else
        format.html { render :edit }
        format.json { render json: @ma_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ma_tables/1
  # DELETE /ma_tables/1.json
  def destroy
    @ma_table.destroy
    respond_to do |format|
      format.html { redirect_to ma_tables_url, notice: 'Ma table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ma_table
      @ma_table = MaTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ma_table_params
      params.require(:ma_table).permit(:name, :age, :description)
    end
end
