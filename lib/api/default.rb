require 'xsd/qname'

# {http://abr.business.gov.au/ABRXMLSearchRPC/}Payload
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ExternalRequest
#   externalRequestBody - (any)
class ExternalRequest
  attr_accessor :externalRequestBody

  def initialize(externalRequestBody = nil)
    @externalRequestBody = externalRequestBody
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ExternalRequestABNFilter
# abstract
#   externalRequestBody - (any)
#   authenticationGUID - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   entityTypeCode - SOAP::SOAPString
class ExternalRequestABNFilter < ExternalRequest
  attr_accessor :externalRequestBody
  attr_accessor :authenticationGUID
  attr_accessor :postcode
  attr_accessor :entityTypeCode

  def initialize(externalRequestBody = nil, authenticationGUID = nil, postcode = nil, entityTypeCode = nil)
    @externalRequestBody = externalRequestBody
    @authenticationGUID = authenticationGUID
    @postcode = postcode
    @entityTypeCode = entityTypeCode
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ExternalRequestABNUpdateEventFilter
#   externalRequestBody - (any)
#   authenticationGUID - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   entityTypeCode - SOAP::SOAPString
#   state - SOAP::SOAPString
#   updateDate - SOAP::SOAPDateTime
class ExternalRequestABNUpdateEventFilter < ExternalRequestABNFilter
  attr_accessor :externalRequestBody
  attr_accessor :authenticationGUID
  attr_accessor :postcode
  attr_accessor :entityTypeCode
  attr_accessor :state
  attr_accessor :updateDate

  def initialize(externalRequestBody = nil, authenticationGUID = nil, postcode = nil, entityTypeCode = nil, state = nil, updateDate = nil)
    @externalRequestBody = externalRequestBody
    @authenticationGUID = authenticationGUID
    @postcode = postcode
    @entityTypeCode = entityTypeCode
    @state = state
    @updateDate = updateDate
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ExternalRequestABNEventFilter
#   externalRequestBody - (any)
#   authenticationGUID - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   entityTypeCode - SOAP::SOAPString
#   state - SOAP::SOAPString
#   month - SOAP::SOAPInt
#   year - SOAP::SOAPInt
class ExternalRequestABNEventFilter < ExternalRequestABNFilter
  attr_accessor :externalRequestBody
  attr_accessor :authenticationGUID
  attr_accessor :postcode
  attr_accessor :entityTypeCode
  attr_accessor :state
  attr_accessor :month
  attr_accessor :year

  def initialize(externalRequestBody = nil, authenticationGUID = nil, postcode = nil, entityTypeCode = nil, state = nil, month = nil, year = nil)
    @externalRequestBody = externalRequestBody
    @authenticationGUID = authenticationGUID
    @postcode = postcode
    @entityTypeCode = entityTypeCode
    @state = state
    @month = month
    @year = year
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ExternalRequestABNStatusFilter
#   externalRequestBody - (any)
#   authenticationGUID - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   entityTypeCode - SOAP::SOAPString
#   activeABNsOnly - SOAP::SOAPString
#   currentGSTRegistrationOnly - SOAP::SOAPString
class ExternalRequestABNStatusFilter < ExternalRequestABNFilter
  attr_accessor :externalRequestBody
  attr_accessor :authenticationGUID
  attr_accessor :postcode
  attr_accessor :entityTypeCode
  attr_accessor :activeABNsOnly
  attr_accessor :currentGSTRegistrationOnly

  def initialize(externalRequestBody = nil, authenticationGUID = nil, postcode = nil, entityTypeCode = nil, activeABNsOnly = nil, currentGSTRegistrationOnly = nil)
    @externalRequestBody = externalRequestBody
    @authenticationGUID = authenticationGUID
    @postcode = postcode
    @entityTypeCode = entityTypeCode
    @activeABNsOnly = activeABNsOnly
    @currentGSTRegistrationOnly = currentGSTRegistrationOnly
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ExternalRequestNameSearch
#   externalRequestBody - (any)
#   authenticationGUID - SOAP::SOAPString
#   name - SOAP::SOAPString
#   filters - ExternalRequestFilters
class ExternalRequestNameSearch < ExternalRequest
  attr_accessor :externalRequestBody
  attr_accessor :authenticationGUID
  attr_accessor :name
  attr_accessor :filters

  def initialize(externalRequestBody = nil, authenticationGUID = nil, name = nil, filters = nil)
    @externalRequestBody = externalRequestBody
    @authenticationGUID = authenticationGUID
    @name = name
    @filters = filters
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ExternalRequestNameSearchAdvanced
#   externalRequestBody - (any)
#   authenticationGUID - SOAP::SOAPString
#   name - SOAP::SOAPString
#   filters - ExternalRequestFilters
#   searchWidth - SOAP::SOAPString
#   minimumScore - SOAP::SOAPInt
class ExternalRequestNameSearchAdvanced < ExternalRequestNameSearch
  attr_accessor :externalRequestBody
  attr_accessor :authenticationGUID
  attr_accessor :name
  attr_accessor :filters
  attr_accessor :searchWidth
  attr_accessor :minimumScore

  def initialize(externalRequestBody = nil, authenticationGUID = nil, name = nil, filters = nil, searchWidth = nil, minimumScore = nil)
    @externalRequestBody = externalRequestBody
    @authenticationGUID = authenticationGUID
    @name = name
    @filters = filters
    @searchWidth = searchWidth
    @minimumScore = minimumScore
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ExternalRequestNameSearchAdvanced2006
#   externalRequestBody - (any)
#   authenticationGUID - SOAP::SOAPString
#   name - SOAP::SOAPString
#   filters - ExternalRequestFilters
#   searchWidth - SOAP::SOAPString
#   minimumScore - SOAP::SOAPInt
#   maxSearchResults - SOAP::SOAPString
class ExternalRequestNameSearchAdvanced2006 < ExternalRequestNameSearchAdvanced
  attr_accessor :externalRequestBody
  attr_accessor :authenticationGUID
  attr_accessor :name
  attr_accessor :filters
  attr_accessor :searchWidth
  attr_accessor :minimumScore
  attr_accessor :maxSearchResults

  def initialize(externalRequestBody = nil, authenticationGUID = nil, name = nil, filters = nil, searchWidth = nil, minimumScore = nil, maxSearchResults = nil)
    @externalRequestBody = externalRequestBody
    @authenticationGUID = authenticationGUID
    @name = name
    @filters = filters
    @searchWidth = searchWidth
    @minimumScore = minimumScore
    @maxSearchResults = maxSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ExternalRequestIdentifierSearch
