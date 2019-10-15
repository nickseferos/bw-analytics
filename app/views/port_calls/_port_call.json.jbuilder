json.extract! port_call, :id, :voyage_id, :terminal_id, :eta, :ata, :etd, :atd, :departed, :created_at, :updated_at
json.url port_call_url(port_call, format: :json)
