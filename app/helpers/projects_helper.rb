module ProjectsHelper
  def main_photo
    @main_photo = @project.photo.first
  end
end
