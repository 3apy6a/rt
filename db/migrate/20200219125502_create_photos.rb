class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table "photos", force: :cascade do |t|
      t.bigint "album_id"
      t.text "description", default: ""
      t.string "image"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["album_id"], name: "index_photos_on_album_id"
    end
  end
end
