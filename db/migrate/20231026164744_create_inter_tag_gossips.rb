class CreateInterTagGossips < ActiveRecord::Migration[7.1]
  def change
    create_table :inter_tag_gossips do |t|
      t.belongs_to :gossips, index: true
      t.belongs_to :tags, index: true
      t.timestamps
    end
  end
end
