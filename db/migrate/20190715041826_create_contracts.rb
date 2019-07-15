class CreateContracts < ActiveRecord::Migration[5.2]
  def change
    create_table :contracts do |t|
      t.date :dated
      t.string :people
      t.date :service_from
      t.date :service_to
      t.string :preferred_date
      t.string :time

      t.timestamps
    end
  end
end
