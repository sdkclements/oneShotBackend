class CreateChasers < ActiveRecord::Migration[5.0]
  def change
    create_table :chasers do |t|
      t.string :author
      t.string :content

      t.references :shot, index: true, foreign_key: true
    end
  end
end
