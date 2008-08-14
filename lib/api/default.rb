require 'xsd/qname'

# {http://abr.business.gov.au/ABRXMLSearch/}Payload
#   request - ExternalRequest
#   response - Response
class Payload
  attr_accessor :request
  attr_accessor :response

  def initialize(request = nil, response = nil)
    @request = request
    @response = response
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ExternalRequest
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter
#   externalRequestABNFilter - ExternalRequestABNFilter
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter
#   nameSearchRequest - ExternalRequestNameSearch
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter
#   identifierSearchRequest - ExternalRequestIdentifierSearch
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced
class ExternalRequest
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequest
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequestAdvanced

  def initialize(externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNEventFilter = nil, nameSearchRequest = nil, externalRequestABNStatusFilter = nil, identifierSearchRequest = nil, nameSearchRequestAdvanced = nil)
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequest = nameSearchRequest
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ExternalRequestABNFilter
# abstract
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter
#   externalRequestABNFilter - ExternalRequestABNFilter
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter
#   nameSearchRequest - ExternalRequestNameSearch
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter
#   identifierSearchRequest - ExternalRequestIdentifierSearch
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced
#   authenticationGUID - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   entityTypeCode - SOAP::SOAPString
class ExternalRequestABNFilter < ExternalRequest
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequest
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :authenticationGUID
  attr_accessor :postcode
  attr_accessor :entityTypeCode

  def initialize(externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNEventFilter = nil, nameSearchRequest = nil, externalRequestABNStatusFilter = nil, identifierSearchRequest = nil, nameSearchRequestAdvanced = nil, authenticationGUID = nil, postcode = nil, entityTypeCode = nil)
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequest = nameSearchRequest
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @authenticationGUID = authenticationGUID
    @postcode = postcode
    @entityTypeCode = entityTypeCode
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ExternalRequestABNCharityFilter
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter
#   externalRequestABNFilter - ExternalRequestABNFilter
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter
#   nameSearchRequest - ExternalRequestNameSearch
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter
#   identifierSearchRequest - ExternalRequestIdentifierSearch
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced
#   authenticationGUID - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   entityTypeCode - SOAP::SOAPString
#   state - SOAP::SOAPString
#   charityTypeCode - SOAP::SOAPString
#   concessionTypeCode - SOAP::SOAPString
class ExternalRequestABNCharityFilter < ExternalRequestABNFilter
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequest
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :authenticationGUID
  attr_accessor :postcode
  attr_accessor :entityTypeCode
  attr_accessor :state
  attr_accessor :charityTypeCode
  attr_accessor :concessionTypeCode

  def initialize(externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNEventFilter = nil, nameSearchRequest = nil, externalRequestABNStatusFilter = nil, identifierSearchRequest = nil, nameSearchRequestAdvanced = nil, authenticationGUID = nil, postcode = nil, entityTypeCode = nil, state = nil, charityTypeCode = nil, concessionTypeCode = nil)
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequest = nameSearchRequest
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @authenticationGUID = authenticationGUID
    @postcode = postcode
    @entityTypeCode = entityTypeCode
    @state = state
    @charityTypeCode = charityTypeCode
    @concessionTypeCode = concessionTypeCode
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ExternalRequestABNEventFilter
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter
#   externalRequestABNFilter - ExternalRequestABNFilter
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter
#   nameSearchRequest - ExternalRequestNameSearch
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter
#   identifierSearchRequest - ExternalRequestIdentifierSearch
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced
#   authenticationGUID - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   entityTypeCode - SOAP::SOAPString
#   state - SOAP::SOAPString
#   month - SOAP::SOAPInt
#   year - SOAP::SOAPInt
class ExternalRequestABNEventFilter < ExternalRequestABNFilter
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequest
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :authenticationGUID
  attr_accessor :postcode
  attr_accessor :entityTypeCode
  attr_accessor :state
  attr_accessor :month
  attr_accessor :year

  def initialize(externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNEventFilter = nil, nameSearchRequest = nil, externalRequestABNStatusFilter = nil, identifierSearchRequest = nil, nameSearchRequestAdvanced = nil, authenticationGUID = nil, postcode = nil, entityTypeCode = nil, state = nil, month = nil, year = nil)
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequest = nameSearchRequest
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @authenticationGUID = authenticationGUID
    @postcode = postcode
    @entityTypeCode = entityTypeCode
    @state = state
    @month = month
    @year = year
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ExternalRequestABNStatusFilter
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter
#   externalRequestABNFilter - ExternalRequestABNFilter
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter
#   nameSearchRequest - ExternalRequestNameSearch
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter
#   identifierSearchRequest - ExternalRequestIdentifierSearch
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced
#   authenticationGUID - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   entityTypeCode - SOAP::SOAPString
#   activeABNs - SOAP::SOAPString
#   currentGSTRegistrationOnly - SOAP::SOAPString
class ExternalRequestABNStatusFilter < ExternalRequestABNFilter
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequest
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :authenticationGUID
  attr_accessor :postcode
  attr_accessor :entityTypeCode
  attr_accessor :activeABNs
  attr_accessor :currentGSTRegistrationOnly

  def initialize(externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNEventFilter = nil, nameSearchRequest = nil, externalRequestABNStatusFilter = nil, identifierSearchRequest = nil, nameSearchRequestAdvanced = nil, authenticationGUID = nil, postcode = nil, entityTypeCode = nil, activeABNs = nil, currentGSTRegistrationOnly = nil)
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequest = nameSearchRequest
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @authenticationGUID = authenticationGUID
    @postcode = postcode
    @entityTypeCode = entityTypeCode
    @activeABNs = activeABNs
    @currentGSTRegistrationOnly = currentGSTRegistrationOnly
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ExternalRequestABNUpdateEventFilter
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter
#   externalRequestABNFilter - ExternalRequestABNFilter
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter
#   nameSearchRequest - ExternalRequestNameSearch
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter
#   identifierSearchRequest - ExternalRequestIdentifierSearch
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced
#   authenticationGUID - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   entityTypeCode - SOAP::SOAPString
#   state - SOAP::SOAPString
#   updateDate - SOAP::SOAPDateTime
class ExternalRequestABNUpdateEventFilter < ExternalRequestABNFilter
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequest
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :authenticationGUID
  attr_accessor :postcode
  attr_accessor :entityTypeCode
  attr_accessor :state
  attr_accessor :updateDate

  def initialize(externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNEventFilter = nil, nameSearchRequest = nil, externalRequestABNStatusFilter = nil, identifierSearchRequest = nil, nameSearchRequestAdvanced = nil, authenticationGUID = nil, postcode = nil, entityTypeCode = nil, state = nil, updateDate = nil)
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequest = nameSearchRequest
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @authenticationGUID = authenticationGUID
    @postcode = postcode
    @entityTypeCode = entityTypeCode
    @state = state
    @updateDate = updateDate
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ExternalRequestNameSearch
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter
#   externalRequestABNFilter - ExternalRequestABNFilter
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter
#   nameSearchRequest - ExternalRequestNameSearch
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter
#   identifierSearchRequest - ExternalRequestIdentifierSearch
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced
#   authenticationGUID - SOAP::SOAPString
#   name - SOAP::SOAPString
#   filters - ExternalRequestFilters
class ExternalRequestNameSearch < ExternalRequest
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequest
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :authenticationGUID
  attr_accessor :name
  attr_accessor :filters

  def initialize(externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNEventFilter = nil, nameSearchRequest = nil, externalRequestABNStatusFilter = nil, identifierSearchRequest = nil, nameSearchRequestAdvanced = nil, authenticationGUID = nil, name = nil, filters = nil)
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequest = nameSearchRequest
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @authenticationGUID = authenticationGUID
    @name = name
    @filters = filters
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ExternalRequestNameSearchAdvanced
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter
#   externalRequestABNFilter - ExternalRequestABNFilter
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter
#   nameSearchRequest - ExternalRequestNameSearch
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter
#   identifierSearchRequest - ExternalRequestIdentifierSearch
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced
#   authenticationGUID - SOAP::SOAPString
#   name - SOAP::SOAPString
#   filters - ExternalRequestFilters
#   searchWidth - SOAP::SOAPString
#   minimumScore - SOAP::SOAPInt
class ExternalRequestNameSearchAdvanced < ExternalRequestNameSearch
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequest
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :authenticationGUID
  attr_accessor :name
  attr_accessor :filters
  attr_accessor :searchWidth
  attr_accessor :minimumScore

  def initialize(externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNEventFilter = nil, nameSearchRequest = nil, externalRequestABNStatusFilter = nil, identifierSearchRequest = nil, nameSearchRequestAdvanced = nil, authenticationGUID = nil, name = nil, filters = nil, searchWidth = nil, minimumScore = nil)
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequest = nameSearchRequest
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @authenticationGUID = authenticationGUID
    @name = name
    @filters = filters
    @searchWidth = searchWidth
    @minimumScore = minimumScore
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ExternalRequestNameSearchAdvanced2006
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter
#   externalRequestABNFilter - ExternalRequestABNFilter
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter
#   nameSearchRequest - ExternalRequestNameSearch
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter
#   identifierSearchRequest - ExternalRequestIdentifierSearch
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced
#   authenticationGUID - SOAP::SOAPString
#   name - SOAP::SOAPString
#   filters - ExternalRequestFilters
#   searchWidth - SOAP::SOAPString
#   minimumScore - SOAP::SOAPInt
#   maxSearchResults - SOAP::SOAPString
class ExternalRequestNameSearchAdvanced2006 < ExternalRequestNameSearchAdvanced
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequest
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :authenticationGUID
  attr_accessor :name
  attr_accessor :filters
  attr_accessor :searchWidth
  attr_accessor :minimumScore
  attr_accessor :maxSearchResults

  def initialize(externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNEventFilter = nil, nameSearchRequest = nil, externalRequestABNStatusFilter = nil, identifierSearchRequest = nil, nameSearchRequestAdvanced = nil, authenticationGUID = nil, name = nil, filters = nil, searchWidth = nil, minimumScore = nil, maxSearchResults = nil)
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequest = nameSearchRequest
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @authenticationGUID = authenticationGUID
    @name = name
    @filters = filters
    @searchWidth = searchWidth
    @minimumScore = minimumScore
    @maxSearchResults = maxSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ExternalRequestIdentifierSearch
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter
#   externalRequestABNFilter - ExternalRequestABNFilter
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter
#   nameSearchRequest - ExternalRequestNameSearch
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter
#   identifierSearchRequest - ExternalRequestIdentifierSearch
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced
#   authenticationGUID - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
#   identifierValue - SOAP::SOAPString
#   history - SOAP::SOAPString
class ExternalRequestIdentifierSearch < ExternalRequest
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequest
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :authenticationGUID
  attr_accessor :identifierType
  attr_accessor :identifierValue
  attr_accessor :history

  def initialize(externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNEventFilter = nil, nameSearchRequest = nil, externalRequestABNStatusFilter = nil, identifierSearchRequest = nil, nameSearchRequestAdvanced = nil, authenticationGUID = nil, identifierType = nil, identifierValue = nil, history = nil)
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequest = nameSearchRequest
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @authenticationGUID = authenticationGUID
    @identifierType = identifierType
    @identifierValue = identifierValue
    @history = history
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ExternalRequestFilters
#   nameType - ExternalRequestFilterNameType
#   postcode - SOAP::SOAPString
#   stateCode - ExternalRequestFilterStateCode
class ExternalRequestFilters
  attr_accessor :nameType
  attr_accessor :postcode
  attr_accessor :stateCode

  def initialize(nameType = nil, postcode = nil, stateCode = nil)
    @nameType = nameType
    @postcode = postcode
    @stateCode = stateCode
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ExternalRequestFilterNameType
#   tradingName - SOAP::SOAPString
#   legalName - SOAP::SOAPString
class ExternalRequestFilterNameType
  attr_accessor :tradingName
  attr_accessor :legalName

  def initialize(tradingName = nil, legalName = nil)
    @tradingName = tradingName
    @legalName = legalName
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ExternalRequestFilterStateCode
#   qLD - SOAP::SOAPString
#   nT - SOAP::SOAPString
#   sA - SOAP::SOAPString
#   wA - SOAP::SOAPString
#   vIC - SOAP::SOAPString
#   aCT - SOAP::SOAPString
#   tAS - SOAP::SOAPString
#   nSW - SOAP::SOAPString
class ExternalRequestFilterStateCode
  attr_accessor :qLD
  attr_accessor :nT
  attr_accessor :sA
  attr_accessor :wA
  attr_accessor :vIC
  attr_accessor :aCT
  attr_accessor :tAS
  attr_accessor :nSW

  def initialize(qLD = nil, nT = nil, sA = nil, wA = nil, vIC = nil, aCT = nil, tAS = nil, nSW = nil)
    @qLD = qLD
    @nT = nT
    @sA = sA
    @wA = wA
    @vIC = vIC
    @aCT = aCT
    @tAS = tAS
    @nSW = nSW
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}Response
#   usageStatement - SOAP::SOAPString
#   dateRegisterLastUpdated - SOAP::SOAPDate
#   dateTimeRetrieved - SOAP::SOAPDateTime
#   businessEntity200506 - ResponseBusinessEntity200506
#   searchResultsList - ResponseSearchResultsList
#   abnList - ResponseABNList
#   businessEntity - ResponseBusinessEntity
#   exception - ResponseException
#   businessEntity200709 - ResponseBusinessEntity200709
class Response
  attr_accessor :usageStatement
  attr_accessor :dateRegisterLastUpdated
  attr_accessor :dateTimeRetrieved
  attr_accessor :businessEntity200506
  attr_accessor :searchResultsList
  attr_accessor :abnList
  attr_accessor :businessEntity
  attr_accessor :exception
  attr_accessor :businessEntity200709

  def initialize(usageStatement = nil, dateRegisterLastUpdated = nil, dateTimeRetrieved = nil, businessEntity200506 = nil, searchResultsList = nil, abnList = nil, businessEntity = nil, exception = nil, businessEntity200709 = nil)
    @usageStatement = usageStatement
    @dateRegisterLastUpdated = dateRegisterLastUpdated
    @dateTimeRetrieved = dateTimeRetrieved
    @businessEntity200506 = businessEntity200506
    @searchResultsList = searchResultsList
    @abnList = abnList
    @businessEntity = businessEntity
    @exception = exception
    @businessEntity200709 = businessEntity200709
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ResponseBody
class ResponseBody
  def initialize
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ResponseBusinessEntity
#   recordLastUpdatedDate - SOAP::SOAPDate
#   aBN - Identifier
#   entityStatus - EntityStatus
#   aSICNumber - SOAP::SOAPString
#   entityType - EntityType
#   goodsAndServicesTax - GoodsAndServicesTax
#   dgrEndorsement - DGREndorsement
#   legalName - IndividualName
#   mainName - OrganisationName
#   mainTradingName - OrganisationName
#   otherTradingName - OrganisationName
#   mainBusinessPhysicalAddress - AddressDetails
#   dgrFund - DgrFund
class ResponseBusinessEntity < ResponseBody
  attr_accessor :recordLastUpdatedDate
  attr_accessor :aBN
  attr_accessor :entityStatus
  attr_accessor :aSICNumber
  attr_accessor :entityType
  attr_accessor :goodsAndServicesTax
  attr_accessor :dgrEndorsement
  attr_accessor :legalName
  attr_accessor :mainName
  attr_accessor :mainTradingName
  attr_accessor :otherTradingName
  attr_accessor :mainBusinessPhysicalAddress
  attr_accessor :dgrFund

  def initialize(recordLastUpdatedDate = nil, aBN = [], entityStatus = [], aSICNumber = nil, entityType = nil, goodsAndServicesTax = [], dgrEndorsement = [], legalName = [], mainName = [], mainTradingName = [], otherTradingName = [], mainBusinessPhysicalAddress = [], dgrFund = [])
    @recordLastUpdatedDate = recordLastUpdatedDate
    @aBN = aBN
    @entityStatus = entityStatus
    @aSICNumber = aSICNumber
    @entityType = entityType
    @goodsAndServicesTax = goodsAndServicesTax
    @dgrEndorsement = dgrEndorsement
    @legalName = legalName
    @mainName = mainName
    @mainTradingName = mainTradingName
    @otherTradingName = otherTradingName
    @mainBusinessPhysicalAddress = mainBusinessPhysicalAddress
    @dgrFund = dgrFund
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ResponseBusinessEntity200506
#   recordLastUpdatedDate - SOAP::SOAPDate
#   aBN - Identifier
#   entityStatus - EntityStatus
#   aSICNumber - SOAP::SOAPString
#   entityType - EntityType
#   goodsAndServicesTax - GoodsAndServicesTax
#   dgrEndorsement - DGREndorsement
#   legalName - IndividualName
#   mainName - OrganisationName
#   mainTradingName - OrganisationName
#   otherTradingName - OrganisationName
#   mainBusinessPhysicalAddress - AddressDetails
#   dgrFund - DgrFund
#   charityType - CharityType
#   taxConcessionCharityEndorsement - CharityConcession
#   publicBenevolentInstitutionEmployer - CharitableFund
class ResponseBusinessEntity200506 < ResponseBusinessEntity
  attr_accessor :recordLastUpdatedDate
  attr_accessor :aBN
  attr_accessor :entityStatus
  attr_accessor :aSICNumber
  attr_accessor :entityType
  attr_accessor :goodsAndServicesTax
  attr_accessor :dgrEndorsement
  attr_accessor :legalName
  attr_accessor :mainName
  attr_accessor :mainTradingName
  attr_accessor :otherTradingName
  attr_accessor :mainBusinessPhysicalAddress
  attr_accessor :dgrFund
  attr_accessor :charityType
  attr_accessor :taxConcessionCharityEndorsement
  attr_accessor :publicBenevolentInstitutionEmployer

  def initialize(recordLastUpdatedDate = nil, aBN = [], entityStatus = [], aSICNumber = nil, entityType = nil, goodsAndServicesTax = [], dgrEndorsement = [], legalName = [], mainName = [], mainTradingName = [], otherTradingName = [], mainBusinessPhysicalAddress = [], dgrFund = [], charityType = [], taxConcessionCharityEndorsement = [], publicBenevolentInstitutionEmployer = [])
    @recordLastUpdatedDate = recordLastUpdatedDate
    @aBN = aBN
    @entityStatus = entityStatus
    @aSICNumber = aSICNumber
    @entityType = entityType
    @goodsAndServicesTax = goodsAndServicesTax
    @dgrEndorsement = dgrEndorsement
    @legalName = legalName
    @mainName = mainName
    @mainTradingName = mainTradingName
    @otherTradingName = otherTradingName
    @mainBusinessPhysicalAddress = mainBusinessPhysicalAddress
    @dgrFund = dgrFund
    @charityType = charityType
    @taxConcessionCharityEndorsement = taxConcessionCharityEndorsement
    @publicBenevolentInstitutionEmployer = publicBenevolentInstitutionEmployer
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ResponseBusinessEntity200709
#   recordLastUpdatedDate - SOAP::SOAPDate
#   aBN - Identifier
#   entityStatus - EntityStatus
#   aSICNumber - SOAP::SOAPString
#   entityType - EntityType
#   goodsAndServicesTax - GoodsAndServicesTax
#   dgrEndorsement - DGREndorsement
#   legalName - IndividualName
#   mainName - OrganisationName
#   mainTradingName - OrganisationName
#   otherTradingName - OrganisationName
#   mainBusinessPhysicalAddress - AddressDetails
#   dgrFund - DgrFund
#   charityType - CharityType
#   taxConcessionCharityEndorsement - CharityConcession
#   publicBenevolentInstitutionEmployer - CharitableFund
#   superannuationStatus - SuperannuationStatus
#   mainPostalPhysicalAddress - AddressFull
class ResponseBusinessEntity200709 < ResponseBusinessEntity200506
  attr_accessor :recordLastUpdatedDate
  attr_accessor :aBN
  attr_accessor :entityStatus
  attr_accessor :aSICNumber
  attr_accessor :entityType
  attr_accessor :goodsAndServicesTax
  attr_accessor :dgrEndorsement
  attr_accessor :legalName
  attr_accessor :mainName
  attr_accessor :mainTradingName
  attr_accessor :otherTradingName
  attr_accessor :mainBusinessPhysicalAddress
  attr_accessor :dgrFund
  attr_accessor :charityType
  attr_accessor :taxConcessionCharityEndorsement
  attr_accessor :publicBenevolentInstitutionEmployer
  attr_accessor :superannuationStatus
  attr_accessor :mainPostalPhysicalAddress

  def initialize(recordLastUpdatedDate = nil, aBN = [], entityStatus = [], aSICNumber = nil, entityType = nil, goodsAndServicesTax = [], dgrEndorsement = [], legalName = [], mainName = [], mainTradingName = [], otherTradingName = [], mainBusinessPhysicalAddress = [], dgrFund = [], charityType = [], taxConcessionCharityEndorsement = [], publicBenevolentInstitutionEmployer = [], superannuationStatus = nil, mainPostalPhysicalAddress = nil)
    @recordLastUpdatedDate = recordLastUpdatedDate
    @aBN = aBN
    @entityStatus = entityStatus
    @aSICNumber = aSICNumber
    @entityType = entityType
    @goodsAndServicesTax = goodsAndServicesTax
    @dgrEndorsement = dgrEndorsement
    @legalName = legalName
    @mainName = mainName
    @mainTradingName = mainTradingName
    @otherTradingName = otherTradingName
    @mainBusinessPhysicalAddress = mainBusinessPhysicalAddress
    @dgrFund = dgrFund
    @charityType = charityType
    @taxConcessionCharityEndorsement = taxConcessionCharityEndorsement
    @publicBenevolentInstitutionEmployer = publicBenevolentInstitutionEmployer
    @superannuationStatus = superannuationStatus
    @mainPostalPhysicalAddress = mainPostalPhysicalAddress
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ResponseSearchResultsList
#   numberOfRecords - SOAP::SOAPInt
#   exceedsMaximum - SOAP::SOAPString
#   searchResultsRecord - SearchResultsRecord
class ResponseSearchResultsList < ResponseBody
  attr_accessor :numberOfRecords
  attr_accessor :exceedsMaximum
  attr_accessor :searchResultsRecord

  def initialize(numberOfRecords = nil, exceedsMaximum = nil, searchResultsRecord = [])
    @numberOfRecords = numberOfRecords
    @exceedsMaximum = exceedsMaximum
    @searchResultsRecord = searchResultsRecord
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ResponseABNList
#   numberOfRecords - SOAP::SOAPInt
#   abn - SOAP::SOAPString
class ResponseABNList < ResponseBody
  attr_accessor :numberOfRecords
  attr_accessor :abn

  def initialize(numberOfRecords = nil, abn = [])
    @numberOfRecords = numberOfRecords
    @abn = abn
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ResponseException
#   exceptionDescription - SOAP::SOAPString
#   exceptionCode - SOAP::SOAPString
class ResponseException < ResponseBody
  attr_accessor :exceptionDescription
  attr_accessor :exceptionCode

  def initialize(exceptionDescription = nil, exceptionCode = nil)
    @exceptionDescription = exceptionDescription
    @exceptionCode = exceptionCode
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SearchResultsRecord
#   aBN - IdentifierSummary
#   legalName - IndividualSimpleName
#   dgrFundName - OrganisationSimpleName
#   pBIEName - OrganisationSimpleName
#   otherTradingName - OrganisationSimpleName
#   mainName - OrganisationSimpleName
#   mainTradingName - OrganisationSimpleName
#   mainBusinessPhysicalAddress - AddressSimple
class SearchResultsRecord
  attr_accessor :aBN
  attr_accessor :legalName
  attr_accessor :dgrFundName
  attr_accessor :pBIEName
  attr_accessor :otherTradingName
  attr_accessor :mainName
  attr_accessor :mainTradingName
  attr_accessor :mainBusinessPhysicalAddress

  def initialize(aBN = [], legalName = [], dgrFundName = [], pBIEName = [], otherTradingName = [], mainName = [], mainTradingName = [], mainBusinessPhysicalAddress = [])
    @aBN = aBN
    @legalName = legalName
    @dgrFundName = dgrFundName
    @pBIEName = pBIEName
    @otherTradingName = otherTradingName
    @mainName = mainName
    @mainTradingName = mainTradingName
    @mainBusinessPhysicalAddress = mainBusinessPhysicalAddress
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}IdentifierSummary
#   identifierValue - SOAP::SOAPString
#   identifierStatus - SOAP::SOAPString
class IdentifierSummary
  attr_accessor :identifierValue
  attr_accessor :identifierStatus

  def initialize(identifierValue = nil, identifierStatus = nil)
    @identifierValue = identifierValue
    @identifierStatus = identifierStatus
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}Individual
#   fullName - SOAP::SOAPString
#   givenName - SOAP::SOAPString
#   otherGivenName - SOAP::SOAPString
#   familyName - SOAP::SOAPString
class Individual
  attr_accessor :fullName
  attr_accessor :givenName
  attr_accessor :otherGivenName
  attr_accessor :familyName

  def initialize(fullName = nil, givenName = nil, otherGivenName = nil, familyName = nil)
    @fullName = fullName
    @givenName = givenName
    @otherGivenName = otherGivenName
    @familyName = familyName
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}IndividualSimpleName
#   fullName - SOAP::SOAPString
#   givenName - SOAP::SOAPString
#   otherGivenName - SOAP::SOAPString
#   familyName - SOAP::SOAPString
#   score - SOAP::SOAPInt
#   isCurrentIndicator - SOAP::SOAPString
class IndividualSimpleName < Individual
  attr_accessor :fullName
  attr_accessor :givenName
  attr_accessor :otherGivenName
  attr_accessor :familyName
  attr_accessor :score
  attr_accessor :isCurrentIndicator

  def initialize(fullName = nil, givenName = nil, otherGivenName = nil, familyName = nil, score = nil, isCurrentIndicator = nil)
    @fullName = fullName
    @givenName = givenName
    @otherGivenName = otherGivenName
    @familyName = familyName
    @score = score
    @isCurrentIndicator = isCurrentIndicator
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}IndividualName
#   fullName - SOAP::SOAPString
#   givenName - SOAP::SOAPString
#   otherGivenName - SOAP::SOAPString
#   familyName - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDate
#   effectiveTo - SOAP::SOAPDate
class IndividualName < Individual
  attr_accessor :fullName
  attr_accessor :givenName
  attr_accessor :otherGivenName
  attr_accessor :familyName
  attr_accessor :effectiveFrom
  attr_accessor :effectiveTo

  def initialize(fullName = nil, givenName = nil, otherGivenName = nil, familyName = nil, effectiveFrom = nil, effectiveTo = nil)
    @fullName = fullName
    @givenName = givenName
    @otherGivenName = otherGivenName
    @familyName = familyName
    @effectiveFrom = effectiveFrom
    @effectiveTo = effectiveTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}Organisation
