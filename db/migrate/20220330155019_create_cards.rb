class CreateCards < ActiveRecord::Migration[6.1]
  def change
    create_table :cards do |t|
      t.string :print_tag
      t.string :set

      t.timestamps
    end
  end
end
