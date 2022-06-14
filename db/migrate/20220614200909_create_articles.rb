class CreateArticles < ActiveRecord::Migration[4.2]
  def change
    create_table :articles, id: :uuid do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