#   organisationName - SOAP::SOAPString
class Organisation
  attr_accessor :organisationName

  def initialize(organisationName = nil)
    @organisationName = organisationName
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}OrganisationSimpleName
#   organisationName - SOAP::SOAPString
#   score - SOAP::SOAPInt
#   isCurrentIndicator - SOAP::SOAPString
class OrganisationSimpleName < Organisation
  attr_accessor :organisationName
  attr_accessor :score
  attr_accessor :isCurrentIndicator

  def initialize(organisationName = nil, score = nil, isCurrentIndicator = nil)
    @organisationName = organisationName
    @score = score
    @isCurrentIndicator = isCurrentIndicator
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}OrganisationName
#   organisationName - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDate
#   effectiveToBlank - (any)
#   effectiveTo - SOAP::SOAPDate
class OrganisationName < Organisation
  attr_accessor :organisationName
  attr_accessor :effectiveFrom
  attr_accessor :effectiveToBlank
  attr_accessor :effectiveTo

  def initialize(organisationName = nil, effectiveFrom = nil, effectiveToBlank = nil, effectiveTo = nil)
    @organisationName = organisationName
    @effectiveFrom = effectiveFrom
    @effectiveToBlank = effectiveToBlank
    @effectiveTo = effectiveTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}Address
