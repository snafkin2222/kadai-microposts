class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.references :user, foreign_key: true
      t.references :micropost, foreign_key: true

      t.timestamps
      #user_idとmicropost_idの重複を防ぐ
      t.index [:user_id, :micropost_id], unique: true
      
    end
  end
end
