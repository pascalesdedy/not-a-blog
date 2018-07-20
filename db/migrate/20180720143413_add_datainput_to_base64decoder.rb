class AddDatainputToBase64decoder < ActiveRecord::Migration[5.2]
  def change
    add_column :base64decoders, :datainput, :string
  end
end