# abstract
#   stateCode - SOAP::SOAPString
#   postcode - SOAP::SOAPString
class Address
  attr_accessor :stateCode
  attr_accessor :postcode

  def initialize(stateCode = nil, postcode = nil)
    @stateCode = stateCode
    @postcode = postcode
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}AddressSimple
#   stateCode - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   isCurrentIndicator - SOAP::SOAPString
class AddressSimple < Address
  attr_accessor :stateCode
  attr_accessor :postcode
  attr_accessor :isCurrentIndicator

  def initialize(stateCode = nil, postcode = nil, isCurrentIndicator = nil)
    @stateCode = stateCode
    @postcode = postcode
    @isCurrentIndicator = isCurrentIndicator
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}AddressFull
#   stateCode - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   addressLine1 - SOAP::SOAPString
#   addressLine2 - SOAP::SOAPString
#   suburb - SOAP::SOAPString
#   countryName - SOAP::SOAPString
class AddressFull < Address
  attr_accessor :stateCode
  attr_accessor :postcode
  attr_accessor :addressLine1
  attr_accessor :addressLine2
  attr_accessor :suburb
  attr_accessor :countryName

  def initialize(stateCode = nil, postcode = nil, addressLine1 = nil, addressLine2 = nil, suburb = nil, countryName = nil)
    @stateCode = stateCode
    @postcode = postcode
    @addressLine1 = addressLine1
    @addressLine2 = addressLine2
    @suburb = suburb
    @countryName = countryName
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}AddressDetails
#   stateCode - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDate
#   effectiveTo - SOAP::SOAPDate
class AddressDetails < Address
  attr_accessor :stateCode
  attr_accessor :postcode
  attr_accessor :effectiveFrom
  attr_accessor :effectiveTo

  def initialize(stateCode = nil, postcode = nil, effectiveFrom = nil, effectiveTo = nil)
    @stateCode = stateCode
    @postcode = postcode
    @effectiveFrom = effectiveFrom
    @effectiveTo = effectiveTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}Identifier
