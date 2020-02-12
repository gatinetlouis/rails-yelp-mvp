class AddNameToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :name, :string, default: 'Anonyme'
  end
end
