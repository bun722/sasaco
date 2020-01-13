class ChangeDefaultToPosts < ActiveRecord::Migration[6.0]
  def up
    change_column :posts, :content, :text, default: ""
    change_column :posts, :image, :string, default: ""
  end

  def down
    change_column :posts, :content, :text, default: nil
    change_column :posts, :image, :string, default: nil
  end
end
