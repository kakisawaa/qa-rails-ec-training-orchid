class CreateShipmentStatuses < ActiveRecord::Migration[6.1]
  def change
    create_table :shipment_statuses do |t|
      t.string :shipment_status_name, limit: 16
      t.string :string

      t.timestamps
    end
  end
end