#   identifierValue - SOAP::SOAPString
#   isCurrentIndicator - SOAP::SOAPString
#   replacedIdentifierValue - SOAP::SOAPString
#   replacedFrom - SOAP::SOAPDate
class Identifier
  attr_accessor :identifierValue
  attr_accessor :isCurrentIndicator
  attr_accessor :replacedIdentifierValue
  attr_accessor :replacedFrom

  def initialize(identifierValue = nil, isCurrentIndicator = nil, replacedIdentifierValue = nil, replacedFrom = nil)
    @identifierValue = identifierValue
    @isCurrentIndicator = isCurrentIndicator
    @replacedIdentifierValue = replacedIdentifierValue
    @replacedFrom = replacedFrom
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}EntityStatus
#   entityStatusCode - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDate
#   effectiveTo - SOAP::SOAPDate
class EntityStatus
  attr_accessor :entityStatusCode
  attr_accessor :effectiveFrom
  attr_accessor :effectiveTo

  def initialize(entityStatusCode = nil, effectiveFrom = nil, effectiveTo = nil)
    @entityStatusCode = entityStatusCode
    @effectiveFrom = effectiveFrom
    @effectiveTo = effectiveTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}EntityType
#   entityTypeCode - SOAP::SOAPString
#   entityDescription - SOAP::SOAPString
class EntityType
  attr_accessor :entityTypeCode
  attr_accessor :entityDescription

  def initialize(entityTypeCode = nil, entityDescription = nil)
    @entityTypeCode = entityTypeCode
    @entityDescription = entityDescription
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}GoodsAndServicesTax
#   effectiveFrom - SOAP::SOAPDate
#   effectiveTo - SOAP::SOAPDate
class GoodsAndServicesTax
  attr_accessor :effectiveFrom
  attr_accessor :effectiveTo

  def initialize(effectiveFrom = nil, effectiveTo = nil)
    @effectiveFrom = effectiveFrom
    @effectiveTo = effectiveTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}DGREndorsement