#   externalRequestBody - (any)
#   authenticationGUID - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
#   identifierValue - SOAP::SOAPString
#   history - SOAP::SOAPString
class ExternalRequestIdentifierSearch < ExternalRequest
  attr_accessor :externalRequestBody
  attr_accessor :authenticationGUID
  attr_accessor :identifierType
  attr_accessor :identifierValue
  attr_accessor :history

  def initialize(externalRequestBody = nil, authenticationGUID = nil, identifierType = nil, identifierValue = nil, history = nil)
    @externalRequestBody = externalRequestBody
    @authenticationGUID = authenticationGUID
    @identifierType = identifierType
    @identifierValue = identifierValue
    @history = history
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}Response
#   usageStatement - SOAP::SOAPString
#   dateRegisterLastUpdated - SOAP::SOAPDateTime
#   dateTimeRetrieved - SOAP::SOAPDateTime
#   responseBody - (any)
class Response
  attr_accessor :usageStatement
  attr_accessor :dateRegisterLastUpdated
  attr_accessor :dateTimeRetrieved
  attr_accessor :responseBody

  def initialize(usageStatement = nil, dateRegisterLastUpdated = nil, dateTimeRetrieved = nil, responseBody = nil)
    @usageStatement = usageStatement
    @dateRegisterLastUpdated = dateRegisterLastUpdated
    @dateTimeRetrieved = dateTimeRetrieved
    @responseBody = responseBody
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}SuperannuationStatus
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ExternalRequestFilters
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ExternalRequestFilterNameType
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ExternalRequestFilterStateCode
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}Individual
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}IndividualName
#   fullName - SOAP::SOAPString
#   givenName - SOAP::SOAPString
#   otherGivenName - SOAP::SOAPString
#   familyName - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDateTime
#   effectiveTo - SOAP::SOAPDateTime
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}IndividualSimpleName
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}SearchResultsRecord
#   nameType - ArrayOfNameTypeEnumerator
#   aBN - ArrayOfIdentifierSummary
#   name - ArrayOfAnyType
#   mainBusinessPhysicalAddress - ArrayOfAddressSimple
class SearchResultsRecord
  attr_accessor :nameType
  attr_accessor :aBN
  attr_accessor :name
  attr_accessor :mainBusinessPhysicalAddress

  def initialize(nameType = nil, aBN = nil, name = nil, mainBusinessPhysicalAddress = nil)
    @nameType = nameType
    @aBN = aBN
    @name = name
    @mainBusinessPhysicalAddress = mainBusinessPhysicalAddress
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}IdentifierSummary
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}Address
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}AddressSimple
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}AddressFull
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}AddressDetails
#   stateCode - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDateTime
#   effectiveTo - SOAP::SOAPDateTime
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}CharitableFund
#   pbiName - ArrayOfOrganisationSimpleName
#   effectiveFrom - SOAP::SOAPDateTime
#   effectiveTo - SOAP::SOAPDateTime
class CharitableFund
  attr_accessor :pbiName
  attr_accessor :effectiveFrom
  attr_accessor :effectiveTo

  def initialize(pbiName = nil, effectiveFrom = nil, effectiveTo = nil)
    @pbiName = pbiName
    @effectiveFrom = effectiveFrom
    @effectiveTo = effectiveTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}Organisation
#   organisationName - SOAP::SOAPString
class Organisation
  attr_accessor :organisationName

  def initialize(organisationName = nil)
    @organisationName = organisationName
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}OrganisationSimpleName
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}OrganisationName
#   organisationName - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDateTime
#   effectiveTo - (any)
class OrganisationName < Organisation
  attr_accessor :organisationName
  attr_accessor :effectiveFrom
  attr_accessor :effectiveTo

  def initialize(organisationName = nil, effectiveFrom = nil, effectiveTo = nil)
    @organisationName = organisationName
    @effectiveFrom = effectiveFrom
    @effectiveTo = effectiveTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}CharityConcession
#   endorsementType - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDateTime
#   effectiveTo - SOAP::SOAPDateTime
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}CharityType
#   charityTypeDescription - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDateTime
#   effectiveTo - SOAP::SOAPDateTime
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}DgrFund
#   dgrFundName - ArrayOfOrganisationSimpleName
#   endorsedFrom - SOAP::SOAPDateTime
#   endorsedTo - SOAP::SOAPDateTime
class DgrFund
  attr_accessor :dgrFundName
  attr_accessor :endorsedFrom
  attr_accessor :endorsedTo

  def initialize(dgrFundName = nil, endorsedFrom = nil, endorsedTo = nil)
    @dgrFundName = dgrFundName
    @endorsedFrom = endorsedFrom
    @endorsedTo = endorsedTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}DGREndorsement
#   endorsedFrom - SOAP::SOAPDateTime
#   endorsedTo - SOAP::SOAPDateTime
class DGREndorsement
  attr_accessor :endorsedFrom
  attr_accessor :endorsedTo

  def initialize(endorsedFrom = nil, endorsedTo = nil)
    @endorsedFrom = endorsedFrom
    @endorsedTo = endorsedTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}GoodsAndServicesTax
