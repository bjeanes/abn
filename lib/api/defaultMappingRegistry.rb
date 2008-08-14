require 'default.rb'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsABRXMLSearchRPC = "http://abr.business.gov.au/ABRXMLSearchRPC/"
  NsLiteralTypes = "http://abr.business.gov.au/ABRXMLSearchRPC/literalTypes"

  EncodedRegistry.register(
    :class => Payload,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "Payload"),
    :schema_element => [
      ["request", ["ExternalRequest", XSD::QName.new(nil, "Request")]],
      ["response", ["Response", XSD::QName.new(nil, "Response")]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequest,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequest"),
    :schema_element => [
      ["externalRequestBody", [nil, XSD::QName.new(nil, "ExternalRequestBody")]]
    ]
  )

  EncodedRegistry.register(
    :class => Response,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "Response"),
    :schema_element => [
      ["usageStatement", ["SOAP::SOAPString", XSD::QName.new(nil, "UsageStatement")]],
      ["dateRegisterLastUpdated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateRegisterLastUpdated")]],
      ["dateTimeRetrieved", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateTimeRetrieved")]],
      ["responseBody", [nil, XSD::QName.new(nil, "ResponseBody")]]
    ]
  )

  EncodedRegistry.register(
    :class => SuperannuationStatus,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "SuperannuationStatus"),
    :schema_element => [
      ["complyingCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ComplyingCode")]],
      ["complyingDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ComplyingDescription")]],
      ["regulator", ["SOAP::SOAPString", XSD::QName.new(nil, "Regulator")]],
      ["exceptionMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "ExceptionMessage")]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestFilters,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestFilters"),
    :schema_element => [
      ["nameType", ["ExternalRequestFilterNameType", XSD::QName.new(nil, "NameType")]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "Postcode")]],
      ["stateCode", ["ExternalRequestFilterStateCode", XSD::QName.new(nil, "StateCode")]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestFilterNameType,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestFilterNameType"),
    :schema_element => [
      ["tradingName", ["SOAP::SOAPString", XSD::QName.new(nil, "TradingName")]],
      ["legalName", ["SOAP::SOAPString", XSD::QName.new(nil, "LegalName")]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestFilterStateCode,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestFilterStateCode"),
    :schema_element => [
      ["qLD", ["SOAP::SOAPString", XSD::QName.new(nil, "QLD")]],
      ["nT", ["SOAP::SOAPString", XSD::QName.new(nil, "NT")]],
      ["sA", ["SOAP::SOAPString", XSD::QName.new(nil, "SA")]],
      ["wA", ["SOAP::SOAPString", XSD::QName.new(nil, "WA")]],
      ["vIC", ["SOAP::SOAPString", XSD::QName.new(nil, "VIC")]],
      ["aCT", ["SOAP::SOAPString", XSD::QName.new(nil, "ACT")]],
      ["tAS", ["SOAP::SOAPString", XSD::QName.new(nil, "TAS")]],
      ["nSW", ["SOAP::SOAPString", XSD::QName.new(nil, "NSW")]]
    ]
  )

  EncodedRegistry.register(
    :class => Individual,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "Individual"),
    :schema_element => [
      ["fullName", ["SOAP::SOAPString", XSD::QName.new(nil, "FullName")]],
      ["givenName", ["SOAP::SOAPString", XSD::QName.new(nil, "GivenName")]],
      ["otherGivenName", ["SOAP::SOAPString", XSD::QName.new(nil, "OtherGivenName")]],
      ["familyName", ["SOAP::SOAPString", XSD::QName.new(nil, "FamilyName")]]
    ]
  )

  EncodedRegistry.register(
    :class => IndividualName,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "IndividualName"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "Individual"),
    :schema_element => [
      ["fullName", ["SOAP::SOAPString", XSD::QName.new(nil, "FullName")]],
      ["givenName", ["SOAP::SOAPString", XSD::QName.new(nil, "GivenName")]],
      ["otherGivenName", ["SOAP::SOAPString", XSD::QName.new(nil, "OtherGivenName")]],
      ["familyName", ["SOAP::SOAPString", XSD::QName.new(nil, "FamilyName")]],
      ["effectiveFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveFrom")]],
      ["effectiveTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveTo")]]
    ]
  )

  EncodedRegistry.register(
    :class => IndividualSimpleName,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "IndividualSimpleName"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "Individual"),
    :schema_element => [
      ["fullName", ["SOAP::SOAPString", XSD::QName.new(nil, "FullName")]],
      ["givenName", ["SOAP::SOAPString", XSD::QName.new(nil, "GivenName")]],
      ["otherGivenName", ["SOAP::SOAPString", XSD::QName.new(nil, "OtherGivenName")]],
      ["familyName", ["SOAP::SOAPString", XSD::QName.new(nil, "FamilyName")]],
      ["score", ["SOAP::SOAPInt", XSD::QName.new(nil, "Score")]],
      ["isCurrentIndicator", ["SOAP::SOAPString", XSD::QName.new(nil, "IsCurrentIndicator")]]
    ]
  )

  EncodedRegistry.register(
    :class => SearchResultsRecord,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "SearchResultsRecord"),
    :schema_element => [
      ["nameType", ["ArrayOfNameTypeEnumerator", XSD::QName.new(nil, "NameType")]],
      ["aBN", ["ArrayOfIdentifierSummary", XSD::QName.new(nil, "ABN")]],
      ["name", ["ArrayOfAnyType", XSD::QName.new(nil, "Name")]],
      ["mainBusinessPhysicalAddress", ["ArrayOfAddressSimple", XSD::QName.new(nil, "MainBusinessPhysicalAddress")]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfNameTypeEnumerator,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsABRXMLSearchRPC, "NameTypeEnumerator") }
  )

  EncodedRegistry.set(
    ArrayOfIdentifierSummary,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsABRXMLSearchRPC, "IdentifierSummary") }
  )

  EncodedRegistry.register(
    :class => IdentifierSummary,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "IdentifierSummary"),
    :schema_element => [
      ["identifierValue", ["SOAP::SOAPString", XSD::QName.new(nil, "IdentifierValue")]],
      ["identifierStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "IdentifierStatus")]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfAnyType,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "anyType") }
  )

  EncodedRegistry.set(
    ArrayOfAddressSimple,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsABRXMLSearchRPC, "AddressSimple") }
  )

  EncodedRegistry.register(
    :class => AddressSimple,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "AddressSimple"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "Address"),
    :schema_element => [
      ["stateCode", ["SOAP::SOAPString", XSD::QName.new(nil, "StateCode")]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "Postcode")]],
      ["isCurrentIndicator", ["SOAP::SOAPString", XSD::QName.new(nil, "IsCurrentIndicator")]]
    ]
  )

  EncodedRegistry.register(
    :class => AddressFull,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "AddressFull"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "Address"),
    :schema_element => [
      ["stateCode", ["SOAP::SOAPString", XSD::QName.new(nil, "StateCode")]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "Postcode")]],
      ["addressLine1", ["SOAP::SOAPString", XSD::QName.new(nil, "AddressLine1")]],
      ["addressLine2", ["SOAP::SOAPString", XSD::QName.new(nil, "AddressLine2")]],
      ["suburb", ["SOAP::SOAPString", XSD::QName.new(nil, "Suburb")]],
      ["countryName", ["SOAP::SOAPString", XSD::QName.new(nil, "CountryName")]]
    ]
  )

  EncodedRegistry.register(
    :class => AddressDetails,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "AddressDetails"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "Address"),
    :schema_element => [
      ["stateCode", ["SOAP::SOAPString", XSD::QName.new(nil, "StateCode")]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "Postcode")]],
      ["effectiveFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveFrom")]],
      ["effectiveTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveTo")]]
    ]
  )

  EncodedRegistry.register(
    :class => CharitableFund,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "CharitableFund"),
    :schema_element => [
      ["pbiName", ["ArrayOfOrganisationSimpleName", XSD::QName.new(nil, "pbiName")]],
      ["effectiveFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveFrom")]],
      ["effectiveTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveTo")]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfOrganisationSimpleName,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsABRXMLSearchRPC, "OrganisationSimpleName") }
  )

  EncodedRegistry.register(
    :class => OrganisationSimpleName,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "OrganisationSimpleName"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "Organisation"),
    :schema_element => [
      ["organisationName", ["SOAP::SOAPString", XSD::QName.new(nil, "OrganisationName")]],
      ["score", ["SOAP::SOAPInt", XSD::QName.new(nil, "Score")]],
      ["isCurrentIndicator", ["SOAP::SOAPString", XSD::QName.new(nil, "IsCurrentIndicator")]]
    ]
  )

  EncodedRegistry.register(
    :class => Organisation,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "Organisation"),
    :schema_element => [
      ["organisationName", ["SOAP::SOAPString", XSD::QName.new(nil, "OrganisationName")]]
    ]
  )

  EncodedRegistry.register(
    :class => OrganisationName,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "OrganisationName"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "Organisation"),
    :schema_element => [
      ["organisationName", ["SOAP::SOAPString", XSD::QName.new(nil, "OrganisationName")]],
      ["effectiveFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveFrom")]],
      ["effectiveTo", [nil, XSD::QName.new(nil, "EffectiveTo")]]
    ]
  )

  EncodedRegistry.register(
    :class => CharityConcession,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "CharityConcession"),
    :schema_element => [
      ["endorsementType", ["SOAP::SOAPString", XSD::QName.new(nil, "EndorsementType")]],
      ["effectiveFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveFrom")]],
      ["effectiveTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveTo")]]
    ]
  )

  EncodedRegistry.register(
    :class => CharityType,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "CharityType"),
    :schema_element => [
      ["charityTypeDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "CharityTypeDescription")]],
      ["effectiveFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveFrom")]],
      ["effectiveTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveTo")]]
    ]
  )

  EncodedRegistry.register(
    :class => DgrFund,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "DgrFund"),
    :schema_element => [
      ["dgrFundName", ["ArrayOfOrganisationSimpleName", XSD::QName.new(nil, "DgrFundName")]],
      ["endorsedFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EndorsedFrom")]],
      ["endorsedTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EndorsedTo")]]
    ]
  )

  EncodedRegistry.register(
    :class => DGREndorsement,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "DGREndorsement"),
    :schema_element => [
      ["endorsedFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EndorsedFrom")]],
      ["endorsedTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EndorsedTo")]]
    ]
  )

  EncodedRegistry.register(
    :class => GoodsAndServicesTax,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "GoodsAndServicesTax"),
    :schema_element => [
      ["effectiveFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveFrom")]],
      ["effectiveTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveTo")]]
    ]
  )

  EncodedRegistry.register(
    :class => EntityType,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "EntityType"),
    :schema_element => [
      ["entityTypeCode", ["SOAP::SOAPString", XSD::QName.new(nil, "EntityTypeCode")]],
      ["entityDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "EntityDescription")]]
    ]
  )

  EncodedRegistry.register(
    :class => EntityStatus,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "EntityStatus"),
    :schema_element => [
      ["entityStatusCode", ["SOAP::SOAPString", XSD::QName.new(nil, "EntityStatusCode")]],
      ["effectiveFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveFrom")]],
      ["effectiveTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveTo")]]
    ]
  )

  EncodedRegistry.register(
    :class => Identifier,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "Identifier"),
    :schema_element => [
      ["identifierValue", ["SOAP::SOAPString", XSD::QName.new(nil, "IdentifierValue")]],
      ["isCurrentIndicator", ["SOAP::SOAPString", XSD::QName.new(nil, "IsCurrentIndicator")]],
      ["replacedIdentifierValue", ["SOAP::SOAPString", XSD::QName.new(nil, "ReplacedIdentifierValue")]],
      ["replacedFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ReplacedFrom")]]
    ]
  )

  EncodedRegistry.register(
    :class => ResponseBody,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBody"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => ResponseABNList,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ResponseABNList"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBody"),
    :schema_element => [
      ["numberOfRecords", ["SOAP::SOAPInt", XSD::QName.new(nil, "NumberOfRecords")]],
      ["aBN", ["ArrayOfString", XSD::QName.new(nil, "ABN")]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfString,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.register(
    :class => ResponseException,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ResponseException"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBody"),
    :schema_element => [
      ["exceptionDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ExceptionDescription")]],
      ["exceptionCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ExceptionCode")]]
    ]
  )

  EncodedRegistry.register(
    :class => ResponseSearchResultsList,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ResponseSearchResultsList"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBody"),
    :schema_element => [
      ["numberOfRecords", ["SOAP::SOAPInt", XSD::QName.new(nil, "NumberOfRecords")]],
      ["exceedsMaximum", ["SOAP::SOAPString", XSD::QName.new(nil, "ExceedsMaximum")]],
      ["searchResultsRecord", ["ArrayOfSearchResultsRecord", XSD::QName.new(nil, "SearchResultsRecord")]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfSearchResultsRecord,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsABRXMLSearchRPC, "SearchResultsRecord") }
  )

  EncodedRegistry.register(
    :class => ResponseBusinessEntity,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBusinessEntity"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBody"),
    :schema_element => [
      ["recordLastUpdatedDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "RecordLastUpdatedDate")]],
      ["aBN", ["ArrayOfIdentifier", XSD::QName.new(nil, "ABN")]],
      ["entityStatus", ["ArrayOfEntityStatus", XSD::QName.new(nil, "EntityStatus")]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ASICNumber")]],
      ["entityType", ["EntityType", XSD::QName.new(nil, "EntityType")]],
      ["goodsAndServicesTax", ["ArrayOfGoodsAndServicesTax", XSD::QName.new(nil, "GoodsAndServicesTax")]],
      ["dgrEndorsement", ["ArrayOfDGREndorsement", XSD::QName.new(nil, "DgrEndorsement")]],
      ["name", ["ArrayOfAnyType", XSD::QName.new(nil, "Name")]],
      ["mainTradingName", ["ArrayOfOrganisationName", XSD::QName.new(nil, "MainTradingName")]],
      ["otherTradingName", ["ArrayOfOrganisationName", XSD::QName.new(nil, "OtherTradingName")]],
      ["mainBusinessPhysicalAddress", ["ArrayOfAddressDetails", XSD::QName.new(nil, "MainBusinessPhysicalAddress")]],
      ["dgrFund", ["ArrayOfDgrFund", XSD::QName.new(nil, "DgrFund")]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfIdentifier,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsABRXMLSearchRPC, "Identifier") }
  )

  EncodedRegistry.set(
    ArrayOfEntityStatus,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsABRXMLSearchRPC, "EntityStatus") }
  )

  EncodedRegistry.set(
    ArrayOfGoodsAndServicesTax,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsABRXMLSearchRPC, "GoodsAndServicesTax") }
  )

  EncodedRegistry.set(
    ArrayOfDGREndorsement,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsABRXMLSearchRPC, "DGREndorsement") }
  )

  EncodedRegistry.set(
    ArrayOfOrganisationName,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsABRXMLSearchRPC, "OrganisationName") }
  )

  EncodedRegistry.set(
    ArrayOfAddressDetails,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsABRXMLSearchRPC, "AddressDetails") }
  )

  EncodedRegistry.set(
    ArrayOfDgrFund,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsABRXMLSearchRPC, "DgrFund") }
  )

  EncodedRegistry.register(
    :class => ResponseBusinessEntity200506,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBusinessEntity200506"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBusinessEntity"),
    :schema_element => [
      ["recordLastUpdatedDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "RecordLastUpdatedDate")]],
      ["aBN", ["ArrayOfIdentifier", XSD::QName.new(nil, "ABN")]],
      ["entityStatus", ["ArrayOfEntityStatus", XSD::QName.new(nil, "EntityStatus")]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ASICNumber")]],
      ["entityType", ["EntityType", XSD::QName.new(nil, "EntityType")]],
      ["goodsAndServicesTax", ["ArrayOfGoodsAndServicesTax", XSD::QName.new(nil, "GoodsAndServicesTax")]],
      ["dgrEndorsement", ["ArrayOfDGREndorsement", XSD::QName.new(nil, "DgrEndorsement")]],
      ["name", ["ArrayOfAnyType", XSD::QName.new(nil, "Name")]],
      ["mainTradingName", ["ArrayOfOrganisationName", XSD::QName.new(nil, "MainTradingName")]],
      ["otherTradingName", ["ArrayOfOrganisationName", XSD::QName.new(nil, "OtherTradingName")]],
      ["mainBusinessPhysicalAddress", ["ArrayOfAddressDetails", XSD::QName.new(nil, "MainBusinessPhysicalAddress")]],
      ["dgrFund", ["ArrayOfDgrFund", XSD::QName.new(nil, "DgrFund")]],
      ["charityType", ["ArrayOfCharityType", XSD::QName.new(nil, "CharityType")]],
      ["taxConcessionCharityEndorsement", ["ArrayOfCharityConcession", XSD::QName.new(nil, "TaxConcessionCharityEndorsement")]],
      ["charitableFund", ["ArrayOfCharitableFund", XSD::QName.new(nil, "CharitableFund")]]
    ]
  )

  EncodedRegistry.set(
    ArrayOfCharityType,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsABRXMLSearchRPC, "CharityType") }
  )

  EncodedRegistry.set(
    ArrayOfCharityConcession,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsABRXMLSearchRPC, "CharityConcession") }
  )

  EncodedRegistry.set(
    ArrayOfCharitableFund,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsABRXMLSearchRPC, "CharitableFund") }
  )

  EncodedRegistry.register(
    :class => ResponseBusinessEntity200709,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBusinessEntity200709"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBusinessEntity200506"),
    :schema_element => [
      ["recordLastUpdatedDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "RecordLastUpdatedDate")]],
      ["aBN", ["ArrayOfIdentifier", XSD::QName.new(nil, "ABN")]],
      ["entityStatus", ["ArrayOfEntityStatus", XSD::QName.new(nil, "EntityStatus")]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ASICNumber")]],
      ["entityType", ["EntityType", XSD::QName.new(nil, "EntityType")]],
      ["goodsAndServicesTax", ["ArrayOfGoodsAndServicesTax", XSD::QName.new(nil, "GoodsAndServicesTax")]],
      ["dgrEndorsement", ["ArrayOfDGREndorsement", XSD::QName.new(nil, "DgrEndorsement")]],
      ["name", ["ArrayOfAnyType", XSD::QName.new(nil, "Name")]],
      ["mainTradingName", ["ArrayOfOrganisationName", XSD::QName.new(nil, "MainTradingName")]],
      ["otherTradingName", ["ArrayOfOrganisationName", XSD::QName.new(nil, "OtherTradingName")]],
      ["mainBusinessPhysicalAddress", ["ArrayOfAddressDetails", XSD::QName.new(nil, "MainBusinessPhysicalAddress")]],
      ["dgrFund", ["ArrayOfDgrFund", XSD::QName.new(nil, "DgrFund")]],
      ["charityType", ["ArrayOfCharityType", XSD::QName.new(nil, "CharityType")]],
      ["taxConcessionCharityEndorsement", ["ArrayOfCharityConcession", XSD::QName.new(nil, "TaxConcessionCharityEndorsement")]],
      ["charitableFund", ["ArrayOfCharitableFund", XSD::QName.new(nil, "CharitableFund")]],
      ["superannuationStatus", ["SuperannuationStatus", XSD::QName.new(nil, "SuperannuationStatus")]],
      ["mainPostalPhysicalAddress", ["AddressFull", XSD::QName.new(nil, "MainPostalPhysicalAddress")]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestABNUpdateEventFilter,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestABNUpdateEventFilter"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestABNFilter"),
    :schema_element => [
      ["externalRequestBody", [nil, XSD::QName.new(nil, "ExternalRequestBody")]],
      ["authenticationGUID", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthenticationGUID")]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "Postcode")]],
      ["entityTypeCode", ["SOAP::SOAPString", XSD::QName.new(nil, "EntityTypeCode")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "State")]],
      ["updateDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "UpdateDate")]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestABNEventFilter,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestABNEventFilter"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestABNFilter"),
    :schema_element => [
      ["externalRequestBody", [nil, XSD::QName.new(nil, "ExternalRequestBody")]],
      ["authenticationGUID", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthenticationGUID")]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "Postcode")]],
      ["entityTypeCode", ["SOAP::SOAPString", XSD::QName.new(nil, "EntityTypeCode")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "State")]],
      ["month", ["SOAP::SOAPInt", XSD::QName.new(nil, "Month")]],
      ["year", ["SOAP::SOAPInt", XSD::QName.new(nil, "Year")]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestABNStatusFilter,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestABNStatusFilter"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestABNFilter"),
    :schema_element => [
      ["externalRequestBody", [nil, XSD::QName.new(nil, "ExternalRequestBody")]],
      ["authenticationGUID", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthenticationGUID")]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "Postcode")]],
      ["entityTypeCode", ["SOAP::SOAPString", XSD::QName.new(nil, "EntityTypeCode")]],
      ["activeABNsOnly", ["SOAP::SOAPString", XSD::QName.new(nil, "ActiveABNsOnly")]],
      ["currentGSTRegistrationOnly", ["SOAP::SOAPString", XSD::QName.new(nil, "CurrentGSTRegistrationOnly")]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestNameSearch,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestNameSearch"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequest"),
    :schema_element => [
      ["externalRequestBody", [nil, XSD::QName.new(nil, "ExternalRequestBody")]],
      ["authenticationGUID", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthenticationGUID")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["filters", ["ExternalRequestFilters", XSD::QName.new(nil, "Filters")]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestIdentifierSearch,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestIdentifierSearch"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequest"),
    :schema_element => [
      ["externalRequestBody", [nil, XSD::QName.new(nil, "ExternalRequestBody")]],
      ["authenticationGUID", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthenticationGUID")]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "IdentifierType")]],
      ["identifierValue", ["SOAP::SOAPString", XSD::QName.new(nil, "IdentifierValue")]],
      ["history", ["SOAP::SOAPString", XSD::QName.new(nil, "History")]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestNameSearchAdvanced,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestNameSearchAdvanced"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestNameSearch"),
    :schema_element => [
      ["externalRequestBody", [nil, XSD::QName.new(nil, "ExternalRequestBody")]],
      ["authenticationGUID", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthenticationGUID")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["filters", ["ExternalRequestFilters", XSD::QName.new(nil, "Filters")]],
      ["searchWidth", ["SOAP::SOAPString", XSD::QName.new(nil, "SearchWidth")]],
      ["minimumScore", ["SOAP::SOAPInt", XSD::QName.new(nil, "MinimumScore")]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestNameSearchAdvanced2006,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestNameSearchAdvanced2006"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestNameSearchAdvanced"),
    :schema_element => [
      ["externalRequestBody", [nil, XSD::QName.new(nil, "ExternalRequestBody")]],
      ["authenticationGUID", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthenticationGUID")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["filters", ["ExternalRequestFilters", XSD::QName.new(nil, "Filters")]],
      ["searchWidth", ["SOAP::SOAPString", XSD::QName.new(nil, "SearchWidth")]],
      ["minimumScore", ["SOAP::SOAPInt", XSD::QName.new(nil, "MinimumScore")]],
      ["maxSearchResults", ["SOAP::SOAPString", XSD::QName.new(nil, "MaxSearchResults")]]
    ]
  )

  EncodedRegistry.register(
    :class => Payload_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "Payload"),
    :schema_element => [
      ["request", "ExternalRequest_", [0, 1]],
      ["response", "Response_", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequest_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequest"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestNameSearchAdvanced_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestNameSearchAdvanced"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ExternalRequestNameSearch"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["filters", "ExternalRequestFilters_"],
      ["searchWidth", "SOAP::SOAPString", [0, 1]],
      ["minimumScore", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestNameSearch_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestNameSearch"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ExternalRequest"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["filters", "ExternalRequestFilters_"]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestFilters_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestFilters"),
    :schema_element => [
      ["nameType", "ExternalRequestFilterNameType_"],
      ["postcode", "SOAP::SOAPString"],
      ["stateCode", "ExternalRequestFilterStateCode_"]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestFilterNameType_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestFilterNameType"),
    :schema_element => [
      ["tradingName", "SOAP::SOAPString", [0, 1]],
      ["legalName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestFilterStateCode_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestFilterStateCode"),
    :schema_element => [
      ["qLD", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "QLD")], [0, 1]],
      ["nT", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "NT")], [0, 1]],
      ["sA", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "SA")], [0, 1]],
      ["wA", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "WA")], [0, 1]],
      ["vIC", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "VIC")], [0, 1]],
      ["aCT", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "ACT")], [0, 1]],
      ["tAS", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "TAS")], [0, 1]],
      ["nSW", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "NSW")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestNameSearchAdvanced2006_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestNameSearchAdvanced2006"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ExternalRequestNameSearchAdvanced"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["filters", "ExternalRequestFilters_"],
      ["searchWidth", "SOAP::SOAPString", [0, 1]],
      ["minimumScore", "SOAP::SOAPInt"],
      ["maxSearchResults", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestABNEventFilter_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestABNEventFilter"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ExternalRequestABNFilter"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["month", "SOAP::SOAPInt"],
      ["year", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestABNCharityFilter,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestABNCharityFilter"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ExternalRequestABNFilter"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["charityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["concessionTypeCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestABNStatusFilter_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestABNStatusFilter"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ExternalRequestABNFilter"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["activeABNs", "SOAP::SOAPString", [0, 1]],
      ["currentGSTRegistrationOnly", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestABNUpdateEventFilter_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestABNUpdateEventFilter"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ExternalRequestABNFilter"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["updateDate", "SOAP::SOAPDateTime"]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestIdentifierSearch_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestIdentifierSearch"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ExternalRequest"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["identifierType", "SOAP::SOAPString", [0, 1]],
      ["identifierValue", "SOAP::SOAPString", [0, 1]],
      ["history", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Response_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "Response"),
    :schema_element => [
      ["usageStatement", "SOAP::SOAPString", [0, 1]],
      ["dateRegisterLastUpdated", "SOAP::SOAPDate"],
      ["dateTimeRetrieved", "SOAP::SOAPDateTime"],
      [ :choice,
        ["abnList", "ResponseABNList_", [0, 1]],
        ["exception", "ResponseException_", [0, 1]],
        ["searchResultsList", "ResponseSearchResultsList_", [0, 1]],
        ["businessEntity200506", "ResponseBusinessEntity200506_", [0, 1]],
        ["businessEntity", "ResponseBusinessEntity_", [0, 1]],
        ["businessEntity200709", "ResponseBusinessEntity200709_", [0, 1]]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => ResponseABNList_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ResponseABNList"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ResponseBody"),
    :schema_element => [
      ["numberOfRecords", "SOAP::SOAPInt"],
      ["abn", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ResponseBody_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ResponseBody"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => ResponseSearchResultsList_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ResponseSearchResultsList"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ResponseBody"),
    :schema_element => [
      ["numberOfRecords", "SOAP::SOAPInt"],
      ["exceedsMaximum", "SOAP::SOAPString", [0, 1]],
      ["searchResultsRecord", "SearchResultsRecord_[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SearchResultsRecord_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "SearchResultsRecord"),
    :schema_element => [
      ["aBN", ["IdentifierSummary_[]", XSD::QName.new(NsLiteralTypes, "ABN")], [0, nil]],
      [
        ["legalName", "IndividualSimpleName_[]", [0, 1]],
        ["otherTradingName", "OrganisationSimpleName_[]", [0, 1]],
        ["pBIEName", ["OrganisationSimpleName_[]", XSD::QName.new(NsLiteralTypes, "PBIEName")], [0, 1]],
        ["mainTradingName", "OrganisationSimpleName_[]", [0, 1]],
        ["mainName", "OrganisationSimpleName_[]", [0, 1]],
        ["dgrFundName", "OrganisationSimpleName_[]", [0, 1]]
      ],
      ["mainBusinessPhysicalAddress", "AddressSimple_[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => IdentifierSummary_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "IdentifierSummary"),
    :schema_element => [
      ["identifierValue", "SOAP::SOAPString", [0, 1]],
      ["identifierStatus", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => IndividualSimpleName_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "IndividualSimpleName"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "Individual"),
    :schema_element => [
      ["fullName", "SOAP::SOAPString", [0, 1]],
      ["givenName", "SOAP::SOAPString", [0, 1]],
      ["otherGivenName", "SOAP::SOAPString", [0, 1]],
      ["familyName", "SOAP::SOAPString", [0, 1]],
      ["score", "SOAP::SOAPInt"],
      ["isCurrentIndicator", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Individual_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "Individual"),
    :schema_element => [
      ["fullName", "SOAP::SOAPString", [0, 1]],
      ["givenName", "SOAP::SOAPString", [0, 1]],
      ["otherGivenName", "SOAP::SOAPString", [0, 1]],
      ["familyName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => IndividualName_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "IndividualName"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "Individual"),
    :schema_element => [
      ["fullName", "SOAP::SOAPString", [0, 1]],
      ["givenName", "SOAP::SOAPString", [0, 1]],
      ["otherGivenName", "SOAP::SOAPString", [0, 1]],
      ["familyName", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => OrganisationSimpleName_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "OrganisationSimpleName"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "Organisation"),
    :schema_element => [
      ["organisationName", "SOAP::SOAPString", [0, 1]],
      ["score", "SOAP::SOAPInt"],
      ["isCurrentIndicator", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Organisation_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "Organisation"),
    :schema_element => [
      ["organisationName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => OrganisationName_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "OrganisationName"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "Organisation"),
    :schema_element => [
      ["organisationName", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      [ :choice,
        ["effectiveTo", "SOAP::SOAPDate"],
        ["effectiveToBlank", nil, [0, 1]]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => AddressSimple_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "AddressSimple"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "Address"),
    :schema_element => [
      ["stateCode", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["isCurrentIndicator", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AddressFull_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "AddressFull"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "Address"),
    :schema_element => [
      ["stateCode", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["addressLine1", "SOAP::SOAPString", [0, 1]],
      ["addressLine2", "SOAP::SOAPString", [0, 1]],
      ["suburb", "SOAP::SOAPString", [0, 1]],
      ["countryName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AddressDetails_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "AddressDetails"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "Address"),
    :schema_element => [
      ["stateCode", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => ResponseException_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ResponseException"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ResponseBody"),
    :schema_element => [
      ["exceptionDescription", "SOAP::SOAPString", [0, 1]],
      ["exceptionCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ResponseBusinessEntity_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ResponseBusinessEntity"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ResponseBody"),
    :schema_element => [
      ["recordLastUpdatedDate", "SOAP::SOAPDate"],
      ["aBN", ["Identifier_[]", XSD::QName.new(NsLiteralTypes, "ABN")], [0, nil]],
      ["entityStatus", "EntityStatus_[]", [0, nil]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "ASICNumber")]],
      ["entityType", "EntityType_"],
      ["goodsAndServicesTax", "GoodsAndServicesTax_[]", [0, nil]],
      ["dgrEndorsement", "DGREndorsement_[]", [0, nil]],
      [
        ["legalName", "IndividualName_[]", [0, 1]],
        ["mainName", "OrganisationName_[]", [0, 1]]
      ],
      ["mainTradingName", "OrganisationName_[]", [0, nil]],
      ["otherTradingName", "OrganisationName_[]", [0, nil]],
      ["mainBusinessPhysicalAddress", "AddressDetails_[]", [0, nil]],
      ["dgrFund", "DgrFund_[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => Identifier_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "Identifier"),
    :schema_element => [
      ["identifierValue", "SOAP::SOAPString", [0, 1]],
      ["isCurrentIndicator", "SOAP::SOAPString", [0, 1]],
      ["replacedIdentifierValue", "SOAP::SOAPString"],
      ["replacedFrom", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => EntityStatus_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "EntityStatus"),
    :schema_element => [
      ["entityStatusCode", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => EntityType_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "EntityType"),
    :schema_element => [
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["entityDescription", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GoodsAndServicesTax_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "GoodsAndServicesTax"),
    :schema_element => [
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => DGREndorsement_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "DGREndorsement"),
    :schema_element => [
      ["endorsedFrom", "SOAP::SOAPDate"],
      ["endorsedTo", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => DgrFund_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "DgrFund"),
    :schema_element => [
      ["dgrFundName", "OrganisationSimpleName_[]", [0, nil]],
      ["endorsedFrom", "SOAP::SOAPDate"],
      ["endorsedTo", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => ResponseBusinessEntity200506_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ResponseBusinessEntity200506"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ResponseBusinessEntity"),
    :schema_element => [
      ["recordLastUpdatedDate", "SOAP::SOAPDate"],
      ["aBN", ["Identifier_[]", XSD::QName.new(NsLiteralTypes, "ABN")], [0, nil]],
      ["entityStatus", "EntityStatus_[]", [0, nil]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "ASICNumber")]],
      ["entityType", "EntityType_"],
      ["goodsAndServicesTax", "GoodsAndServicesTax_[]", [0, nil]],
      ["dgrEndorsement", "DGREndorsement_[]", [0, nil]],
      [
        ["legalName", "IndividualName_[]", [0, 1]],
        ["mainName", "OrganisationName_[]", [0, 1]]
      ],
      ["mainTradingName", "OrganisationName_[]", [0, nil]],
      ["otherTradingName", "OrganisationName_[]", [0, nil]],
      ["mainBusinessPhysicalAddress", "AddressDetails_[]", [0, nil]],
      ["dgrFund", "DgrFund_[]", [0, nil]],
      ["charityType", "CharityType_[]", [0, nil]],
      ["taxConcessionCharityEndorsement", "CharityConcession_[]", [0, nil]],
      ["publicBenevolentInstitutionEmployer", "CharitableFund_[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => CharityType_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "CharityType"),
    :schema_element => [
      ["charityTypeDescription", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => CharityConcession_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "CharityConcession"),
    :schema_element => [
      ["endorsementType", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => CharitableFund_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "CharitableFund"),
    :schema_element => [
      ["pbiName", "OrganisationSimpleName_[]", [0, nil]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => ResponseBusinessEntity200709_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ResponseBusinessEntity200709"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ResponseBusinessEntity200506"),
    :schema_element => [
      ["recordLastUpdatedDate", "SOAP::SOAPDate"],
      ["aBN", ["Identifier_[]", XSD::QName.new(NsLiteralTypes, "ABN")], [0, nil]],
      ["entityStatus", "EntityStatus_[]", [0, nil]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "ASICNumber")]],
      ["entityType", "EntityType_"],
      ["goodsAndServicesTax", "GoodsAndServicesTax_[]", [0, nil]],
      ["dgrEndorsement", "DGREndorsement_[]", [0, nil]],
      [
        ["legalName", "IndividualName_[]", [0, 1]],
        ["mainName", "OrganisationName_[]", [0, 1]]
      ],
      ["mainTradingName", "OrganisationName_[]", [0, nil]],
      ["otherTradingName", "OrganisationName_[]", [0, nil]],
      ["mainBusinessPhysicalAddress", "AddressDetails_[]", [0, nil]],
      ["dgrFund", "DgrFund_[]", [0, nil]],
      ["charityType", "CharityType_[]", [0, nil]],
      ["taxConcessionCharityEndorsement", "CharityConcession_[]", [0, nil]],
      ["publicBenevolentInstitutionEmployer", "CharitableFund_[]", [0, nil]],
      ["superannuationStatus", "SuperannuationStatus_", [0, 1]],
      ["mainPostalPhysicalAddress", "AddressFull_", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SuperannuationStatus_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "SuperannuationStatus"),
    :schema_element => [
      ["complyingCode", "SOAP::SOAPString", [0, 1]],
      ["complyingDescription", "SOAP::SOAPString", [0, 1]],
      ["regulator", "SOAP::SOAPString", [0, 1]],
      ["exceptionMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => NameTypeEnumerator,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "NameTypeEnumerator")
  )

  LiteralRegistry.register(
    :class => Payload,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "Payload"),
    :schema_element => [
      ["request", ["ExternalRequest", XSD::QName.new(nil, "Request")]],
      ["response", ["Response", XSD::QName.new(nil, "Response")]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequest,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequest"),
    :schema_element => [
      ["externalRequestBody", [nil, XSD::QName.new(nil, "ExternalRequestBody")]]
    ]
  )

  LiteralRegistry.register(
    :class => Response,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "Response"),
    :schema_element => [
      ["usageStatement", ["SOAP::SOAPString", XSD::QName.new(nil, "UsageStatement")]],
      ["dateRegisterLastUpdated", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateRegisterLastUpdated")]],
      ["dateTimeRetrieved", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "DateTimeRetrieved")]],
      ["responseBody", [nil, XSD::QName.new(nil, "ResponseBody")]]
    ]
  )

  LiteralRegistry.register(
    :class => SuperannuationStatus,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "SuperannuationStatus"),
    :schema_element => [
      ["complyingCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ComplyingCode")]],
      ["complyingDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ComplyingDescription")]],
      ["regulator", ["SOAP::SOAPString", XSD::QName.new(nil, "Regulator")]],
      ["exceptionMessage", ["SOAP::SOAPString", XSD::QName.new(nil, "ExceptionMessage")]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestFilters,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestFilters"),
    :schema_element => [
      ["nameType", ["ExternalRequestFilterNameType", XSD::QName.new(nil, "NameType")]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "Postcode")]],
      ["stateCode", ["ExternalRequestFilterStateCode", XSD::QName.new(nil, "StateCode")]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestFilterNameType,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestFilterNameType"),
    :schema_element => [
      ["tradingName", ["SOAP::SOAPString", XSD::QName.new(nil, "TradingName")]],
      ["legalName", ["SOAP::SOAPString", XSD::QName.new(nil, "LegalName")]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestFilterStateCode,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestFilterStateCode"),
    :schema_element => [
      ["qLD", ["SOAP::SOAPString", XSD::QName.new(nil, "QLD")]],
      ["nT", ["SOAP::SOAPString", XSD::QName.new(nil, "NT")]],
      ["sA", ["SOAP::SOAPString", XSD::QName.new(nil, "SA")]],
      ["wA", ["SOAP::SOAPString", XSD::QName.new(nil, "WA")]],
      ["vIC", ["SOAP::SOAPString", XSD::QName.new(nil, "VIC")]],
      ["aCT", ["SOAP::SOAPString", XSD::QName.new(nil, "ACT")]],
      ["tAS", ["SOAP::SOAPString", XSD::QName.new(nil, "TAS")]],
      ["nSW", ["SOAP::SOAPString", XSD::QName.new(nil, "NSW")]]
    ]
  )

  LiteralRegistry.register(
    :class => Individual,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "Individual"),
    :schema_element => [
      ["fullName", ["SOAP::SOAPString", XSD::QName.new(nil, "FullName")]],
      ["givenName", ["SOAP::SOAPString", XSD::QName.new(nil, "GivenName")]],
      ["otherGivenName", ["SOAP::SOAPString", XSD::QName.new(nil, "OtherGivenName")]],
      ["familyName", ["SOAP::SOAPString", XSD::QName.new(nil, "FamilyName")]]
    ]
  )

  LiteralRegistry.register(
    :class => IndividualName,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "IndividualName"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "Individual"),
    :schema_element => [
      ["fullName", ["SOAP::SOAPString", XSD::QName.new(nil, "FullName")]],
      ["givenName", ["SOAP::SOAPString", XSD::QName.new(nil, "GivenName")]],
      ["otherGivenName", ["SOAP::SOAPString", XSD::QName.new(nil, "OtherGivenName")]],
      ["familyName", ["SOAP::SOAPString", XSD::QName.new(nil, "FamilyName")]],
      ["effectiveFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveFrom")]],
      ["effectiveTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveTo")]]
    ]
  )

  LiteralRegistry.register(
    :class => IndividualSimpleName,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "IndividualSimpleName"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "Individual"),
    :schema_element => [
      ["fullName", ["SOAP::SOAPString", XSD::QName.new(nil, "FullName")]],
      ["givenName", ["SOAP::SOAPString", XSD::QName.new(nil, "GivenName")]],
      ["otherGivenName", ["SOAP::SOAPString", XSD::QName.new(nil, "OtherGivenName")]],
      ["familyName", ["SOAP::SOAPString", XSD::QName.new(nil, "FamilyName")]],
      ["score", ["SOAP::SOAPInt", XSD::QName.new(nil, "Score")]],
      ["isCurrentIndicator", ["SOAP::SOAPString", XSD::QName.new(nil, "IsCurrentIndicator")]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchResultsRecord,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "SearchResultsRecord"),
    :schema_element => [
      ["nameType", ["ArrayOfNameTypeEnumerator", XSD::QName.new(nil, "NameType")]],
      ["aBN", ["ArrayOfIdentifierSummary", XSD::QName.new(nil, "ABN")]],
      ["name", ["ArrayOfAnyType", XSD::QName.new(nil, "Name")]],
      ["mainBusinessPhysicalAddress", ["ArrayOfAddressSimple", XSD::QName.new(nil, "MainBusinessPhysicalAddress")]]
    ]
  )

  LiteralRegistry.register(
    :class => IdentifierSummary,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "IdentifierSummary"),
    :schema_element => [
      ["identifierValue", ["SOAP::SOAPString", XSD::QName.new(nil, "IdentifierValue")]],
      ["identifierStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "IdentifierStatus")]]
    ]
  )

  LiteralRegistry.register(
    :class => AddressSimple,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "AddressSimple"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "Address"),
    :schema_element => [
      ["stateCode", ["SOAP::SOAPString", XSD::QName.new(nil, "StateCode")]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "Postcode")]],
      ["isCurrentIndicator", ["SOAP::SOAPString", XSD::QName.new(nil, "IsCurrentIndicator")]]
    ]
  )

  LiteralRegistry.register(
    :class => AddressFull,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "AddressFull"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "Address"),
    :schema_element => [
      ["stateCode", ["SOAP::SOAPString", XSD::QName.new(nil, "StateCode")]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "Postcode")]],
      ["addressLine1", ["SOAP::SOAPString", XSD::QName.new(nil, "AddressLine1")]],
      ["addressLine2", ["SOAP::SOAPString", XSD::QName.new(nil, "AddressLine2")]],
      ["suburb", ["SOAP::SOAPString", XSD::QName.new(nil, "Suburb")]],
      ["countryName", ["SOAP::SOAPString", XSD::QName.new(nil, "CountryName")]]
    ]
  )

  LiteralRegistry.register(
    :class => AddressDetails,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "AddressDetails"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "Address"),
    :schema_element => [
      ["stateCode", ["SOAP::SOAPString", XSD::QName.new(nil, "StateCode")]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "Postcode")]],
      ["effectiveFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveFrom")]],
      ["effectiveTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveTo")]]
    ]
  )

  LiteralRegistry.register(
    :class => CharitableFund,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "CharitableFund"),
    :schema_element => [
      ["pbiName", ["ArrayOfOrganisationSimpleName", XSD::QName.new(nil, "pbiName")]],
      ["effectiveFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveFrom")]],
      ["effectiveTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveTo")]]
    ]
  )

  LiteralRegistry.register(
    :class => OrganisationSimpleName,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "OrganisationSimpleName"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "Organisation"),
    :schema_element => [
      ["organisationName", ["SOAP::SOAPString", XSD::QName.new(nil, "OrganisationName")]],
      ["score", ["SOAP::SOAPInt", XSD::QName.new(nil, "Score")]],
      ["isCurrentIndicator", ["SOAP::SOAPString", XSD::QName.new(nil, "IsCurrentIndicator")]]
    ]
  )

  LiteralRegistry.register(
    :class => Organisation,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "Organisation"),
    :schema_element => [
      ["organisationName", ["SOAP::SOAPString", XSD::QName.new(nil, "OrganisationName")]]
    ]
  )

  LiteralRegistry.register(
    :class => OrganisationName,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "OrganisationName"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "Organisation"),
    :schema_element => [
      ["organisationName", ["SOAP::SOAPString", XSD::QName.new(nil, "OrganisationName")]],
      ["effectiveFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveFrom")]],
      ["effectiveTo", [nil, XSD::QName.new(nil, "EffectiveTo")]]
    ]
  )

  LiteralRegistry.register(
    :class => CharityConcession,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "CharityConcession"),
    :schema_element => [
      ["endorsementType", ["SOAP::SOAPString", XSD::QName.new(nil, "EndorsementType")]],
      ["effectiveFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveFrom")]],
      ["effectiveTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveTo")]]
    ]
  )

  LiteralRegistry.register(
    :class => CharityType,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "CharityType"),
    :schema_element => [
      ["charityTypeDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "CharityTypeDescription")]],
      ["effectiveFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveFrom")]],
      ["effectiveTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveTo")]]
    ]
  )

  LiteralRegistry.register(
    :class => DgrFund,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "DgrFund"),
    :schema_element => [
      ["dgrFundName", ["ArrayOfOrganisationSimpleName", XSD::QName.new(nil, "DgrFundName")]],
      ["endorsedFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EndorsedFrom")]],
      ["endorsedTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EndorsedTo")]]
    ]
  )

  LiteralRegistry.register(
    :class => DGREndorsement,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "DGREndorsement"),
    :schema_element => [
      ["endorsedFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EndorsedFrom")]],
      ["endorsedTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EndorsedTo")]]
    ]
  )

  LiteralRegistry.register(
    :class => GoodsAndServicesTax,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "GoodsAndServicesTax"),
    :schema_element => [
      ["effectiveFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveFrom")]],
      ["effectiveTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveTo")]]
    ]
  )

  LiteralRegistry.register(
    :class => EntityType,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "EntityType"),
    :schema_element => [
      ["entityTypeCode", ["SOAP::SOAPString", XSD::QName.new(nil, "EntityTypeCode")]],
      ["entityDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "EntityDescription")]]
    ]
  )

  LiteralRegistry.register(
    :class => EntityStatus,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "EntityStatus"),
    :schema_element => [
      ["entityStatusCode", ["SOAP::SOAPString", XSD::QName.new(nil, "EntityStatusCode")]],
      ["effectiveFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveFrom")]],
      ["effectiveTo", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EffectiveTo")]]
    ]
  )

  LiteralRegistry.register(
    :class => Identifier,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "Identifier"),
    :schema_element => [
      ["identifierValue", ["SOAP::SOAPString", XSD::QName.new(nil, "IdentifierValue")]],
      ["isCurrentIndicator", ["SOAP::SOAPString", XSD::QName.new(nil, "IsCurrentIndicator")]],
      ["replacedIdentifierValue", ["SOAP::SOAPString", XSD::QName.new(nil, "ReplacedIdentifierValue")]],
      ["replacedFrom", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ReplacedFrom")]]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseBody,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBody"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ResponseABNList,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ResponseABNList"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBody"),
    :schema_element => [
      ["numberOfRecords", ["SOAP::SOAPInt", XSD::QName.new(nil, "NumberOfRecords")]],
      ["aBN", ["ArrayOfString", XSD::QName.new(nil, "ABN")]]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseException,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ResponseException"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBody"),
    :schema_element => [
      ["exceptionDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "ExceptionDescription")]],
      ["exceptionCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ExceptionCode")]]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseSearchResultsList,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ResponseSearchResultsList"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBody"),
    :schema_element => [
      ["numberOfRecords", ["SOAP::SOAPInt", XSD::QName.new(nil, "NumberOfRecords")]],
      ["exceedsMaximum", ["SOAP::SOAPString", XSD::QName.new(nil, "ExceedsMaximum")]],
      ["searchResultsRecord", ["ArrayOfSearchResultsRecord", XSD::QName.new(nil, "SearchResultsRecord")]]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseBusinessEntity,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBusinessEntity"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBody"),
    :schema_element => [
      ["recordLastUpdatedDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "RecordLastUpdatedDate")]],
      ["aBN", ["ArrayOfIdentifier", XSD::QName.new(nil, "ABN")]],
      ["entityStatus", ["ArrayOfEntityStatus", XSD::QName.new(nil, "EntityStatus")]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ASICNumber")]],
      ["entityType", ["EntityType", XSD::QName.new(nil, "EntityType")]],
      ["goodsAndServicesTax", ["ArrayOfGoodsAndServicesTax", XSD::QName.new(nil, "GoodsAndServicesTax")]],
      ["dgrEndorsement", ["ArrayOfDGREndorsement", XSD::QName.new(nil, "DgrEndorsement")]],
      ["name", ["ArrayOfAnyType", XSD::QName.new(nil, "Name")]],
      ["mainTradingName", ["ArrayOfOrganisationName", XSD::QName.new(nil, "MainTradingName")]],
      ["otherTradingName", ["ArrayOfOrganisationName", XSD::QName.new(nil, "OtherTradingName")]],
      ["mainBusinessPhysicalAddress", ["ArrayOfAddressDetails", XSD::QName.new(nil, "MainBusinessPhysicalAddress")]],
      ["dgrFund", ["ArrayOfDgrFund", XSD::QName.new(nil, "DgrFund")]]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseBusinessEntity200506,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBusinessEntity200506"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBusinessEntity"),
    :schema_element => [
      ["recordLastUpdatedDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "RecordLastUpdatedDate")]],
      ["aBN", ["ArrayOfIdentifier", XSD::QName.new(nil, "ABN")]],
      ["entityStatus", ["ArrayOfEntityStatus", XSD::QName.new(nil, "EntityStatus")]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ASICNumber")]],
      ["entityType", ["EntityType", XSD::QName.new(nil, "EntityType")]],
      ["goodsAndServicesTax", ["ArrayOfGoodsAndServicesTax", XSD::QName.new(nil, "GoodsAndServicesTax")]],
      ["dgrEndorsement", ["ArrayOfDGREndorsement", XSD::QName.new(nil, "DgrEndorsement")]],
      ["name", ["ArrayOfAnyType", XSD::QName.new(nil, "Name")]],
      ["mainTradingName", ["ArrayOfOrganisationName", XSD::QName.new(nil, "MainTradingName")]],
      ["otherTradingName", ["ArrayOfOrganisationName", XSD::QName.new(nil, "OtherTradingName")]],
      ["mainBusinessPhysicalAddress", ["ArrayOfAddressDetails", XSD::QName.new(nil, "MainBusinessPhysicalAddress")]],
      ["dgrFund", ["ArrayOfDgrFund", XSD::QName.new(nil, "DgrFund")]],
      ["charityType", ["ArrayOfCharityType", XSD::QName.new(nil, "CharityType")]],
      ["taxConcessionCharityEndorsement", ["ArrayOfCharityConcession", XSD::QName.new(nil, "TaxConcessionCharityEndorsement")]],
      ["charitableFund", ["ArrayOfCharitableFund", XSD::QName.new(nil, "CharitableFund")]]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseBusinessEntity200709,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBusinessEntity200709"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ResponseBusinessEntity200506"),
    :schema_element => [
      ["recordLastUpdatedDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "RecordLastUpdatedDate")]],
      ["aBN", ["ArrayOfIdentifier", XSD::QName.new(nil, "ABN")]],
      ["entityStatus", ["ArrayOfEntityStatus", XSD::QName.new(nil, "EntityStatus")]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "ASICNumber")]],
      ["entityType", ["EntityType", XSD::QName.new(nil, "EntityType")]],
      ["goodsAndServicesTax", ["ArrayOfGoodsAndServicesTax", XSD::QName.new(nil, "GoodsAndServicesTax")]],
      ["dgrEndorsement", ["ArrayOfDGREndorsement", XSD::QName.new(nil, "DgrEndorsement")]],
      ["name", ["ArrayOfAnyType", XSD::QName.new(nil, "Name")]],
      ["mainTradingName", ["ArrayOfOrganisationName", XSD::QName.new(nil, "MainTradingName")]],
      ["otherTradingName", ["ArrayOfOrganisationName", XSD::QName.new(nil, "OtherTradingName")]],
      ["mainBusinessPhysicalAddress", ["ArrayOfAddressDetails", XSD::QName.new(nil, "MainBusinessPhysicalAddress")]],
      ["dgrFund", ["ArrayOfDgrFund", XSD::QName.new(nil, "DgrFund")]],
      ["charityType", ["ArrayOfCharityType", XSD::QName.new(nil, "CharityType")]],
      ["taxConcessionCharityEndorsement", ["ArrayOfCharityConcession", XSD::QName.new(nil, "TaxConcessionCharityEndorsement")]],
      ["charitableFund", ["ArrayOfCharitableFund", XSD::QName.new(nil, "CharitableFund")]],
      ["superannuationStatus", ["SuperannuationStatus", XSD::QName.new(nil, "SuperannuationStatus")]],
      ["mainPostalPhysicalAddress", ["AddressFull", XSD::QName.new(nil, "MainPostalPhysicalAddress")]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestABNUpdateEventFilter,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestABNUpdateEventFilter"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestABNFilter"),
    :schema_element => [
      ["externalRequestBody", [nil, XSD::QName.new(nil, "ExternalRequestBody")]],
      ["authenticationGUID", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthenticationGUID")]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "Postcode")]],
      ["entityTypeCode", ["SOAP::SOAPString", XSD::QName.new(nil, "EntityTypeCode")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "State")]],
      ["updateDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "UpdateDate")]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestABNEventFilter,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestABNEventFilter"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestABNFilter"),
    :schema_element => [
      ["externalRequestBody", [nil, XSD::QName.new(nil, "ExternalRequestBody")]],
      ["authenticationGUID", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthenticationGUID")]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "Postcode")]],
      ["entityTypeCode", ["SOAP::SOAPString", XSD::QName.new(nil, "EntityTypeCode")]],
      ["state", ["SOAP::SOAPString", XSD::QName.new(nil, "State")]],
      ["month", ["SOAP::SOAPInt", XSD::QName.new(nil, "Month")]],
      ["year", ["SOAP::SOAPInt", XSD::QName.new(nil, "Year")]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestABNStatusFilter,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestABNStatusFilter"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestABNFilter"),
    :schema_element => [
      ["externalRequestBody", [nil, XSD::QName.new(nil, "ExternalRequestBody")]],
      ["authenticationGUID", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthenticationGUID")]],
      ["postcode", ["SOAP::SOAPString", XSD::QName.new(nil, "Postcode")]],
      ["entityTypeCode", ["SOAP::SOAPString", XSD::QName.new(nil, "EntityTypeCode")]],
      ["activeABNsOnly", ["SOAP::SOAPString", XSD::QName.new(nil, "ActiveABNsOnly")]],
      ["currentGSTRegistrationOnly", ["SOAP::SOAPString", XSD::QName.new(nil, "CurrentGSTRegistrationOnly")]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestNameSearch,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestNameSearch"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequest"),
    :schema_element => [
      ["externalRequestBody", [nil, XSD::QName.new(nil, "ExternalRequestBody")]],
      ["authenticationGUID", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthenticationGUID")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["filters", ["ExternalRequestFilters", XSD::QName.new(nil, "Filters")]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestIdentifierSearch,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestIdentifierSearch"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequest"),
    :schema_element => [
      ["externalRequestBody", [nil, XSD::QName.new(nil, "ExternalRequestBody")]],
      ["authenticationGUID", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthenticationGUID")]],
      ["identifierType", ["SOAP::SOAPString", XSD::QName.new(nil, "IdentifierType")]],
      ["identifierValue", ["SOAP::SOAPString", XSD::QName.new(nil, "IdentifierValue")]],
      ["history", ["SOAP::SOAPString", XSD::QName.new(nil, "History")]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestNameSearchAdvanced,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestNameSearchAdvanced"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestNameSearch"),
    :schema_element => [
      ["externalRequestBody", [nil, XSD::QName.new(nil, "ExternalRequestBody")]],
      ["authenticationGUID", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthenticationGUID")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["filters", ["ExternalRequestFilters", XSD::QName.new(nil, "Filters")]],
      ["searchWidth", ["SOAP::SOAPString", XSD::QName.new(nil, "SearchWidth")]],
      ["minimumScore", ["SOAP::SOAPInt", XSD::QName.new(nil, "MinimumScore")]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestNameSearchAdvanced2006,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestNameSearchAdvanced2006"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearchRPC, "ExternalRequestNameSearchAdvanced"),
    :schema_element => [
      ["externalRequestBody", [nil, XSD::QName.new(nil, "ExternalRequestBody")]],
      ["authenticationGUID", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthenticationGUID")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["filters", ["ExternalRequestFilters", XSD::QName.new(nil, "Filters")]],
      ["searchWidth", ["SOAP::SOAPString", XSD::QName.new(nil, "SearchWidth")]],
      ["minimumScore", ["SOAP::SOAPInt", XSD::QName.new(nil, "MinimumScore")]],
      ["maxSearchResults", ["SOAP::SOAPString", XSD::QName.new(nil, "MaxSearchResults")]]
    ]
  )

  LiteralRegistry.register(
    :class => Payload_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "Payload"),
    :schema_element => [
      ["request", "ExternalRequest_", [0, 1]],
      ["response", "Response_", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequest_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequest"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestNameSearchAdvanced_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestNameSearchAdvanced"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ExternalRequestNameSearch"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["filters", "ExternalRequestFilters_"],
      ["searchWidth", "SOAP::SOAPString", [0, 1]],
      ["minimumScore", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestNameSearch_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestNameSearch"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ExternalRequest"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["filters", "ExternalRequestFilters_"]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestFilters_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestFilters"),
    :schema_element => [
      ["nameType", "ExternalRequestFilterNameType_"],
      ["postcode", "SOAP::SOAPString"],
      ["stateCode", "ExternalRequestFilterStateCode_"]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestFilterNameType_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestFilterNameType"),
    :schema_element => [
      ["tradingName", "SOAP::SOAPString", [0, 1]],
      ["legalName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestFilterStateCode_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestFilterStateCode"),
    :schema_element => [
      ["qLD", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "QLD")], [0, 1]],
      ["nT", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "NT")], [0, 1]],
      ["sA", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "SA")], [0, 1]],
      ["wA", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "WA")], [0, 1]],
      ["vIC", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "VIC")], [0, 1]],
      ["aCT", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "ACT")], [0, 1]],
      ["tAS", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "TAS")], [0, 1]],
      ["nSW", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "NSW")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestNameSearchAdvanced2006_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestNameSearchAdvanced2006"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ExternalRequestNameSearchAdvanced"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["filters", "ExternalRequestFilters_"],
      ["searchWidth", "SOAP::SOAPString", [0, 1]],
      ["minimumScore", "SOAP::SOAPInt"],
      ["maxSearchResults", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestABNEventFilter_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestABNEventFilter"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ExternalRequestABNFilter"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["month", "SOAP::SOAPInt"],
      ["year", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestABNCharityFilter,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestABNCharityFilter"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ExternalRequestABNFilter"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["charityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["concessionTypeCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestABNStatusFilter_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestABNStatusFilter"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ExternalRequestABNFilter"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["activeABNs", "SOAP::SOAPString", [0, 1]],
      ["currentGSTRegistrationOnly", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestABNUpdateEventFilter_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestABNUpdateEventFilter"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ExternalRequestABNFilter"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["updateDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestIdentifierSearch_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ExternalRequestIdentifierSearch"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ExternalRequest"),
    :schema_element => [
      [ :choice,
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced_", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter_", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006_", [0, 1]],
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter_", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter_", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter_", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch_", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch_", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["identifierType", "SOAP::SOAPString", [0, 1]],
      ["identifierValue", "SOAP::SOAPString", [0, 1]],
      ["history", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Response_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "Response"),
    :schema_element => [
      ["usageStatement", "SOAP::SOAPString", [0, 1]],
      ["dateRegisterLastUpdated", "SOAP::SOAPDate"],
      ["dateTimeRetrieved", "SOAP::SOAPDateTime"],
      [ :choice,
        ["abnList", "ResponseABNList_", [0, 1]],
        ["exception", "ResponseException_", [0, 1]],
        ["searchResultsList", "ResponseSearchResultsList_", [0, 1]],
        ["businessEntity200506", "ResponseBusinessEntity200506_", [0, 1]],
        ["businessEntity", "ResponseBusinessEntity_", [0, 1]],
        ["businessEntity200709", "ResponseBusinessEntity200709_", [0, 1]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseABNList_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ResponseABNList"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ResponseBody"),
    :schema_element => [
      ["numberOfRecords", "SOAP::SOAPInt"],
      ["abn", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseBody_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ResponseBody"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ResponseSearchResultsList_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ResponseSearchResultsList"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ResponseBody"),
    :schema_element => [
      ["numberOfRecords", "SOAP::SOAPInt"],
      ["exceedsMaximum", "SOAP::SOAPString", [0, 1]],
      ["searchResultsRecord", "SearchResultsRecord_[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchResultsRecord_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "SearchResultsRecord"),
    :schema_element => [
      ["aBN", ["IdentifierSummary_[]", XSD::QName.new(NsLiteralTypes, "ABN")], [0, nil]],
      [
        ["legalName", "IndividualSimpleName_[]", [0, 1]],
        ["otherTradingName", "OrganisationSimpleName_[]", [0, 1]],
        ["pBIEName", ["OrganisationSimpleName_[]", XSD::QName.new(NsLiteralTypes, "PBIEName")], [0, 1]],
        ["mainTradingName", "OrganisationSimpleName_[]", [0, 1]],
        ["mainName", "OrganisationSimpleName_[]", [0, 1]],
        ["dgrFundName", "OrganisationSimpleName_[]", [0, 1]]
      ],
      ["mainBusinessPhysicalAddress", "AddressSimple_[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => IdentifierSummary_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "IdentifierSummary"),
    :schema_element => [
      ["identifierValue", "SOAP::SOAPString", [0, 1]],
      ["identifierStatus", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => IndividualSimpleName_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "IndividualSimpleName"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "Individual"),
    :schema_element => [
      ["fullName", "SOAP::SOAPString", [0, 1]],
      ["givenName", "SOAP::SOAPString", [0, 1]],
      ["otherGivenName", "SOAP::SOAPString", [0, 1]],
      ["familyName", "SOAP::SOAPString", [0, 1]],
      ["score", "SOAP::SOAPInt"],
      ["isCurrentIndicator", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Individual_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "Individual"),
    :schema_element => [
      ["fullName", "SOAP::SOAPString", [0, 1]],
      ["givenName", "SOAP::SOAPString", [0, 1]],
      ["otherGivenName", "SOAP::SOAPString", [0, 1]],
      ["familyName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => IndividualName_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "IndividualName"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "Individual"),
    :schema_element => [
      ["fullName", "SOAP::SOAPString", [0, 1]],
      ["givenName", "SOAP::SOAPString", [0, 1]],
      ["otherGivenName", "SOAP::SOAPString", [0, 1]],
      ["familyName", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => OrganisationSimpleName_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "OrganisationSimpleName"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "Organisation"),
    :schema_element => [
      ["organisationName", "SOAP::SOAPString", [0, 1]],
      ["score", "SOAP::SOAPInt"],
      ["isCurrentIndicator", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Organisation_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "Organisation"),
    :schema_element => [
      ["organisationName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrganisationName_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "OrganisationName"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "Organisation"),
    :schema_element => [
      ["organisationName", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      [ :choice,
        ["effectiveTo", "SOAP::SOAPDate"],
        ["effectiveToBlank", nil, [0, 1]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => AddressSimple_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "AddressSimple"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "Address"),
    :schema_element => [
      ["stateCode", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["isCurrentIndicator", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddressFull_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "AddressFull"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "Address"),
    :schema_element => [
      ["stateCode", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["addressLine1", "SOAP::SOAPString", [0, 1]],
      ["addressLine2", "SOAP::SOAPString", [0, 1]],
      ["suburb", "SOAP::SOAPString", [0, 1]],
      ["countryName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddressDetails_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "AddressDetails"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "Address"),
    :schema_element => [
      ["stateCode", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseException_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ResponseException"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ResponseBody"),
    :schema_element => [
      ["exceptionDescription", "SOAP::SOAPString", [0, 1]],
      ["exceptionCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseBusinessEntity_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ResponseBusinessEntity"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ResponseBody"),
    :schema_element => [
      ["recordLastUpdatedDate", "SOAP::SOAPDate"],
      ["aBN", ["Identifier_[]", XSD::QName.new(NsLiteralTypes, "ABN")], [0, nil]],
      ["entityStatus", "EntityStatus_[]", [0, nil]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "ASICNumber")]],
      ["entityType", "EntityType_"],
      ["goodsAndServicesTax", "GoodsAndServicesTax_[]", [0, nil]],
      ["dgrEndorsement", "DGREndorsement_[]", [0, nil]],
      [
        ["legalName", "IndividualName_[]", [0, 1]],
        ["mainName", "OrganisationName_[]", [0, 1]]
      ],
      ["mainTradingName", "OrganisationName_[]", [0, nil]],
      ["otherTradingName", "OrganisationName_[]", [0, nil]],
      ["mainBusinessPhysicalAddress", "AddressDetails_[]", [0, nil]],
      ["dgrFund", "DgrFund_[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => Identifier_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "Identifier"),
    :schema_element => [
      ["identifierValue", "SOAP::SOAPString", [0, 1]],
      ["isCurrentIndicator", "SOAP::SOAPString", [0, 1]],
      ["replacedIdentifierValue", "SOAP::SOAPString"],
      ["replacedFrom", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => EntityStatus_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "EntityStatus"),
    :schema_element => [
      ["entityStatusCode", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => EntityType_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "EntityType"),
    :schema_element => [
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["entityDescription", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GoodsAndServicesTax_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "GoodsAndServicesTax"),
    :schema_element => [
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => DGREndorsement_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "DGREndorsement"),
    :schema_element => [
      ["endorsedFrom", "SOAP::SOAPDate"],
      ["endorsedTo", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => DgrFund_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "DgrFund"),
    :schema_element => [
      ["dgrFundName", "OrganisationSimpleName_[]", [0, nil]],
      ["endorsedFrom", "SOAP::SOAPDate"],
      ["endorsedTo", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseBusinessEntity200506_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ResponseBusinessEntity200506"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ResponseBusinessEntity"),
    :schema_element => [
      ["recordLastUpdatedDate", "SOAP::SOAPDate"],
      ["aBN", ["Identifier_[]", XSD::QName.new(NsLiteralTypes, "ABN")], [0, nil]],
      ["entityStatus", "EntityStatus_[]", [0, nil]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "ASICNumber")]],
      ["entityType", "EntityType_"],
      ["goodsAndServicesTax", "GoodsAndServicesTax_[]", [0, nil]],
      ["dgrEndorsement", "DGREndorsement_[]", [0, nil]],
      [
        ["legalName", "IndividualName_[]", [0, 1]],
        ["mainName", "OrganisationName_[]", [0, 1]]
      ],
      ["mainTradingName", "OrganisationName_[]", [0, nil]],
      ["otherTradingName", "OrganisationName_[]", [0, nil]],
      ["mainBusinessPhysicalAddress", "AddressDetails_[]", [0, nil]],
      ["dgrFund", "DgrFund_[]", [0, nil]],
      ["charityType", "CharityType_[]", [0, nil]],
      ["taxConcessionCharityEndorsement", "CharityConcession_[]", [0, nil]],
      ["publicBenevolentInstitutionEmployer", "CharitableFund_[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => CharityType_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "CharityType"),
    :schema_element => [
      ["charityTypeDescription", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => CharityConcession_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "CharityConcession"),
    :schema_element => [
      ["endorsementType", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => CharitableFund_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "CharitableFund"),
    :schema_element => [
      ["pbiName", "OrganisationSimpleName_[]", [0, nil]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseBusinessEntity200709_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "ResponseBusinessEntity200709"),
    :schema_basetype => XSD::QName.new(NsLiteralTypes, "ResponseBusinessEntity200506"),
    :schema_element => [
      ["recordLastUpdatedDate", "SOAP::SOAPDate"],
      ["aBN", ["Identifier_[]", XSD::QName.new(NsLiteralTypes, "ABN")], [0, nil]],
      ["entityStatus", "EntityStatus_[]", [0, nil]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(NsLiteralTypes, "ASICNumber")]],
      ["entityType", "EntityType_"],
      ["goodsAndServicesTax", "GoodsAndServicesTax_[]", [0, nil]],
      ["dgrEndorsement", "DGREndorsement_[]", [0, nil]],
      [
        ["legalName", "IndividualName_[]", [0, 1]],
        ["mainName", "OrganisationName_[]", [0, 1]]
      ],
      ["mainTradingName", "OrganisationName_[]", [0, nil]],
      ["otherTradingName", "OrganisationName_[]", [0, nil]],
      ["mainBusinessPhysicalAddress", "AddressDetails_[]", [0, nil]],
      ["dgrFund", "DgrFund_[]", [0, nil]],
      ["charityType", "CharityType_[]", [0, nil]],
      ["taxConcessionCharityEndorsement", "CharityConcession_[]", [0, nil]],
      ["publicBenevolentInstitutionEmployer", "CharitableFund_[]", [0, nil]],
      ["superannuationStatus", "SuperannuationStatus_", [0, 1]],
      ["mainPostalPhysicalAddress", "AddressFull_", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SuperannuationStatus_,
    :schema_type => XSD::QName.new(NsLiteralTypes, "SuperannuationStatus"),
    :schema_element => [
      ["complyingCode", "SOAP::SOAPString", [0, 1]],
      ["complyingDescription", "SOAP::SOAPString", [0, 1]],
      ["regulator", "SOAP::SOAPString", [0, 1]],
      ["exceptionMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => NameTypeEnumerator,
    :schema_type => XSD::QName.new(NsABRXMLSearchRPC, "NameTypeEnumerator")
  )

  LiteralRegistry.register(
    :class => Payload_,
    :schema_name => XSD::QName.new(NsLiteralTypes, "ABRPayloadSearchResults"),
    :schema_element => [
      ["request", "ExternalRequest_", [0, 1]],
      ["response", "Response_", [0, 1]]
    ]
  )
end
