class CreateCus < ActiveRecord::Migration[6.0]
  def change
    create_table :cus do |t|
      t.string :name
      t.string :emails
      t.string :gtoken
      t.string :acctoken
      t.string :idtoken
      t.string :refreshtoken

      t.timestamps
    end
  end
end
