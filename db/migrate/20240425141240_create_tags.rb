class CreateTags < ActiveRecord::Migration[7.1]
  def change
    create_table :tags do |t|
      t.text :name
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
