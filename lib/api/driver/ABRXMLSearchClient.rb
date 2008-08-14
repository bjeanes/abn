#!/usr/bin/env ruby
require 'defaultDriver.rb'

endpoint_url = ARGV.shift
obj = ABRXMLSearchSoap.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   ABRSearchByABN(parameters)
#
# ARGS
#   parameters      ABRSearchByABN - {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByABN
#
# RETURNS
#   parameters      ABRSearchByABNResponse - {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByABNResponse
#
parameters = nil
puts obj.aBRSearchByABN(parameters)

# SYNOPSIS
#   ABRSearchByASIC(parameters)
#
# ARGS
#   parameters      ABRSearchByASIC - {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByASIC
#
# RETURNS
#   parameters      ABRSearchByASICResponse - {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByASICResponse
#
parameters = nil
puts obj.aBRSearchByASIC(parameters)

# SYNOPSIS
#   ABRSearchByName(parameters)
#
# ARGS
#   parameters      ABRSearchByName - {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByName
#
# RETURNS
#   parameters      ABRSearchByNameResponse - {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameResponse
#
parameters = nil
puts obj.aBRSearchByName(parameters)

# SYNOPSIS
#   ABRSearchByNameAdvanced(parameters)
#
# ARGS
#   parameters      ABRSearchByNameAdvanced - {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameAdvanced
#
# RETURNS
#   parameters      ABRSearchByNameAdvancedResponse - {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameAdvancedResponse
#
parameters = nil
puts obj.aBRSearchByNameAdvanced(parameters)

# SYNOPSIS
#   ABRSearchByNameAdvanced2006(parameters)
#
# ARGS
#   parameters      ABRSearchByNameAdvanced2006 - {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameAdvanced2006
#
# RETURNS
#   parameters      ABRSearchByNameAdvanced2006Response - {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameAdvanced2006Response
#
parameters = nil
puts obj.aBRSearchByNameAdvanced2006(parameters)

# SYNOPSIS
#   ABRSearchByNameSimpleProtocol(parameters)
#
# ARGS
#   parameters      ABRSearchByNameSimpleProtocol - {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameSimpleProtocol
#
# RETURNS
#   parameters      ABRSearchByNameSimpleProtocolResponse - {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameSimpleProtocolResponse
#
parameters = nil
puts obj.aBRSearchByNameSimpleProtocol(parameters)

# SYNOPSIS
#   ABRSearchByNameAdvancedSimpleProtocol(parameters)
#
# ARGS
#   parameters      ABRSearchByNameAdvancedSimpleProtocol - {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameAdvancedSimpleProtocol
#
# RETURNS
#   parameters      ABRSearchByNameAdvancedSimpleProtocolResponse - {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameAdvancedSimpleProtocolResponse
#
parameters = nil
puts obj.aBRSearchByNameAdvancedSimpleProtocol(parameters)

# SYNOPSIS
#   ABRSearchByNameAdvancedSimpleProtocol2006(parameters)
#
# ARGS
#   parameters      ABRSearchByNameAdvancedSimpleProtocol2006 - {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameAdvancedSimpleProtocol2006
#
# RETURNS
#   parameters      ABRSearchByNameAdvancedSimpleProtocol2006Response - {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameAdvancedSimpleProtocol2006Response
#
parameters = nil
puts obj.aBRSearchByNameAdvancedSimpleProtocol2006(parameters)

# SYNOPSIS
#   SearchByABNv200506(parameters)
#
# ARGS
#   parameters      SearchByABNv200506 - {http://abr.business.gov.au/ABRXMLSearch/}SearchByABNv200506
#
# RETURNS
#   parameters      SearchByABNv200506Response - {http://abr.business.gov.au/ABRXMLSearch/}SearchByABNv200506Response
#
parameters = nil
puts obj.searchByABNv200506(parameters)

