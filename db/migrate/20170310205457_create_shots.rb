class CreateShots < ActiveRecord::Migration[5.0]
  def change
    create_table :shots do |t|
      t.string :title
      t.string :author
      t.string :content

      t.references :tab, index: true, foreign_key: true
    end
  end
end
