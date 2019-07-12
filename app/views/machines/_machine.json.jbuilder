json.extract! machine, :id, :name, :mac, :cpu, :ram, :hdd, :optical_drive, :os, :purchase_date, :created_at, :updated_at
json.url machine_url(machine, format: :json)
