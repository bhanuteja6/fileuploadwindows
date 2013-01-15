class CreateUploadprofs < ActiveRecord::Migration
  def change
    create_table :uploadprofs do |t|
      t.string :name
      t.string :email
      t.string :resume
      t.string :photo

      t.timestamps
    end
  end
end
