class CreateComments < ActiveRecord::Migration[4.2]
  def change
    create_table :comments, id: :uuid do |t|
      t.string :email
      t.string :body
      t.uuid :article_id

      t.timestamps
    end
  end
end