# SYNOPSIS
#   SearchByASICv200506(parameters)
#
# ARGS
#   parameters      SearchByASICv200506 - {http://abr.business.gov.au/ABRXMLSearch/}SearchByASICv200506
#
# RETURNS
#   parameters      SearchByASICv200506Response - {http://abr.business.gov.au/ABRXMLSearch/}SearchByASICv200506Response
#
parameters = nil
puts obj.searchByASICv200506(parameters)

# SYNOPSIS
#   SearchByPostcode(parameters)
#
# ARGS
#   parameters      SearchByPostcode - {http://abr.business.gov.au/ABRXMLSearch/}SearchByPostcode
#
# RETURNS
#   parameters      SearchByPostcodeResponse - {http://abr.business.gov.au/ABRXMLSearch/}SearchByPostcodeResponse
#
parameters = nil
puts obj.searchByPostcode(parameters)

# SYNOPSIS
#   SearchByABNStatus(parameters)
#
# ARGS
#   parameters      SearchByABNStatus - {http://abr.business.gov.au/ABRXMLSearch/}SearchByABNStatus
#
# RETURNS
#   parameters      SearchByABNStatusResponse - {http://abr.business.gov.au/ABRXMLSearch/}SearchByABNStatusResponse
#
parameters = nil
puts obj.searchByABNStatus(parameters)

# SYNOPSIS
#   SearchByRegistrationEvent(parameters)
#
# ARGS
#   parameters      SearchByRegistrationEvent - {http://abr.business.gov.au/ABRXMLSearch/}SearchByRegistrationEvent
#
# RETURNS
#   parameters      SearchByRegistrationEventResponse - {http://abr.business.gov.au/ABRXMLSearch/}SearchByRegistrationEventResponse
#
parameters = nil
puts obj.searchByRegistrationEvent(parameters)

# SYNOPSIS
#   SearchByUpdateEvent(parameters)
#
# ARGS
#   parameters      SearchByUpdateEvent - {http://abr.business.gov.au/ABRXMLSearch/}SearchByUpdateEvent
#
# RETURNS
#   parameters      SearchByUpdateEventResponse - {http://abr.business.gov.au/ABRXMLSearch/}SearchByUpdateEventResponse
#
parameters = nil
puts obj.searchByUpdateEvent(parameters)

# SYNOPSIS
#   SearchByCharity(parameters)
#
# ARGS
#   parameters      SearchByCharity - {http://abr.business.gov.au/ABRXMLSearch/}SearchByCharity
#
# RETURNS
#   parameters      SearchByCharityResponse - {http://abr.business.gov.au/ABRXMLSearch/}SearchByCharityResponse
#
parameters = nil
puts obj.searchByCharity(parameters)

# SYNOPSIS
#   SearchByABNv200709(parameters)
#
# ARGS
#   parameters      SearchByABNv200709 - {http://abr.business.gov.au/ABRXMLSearch/}SearchByABNv200709
#
# RETURNS
#   parameters      SearchByABNv200709Response - {http://abr.business.gov.au/ABRXMLSearch/}SearchByABNv200709Response
#
parameters = nil
puts obj.searchByABNv200709(parameters)


endpoint_url = ARGV.shift
obj = ABRXMLSearchHttpGet.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   ABRSearchByABN(searchString, includeHistoricalDetails, authenticationGuid)
#
# ARGS
#   searchString    C_String - {http://www.w3.org/2001/XMLSchema}string
#   includeHistoricalDetails C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
searchString = includeHistoricalDetails = authenticationGuid = nil
puts obj.aBRSearchByABN(searchString, includeHistoricalDetails, authenticationGuid)

# SYNOPSIS
#   ABRSearchByASIC(searchString, includeHistoricalDetails, authenticationGuid)
#
# ARGS
#   searchString    C_String - {http://www.w3.org/2001/XMLSchema}string
#   includeHistoricalDetails C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
searchString = includeHistoricalDetails = authenticationGuid = nil
puts obj.aBRSearchByASIC(searchString, includeHistoricalDetails, authenticationGuid)

