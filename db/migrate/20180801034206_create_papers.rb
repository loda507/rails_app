class CreatePapers < ActiveRecord::Migration[5.2]
  def change
    create_table :papers do |t|
      t.string :title
      t.string :text
      t.string :user

      t.timestamps
    end
  end
end
