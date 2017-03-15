class Admin::NewsController < ApplicationController
  before_action :set_admin_news, only: [:show, :edit, :update, :destroy]
  layout 'admin'
  before_action :authenticate_admin!

  # GET /admin/news
  # GET /admin/news.json
  def index
    @admin_news = News.all.order('created_at DESC')
  end

  # GET /admin/news/1
  # GET /admin/news/1.json
  def show
  end

  # GET /admin/news/new
  def new
    @admin_news = News.new
  end

  # GET /admin/news/1/edit
  def edit
  end

  # POST /admin/news
  # POST /admin/news.json
  def create
    @admin_news = News.new(admin_news_params)

    respond_to do |format|
      if @admin_news.save
        format.html { redirect_to [:admin, @admin_news], notice: 'News was successfully created.' }
        format.json { render :show, status: :created, location: [:admin, @admin_news] }
      else
        format.html { render :new }
        format.json { render json: @admin_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/news/1
  # PATCH/PUT /admin/news/1.json
  def update
    respond_to do |format|
      if @admin_news.update(admin_news_params)
        format.html { redirect_to [:admin, @admin_news], notice: 'News was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_news }
      else
        format.html { render :edit }
        format.json { render json: @admin_news.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/news/1
  # DELETE /admin/news/1.json
  def destroy
    @admin_news = News.find(params[:id])
    @admin_news.destroy
    redirect_to admin_news_index_path
   
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_news
      @admin_news = News.find(params[:id])
    end

    # Never trust parameters from the scary internet, only a1llow the white list through.
    def admin_news_params
      params.require(:news).permit(:title, :text, :is_published, :name)
    end
end
