class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.string :activity
      t.string :name
      t.string :alt_name
      t.string :agency
      t.string :phone
      t.string :address
      t.string :city
      t.string :zipcode
      t.string :full_day
      t.string :half_day
      t.integer :seat_capacity
      t.string :elem
      t.string :middle
      t.string :high
      t.string :address_w_zip
      t.string :day_care_type
      t.string :day_care_status
      t.string :notes
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
