class CreateFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :favorites do |t|
      t.string :print_tag

      t.timestamps
    end
  end
end
