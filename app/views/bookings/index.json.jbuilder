json.array!(@bookings) do |booking|
  json.extract! booking, :id, :controller
  json.url booking_url(booking, format: :json)
end
