class CreateCalevents < ActiveRecord::Migration
  def change
    create_table :calevents do |t|
      t.string :calday
      t.date :caldate
      t.string :callocation
      t.text :caldescription
      t.time :caltime
      t.date :calenddate

      t.timestamps
    end
  end
end
