class CreateMinigTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :minig_types do |t|
      t.string :name
      t.string :acronym

      t.timestamps
    end
  end
end
