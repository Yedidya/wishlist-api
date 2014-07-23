json.array! @wishes do |wish|
  json.id wish.id
  json.item wish.item
  json.vendor wish.vendor
  json.category wish.category
  json.price wish.price
  json.ship wish.ship_address
end