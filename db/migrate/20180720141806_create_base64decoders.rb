class CreateBase64decoders < ActiveRecord::Migration[5.2]
  def change
    create_table :base64decoders do |t|
      t.string :operation
      t.string :data

      t.timestamps
    end
  end
end
