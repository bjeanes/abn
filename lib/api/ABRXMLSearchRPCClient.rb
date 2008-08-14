#!/usr/bin/env ruby
require 'defaultDriver.rb'

endpoint_url = ARGV.shift
obj = ABRXMLSearchRPCSoap.new(endpoint_url)

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
#   aBRSearchByABNResult Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/}Payload
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
#   aBRSearchByASICResult Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/}Payload
#
searchString = includeHistoricalDetails = authenticationGuid = nil
puts obj.aBRSearchByASIC(searchString, includeHistoricalDetails, authenticationGuid)

# SYNOPSIS
#   ABRSearchByName(externalNameSearch, authenticationGuid)
#
# ARGS
#   externalNameSearch ExternalRequestNameSearch - {http://abr.business.gov.au/ABRXMLSearchRPC/}ExternalRequestNameSearch
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   aBRSearchByNameResult Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/}Payload
#
externalNameSearch = authenticationGuid = nil
puts obj.aBRSearchByName(externalNameSearch, authenticationGuid)

# SYNOPSIS
#   ABRSearchByNameAdvanced(externalNameSearch, authenticationGuid)
#
# ARGS
#   externalNameSearch ExternalRequestNameSearchAdvanced - {http://abr.business.gov.au/ABRXMLSearchRPC/}ExternalRequestNameSearchAdvanced
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   aBRSearchByNameAdvancedResult Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/}Payload
#
externalNameSearch = authenticationGuid = nil
puts obj.aBRSearchByNameAdvanced(externalNameSearch, authenticationGuid)

# SYNOPSIS
#   ABRSearchByNameAdvanced2006(externalNameSearch, authenticationGuid)
#
# ARGS
#   externalNameSearch ExternalRequestNameSearchAdvanced2006 - {http://abr.business.gov.au/ABRXMLSearchRPC/}ExternalRequestNameSearchAdvanced2006
#   authenticationGuid C_String - {http://www.w3.org/2001/XMLSchema}string
#
# RETURNS
#   aBRSearchByNameAdvanced2006Result Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/}Payload
#
externalNameSearch = authenticationGuid = nil
puts obj.aBRSearchByNameAdvanced2006(externalNameSearch, authenticationGuid)

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
#   aBRSearchByNameSimpleProtocolResult Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/}Payload
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
#   aBRSearchByNameAdvancedSimpleProtocolResult Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/}Payload
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
#   aBRSearchByNameAdvancedSimpleProtocol2006Result Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/}Payload
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
#   searchByABNv200506Result Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/}Payload
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
#   searchByASICv200506Result Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/}Payload
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
#   searchByPostcodeResult Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/}Payload
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
#   searchByABNStatusResult Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/}Payload
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
#   searchByRegistrationEventResult Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/}Payload
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
#   searchByUpdateEventResult Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/}Payload
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
#   searchByCharityResult Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/}Payload
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
#   searchByABNv200709Result Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/}Payload
#
searchString = includeHistoricalDetails = authenticationGuid = nil
puts obj.searchByABNv200709(searchString, includeHistoricalDetails, authenticationGuid)


endpoint_url = ARGV.shift
obj = ABRXMLSearchRPCHttpGet.new(endpoint_url)

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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
#
searchString = includeHistoricalDetails = authenticationGuid = nil
puts obj.searchByABNv200709(searchString, includeHistoricalDetails, authenticationGuid)


endpoint_url = ARGV.shift
obj = ABRXMLSearchRPCHttpPost.new(endpoint_url)

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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
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
#   body            Payload - {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
#
searchString = includeHistoricalDetails = authenticationGuid = nil
puts obj.searchByABNv200709(searchString, includeHistoricalDetails, authenticationGuid)