# SYNOPSIS
#   ABRSearchByNameSimpleProtocol(name, postcode, legalName, tradingName, nSW, sA, aCT, vIC, wA, nT, qLD, tAS, authenticationGuid)
#
# ARGS
#   name            C_String - {http://www.w3.org/2001/XMLSchema}string
#   postcode        C_String - {http://www.w3.org/2001/XMLSchema}string
#   legalName       C_String - {http://www.w3.org/2001/XMLSchema}string
#   tradingName     C_String - {http://www.w3.org/2001/XMLSchema}string
#   nSW             C_String - {http://www.w3.org/2001/XMLSchema}string
#   sA              C_String - {http://www.w3.org/2001/XMLSchema}string
#   aCT             C_String - {http://www.w3.org/2001/XMLSchema}string
#   vIC             C_String - {http://www.w3.org/2001/XMLSchema}string
#   wA              C_String - {http://www.w3.org/2001/XMLSchema}string
#   nT              C_String - {http://www.w3.org/2001/XMLSchema}string
#   qLD             C_String - {http://www.w3.org/2001/XMLSchema}string
#   tAS             C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
name = postcode = legalName = tradingName = nSW = sA = aCT = vIC = wA = nT = qLD = tAS = authenticationGuid = nil
puts obj.aBRSearchByNameSimpleProtocol(name, postcode, legalName, tradingName, nSW, sA, aCT, vIC, wA, nT, qLD, tAS, authenticationGuid)

# SYNOPSIS
#   ABRSearchByNameAdvancedSimpleProtocol(name, postcode, legalName, tradingName, nSW, sA, aCT, vIC, wA, nT, qLD, tAS, authenticationGuid, searchWidth, minimumScore)
#
# ARGS
#   name            C_String - {http://www.w3.org/2001/XMLSchema}string
#   postcode        C_String - {http://www.w3.org/2001/XMLSchema}string
#   legalName       C_String - {http://www.w3.org/2001/XMLSchema}string
#   tradingName     C_String - {http://www.w3.org/2001/XMLSchema}string
#   nSW             C_String - {http://www.w3.org/2001/XMLSchema}string
#   sA              C_String - {http://www.w3.org/2001/XMLSchema}string
#   aCT             C_String - {http://www.w3.org/2001/XMLSchema}string
#   vIC             C_String - {http://www.w3.org/2001/XMLSchema}string
#   wA              C_String - {http://www.w3.org/2001/XMLSchema}string
#   nT              C_String - {http://www.w3.org/2001/XMLSchema}string
#   qLD             C_String - {http://www.w3.org/2001/XMLSchema}string
#   tAS             C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#   searchWidth     C_String - {http://www.w3.org/2001/XMLSchema}string
#   minimumScore    C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
name = postcode = legalName = tradingName = nSW = sA = aCT = vIC = wA = nT = qLD = tAS = authenticationGuid = searchWidth = minimumScore = nil
puts obj.aBRSearchByNameAdvancedSimpleProtocol(name, postcode, legalName, tradingName, nSW, sA, aCT, vIC, wA, nT, qLD, tAS, authenticationGuid, searchWidth, minimumScore)

