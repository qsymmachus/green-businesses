class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |col|
      col.string :company
      col.string :sector
      col.string :phone
      col.string :address
      col.string :city
      col.string :zip
      col.string :location
    end
  end
end