#   effectiveFrom - SOAP::SOAPDateTime
#   effectiveTo - SOAP::SOAPDateTime
class GoodsAndServicesTax
  attr_accessor :effectiveFrom
  attr_accessor :effectiveTo

  def initialize(effectiveFrom = nil, effectiveTo = nil)
    @effectiveFrom = effectiveFrom
    @effectiveTo = effectiveTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}EntityType
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}EntityStatus
#   entityStatusCode - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDateTime
#   effectiveTo - SOAP::SOAPDateTime
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}Identifier
#   identifierValue - SOAP::SOAPString
#   isCurrentIndicator - SOAP::SOAPString
#   replacedIdentifierValue - SOAP::SOAPString
#   replacedFrom - SOAP::SOAPDateTime
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ResponseBody
class ResponseBody
  def initialize
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ResponseABNList
#   numberOfRecords - SOAP::SOAPInt
#   aBN - ArrayOfString
class ResponseABNList < ResponseBody
  attr_accessor :numberOfRecords
  attr_accessor :aBN

  def initialize(numberOfRecords = nil, aBN = nil)
    @numberOfRecords = numberOfRecords
    @aBN = aBN
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ResponseException
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ResponseSearchResultsList
#   numberOfRecords - SOAP::SOAPInt
#   exceedsMaximum - SOAP::SOAPString
#   searchResultsRecord - ArrayOfSearchResultsRecord
class ResponseSearchResultsList < ResponseBody
  attr_accessor :numberOfRecords
  attr_accessor :exceedsMaximum
  attr_accessor :searchResultsRecord

  def initialize(numberOfRecords = nil, exceedsMaximum = nil, searchResultsRecord = nil)
    @numberOfRecords = numberOfRecords
    @exceedsMaximum = exceedsMaximum
    @searchResultsRecord = searchResultsRecord
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ResponseBusinessEntity
#   recordLastUpdatedDate - SOAP::SOAPDateTime
#   aBN - ArrayOfIdentifier
#   entityStatus - ArrayOfEntityStatus
#   aSICNumber - SOAP::SOAPString
#   entityType - EntityType
#   goodsAndServicesTax - ArrayOfGoodsAndServicesTax
#   dgrEndorsement - ArrayOfDGREndorsement
#   name - ArrayOfAnyType
#   mainTradingName - ArrayOfOrganisationName
#   otherTradingName - ArrayOfOrganisationName
#   mainBusinessPhysicalAddress - ArrayOfAddressDetails
#   dgrFund - ArrayOfDgrFund
class ResponseBusinessEntity < ResponseBody
  attr_accessor :recordLastUpdatedDate
  attr_accessor :aBN
  attr_accessor :entityStatus
  attr_accessor :aSICNumber
  attr_accessor :entityType
  attr_accessor :goodsAndServicesTax
  attr_accessor :dgrEndorsement
  attr_accessor :name
  attr_accessor :mainTradingName
  attr_accessor :otherTradingName
  attr_accessor :mainBusinessPhysicalAddress
  attr_accessor :dgrFund

  def initialize(recordLastUpdatedDate = nil, aBN = nil, entityStatus = nil, aSICNumber = nil, entityType = nil, goodsAndServicesTax = nil, dgrEndorsement = nil, name = nil, mainTradingName = nil, otherTradingName = nil, mainBusinessPhysicalAddress = nil, dgrFund = nil)
    @recordLastUpdatedDate = recordLastUpdatedDate
    @aBN = aBN
    @entityStatus = entityStatus
    @aSICNumber = aSICNumber
    @entityType = entityType
    @goodsAndServicesTax = goodsAndServicesTax
    @dgrEndorsement = dgrEndorsement
    @name = name
    @mainTradingName = mainTradingName
    @otherTradingName = otherTradingName
    @mainBusinessPhysicalAddress = mainBusinessPhysicalAddress
    @dgrFund = dgrFund
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ResponseBusinessEntity200506
#   recordLastUpdatedDate - SOAP::SOAPDateTime
#   aBN - ArrayOfIdentifier
#   entityStatus - ArrayOfEntityStatus
#   aSICNumber - SOAP::SOAPString
#   entityType - EntityType
#   goodsAndServicesTax - ArrayOfGoodsAndServicesTax
#   dgrEndorsement - ArrayOfDGREndorsement
#   name - ArrayOfAnyType
#   mainTradingName - ArrayOfOrganisationName
#   otherTradingName - ArrayOfOrganisationName
#   mainBusinessPhysicalAddress - ArrayOfAddressDetails
#   dgrFund - ArrayOfDgrFund
#   charityType - ArrayOfCharityType
#   taxConcessionCharityEndorsement - ArrayOfCharityConcession
#   charitableFund - ArrayOfCharitableFund
class ResponseBusinessEntity200506 < ResponseBusinessEntity
  attr_accessor :recordLastUpdatedDate
  attr_accessor :aBN
  attr_accessor :entityStatus
  attr_accessor :aSICNumber
  attr_accessor :entityType
  attr_accessor :goodsAndServicesTax
  attr_accessor :dgrEndorsement
  attr_accessor :name
  attr_accessor :mainTradingName
  attr_accessor :otherTradingName
  attr_accessor :mainBusinessPhysicalAddress
  attr_accessor :dgrFund
  attr_accessor :charityType
  attr_accessor :taxConcessionCharityEndorsement
  attr_accessor :charitableFund

  def initialize(recordLastUpdatedDate = nil, aBN = nil, entityStatus = nil, aSICNumber = nil, entityType = nil, goodsAndServicesTax = nil, dgrEndorsement = nil, name = nil, mainTradingName = nil, otherTradingName = nil, mainBusinessPhysicalAddress = nil, dgrFund = nil, charityType = nil, taxConcessionCharityEndorsement = nil, charitableFund = nil)
    @recordLastUpdatedDate = recordLastUpdatedDate
    @aBN = aBN
    @entityStatus = entityStatus
    @aSICNumber = aSICNumber
    @entityType = entityType
    @goodsAndServicesTax = goodsAndServicesTax
    @dgrEndorsement = dgrEndorsement
    @name = name
    @mainTradingName = mainTradingName
    @otherTradingName = otherTradingName
    @mainBusinessPhysicalAddress = mainBusinessPhysicalAddress
    @dgrFund = dgrFund
    @charityType = charityType
    @taxConcessionCharityEndorsement = taxConcessionCharityEndorsement
    @charitableFund = charitableFund
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ResponseBusinessEntity200709
#   recordLastUpdatedDate - SOAP::SOAPDateTime
#   aBN - ArrayOfIdentifier
#   entityStatus - ArrayOfEntityStatus
#   aSICNumber - SOAP::SOAPString
#   entityType - EntityType
#   goodsAndServicesTax - ArrayOfGoodsAndServicesTax
#   dgrEndorsement - ArrayOfDGREndorsement
#   name - ArrayOfAnyType
#   mainTradingName - ArrayOfOrganisationName
#   otherTradingName - ArrayOfOrganisationName
#   mainBusinessPhysicalAddress - ArrayOfAddressDetails
#   dgrFund - ArrayOfDgrFund
#   charityType - ArrayOfCharityType
#   taxConcessionCharityEndorsement - ArrayOfCharityConcession
#   charitableFund - ArrayOfCharitableFund
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
  attr_accessor :name
  attr_accessor :mainTradingName
  attr_accessor :otherTradingName
  attr_accessor :mainBusinessPhysicalAddress
  attr_accessor :dgrFund
  attr_accessor :charityType
  attr_accessor :taxConcessionCharityEndorsement
  attr_accessor :charitableFund
  attr_accessor :superannuationStatus
  attr_accessor :mainPostalPhysicalAddress

  def initialize(recordLastUpdatedDate = nil, aBN = nil, entityStatus = nil, aSICNumber = nil, entityType = nil, goodsAndServicesTax = nil, dgrEndorsement = nil, name = nil, mainTradingName = nil, otherTradingName = nil, mainBusinessPhysicalAddress = nil, dgrFund = nil, charityType = nil, taxConcessionCharityEndorsement = nil, charitableFund = nil, superannuationStatus = nil, mainPostalPhysicalAddress = nil)
    @recordLastUpdatedDate = recordLastUpdatedDate
    @aBN = aBN
    @entityStatus = entityStatus
    @aSICNumber = aSICNumber
    @entityType = entityType
    @goodsAndServicesTax = goodsAndServicesTax
    @dgrEndorsement = dgrEndorsement
    @name = name
    @mainTradingName = mainTradingName
    @otherTradingName = otherTradingName
    @mainBusinessPhysicalAddress = mainBusinessPhysicalAddress
    @dgrFund = dgrFund
    @charityType = charityType
    @taxConcessionCharityEndorsement = taxConcessionCharityEndorsement
    @charitableFund = charitableFund
    @superannuationStatus = superannuationStatus
    @mainPostalPhysicalAddress = mainPostalPhysicalAddress
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Payload
#   request - ExternalRequest_
#   response - Response_
class Payload_
  attr_accessor :request
  attr_accessor :response

  def initialize(request = nil, response = nil)
    @request = request
    @response = response
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ExternalRequest
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced_
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter_
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006_
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter_
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter_
#   externalRequestABNFilter - ExternalRequestABNFilter_
#   identifierSearchRequest - ExternalRequestIdentifierSearch_
#   nameSearchRequest - ExternalRequestNameSearch_
class ExternalRequest_
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequest

  def initialize(nameSearchRequestAdvanced = nil, externalRequestABNEventFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNStatusFilter = nil, externalRequestABNFilter = nil, identifierSearchRequest = nil, nameSearchRequest = nil)
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequest = nameSearchRequest
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ExternalRequestNameSearch
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced_
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter_
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006_
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter_
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter_
#   externalRequestABNFilter - ExternalRequestABNFilter_
#   identifierSearchRequest - ExternalRequestIdentifierSearch_
#   nameSearchRequest - ExternalRequestNameSearch_
#   authenticationGUID - SOAP::SOAPString
#   name - SOAP::SOAPString
#   filters - ExternalRequestFilters_
class ExternalRequestNameSearch_ < ExternalRequest_
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequest
  attr_accessor :authenticationGUID
  attr_accessor :name
  attr_accessor :filters

  def initialize(nameSearchRequestAdvanced = nil, externalRequestABNEventFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNStatusFilter = nil, externalRequestABNFilter = nil, identifierSearchRequest = nil, nameSearchRequest = nil, authenticationGUID = nil, name = nil, filters = nil)
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequest = nameSearchRequest
    @authenticationGUID = authenticationGUID
    @name = name
    @filters = filters
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ExternalRequestNameSearchAdvanced
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced_
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter_
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006_
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter_
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter_
#   externalRequestABNFilter - ExternalRequestABNFilter_
#   identifierSearchRequest - ExternalRequestIdentifierSearch_
#   nameSearchRequest - ExternalRequestNameSearch_
#   authenticationGUID - SOAP::SOAPString
#   name - SOAP::SOAPString
#   filters - ExternalRequestFilters_
#   searchWidth - SOAP::SOAPString
#   minimumScore - SOAP::SOAPInt
class ExternalRequestNameSearchAdvanced_ < ExternalRequestNameSearch_
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequest
  attr_accessor :authenticationGUID
  attr_accessor :name
  attr_accessor :filters
  attr_accessor :searchWidth
  attr_accessor :minimumScore

  def initialize(nameSearchRequestAdvanced = nil, externalRequestABNEventFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNStatusFilter = nil, externalRequestABNFilter = nil, identifierSearchRequest = nil, nameSearchRequest = nil, authenticationGUID = nil, name = nil, filters = nil, searchWidth = nil, minimumScore = nil)
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequest = nameSearchRequest
    @authenticationGUID = authenticationGUID
    @name = name
    @filters = filters
    @searchWidth = searchWidth
    @minimumScore = minimumScore
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ExternalRequestNameSearchAdvanced2006
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced_
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter_
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006_
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter_
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter_
#   externalRequestABNFilter - ExternalRequestABNFilter_
#   identifierSearchRequest - ExternalRequestIdentifierSearch_
#   nameSearchRequest - ExternalRequestNameSearch_
#   authenticationGUID - SOAP::SOAPString
#   name - SOAP::SOAPString
#   filters - ExternalRequestFilters_
#   searchWidth - SOAP::SOAPString
#   minimumScore - SOAP::SOAPInt
#   maxSearchResults - SOAP::SOAPString
class ExternalRequestNameSearchAdvanced2006_ < ExternalRequestNameSearchAdvanced_
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequest
  attr_accessor :authenticationGUID
  attr_accessor :name
  attr_accessor :filters
  attr_accessor :searchWidth
  attr_accessor :minimumScore
  attr_accessor :maxSearchResults

  def initialize(nameSearchRequestAdvanced = nil, externalRequestABNEventFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNStatusFilter = nil, externalRequestABNFilter = nil, identifierSearchRequest = nil, nameSearchRequest = nil, authenticationGUID = nil, name = nil, filters = nil, searchWidth = nil, minimumScore = nil, maxSearchResults = nil)
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequest = nameSearchRequest
    @authenticationGUID = authenticationGUID
    @name = name
    @filters = filters
    @searchWidth = searchWidth
    @minimumScore = minimumScore
    @maxSearchResults = maxSearchResults
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ExternalRequestABNFilter
# abstract
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced_
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter_
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006_
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter_
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter_
#   externalRequestABNFilter - ExternalRequestABNFilter_
#   identifierSearchRequest - ExternalRequestIdentifierSearch_
#   nameSearchRequest - ExternalRequestNameSearch_
#   authenticationGUID - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   entityTypeCode - SOAP::SOAPString
class ExternalRequestABNFilter_ < ExternalRequest_
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequest
  attr_accessor :authenticationGUID
  attr_accessor :postcode
  attr_accessor :entityTypeCode

  def initialize(nameSearchRequestAdvanced = nil, externalRequestABNEventFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNStatusFilter = nil, externalRequestABNFilter = nil, identifierSearchRequest = nil, nameSearchRequest = nil, authenticationGUID = nil, postcode = nil, entityTypeCode = nil)
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequest = nameSearchRequest
    @authenticationGUID = authenticationGUID
    @postcode = postcode
    @entityTypeCode = entityTypeCode
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ExternalRequestABNEventFilter
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced_
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter_
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006_
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter_
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter_
#   externalRequestABNFilter - ExternalRequestABNFilter_
#   identifierSearchRequest - ExternalRequestIdentifierSearch_
#   nameSearchRequest - ExternalRequestNameSearch_
#   authenticationGUID - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   entityTypeCode - SOAP::SOAPString
#   state - SOAP::SOAPString
#   month - SOAP::SOAPInt
#   year - SOAP::SOAPInt
class ExternalRequestABNEventFilter_ < ExternalRequestABNFilter_
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequest
  attr_accessor :authenticationGUID
  attr_accessor :postcode
  attr_accessor :entityTypeCode
  attr_accessor :state
  attr_accessor :month
  attr_accessor :year

  def initialize(nameSearchRequestAdvanced = nil, externalRequestABNEventFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNStatusFilter = nil, externalRequestABNFilter = nil, identifierSearchRequest = nil, nameSearchRequest = nil, authenticationGUID = nil, postcode = nil, entityTypeCode = nil, state = nil, month = nil, year = nil)
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequest = nameSearchRequest
    @authenticationGUID = authenticationGUID
    @postcode = postcode
    @entityTypeCode = entityTypeCode
    @state = state
    @month = month
    @year = year
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ExternalRequestABNCharityFilter
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced_
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter_
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006_
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter_
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter_
#   externalRequestABNFilter - ExternalRequestABNFilter_
#   identifierSearchRequest - ExternalRequestIdentifierSearch_
#   nameSearchRequest - ExternalRequestNameSearch_
#   authenticationGUID - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   entityTypeCode - SOAP::SOAPString
#   state - SOAP::SOAPString
#   charityTypeCode - SOAP::SOAPString
#   concessionTypeCode - SOAP::SOAPString
class ExternalRequestABNCharityFilter < ExternalRequestABNFilter_
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequest
  attr_accessor :authenticationGUID
  attr_accessor :postcode
  attr_accessor :entityTypeCode
  attr_accessor :state
  attr_accessor :charityTypeCode
  attr_accessor :concessionTypeCode

  def initialize(nameSearchRequestAdvanced = nil, externalRequestABNEventFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNStatusFilter = nil, externalRequestABNFilter = nil, identifierSearchRequest = nil, nameSearchRequest = nil, authenticationGUID = nil, postcode = nil, entityTypeCode = nil, state = nil, charityTypeCode = nil, concessionTypeCode = nil)
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequest = nameSearchRequest
    @authenticationGUID = authenticationGUID
    @postcode = postcode
    @entityTypeCode = entityTypeCode
    @state = state
    @charityTypeCode = charityTypeCode
    @concessionTypeCode = concessionTypeCode
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ExternalRequestABNStatusFilter
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced_
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter_
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006_
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter_
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter_
#   externalRequestABNFilter - ExternalRequestABNFilter_
#   identifierSearchRequest - ExternalRequestIdentifierSearch_
#   nameSearchRequest - ExternalRequestNameSearch_
#   authenticationGUID - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   entityTypeCode - SOAP::SOAPString
#   activeABNs - SOAP::SOAPString
#   currentGSTRegistrationOnly - SOAP::SOAPString
class ExternalRequestABNStatusFilter_ < ExternalRequestABNFilter_
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequest
  attr_accessor :authenticationGUID
  attr_accessor :postcode
  attr_accessor :entityTypeCode
  attr_accessor :activeABNs
  attr_accessor :currentGSTRegistrationOnly

  def initialize(nameSearchRequestAdvanced = nil, externalRequestABNEventFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNStatusFilter = nil, externalRequestABNFilter = nil, identifierSearchRequest = nil, nameSearchRequest = nil, authenticationGUID = nil, postcode = nil, entityTypeCode = nil, activeABNs = nil, currentGSTRegistrationOnly = nil)
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequest = nameSearchRequest
    @authenticationGUID = authenticationGUID
    @postcode = postcode
    @entityTypeCode = entityTypeCode
    @activeABNs = activeABNs
    @currentGSTRegistrationOnly = currentGSTRegistrationOnly
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ExternalRequestABNUpdateEventFilter
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced_
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter_
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006_
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter_
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter_
#   externalRequestABNFilter - ExternalRequestABNFilter_
#   identifierSearchRequest - ExternalRequestIdentifierSearch_
#   nameSearchRequest - ExternalRequestNameSearch_
#   authenticationGUID - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   entityTypeCode - SOAP::SOAPString
#   state - SOAP::SOAPString
#   updateDate - SOAP::SOAPDateTime
class ExternalRequestABNUpdateEventFilter_ < ExternalRequestABNFilter_
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequest
  attr_accessor :authenticationGUID
  attr_accessor :postcode
  attr_accessor :entityTypeCode
  attr_accessor :state
  attr_accessor :updateDate

  def initialize(nameSearchRequestAdvanced = nil, externalRequestABNEventFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNStatusFilter = nil, externalRequestABNFilter = nil, identifierSearchRequest = nil, nameSearchRequest = nil, authenticationGUID = nil, postcode = nil, entityTypeCode = nil, state = nil, updateDate = nil)
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequest = nameSearchRequest
    @authenticationGUID = authenticationGUID
    @postcode = postcode
    @entityTypeCode = entityTypeCode
    @state = state
    @updateDate = updateDate
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ExternalRequestIdentifierSearch
#   nameSearchRequestAdvanced - ExternalRequestNameSearchAdvanced_
#   externalRequestABNEventFilter - ExternalRequestABNEventFilter_
#   nameSearchRequestAdvanced2006 - ExternalRequestNameSearchAdvanced2006_
#   externalRequestABNCharityFilter - ExternalRequestABNCharityFilter
#   externalRequestABNUpdateEventFilter - ExternalRequestABNUpdateEventFilter_
#   externalRequestABNStatusFilter - ExternalRequestABNStatusFilter_
#   externalRequestABNFilter - ExternalRequestABNFilter_
#   identifierSearchRequest - ExternalRequestIdentifierSearch_
#   nameSearchRequest - ExternalRequestNameSearch_
#   authenticationGUID - SOAP::SOAPString
#   identifierType - SOAP::SOAPString
#   identifierValue - SOAP::SOAPString
#   history - SOAP::SOAPString
class ExternalRequestIdentifierSearch_ < ExternalRequest_
  attr_accessor :nameSearchRequestAdvanced
  attr_accessor :externalRequestABNEventFilter
  attr_accessor :nameSearchRequestAdvanced2006
  attr_accessor :externalRequestABNCharityFilter
  attr_accessor :externalRequestABNUpdateEventFilter
  attr_accessor :externalRequestABNStatusFilter
  attr_accessor :externalRequestABNFilter
  attr_accessor :identifierSearchRequest
  attr_accessor :nameSearchRequest
  attr_accessor :authenticationGUID
  attr_accessor :identifierType
  attr_accessor :identifierValue
  attr_accessor :history

  def initialize(nameSearchRequestAdvanced = nil, externalRequestABNEventFilter = nil, nameSearchRequestAdvanced2006 = nil, externalRequestABNCharityFilter = nil, externalRequestABNUpdateEventFilter = nil, externalRequestABNStatusFilter = nil, externalRequestABNFilter = nil, identifierSearchRequest = nil, nameSearchRequest = nil, authenticationGUID = nil, identifierType = nil, identifierValue = nil, history = nil)
    @nameSearchRequestAdvanced = nameSearchRequestAdvanced
    @externalRequestABNEventFilter = externalRequestABNEventFilter
    @nameSearchRequestAdvanced2006 = nameSearchRequestAdvanced2006
    @externalRequestABNCharityFilter = externalRequestABNCharityFilter
    @externalRequestABNUpdateEventFilter = externalRequestABNUpdateEventFilter
    @externalRequestABNStatusFilter = externalRequestABNStatusFilter
    @externalRequestABNFilter = externalRequestABNFilter
    @identifierSearchRequest = identifierSearchRequest
    @nameSearchRequest = nameSearchRequest
    @authenticationGUID = authenticationGUID
    @identifierType = identifierType
    @identifierValue = identifierValue
    @history = history
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ExternalRequestFilters
#   nameType - ExternalRequestFilterNameType_
#   postcode - SOAP::SOAPString
#   stateCode - ExternalRequestFilterStateCode_
class ExternalRequestFilters_
  attr_accessor :nameType
  attr_accessor :postcode
  attr_accessor :stateCode

  def initialize(nameType = nil, postcode = nil, stateCode = nil)
    @nameType = nameType
    @postcode = postcode
    @stateCode = stateCode
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ExternalRequestFilterNameType
#   tradingName - SOAP::SOAPString
#   legalName - SOAP::SOAPString
class ExternalRequestFilterNameType_
  attr_accessor :tradingName
  attr_accessor :legalName

  def initialize(tradingName = nil, legalName = nil)
    @tradingName = tradingName
    @legalName = legalName
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ExternalRequestFilterStateCode
#   qLD - SOAP::SOAPString
#   nT - SOAP::SOAPString
#   sA - SOAP::SOAPString
#   wA - SOAP::SOAPString
#   vIC - SOAP::SOAPString
#   aCT - SOAP::SOAPString
#   tAS - SOAP::SOAPString
#   nSW - SOAP::SOAPString
class ExternalRequestFilterStateCode_
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Response
#   usageStatement - SOAP::SOAPString
#   dateRegisterLastUpdated - SOAP::SOAPDate
#   dateTimeRetrieved - SOAP::SOAPDateTime
#   abnList - ResponseABNList_
#   exception - ResponseException_
#   searchResultsList - ResponseSearchResultsList_
#   businessEntity200506 - ResponseBusinessEntity200506_
#   businessEntity - ResponseBusinessEntity_
#   businessEntity200709 - ResponseBusinessEntity200709_
class Response_
  attr_accessor :usageStatement
  attr_accessor :dateRegisterLastUpdated
  attr_accessor :dateTimeRetrieved
  attr_accessor :abnList
  attr_accessor :exception
  attr_accessor :searchResultsList
  attr_accessor :businessEntity200506
  attr_accessor :businessEntity
  attr_accessor :businessEntity200709

  def initialize(usageStatement = nil, dateRegisterLastUpdated = nil, dateTimeRetrieved = nil, abnList = nil, exception = nil, searchResultsList = nil, businessEntity200506 = nil, businessEntity = nil, businessEntity200709 = nil)
    @usageStatement = usageStatement
    @dateRegisterLastUpdated = dateRegisterLastUpdated
    @dateTimeRetrieved = dateTimeRetrieved
    @abnList = abnList
    @exception = exception
    @searchResultsList = searchResultsList
    @businessEntity200506 = businessEntity200506
    @businessEntity = businessEntity
    @businessEntity200709 = businessEntity200709
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ResponseBody
class ResponseBody_
  def initialize
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ResponseABNList
#   numberOfRecords - SOAP::SOAPInt
#   abn - SOAP::SOAPString
class ResponseABNList_ < ResponseBody_
  attr_accessor :numberOfRecords
  attr_accessor :abn

  def initialize(numberOfRecords = nil, abn = [])
    @numberOfRecords = numberOfRecords
    @abn = abn
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ResponseSearchResultsList
#   numberOfRecords - SOAP::SOAPInt
#   exceedsMaximum - SOAP::SOAPString
#   searchResultsRecord - SearchResultsRecord_
class ResponseSearchResultsList_ < ResponseBody_
  attr_accessor :numberOfRecords
  attr_accessor :exceedsMaximum
  attr_accessor :searchResultsRecord

  def initialize(numberOfRecords = nil, exceedsMaximum = nil, searchResultsRecord = [])
    @numberOfRecords = numberOfRecords
    @exceedsMaximum = exceedsMaximum
    @searchResultsRecord = searchResultsRecord
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ResponseException
#   exceptionDescription - SOAP::SOAPString
#   exceptionCode - SOAP::SOAPString
class ResponseException_ < ResponseBody_
  attr_accessor :exceptionDescription
  attr_accessor :exceptionCode

  def initialize(exceptionDescription = nil, exceptionCode = nil)
    @exceptionDescription = exceptionDescription
    @exceptionCode = exceptionCode
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ResponseBusinessEntity
#   recordLastUpdatedDate - SOAP::SOAPDate
#   aBN - Identifier_
#   entityStatus - EntityStatus_
#   aSICNumber - SOAP::SOAPString
#   entityType - EntityType_
#   goodsAndServicesTax - GoodsAndServicesTax_
#   dgrEndorsement - DGREndorsement_
#   legalName - IndividualName_
#   mainName - OrganisationName_
#   mainTradingName - OrganisationName_
#   otherTradingName - OrganisationName_
#   mainBusinessPhysicalAddress - AddressDetails_
#   dgrFund - DgrFund_
class ResponseBusinessEntity_ < ResponseBody_
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ResponseBusinessEntity200506
#   recordLastUpdatedDate - SOAP::SOAPDate
#   aBN - Identifier_
#   entityStatus - EntityStatus_
#   aSICNumber - SOAP::SOAPString
#   entityType - EntityType_
#   goodsAndServicesTax - GoodsAndServicesTax_
#   dgrEndorsement - DGREndorsement_
#   legalName - IndividualName_
#   mainName - OrganisationName_
#   mainTradingName - OrganisationName_
#   otherTradingName - OrganisationName_
#   mainBusinessPhysicalAddress - AddressDetails_
#   dgrFund - DgrFund_
#   charityType - CharityType_
#   taxConcessionCharityEndorsement - CharityConcession_
#   publicBenevolentInstitutionEmployer - CharitableFund_
class ResponseBusinessEntity200506_ < ResponseBusinessEntity_
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}ResponseBusinessEntity200709
#   recordLastUpdatedDate - SOAP::SOAPDate
#   aBN - Identifier_
#   entityStatus - EntityStatus_
#   aSICNumber - SOAP::SOAPString
#   entityType - EntityType_
#   goodsAndServicesTax - GoodsAndServicesTax_
#   dgrEndorsement - DGREndorsement_
#   legalName - IndividualName_
#   mainName - OrganisationName_
#   mainTradingName - OrganisationName_
#   otherTradingName - OrganisationName_
#   mainBusinessPhysicalAddress - AddressDetails_
#   dgrFund - DgrFund_
#   charityType - CharityType_
#   taxConcessionCharityEndorsement - CharityConcession_
#   publicBenevolentInstitutionEmployer - CharitableFund_
#   superannuationStatus - SuperannuationStatus_
#   mainPostalPhysicalAddress - AddressFull_
class ResponseBusinessEntity200709_ < ResponseBusinessEntity200506_
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}SearchResultsRecord
#   aBN - IdentifierSummary_
#   legalName - IndividualSimpleName_
#   otherTradingName - OrganisationSimpleName_
#   pBIEName - OrganisationSimpleName_
#   mainTradingName - OrganisationSimpleName_
#   mainName - OrganisationSimpleName_
#   dgrFundName - OrganisationSimpleName_
#   mainBusinessPhysicalAddress - AddressSimple_
class SearchResultsRecord_
  attr_accessor :aBN
  attr_accessor :legalName
  attr_accessor :otherTradingName
  attr_accessor :pBIEName
  attr_accessor :mainTradingName
  attr_accessor :mainName
  attr_accessor :dgrFundName
  attr_accessor :mainBusinessPhysicalAddress

  def initialize(aBN = [], legalName = [], otherTradingName = [], pBIEName = [], mainTradingName = [], mainName = [], dgrFundName = [], mainBusinessPhysicalAddress = [])
    @aBN = aBN
    @legalName = legalName
    @otherTradingName = otherTradingName
    @pBIEName = pBIEName
    @mainTradingName = mainTradingName
    @mainName = mainName
    @dgrFundName = dgrFundName
    @mainBusinessPhysicalAddress = mainBusinessPhysicalAddress
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}IdentifierSummary
#   identifierValue - SOAP::SOAPString
#   identifierStatus - SOAP::SOAPString
class IdentifierSummary_
  attr_accessor :identifierValue
  attr_accessor :identifierStatus

  def initialize(identifierValue = nil, identifierStatus = nil)
    @identifierValue = identifierValue
    @identifierStatus = identifierStatus
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Individual
#   fullName - SOAP::SOAPString
#   givenName - SOAP::SOAPString
#   otherGivenName - SOAP::SOAPString
#   familyName - SOAP::SOAPString
class Individual_
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}IndividualSimpleName
#   fullName - SOAP::SOAPString
#   givenName - SOAP::SOAPString
#   otherGivenName - SOAP::SOAPString
#   familyName - SOAP::SOAPString
#   score - SOAP::SOAPInt
#   isCurrentIndicator - SOAP::SOAPString
class IndividualSimpleName_ < Individual_
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}IndividualName
#   fullName - SOAP::SOAPString
#   givenName - SOAP::SOAPString
#   otherGivenName - SOAP::SOAPString
#   familyName - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDate
#   effectiveTo - SOAP::SOAPDate
class IndividualName_ < Individual_
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Organisation
#   organisationName - SOAP::SOAPString
class Organisation_
  attr_accessor :organisationName

  def initialize(organisationName = nil)
    @organisationName = organisationName
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}OrganisationSimpleName
#   organisationName - SOAP::SOAPString
#   score - SOAP::SOAPInt
#   isCurrentIndicator - SOAP::SOAPString
class OrganisationSimpleName_ < Organisation_
  attr_accessor :organisationName
  attr_accessor :score
  attr_accessor :isCurrentIndicator

  def initialize(organisationName = nil, score = nil, isCurrentIndicator = nil)
    @organisationName = organisationName
    @score = score
    @isCurrentIndicator = isCurrentIndicator
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}OrganisationName
#   organisationName - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDate
#   effectiveTo - SOAP::SOAPDate
#   effectiveToBlank - (any)
class OrganisationName_ < Organisation_
  attr_accessor :organisationName
  attr_accessor :effectiveFrom
  attr_accessor :effectiveTo
  attr_accessor :effectiveToBlank

  def initialize(organisationName = nil, effectiveFrom = nil, effectiveTo = nil, effectiveToBlank = nil)
    @organisationName = organisationName
    @effectiveFrom = effectiveFrom
    @effectiveTo = effectiveTo
    @effectiveToBlank = effectiveToBlank
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Address
# abstract
#   stateCode - SOAP::SOAPString
#   postcode - SOAP::SOAPString
class Address_
  attr_accessor :stateCode
  attr_accessor :postcode

  def initialize(stateCode = nil, postcode = nil)
    @stateCode = stateCode
    @postcode = postcode
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}AddressSimple
#   stateCode - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   isCurrentIndicator - SOAP::SOAPString
class AddressSimple_ < Address_
  attr_accessor :stateCode
  attr_accessor :postcode
  attr_accessor :isCurrentIndicator

  def initialize(stateCode = nil, postcode = nil, isCurrentIndicator = nil)
    @stateCode = stateCode
    @postcode = postcode
    @isCurrentIndicator = isCurrentIndicator
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}AddressFull
#   stateCode - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   addressLine1 - SOAP::SOAPString
#   addressLine2 - SOAP::SOAPString
#   suburb - SOAP::SOAPString
#   countryName - SOAP::SOAPString
class AddressFull_ < Address_
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}AddressDetails
#   stateCode - SOAP::SOAPString
#   postcode - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDate
#   effectiveTo - SOAP::SOAPDate
class AddressDetails_ < Address_
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}Identifier
#   identifierValue - SOAP::SOAPString
#   isCurrentIndicator - SOAP::SOAPString
#   replacedIdentifierValue - SOAP::SOAPString
#   replacedFrom - SOAP::SOAPDate
class Identifier_
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}EntityStatus
#   entityStatusCode - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDate
#   effectiveTo - SOAP::SOAPDate
class EntityStatus_
  attr_accessor :entityStatusCode
  attr_accessor :effectiveFrom
  attr_accessor :effectiveTo

  def initialize(entityStatusCode = nil, effectiveFrom = nil, effectiveTo = nil)
    @entityStatusCode = entityStatusCode
    @effectiveFrom = effectiveFrom
    @effectiveTo = effectiveTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}EntityType
