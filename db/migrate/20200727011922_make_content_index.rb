class MakeContentIndex < ActiveRecord::Migration[5.2]
  def change
    add_index :contents, :section, unique: true
  end
end
