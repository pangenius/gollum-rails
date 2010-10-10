class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|
      t.string :name
      t.string :url
      t.integer :parent_id, :default => 0

      t.timestamps
    end
    
    # Create parent Welcome page
    Page.create(:name => 'Welcome', '')
    
  end

  def self.down
    drop_table :pages
  end
end
