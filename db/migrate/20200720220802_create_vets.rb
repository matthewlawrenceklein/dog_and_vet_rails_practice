class CreateVets < ActiveRecord::Migration[6.0]
  def change
    create_table :vets do |t|
      t.string :name

      t.timestamps
    end
  end
end
