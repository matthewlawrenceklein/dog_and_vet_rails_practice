class AddNameToAppointments < ActiveRecord::Migration[6.0]
  def change
    change_table(:appointments) do |t|
      t.column :name, :string
    end
  end
end
