class ContentsController < ApplicationController
  before_action :set_content, only: [:show, :edit, :update]
  before_action :authenticate_user!

  # GET /contents
  def index
    @contents = Content.all
  end

  # GET /contents/1
  def show
  end

  # GET /contents/new
  def new
    @content = Content.new
  end

  # GET /contents/1/edit
  def edit
  end

  # POST /contents
  def create
    @content = Content.new(content_params)

    if @content.save
      redirect_to @content, notice: 'Content was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /contents/1
  def update
    if @content.update(content_params)
      redirect_to @content, notice: 'Content was successfully updated.'
    else
      render :edit
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content
      @content = Content.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def content_params
      # params
      params.permit(:section, :content)
    end
end