# SYNOPSIS
#   ABRSearchByNameAdvancedSimpleProtocol2006(name, postcode, legalName, tradingName, nSW, sA, aCT, vIC, wA, nT, qLD, tAS, authenticationGuid, searchWidth, minimumScore, maxSearchResults)
#
# ARGS
#   name            C_String - {http://www.w3.org/2001/XMLSchema}string
#   postcode        C_String - {http://www.w3.org/2001/XMLSchema}string
#   legalName       C_String - {http://www.w3.org/2001/XMLSchema}string
#   tradingName     C_String - {http://www.w3.org/2001/XMLSchema}string
#   nSW             C_String - {http://www.w3.org/2001/XMLSchema}string
#   sA              C_String - {http://www.w3.org/2001/XMLSchema}string
#   aCT             C_String - {http://www.w3.org/2001/XMLSchema}string
#   vIC             C_String - {http://www.w3.org/2001/XMLSchema}string
#   wA              C_String - {http://www.w3.org/2001/XMLSchema}string
#   nT              C_String - {http://www.w3.org/2001/XMLSchema}string
#   qLD             C_String - {http://www.w3.org/2001/XMLSchema}string
#   tAS             C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#   searchWidth     C_String - {http://www.w3.org/2001/XMLSchema}string
#   minimumScore    C_String - {http://www.w3.org/2001/XMLSchema}string
#   maxSearchResults C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
name = postcode = legalName = tradingName = nSW = sA = aCT = vIC = wA = nT = qLD = tAS = authenticationGuid = searchWidth = minimumScore = maxSearchResults = nil
puts obj.aBRSearchByNameAdvancedSimpleProtocol2006(name, postcode, legalName, tradingName, nSW, sA, aCT, vIC, wA, nT, qLD, tAS, authenticationGuid, searchWidth, minimumScore, maxSearchResults)

# SYNOPSIS
#   SearchByABNv200506(searchString, includeHistoricalDetails, authenticationGuid)
#
# ARGS
#   searchString    C_String - {http://www.w3.org/2001/XMLSchema}string
#   includeHistoricalDetails C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
searchString = includeHistoricalDetails = authenticationGuid = nil
puts obj.searchByABNv200506(searchString, includeHistoricalDetails, authenticationGuid)

# SYNOPSIS
#   SearchByASICv200506(searchString, includeHistoricalDetails, authenticationGuid)
#
# ARGS
#   searchString    C_String - {http://www.w3.org/2001/XMLSchema}string
#   includeHistoricalDetails C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
searchString = includeHistoricalDetails = authenticationGuid = nil
puts obj.searchByASICv200506(searchString, includeHistoricalDetails, authenticationGuid)

# SYNOPSIS
#   SearchByPostcode(postcode, authenticationGuid)
#
# ARGS
#   postcode        C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
postcode = authenticationGuid = nil
puts obj.searchByPostcode(postcode, authenticationGuid)

# SYNOPSIS
#   SearchByABNStatus(postcode, activeABNsOnly, currentGSTRegistrationOnly, entityTypeCode, authenticationGuid)
#
# ARGS
#   postcode        C_String - {http://www.w3.org/2001/XMLSchema}string
#   activeABNsOnly  C_String - {http://www.w3.org/2001/XMLSchema}string
#   currentGSTRegistrationOnly C_String - {http://www.w3.org/2001/XMLSchema}string
#   entityTypeCode  C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
postcode = activeABNsOnly = currentGSTRegistrationOnly = entityTypeCode = authenticationGuid = nil
puts obj.searchByABNStatus(postcode, activeABNsOnly, currentGSTRegistrationOnly, entityTypeCode, authenticationGuid)

# SYNOPSIS
#   SearchByRegistrationEvent(postcode, state, entityTypeCode, month, year, authenticationGuid)
#
# ARGS
#   postcode        C_String - {http://www.w3.org/2001/XMLSchema}string
#   state           C_String - {http://www.w3.org/2001/XMLSchema}string
#   entityTypeCode  C_String - {http://www.w3.org/2001/XMLSchema}string
#   month           C_String - {http://www.w3.org/2001/XMLSchema}string
#   year            C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
postcode = state = entityTypeCode = month = year = authenticationGuid = nil
puts obj.searchByRegistrationEvent(postcode, state, entityTypeCode, month, year, authenticationGuid)