#   endorsedFrom - SOAP::SOAPDate
#   endorsedTo - SOAP::SOAPDate
class DGREndorsement
  attr_accessor :endorsedFrom
  attr_accessor :endorsedTo

  def initialize(endorsedFrom = nil, endorsedTo = nil)
    @endorsedFrom = endorsedFrom
    @endorsedTo = endorsedTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}DgrFund
#   dgrFundName - OrganisationSimpleName
#   endorsedFrom - SOAP::SOAPDate
#   endorsedTo - SOAP::SOAPDate
class DgrFund
  attr_accessor :dgrFundName
  attr_accessor :endorsedFrom
  attr_accessor :endorsedTo

  def initialize(dgrFundName = [], endorsedFrom = nil, endorsedTo = nil)
    @dgrFundName = dgrFundName
    @endorsedFrom = endorsedFrom
    @endorsedTo = endorsedTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}CharityType
#   charityTypeDescription - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDate
#   effectiveTo - SOAP::SOAPDate
class CharityType
  attr_accessor :charityTypeDescription
  attr_accessor :effectiveFrom
  attr_accessor :effectiveTo

  def initialize(charityTypeDescription = nil, effectiveFrom = nil, effectiveTo = nil)
    @charityTypeDescription = charityTypeDescription
    @effectiveFrom = effectiveFrom
    @effectiveTo = effectiveTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}CharityConcession
