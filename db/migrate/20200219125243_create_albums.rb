class CreateAlbums < ActiveRecord::Migration[6.0]
  def change
    create_table "albums", force: :cascade do |t|
      t.bigint "user_id"
      t.string "name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["user_id"], name: "index_albums_on_user_id"
    end
  end
end