# SYNOPSIS
#   SearchByUpdateEvent(postcode, state, entityTypeCode, updatedate, authenticationGuid)
#
# ARGS
#   postcode        C_String - {http://www.w3.org/2001/XMLSchema}string
#   state           C_String - {http://www.w3.org/2001/XMLSchema}string
#   entityTypeCode  C_String - {http://www.w3.org/2001/XMLSchema}string
#   updatedate      C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
postcode = state = entityTypeCode = updatedate = authenticationGuid = nil
puts obj.searchByUpdateEvent(postcode, state, entityTypeCode, updatedate, authenticationGuid)

# SYNOPSIS
#   SearchByCharity(postcode, state, charityTypeCode, concessionTypeCode, authenticationGuid)
#
# ARGS
#   postcode        C_String - {http://www.w3.org/2001/XMLSchema}string
#   state           C_String - {http://www.w3.org/2001/XMLSchema}string
#   charityTypeCode C_String - {http://www.w3.org/2001/XMLSchema}string
#   concessionTypeCode C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
postcode = state = charityTypeCode = concessionTypeCode = authenticationGuid = nil
puts obj.searchByCharity(postcode, state, charityTypeCode, concessionTypeCode, authenticationGuid)

# SYNOPSIS
#   SearchByABNv200709(searchString, includeHistoricalDetails, authenticationGuid)
#
# ARGS
#   searchString    C_String - {http://www.w3.org/2001/XMLSchema}string
#   includeHistoricalDetails C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
searchString = includeHistoricalDetails = authenticationGuid = nil
puts obj.searchByABNv200709(searchString, includeHistoricalDetails, authenticationGuid)


endpoint_url = ARGV.shift
obj = ABRXMLSearchHttpPost.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   ABRSearchByABN(searchString, includeHistoricalDetails, authenticationGuid)
#
# ARGS
#   searchString    C_String - {http://www.w3.org/2001/XMLSchema}string
#   includeHistoricalDetails C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
searchString = includeHistoricalDetails = authenticationGuid = nil
puts obj.aBRSearchByABN(searchString, includeHistoricalDetails, authenticationGuid)

# SYNOPSIS
#   ABRSearchByASIC(searchString, includeHistoricalDetails, authenticationGuid)
#
# ARGS
#   searchString    C_String - {http://www.w3.org/2001/XMLSchema}string
#   includeHistoricalDetails C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
searchString = includeHistoricalDetails = authenticationGuid = nil
puts obj.aBRSearchByASIC(searchString, includeHistoricalDetails, authenticationGuid)

# SYNOPSIS
#   ABRSearchByNameSimpleProtocol(name, postcode, legalName, tradingName, nSW, sA, aCT, vIC, wA, nT, qLD, tAS, authenticationGuid)
#
# ARGS
#   name            C_String - {http://www.w3.org/2001/XMLSchema}string
#   postcode        C_String - {http://www.w3.org/2001/XMLSchema}string
#   legalName       C_String - {http://www.w3.org/2001/XMLSchema}string
#   tradingName     C_String - {http://www.w3.org/2001/XMLSchema}string
#   nSW             C_String - {http://www.w3.org/2001/XMLSchema}string
#   sA              C_String - {http://www.w3.org/2001/XMLSchema}string
#   aCT             C_String - {http://www.w3.org/2001/XMLSchema}string
#   vIC             C_String - {http://www.w3.org/2001/XMLSchema}string
#   wA              C_String - {http://www.w3.org/2001/XMLSchema}string
#   nT              C_String - {http://www.w3.org/2001/XMLSchema}string
#   qLD             C_String - {http://www.w3.org/2001/XMLSchema}string
#   tAS             C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
name = postcode = legalName = tradingName = nSW = sA = aCT = vIC = wA = nT = qLD = tAS = authenticationGuid = nil
puts obj.aBRSearchByNameSimpleProtocol(name, postcode, legalName, tradingName, nSW, sA, aCT, vIC, wA, nT, qLD, tAS, authenticationGuid)