#   endorsementType - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDate
#   effectiveTo - SOAP::SOAPDate
class CharityConcession
  attr_accessor :endorsementType
  attr_accessor :effectiveFrom
  attr_accessor :effectiveTo

  def initialize(endorsementType = nil, effectiveFrom = nil, effectiveTo = nil)
    @endorsementType = endorsementType
    @effectiveFrom = effectiveFrom
    @effectiveTo = effectiveTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}CharitableFund
#   pbiName - OrganisationSimpleName
#   effectiveFrom - SOAP::SOAPDate
#   effectiveTo - SOAP::SOAPDate
class CharitableFund
  attr_accessor :pbiName
  attr_accessor :effectiveFrom
  attr_accessor :effectiveTo

  def initialize(pbiName = [], effectiveFrom = nil, effectiveTo = nil)
    @pbiName = pbiName
    @effectiveFrom = effectiveFrom
    @effectiveTo = effectiveTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SuperannuationStatus
#   complyingCode - SOAP::SOAPString
#   complyingDescription - SOAP::SOAPString
#   regulator - SOAP::SOAPString
#   exceptionMessage - SOAP::SOAPString
class SuperannuationStatus
  attr_accessor :complyingCode
  attr_accessor :complyingDescription
  attr_accessor :regulator
  attr_accessor :exceptionMessage

  def initialize(complyingCode = nil, complyingDescription = nil, regulator = nil, exceptionMessage = nil)
    @complyingCode = complyingCode
    @complyingDescription = complyingDescription
    @regulator = regulator
    @exceptionMessage = exceptionMessage
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByABN
#   searchString - SOAP::SOAPString
#   includeHistoricalDetails - SOAP::SOAPString
#   authenticationGuid - SOAP::SOAPString
class ABRSearchByABN
  attr_accessor :searchString
  attr_accessor :includeHistoricalDetails
  attr_accessor :authenticationGuid

  def initialize(searchString = nil, includeHistoricalDetails = nil, authenticationGuid = nil)
    @searchString = searchString
    @includeHistoricalDetails = includeHistoricalDetails
    @authenticationGuid = authenticationGuid
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByABNResponse
#   aBRPayloadSearchResults - Payload
class ABRSearchByABNResponse
  attr_accessor :aBRPayloadSearchResults

  def initialize(aBRPayloadSearchResults = nil)
    @aBRPayloadSearchResults = aBRPayloadSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByASIC
#   searchString - SOAP::SOAPString
#   includeHistoricalDetails - SOAP::SOAPString
#   authenticationGuid - SOAP::SOAPString
class ABRSearchByASIC
  attr_accessor :searchString
  attr_accessor :includeHistoricalDetails
  attr_accessor :authenticationGuid

  def initialize(searchString = nil, includeHistoricalDetails = nil, authenticationGuid = nil)
    @searchString = searchString
    @includeHistoricalDetails = includeHistoricalDetails
    @authenticationGuid = authenticationGuid
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByASICResponse
#   aBRPayloadSearchResults - Payload
class ABRSearchByASICResponse
  attr_accessor :aBRPayloadSearchResults

  def initialize(aBRPayloadSearchResults = nil)
    @aBRPayloadSearchResults = aBRPayloadSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByName
#   externalNameSearch - ExternalRequestNameSearch
#   authenticationGuid - SOAP::SOAPString
class ABRSearchByName
  attr_accessor :externalNameSearch
  attr_accessor :authenticationGuid

  def initialize(externalNameSearch = nil, authenticationGuid = nil)
    @externalNameSearch = externalNameSearch
    @authenticationGuid = authenticationGuid
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameResponse
#   aBRPayloadSearchResults - Payload
class ABRSearchByNameResponse
  attr_accessor :aBRPayloadSearchResults

  def initialize(aBRPayloadSearchResults = nil)
    @aBRPayloadSearchResults = aBRPayloadSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameAdvanced
#   externalNameSearch - ExternalRequestNameSearchAdvanced
#   authenticationGuid - SOAP::SOAPString
class ABRSearchByNameAdvanced
  attr_accessor :externalNameSearch
  attr_accessor :authenticationGuid

  def initialize(externalNameSearch = nil, authenticationGuid = nil)
    @externalNameSearch = externalNameSearch
    @authenticationGuid = authenticationGuid
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameAdvancedResponse
#   aBRPayloadSearchResults - Payload
class ABRSearchByNameAdvancedResponse
  attr_accessor :aBRPayloadSearchResults

  def initialize(aBRPayloadSearchResults = nil)
    @aBRPayloadSearchResults = aBRPayloadSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameAdvanced2006
#   externalNameSearch - ExternalRequestNameSearchAdvanced2006
#   authenticationGuid - SOAP::SOAPString
class ABRSearchByNameAdvanced2006
  attr_accessor :externalNameSearch
  attr_accessor :authenticationGuid

  def initialize(externalNameSearch = nil, authenticationGuid = nil)
    @externalNameSearch = externalNameSearch
    @authenticationGuid = authenticationGuid
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameAdvanced2006Response
#   aBRPayloadSearchResults - Payload
class ABRSearchByNameAdvanced2006Response
  attr_accessor :aBRPayloadSearchResults

  def initialize(aBRPayloadSearchResults = nil)
    @aBRPayloadSearchResults = aBRPayloadSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameSimpleProtocol
