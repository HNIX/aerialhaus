module ProjectsHelper
  def main_photo
    if @project.photos.nil
      "No photo"
    else
      @main_photo = @project.photo.where(:position => 1)
      @main_photo.image.url
    end
  end
end