#   entityTypeCode - SOAP::SOAPString
#   entityDescription - SOAP::SOAPString
class EntityType_
  attr_accessor :entityTypeCode
  attr_accessor :entityDescription

  def initialize(entityTypeCode = nil, entityDescription = nil)
    @entityTypeCode = entityTypeCode
    @entityDescription = entityDescription
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}GoodsAndServicesTax
#   effectiveFrom - SOAP::SOAPDate
#   effectiveTo - SOAP::SOAPDate
class GoodsAndServicesTax_
  attr_accessor :effectiveFrom
  attr_accessor :effectiveTo

  def initialize(effectiveFrom = nil, effectiveTo = nil)
    @effectiveFrom = effectiveFrom
    @effectiveTo = effectiveTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}DGREndorsement
#   endorsedFrom - SOAP::SOAPDate
#   endorsedTo - SOAP::SOAPDate
class DGREndorsement_
  attr_accessor :endorsedFrom
  attr_accessor :endorsedTo

  def initialize(endorsedFrom = nil, endorsedTo = nil)
    @endorsedFrom = endorsedFrom
    @endorsedTo = endorsedTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}DgrFund
#   dgrFundName - OrganisationSimpleName_
#   endorsedFrom - SOAP::SOAPDate
#   endorsedTo - SOAP::SOAPDate
class DgrFund_
  attr_accessor :dgrFundName
  attr_accessor :endorsedFrom
  attr_accessor :endorsedTo

  def initialize(dgrFundName = [], endorsedFrom = nil, endorsedTo = nil)
    @dgrFundName = dgrFundName
    @endorsedFrom = endorsedFrom
    @endorsedTo = endorsedTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}CharityType