#   name - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   legalName - SOAP::SOAPString
#   tradingName - SOAP::SOAPString
#   nSW - SOAP::SOAPString
#   sA - SOAP::SOAPString
#   aCT - SOAP::SOAPString
#   vIC - SOAP::SOAPString
#   wA - SOAP::SOAPString
#   nT - SOAP::SOAPString
#   qLD - SOAP::SOAPString
#   tAS - SOAP::SOAPString
#   authenticationGuid - SOAP::SOAPString
class ABRSearchByNameSimpleProtocol
  attr_accessor :name
  attr_accessor :postcode
  attr_accessor :legalName
  attr_accessor :tradingName
  attr_accessor :nSW
  attr_accessor :sA
  attr_accessor :aCT
  attr_accessor :vIC
  attr_accessor :wA
  attr_accessor :nT
  attr_accessor :qLD
  attr_accessor :tAS
  attr_accessor :authenticationGuid

  def initialize(name = nil, postcode = nil, legalName = nil, tradingName = nil, nSW = nil, sA = nil, aCT = nil, vIC = nil, wA = nil, nT = nil, qLD = nil, tAS = nil, authenticationGuid = nil)
    @name = name
    @postcode = postcode
    @legalName = legalName
    @tradingName = tradingName
    @nSW = nSW
    @sA = sA
    @aCT = aCT
    @vIC = vIC
    @wA = wA
    @nT = nT
    @qLD = qLD
    @tAS = tAS
    @authenticationGuid = authenticationGuid
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameSimpleProtocolResponse
#   aBRPayloadSearchResults - Payload
class ABRSearchByNameSimpleProtocolResponse
  attr_accessor :aBRPayloadSearchResults

  def initialize(aBRPayloadSearchResults = nil)
    @aBRPayloadSearchResults = aBRPayloadSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameAdvancedSimpleProtocol
#   name - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   legalName - SOAP::SOAPString
#   tradingName - SOAP::SOAPString
#   nSW - SOAP::SOAPString
#   sA - SOAP::SOAPString
#   aCT - SOAP::SOAPString
#   vIC - SOAP::SOAPString
#   wA - SOAP::SOAPString
#   nT - SOAP::SOAPString
#   qLD - SOAP::SOAPString
#   tAS - SOAP::SOAPString
#   authenticationGuid - SOAP::SOAPString
#   searchWidth - SOAP::SOAPString
#   minimumScore - SOAP::SOAPString
class ABRSearchByNameAdvancedSimpleProtocol
  attr_accessor :name
  attr_accessor :postcode
  attr_accessor :legalName
  attr_accessor :tradingName
  attr_accessor :nSW
  attr_accessor :sA
  attr_accessor :aCT
  attr_accessor :vIC
  attr_accessor :wA
  attr_accessor :nT
  attr_accessor :qLD
  attr_accessor :tAS
  attr_accessor :authenticationGuid
  attr_accessor :searchWidth
  attr_accessor :minimumScore

  def initialize(name = nil, postcode = nil, legalName = nil, tradingName = nil, nSW = nil, sA = nil, aCT = nil, vIC = nil, wA = nil, nT = nil, qLD = nil, tAS = nil, authenticationGuid = nil, searchWidth = nil, minimumScore = nil)
    @name = name
    @postcode = postcode
    @legalName = legalName
    @tradingName = tradingName
    @nSW = nSW
    @sA = sA
    @aCT = aCT
    @vIC = vIC
    @wA = wA
    @nT = nT
    @qLD = qLD
    @tAS = tAS
    @authenticationGuid = authenticationGuid
    @searchWidth = searchWidth
    @minimumScore = minimumScore
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameAdvancedSimpleProtocolResponse
#   aBRPayloadSearchResults - Payload
class ABRSearchByNameAdvancedSimpleProtocolResponse
  attr_accessor :aBRPayloadSearchResults

  def initialize(aBRPayloadSearchResults = nil)
    @aBRPayloadSearchResults = aBRPayloadSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameAdvancedSimpleProtocol2006
#   name - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   legalName - SOAP::SOAPString
#   tradingName - SOAP::SOAPString
#   nSW - SOAP::SOAPString
#   sA - SOAP::SOAPString
#   aCT - SOAP::SOAPString
#   vIC - SOAP::SOAPString
#   wA - SOAP::SOAPString
#   nT - SOAP::SOAPString
#   qLD - SOAP::SOAPString
#   tAS - SOAP::SOAPString
#   authenticationGuid - SOAP::SOAPString
#   searchWidth - SOAP::SOAPString
#   minimumScore - SOAP::SOAPString
#   maxSearchResults - SOAP::SOAPString
class ABRSearchByNameAdvancedSimpleProtocol2006
  attr_accessor :name
  attr_accessor :postcode
  attr_accessor :legalName
  attr_accessor :tradingName
  attr_accessor :nSW
  attr_accessor :sA
  attr_accessor :aCT
  attr_accessor :vIC
  attr_accessor :wA
  attr_accessor :nT
  attr_accessor :qLD
  attr_accessor :tAS
  attr_accessor :authenticationGuid
  attr_accessor :searchWidth
  attr_accessor :minimumScore
  attr_accessor :maxSearchResults

  def initialize(name = nil, postcode = nil, legalName = nil, tradingName = nil, nSW = nil, sA = nil, aCT = nil, vIC = nil, wA = nil, nT = nil, qLD = nil, tAS = nil, authenticationGuid = nil, searchWidth = nil, minimumScore = nil, maxSearchResults = nil)
    @name = name
    @postcode = postcode
    @legalName = legalName
    @tradingName = tradingName
    @nSW = nSW
    @sA = sA
    @aCT = aCT
    @vIC = vIC
    @wA = wA
    @nT = nT
    @qLD = qLD
    @tAS = tAS
    @authenticationGuid = authenticationGuid
    @searchWidth = searchWidth
    @minimumScore = minimumScore
    @maxSearchResults = maxSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}ABRSearchByNameAdvancedSimpleProtocol2006Response
#   aBRPayloadSearchResults - Payload
class ABRSearchByNameAdvancedSimpleProtocol2006Response
  attr_accessor :aBRPayloadSearchResults

  def initialize(aBRPayloadSearchResults = nil)
    @aBRPayloadSearchResults = aBRPayloadSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SearchByABNv200506
#   searchString - SOAP::SOAPString
#   includeHistoricalDetails - SOAP::SOAPString
#   authenticationGuid - SOAP::SOAPString
class SearchByABNv200506
  attr_accessor :searchString
  attr_accessor :includeHistoricalDetails
  attr_accessor :authenticationGuid

  def initialize(searchString = nil, includeHistoricalDetails = nil, authenticationGuid = nil)
    @searchString = searchString
    @includeHistoricalDetails = includeHistoricalDetails
    @authenticationGuid = authenticationGuid
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SearchByABNv200506Response
#   aBRPayloadSearchResults - Payload
class SearchByABNv200506Response
  attr_accessor :aBRPayloadSearchResults

  def initialize(aBRPayloadSearchResults = nil)
    @aBRPayloadSearchResults = aBRPayloadSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SearchByASICv200506
