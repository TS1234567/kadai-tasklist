class CreateAdds < ActiveRecord::Migration[5.0]
  def change
    create_table :adds do |t|
      t.string :To
      t.string :Tasklist
      t.string :content
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
