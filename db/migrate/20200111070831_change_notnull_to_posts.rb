class ChangeNotnullToPosts < ActiveRecord::Migration[6.0]
  def up
    change_column_null :posts, :content, false, 0
    change_column_null :posts, :image, false, 0
    change_column :posts, :content, :text, default: 0
    change_column :posts, :image, :string, default: 0
  end

  def down
    change_column_null :posts, :content, true, nil
    change_column_null :posts, :image,  true, nil
    change_column :posts, :content, :text, default: nil
    change_column :posts, :image, :string, default: nil
  end
end