#   searchString - SOAP::SOAPString
#   includeHistoricalDetails - SOAP::SOAPString
#   authenticationGuid - SOAP::SOAPString
class SearchByASICv200506
  attr_accessor :searchString
  attr_accessor :includeHistoricalDetails
  attr_accessor :authenticationGuid

  def initialize(searchString = nil, includeHistoricalDetails = nil, authenticationGuid = nil)
    @searchString = searchString
    @includeHistoricalDetails = includeHistoricalDetails
    @authenticationGuid = authenticationGuid
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SearchByASICv200506Response
#   aBRPayloadSearchResults - Payload
class SearchByASICv200506Response
  attr_accessor :aBRPayloadSearchResults

  def initialize(aBRPayloadSearchResults = nil)
    @aBRPayloadSearchResults = aBRPayloadSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SearchByPostcode
#   postcode - SOAP::SOAPString
#   authenticationGuid - SOAP::SOAPString
class SearchByPostcode
  attr_accessor :postcode
  attr_accessor :authenticationGuid

  def initialize(postcode = nil, authenticationGuid = nil)
    @postcode = postcode
    @authenticationGuid = authenticationGuid
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SearchByPostcodeResponse
#   aBRPayloadSearchResults - Payload
class SearchByPostcodeResponse
  attr_accessor :aBRPayloadSearchResults

  def initialize(aBRPayloadSearchResults = nil)
    @aBRPayloadSearchResults = aBRPayloadSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SearchByABNStatus
#   postcode - SOAP::SOAPString
#   activeABNsOnly - SOAP::SOAPString
#   currentGSTRegistrationOnly - SOAP::SOAPString
#   entityTypeCode - SOAP::SOAPString
#   authenticationGuid - SOAP::SOAPString
class SearchByABNStatus
  attr_accessor :postcode
  attr_accessor :activeABNsOnly
  attr_accessor :currentGSTRegistrationOnly
  attr_accessor :entityTypeCode
  attr_accessor :authenticationGuid

  def initialize(postcode = nil, activeABNsOnly = nil, currentGSTRegistrationOnly = nil, entityTypeCode = nil, authenticationGuid = nil)
    @postcode = postcode
    @activeABNsOnly = activeABNsOnly
    @currentGSTRegistrationOnly = currentGSTRegistrationOnly
    @entityTypeCode = entityTypeCode
    @authenticationGuid = authenticationGuid
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SearchByABNStatusResponse
#   aBRPayloadSearchResults - Payload
class SearchByABNStatusResponse
  attr_accessor :aBRPayloadSearchResults

  def initialize(aBRPayloadSearchResults = nil)
    @aBRPayloadSearchResults = aBRPayloadSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SearchByRegistrationEvent
#   postcode - SOAP::SOAPString
#   state - SOAP::SOAPString
#   entityTypeCode - SOAP::SOAPString
#   month - SOAP::SOAPString
#   year - SOAP::SOAPString
#   authenticationGuid - SOAP::SOAPString
class SearchByRegistrationEvent
  attr_accessor :postcode
  attr_accessor :state
  attr_accessor :entityTypeCode
  attr_accessor :month
  attr_accessor :year
  attr_accessor :authenticationGuid

  def initialize(postcode = nil, state = nil, entityTypeCode = nil, month = nil, year = nil, authenticationGuid = nil)
    @postcode = postcode
    @state = state
    @entityTypeCode = entityTypeCode
    @month = month
    @year = year
    @authenticationGuid = authenticationGuid
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SearchByRegistrationEventResponse
#   aBRPayloadSearchResults - Payload
class SearchByRegistrationEventResponse
  attr_accessor :aBRPayloadSearchResults

  def initialize(aBRPayloadSearchResults = nil)
    @aBRPayloadSearchResults = aBRPayloadSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SearchByUpdateEvent
#   postcode - SOAP::SOAPString
#   state - SOAP::SOAPString
#   entityTypeCode - SOAP::SOAPString
#   updatedate - SOAP::SOAPString
#   authenticationGuid - SOAP::SOAPString
class SearchByUpdateEvent
  attr_accessor :postcode
  attr_accessor :state
  attr_accessor :entityTypeCode
  attr_accessor :updatedate
  attr_accessor :authenticationGuid

  def initialize(postcode = nil, state = nil, entityTypeCode = nil, updatedate = nil, authenticationGuid = nil)
    @postcode = postcode
    @state = state
    @entityTypeCode = entityTypeCode
    @updatedate = updatedate
    @authenticationGuid = authenticationGuid
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SearchByUpdateEventResponse
#   aBRPayloadSearchResults - Payload
class SearchByUpdateEventResponse
  attr_accessor :aBRPayloadSearchResults

  def initialize(aBRPayloadSearchResults = nil)
    @aBRPayloadSearchResults = aBRPayloadSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SearchByCharity
#   postcode - SOAP::SOAPString
#   state - SOAP::SOAPString
#   charityTypeCode - SOAP::SOAPString
#   concessionTypeCode - SOAP::SOAPString
#   authenticationGuid - SOAP::SOAPString
class SearchByCharity
  attr_accessor :postcode
  attr_accessor :state
  attr_accessor :charityTypeCode
  attr_accessor :concessionTypeCode
  attr_accessor :authenticationGuid

  def initialize(postcode = nil, state = nil, charityTypeCode = nil, concessionTypeCode = nil, authenticationGuid = nil)
    @postcode = postcode
    @state = state
    @charityTypeCode = charityTypeCode
    @concessionTypeCode = concessionTypeCode
    @authenticationGuid = authenticationGuid
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SearchByCharityResponse
#   aBRPayloadSearchResults - Payload
class SearchByCharityResponse
  attr_accessor :aBRPayloadSearchResults

  def initialize(aBRPayloadSearchResults = nil)
    @aBRPayloadSearchResults = aBRPayloadSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SearchByABNv200709
#   searchString - SOAP::SOAPString
#   includeHistoricalDetails - SOAP::SOAPString
#   authenticationGuid - SOAP::SOAPString
class SearchByABNv200709
  attr_accessor :searchString
  attr_accessor :includeHistoricalDetails
  attr_accessor :authenticationGuid

  def initialize(searchString = nil, includeHistoricalDetails = nil, authenticationGuid = nil)
    @searchString = searchString
    @includeHistoricalDetails = includeHistoricalDetails
    @authenticationGuid = authenticationGuid
  end
end

# {http://abr.business.gov.au/ABRXMLSearch/}SearchByABNv200709Response
#   aBRPayloadSearchResults - Payload
class SearchByABNv200709Response
  attr_accessor :aBRPayloadSearchResults

  def initialize(aBRPayloadSearchResults = nil)
    @aBRPayloadSearchResults = aBRPayloadSearchResults
  end
end
