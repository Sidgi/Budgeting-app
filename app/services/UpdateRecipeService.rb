class UpdateRecipeService
  def initialize(operation, params)
    @recipe = recipe
    @params = params
  end

  def call
    if @params[:image] && !file?(@operation[:image])
      delete_image if @operation.image.attached?
      @params.delete(:image)
    end

    @operation.update(@params)
  end

  private

  def file?(param)
    param.is_a?(ActionDispatch::Http::UploadedFile)
  end

  def delete_image
    @operation.image.purge
  end
end