# SYNOPSIS
#   ABRSearchByNameAdvancedSimpleProtocol(name, postcode, legalName, tradingName, nSW, sA, aCT, vIC, wA, nT, qLD, tAS, authenticationGuid, searchWidth, minimumScore)
#
# ARGS
#   name            C_String - {http://www.w3.org/2001/XMLSchema}string
#   postcode        C_String - {http://www.w3.org/2001/XMLSchema}string
#   legalName       C_String - {http://www.w3.org/2001/XMLSchema}string
#   tradingName     C_String - {http://www.w3.org/2001/XMLSchema}string
#   nSW             C_String - {http://www.w3.org/2001/XMLSchema}string
#   sA              C_String - {http://www.w3.org/2001/XMLSchema}string
#   aCT             C_String - {http://www.w3.org/2001/XMLSchema}string
#   vIC             C_String - {http://www.w3.org/2001/XMLSchema}string
#   wA              C_String - {http://www.w3.org/2001/XMLSchema}string
#   nT              C_String - {http://www.w3.org/2001/XMLSchema}string
#   qLD             C_String - {http://www.w3.org/2001/XMLSchema}string
#   tAS             C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#   searchWidth     C_String - {http://www.w3.org/2001/XMLSchema}string
#   minimumScore    C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
name = postcode = legalName = tradingName = nSW = sA = aCT = vIC = wA = nT = qLD = tAS = authenticationGuid = searchWidth = minimumScore = nil
puts obj.aBRSearchByNameAdvancedSimpleProtocol(name, postcode, legalName, tradingName, nSW, sA, aCT, vIC, wA, nT, qLD, tAS, authenticationGuid, searchWidth, minimumScore)

# SYNOPSIS
#   ABRSearchByNameAdvancedSimpleProtocol2006(name, postcode, legalName, tradingName, nSW, sA, aCT, vIC, wA, nT, qLD, tAS, authenticationGuid, searchWidth, minimumScore, maxSearchResults)
#
# ARGS
#   name            C_String - {http://www.w3.org/2001/XMLSchema}string
#   postcode        C_String - {http://www.w3.org/2001/XMLSchema}string
#   legalName       C_String - {http://www.w3.org/2001/XMLSchema}string
#   tradingName     C_String - {http://www.w3.org/2001/XMLSchema}string
#   nSW             C_String - {http://www.w3.org/2001/XMLSchema}string
#   sA              C_String - {http://www.w3.org/2001/XMLSchema}string
#   aCT             C_String - {http://www.w3.org/2001/XMLSchema}string
#   vIC             C_String - {http://www.w3.org/2001/XMLSchema}string
#   wA              C_String - {http://www.w3.org/2001/XMLSchema}string
#   nT              C_String - {http://www.w3.org/2001/XMLSchema}string
#   qLD             C_String - {http://www.w3.org/2001/XMLSchema}string
#   tAS             C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#   searchWidth     C_String - {http://www.w3.org/2001/XMLSchema}string
#   minimumScore    C_String - {http://www.w3.org/2001/XMLSchema}string
#   maxSearchResults C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
name = postcode = legalName = tradingName = nSW = sA = aCT = vIC = wA = nT = qLD = tAS = authenticationGuid = searchWidth = minimumScore = maxSearchResults = nil
puts obj.aBRSearchByNameAdvancedSimpleProtocol2006(name, postcode, legalName, tradingName, nSW, sA, aCT, vIC, wA, nT, qLD, tAS, authenticationGuid, searchWidth, minimumScore, maxSearchResults)

# SYNOPSIS
#   SearchByABNv200506(searchString, includeHistoricalDetails, authenticationGuid)
#
# ARGS
#   searchString    C_String - {http://www.w3.org/2001/XMLSchema}string
#   includeHistoricalDetails C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
searchString = includeHistoricalDetails = authenticationGuid = nil
puts obj.searchByABNv200506(searchString, includeHistoricalDetails, authenticationGuid)

