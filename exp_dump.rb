# Ignore this file for operation of library. This is
# just to dump lines in and experiment with the API
# while the feature is being developed.

require 'lib/abn'
require 'lib/api/api'
require 'PP'

api = ABRXMLSearchSoap.new
param = ABRSearchByABN.new("12042168743", "N", "055a1100-a84d-4064-84d7-bce46f7b80c8")
result = api.aBRSearchByABN(param)

business = result.aBRPayloadSearchResults.response.businessEntity

puts "Business Name: #{business.mainName.first.organisationName}"
puts "ABN: #{business.aBN.first.identifierValue}"
puts "ASIC: #{business.aSICNumber}"
puts "Is Active: #{business.entityStatus.first.entityStatusCode}"

pp business