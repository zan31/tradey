class AddUsersToFavorites < ActiveRecord::Migration[6.1]
  def change
    add_reference :favorites, :user, null: false, foreign_key: true
  end
end
