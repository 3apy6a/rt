class AddForeignKeys < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key "albums", "users"
    add_foreign_key "photos", "albums"
  end
end
