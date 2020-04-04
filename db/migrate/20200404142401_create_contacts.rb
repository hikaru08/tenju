class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name_full
      t.string :name_cana
      t.string :phone
      t.string :email
      t.string :zip1
      t.string :zip2
      t.string :address1
      t.string :address2
      t.string :address3
      t.string :content

      t.timestamps
    end
  end
end