#   charityTypeDescription - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDate
#   effectiveTo - SOAP::SOAPDate
class CharityType_
  attr_accessor :charityTypeDescription
  attr_accessor :effectiveFrom
  attr_accessor :effectiveTo

  def initialize(charityTypeDescription = nil, effectiveFrom = nil, effectiveTo = nil)
    @charityTypeDescription = charityTypeDescription
    @effectiveFrom = effectiveFrom
    @effectiveTo = effectiveTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}CharityConcession
#   endorsementType - SOAP::SOAPString
#   effectiveFrom - SOAP::SOAPDate
#   effectiveTo - SOAP::SOAPDate
class CharityConcession_
  attr_accessor :endorsementType
  attr_accessor :effectiveFrom
  attr_accessor :effectiveTo

  def initialize(endorsementType = nil, effectiveFrom = nil, effectiveTo = nil)
    @endorsementType = endorsementType
    @effectiveFrom = effectiveFrom
    @effectiveTo = effectiveTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}CharitableFund
#   pbiName - OrganisationSimpleName_
#   effectiveFrom - SOAP::SOAPDate
#   effectiveTo - SOAP::SOAPDate
class CharitableFund_
  attr_accessor :pbiName
  attr_accessor :effectiveFrom
  attr_accessor :effectiveTo

  def initialize(pbiName = [], effectiveFrom = nil, effectiveTo = nil)
    @pbiName = pbiName
    @effectiveFrom = effectiveFrom
    @effectiveTo = effectiveTo
  end
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes}SuperannuationStatus
#   complyingCode - SOAP::SOAPString
#   complyingDescription - SOAP::SOAPString
#   regulator - SOAP::SOAPString
#   exceptionMessage - SOAP::SOAPString
class SuperannuationStatus_
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

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ArrayOfNameTypeEnumerator
class ArrayOfNameTypeEnumerator < ::Array
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ArrayOfIdentifierSummary
class ArrayOfIdentifierSummary < ::Array
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ArrayOfAnyType
class ArrayOfAnyType < ::Array
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ArrayOfAddressSimple
class ArrayOfAddressSimple < ::Array
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ArrayOfOrganisationSimpleName
class ArrayOfOrganisationSimpleName < ::Array
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ArrayOfString
class ArrayOfString < ::Array
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ArrayOfSearchResultsRecord
class ArrayOfSearchResultsRecord < ::Array
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ArrayOfIdentifier
class ArrayOfIdentifier < ::Array
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ArrayOfEntityStatus
class ArrayOfEntityStatus < ::Array
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ArrayOfGoodsAndServicesTax
class ArrayOfGoodsAndServicesTax < ::Array
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ArrayOfDGREndorsement
class ArrayOfDGREndorsement < ::Array
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ArrayOfOrganisationName
class ArrayOfOrganisationName < ::Array
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ArrayOfAddressDetails
class ArrayOfAddressDetails < ::Array
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ArrayOfDgrFund
class ArrayOfDgrFund < ::Array
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ArrayOfCharityType
class ArrayOfCharityType < ::Array
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ArrayOfCharityConcession
class ArrayOfCharityConcession < ::Array
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}ArrayOfCharitableFund
class ArrayOfCharitableFund < ::Array
end

# {http://abr.business.gov.au/ABRXMLSearchRPC/}NameTypeEnumerator
class NameTypeEnumerator < ::String
  DgrFundName = NameTypeEnumerator.new("dgrFundName")
  LegalName = NameTypeEnumerator.new("legalName")
  MainName = NameTypeEnumerator.new("mainName")
  MainTradingName = NameTypeEnumerator.new("mainTradingName")
  None = NameTypeEnumerator.new("None")
  OtherTradingName = NameTypeEnumerator.new("otherTradingName")
  PBIEName = NameTypeEnumerator.new("PBIEName")
end
