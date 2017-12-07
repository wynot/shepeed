class CreatePeePees < ActiveRecord::Migration[5.1]
  def change
    create_table :pee_pees do |t|
      t.text :description

      t.timestamps
    end
  end
end