# SYNOPSIS
#   SearchByASICv200506(searchString, includeHistoricalDetails, authenticationGuid)
#
# ARGS
#   searchString    C_String - {http://www.w3.org/2001/XMLSchema}string
#   includeHistoricalDetails C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
searchString = includeHistoricalDetails = authenticationGuid = nil
puts obj.searchByASICv200506(searchString, includeHistoricalDetails, authenticationGuid)

# SYNOPSIS
#   SearchByPostcode(postcode, authenticationGuid)
#
# ARGS
#   postcode        C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
postcode = authenticationGuid = nil
puts obj.searchByPostcode(postcode, authenticationGuid)

# SYNOPSIS
#   SearchByABNStatus(postcode, activeABNsOnly, currentGSTRegistrationOnly, entityTypeCode, authenticationGuid)
#
# ARGS
#   postcode        C_String - {http://www.w3.org/2001/XMLSchema}string
#   activeABNsOnly  C_String - {http://www.w3.org/2001/XMLSchema}string
#   currentGSTRegistrationOnly C_String - {http://www.w3.org/2001/XMLSchema}string
#   entityTypeCode  C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
postcode = activeABNsOnly = currentGSTRegistrationOnly = entityTypeCode = authenticationGuid = nil
puts obj.searchByABNStatus(postcode, activeABNsOnly, currentGSTRegistrationOnly, entityTypeCode, authenticationGuid)

# SYNOPSIS
#   SearchByRegistrationEvent(postcode, state, entityTypeCode, month, year, authenticationGuid)
#
# ARGS
#   postcode        C_String - {http://www.w3.org/2001/XMLSchema}string
#   state           C_String - {http://www.w3.org/2001/XMLSchema}string
#   entityTypeCode  C_String - {http://www.w3.org/2001/XMLSchema}string
#   month           C_String - {http://www.w3.org/2001/XMLSchema}string
#   year            C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
postcode = state = entityTypeCode = month = year = authenticationGuid = nil
puts obj.searchByRegistrationEvent(postcode, state, entityTypeCode, month, year, authenticationGuid)

# SYNOPSIS
#   SearchByUpdateEvent(postcode, state, entityTypeCode, updatedate, authenticationGuid)
#
# ARGS
#   postcode        C_String - {http://www.w3.org/2001/XMLSchema}string
#   state           C_String - {http://www.w3.org/2001/XMLSchema}string
#   entityTypeCode  C_String - {http://www.w3.org/2001/XMLSchema}string
#   updatedate      C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
postcode = state = entityTypeCode = updatedate = authenticationGuid = nil
puts obj.searchByUpdateEvent(postcode, state, entityTypeCode, updatedate, authenticationGuid)

# SYNOPSIS
#   SearchByCharity(postcode, state, charityTypeCode, concessionTypeCode, authenticationGuid)
#
# ARGS
#   postcode        C_String - {http://www.w3.org/2001/XMLSchema}string
#   state           C_String - {http://www.w3.org/2001/XMLSchema}string
#   charityTypeCode C_String - {http://www.w3.org/2001/XMLSchema}string
#   concessionTypeCode C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
postcode = state = charityTypeCode = concessionTypeCode = authenticationGuid = nil
puts obj.searchByCharity(postcode, state, charityTypeCode, concessionTypeCode, authenticationGuid)

# SYNOPSIS
#   SearchByABNv200709(searchString, includeHistoricalDetails, authenticationGuid)
#
# ARGS
#   searchString    C_String - {http://www.w3.org/2001/XMLSchema}string
#   includeHistoricalDetails C_String - {http://www.w3.org/2001/XMLSchema}string
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearch/}Payload
#
searchString = includeHistoricalDetails = authenticationGuid = nil
puts obj.searchByABNv200709(searchString, includeHistoricalDetails, authenticationGuid)


