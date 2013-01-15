class AddPhotoToUploadprofs < ActiveRecord::Migration
  def change
    add_column :uploadprofs, :photo_file_name, :string
    add_column :uploadprofs, :photo_content_type, :string
    add_column :uploadprofs, :photo_file_size, :integer
  end
end
