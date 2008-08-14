require 'default.rb'
require 'soap/mapping'

module DefaultMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsABRXMLSearch = "http://abr.business.gov.au/ABRXMLSearch/"

  EncodedRegistry.register(
    :class => Payload,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "Payload"),
    :schema_element => [
      ["request", "ExternalRequest", [0, 1]],
      ["response", "Response", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequest,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequest"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestABNCharityFilter,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestABNCharityFilter"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ExternalRequestABNFilter"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
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
    :class => ExternalRequestABNEventFilter,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestABNEventFilter"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ExternalRequestABNFilter"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
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
    :class => ExternalRequestABNStatusFilter,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestABNStatusFilter"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ExternalRequestABNFilter"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["activeABNs", "SOAP::SOAPString", [0, 1]],
      ["currentGSTRegistrationOnly", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestABNUpdateEventFilter,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestABNUpdateEventFilter"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ExternalRequestABNFilter"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["updateDate", "SOAP::SOAPDateTime"]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestNameSearchAdvanced2006,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestNameSearchAdvanced2006"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ExternalRequestNameSearchAdvanced"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["filters", "ExternalRequestFilters"],
      ["searchWidth", "SOAP::SOAPString", [0, 1]],
      ["minimumScore", "SOAP::SOAPInt"],
      ["maxSearchResults", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestNameSearchAdvanced,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestNameSearchAdvanced"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ExternalRequestNameSearch"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["filters", "ExternalRequestFilters"],
      ["searchWidth", "SOAP::SOAPString", [0, 1]],
      ["minimumScore", "SOAP::SOAPInt"]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestNameSearch,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestNameSearch"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ExternalRequest"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["filters", "ExternalRequestFilters"]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestFilters,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestFilters"),
    :schema_element => [
      ["nameType", "ExternalRequestFilterNameType"],
      ["postcode", "SOAP::SOAPString"],
      ["stateCode", "ExternalRequestFilterStateCode"]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestFilterNameType,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestFilterNameType"),
    :schema_element => [
      ["tradingName", "SOAP::SOAPString", [0, 1]],
      ["legalName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestFilterStateCode,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestFilterStateCode"),
    :schema_element => [
      ["qLD", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "QLD")], [0, 1]],
      ["nT", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "NT")], [0, 1]],
      ["sA", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "SA")], [0, 1]],
      ["wA", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "WA")], [0, 1]],
      ["vIC", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "VIC")], [0, 1]],
      ["aCT", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "ACT")], [0, 1]],
      ["tAS", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "TAS")], [0, 1]],
      ["nSW", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "NSW")], [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => ExternalRequestIdentifierSearch,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestIdentifierSearch"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ExternalRequest"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["identifierType", "SOAP::SOAPString", [0, 1]],
      ["identifierValue", "SOAP::SOAPString", [0, 1]],
      ["history", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Response,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "Response"),
    :schema_element => [
      ["usageStatement", "SOAP::SOAPString", [0, 1]],
      ["dateRegisterLastUpdated", "SOAP::SOAPDate"],
      ["dateTimeRetrieved", "SOAP::SOAPDateTime"],
      [ :choice,
        ["businessEntity200506", "ResponseBusinessEntity200506", [0, 1]],
        ["searchResultsList", "ResponseSearchResultsList", [0, 1]],
        ["abnList", "ResponseABNList", [0, 1]],
        ["businessEntity", "ResponseBusinessEntity", [0, 1]],
        ["exception", "ResponseException", [0, 1]],
        ["businessEntity200709", "ResponseBusinessEntity200709", [0, 1]]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => ResponseBusinessEntity200506,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ResponseBusinessEntity200506"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ResponseBusinessEntity"),
    :schema_element => [
      ["recordLastUpdatedDate", "SOAP::SOAPDate"],
      ["aBN", ["Identifier[]", XSD::QName.new(NsABRXMLSearch, "ABN")], [0, nil]],
      ["entityStatus", "EntityStatus[]", [0, nil]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "ASICNumber")]],
      ["entityType", "EntityType"],
      ["goodsAndServicesTax", "GoodsAndServicesTax[]", [0, nil]],
      ["dgrEndorsement", "DGREndorsement[]", [0, nil]],
      [
        ["legalName", "IndividualName[]", [0, 1]],
        ["mainName", "OrganisationName[]", [0, 1]]
      ],
      ["mainTradingName", "OrganisationName[]", [0, nil]],
      ["otherTradingName", "OrganisationName[]", [0, nil]],
      ["mainBusinessPhysicalAddress", "AddressDetails[]", [0, nil]],
      ["dgrFund", "DgrFund[]", [0, nil]],
      ["charityType", "CharityType[]", [0, nil]],
      ["taxConcessionCharityEndorsement", "CharityConcession[]", [0, nil]],
      ["publicBenevolentInstitutionEmployer", "CharitableFund[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ResponseBusinessEntity,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ResponseBusinessEntity"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ResponseBody"),
    :schema_element => [
      ["recordLastUpdatedDate", "SOAP::SOAPDate"],
      ["aBN", ["Identifier[]", XSD::QName.new(NsABRXMLSearch, "ABN")], [0, nil]],
      ["entityStatus", "EntityStatus[]", [0, nil]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "ASICNumber")]],
      ["entityType", "EntityType"],
      ["goodsAndServicesTax", "GoodsAndServicesTax[]", [0, nil]],
      ["dgrEndorsement", "DGREndorsement[]", [0, nil]],
      [
        ["legalName", "IndividualName[]", [0, 1]],
        ["mainName", "OrganisationName[]", [0, 1]]
      ],
      ["mainTradingName", "OrganisationName[]", [0, nil]],
      ["otherTradingName", "OrganisationName[]", [0, nil]],
      ["mainBusinessPhysicalAddress", "AddressDetails[]", [0, nil]],
      ["dgrFund", "DgrFund[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ResponseBody,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ResponseBody"),
    :schema_element => []
  )

  EncodedRegistry.register(
    :class => ResponseSearchResultsList,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ResponseSearchResultsList"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ResponseBody"),
    :schema_element => [
      ["numberOfRecords", "SOAP::SOAPInt"],
      ["exceedsMaximum", "SOAP::SOAPString", [0, 1]],
      ["searchResultsRecord", "SearchResultsRecord[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => SearchResultsRecord,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "SearchResultsRecord"),
    :schema_element => [
      ["aBN", ["IdentifierSummary[]", XSD::QName.new(NsABRXMLSearch, "ABN")], [0, nil]],
      [
        ["legalName", "IndividualSimpleName[]", [0, 1]],
        ["dgrFundName", "OrganisationSimpleName[]", [0, 1]],
        ["pBIEName", ["OrganisationSimpleName[]", XSD::QName.new(NsABRXMLSearch, "PBIEName")], [0, 1]],
        ["otherTradingName", "OrganisationSimpleName[]", [0, 1]],
        ["mainName", "OrganisationSimpleName[]", [0, 1]],
        ["mainTradingName", "OrganisationSimpleName[]", [0, 1]]
      ],
      ["mainBusinessPhysicalAddress", "AddressSimple[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => IdentifierSummary,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "IdentifierSummary"),
    :schema_element => [
      ["identifierValue", "SOAP::SOAPString", [0, 1]],
      ["identifierStatus", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => IndividualSimpleName,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "IndividualSimpleName"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "Individual"),
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
    :class => Individual,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "Individual"),
    :schema_element => [
      ["fullName", "SOAP::SOAPString", [0, 1]],
      ["givenName", "SOAP::SOAPString", [0, 1]],
      ["otherGivenName", "SOAP::SOAPString", [0, 1]],
      ["familyName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => IndividualName,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "IndividualName"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "Individual"),
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
    :class => OrganisationSimpleName,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "OrganisationSimpleName"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "Organisation"),
    :schema_element => [
      ["organisationName", "SOAP::SOAPString", [0, 1]],
      ["score", "SOAP::SOAPInt"],
      ["isCurrentIndicator", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Organisation,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "Organisation"),
    :schema_element => [
      ["organisationName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => OrganisationName,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "OrganisationName"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "Organisation"),
    :schema_element => [
      ["organisationName", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      [ :choice,
        ["effectiveToBlank", nil, [0, 1]],
        ["effectiveTo", "SOAP::SOAPDate"]
      ]
    ]
  )

  EncodedRegistry.register(
    :class => AddressSimple,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "AddressSimple"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "Address"),
    :schema_element => [
      ["stateCode", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["isCurrentIndicator", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => AddressFull,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "AddressFull"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "Address"),
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
    :class => AddressDetails,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "AddressDetails"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "Address"),
    :schema_element => [
      ["stateCode", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => ResponseABNList,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ResponseABNList"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ResponseBody"),
    :schema_element => [
      ["numberOfRecords", "SOAP::SOAPInt"],
      ["abn", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  EncodedRegistry.register(
    :class => ResponseException,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ResponseException"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ResponseBody"),
    :schema_element => [
      ["exceptionDescription", "SOAP::SOAPString", [0, 1]],
      ["exceptionCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => Identifier,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "Identifier"),
    :schema_element => [
      ["identifierValue", "SOAP::SOAPString", [0, 1]],
      ["isCurrentIndicator", "SOAP::SOAPString", [0, 1]],
      ["replacedIdentifierValue", "SOAP::SOAPString"],
      ["replacedFrom", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => EntityStatus,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "EntityStatus"),
    :schema_element => [
      ["entityStatusCode", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => EntityType,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "EntityType"),
    :schema_element => [
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["entityDescription", "SOAP::SOAPString", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => GoodsAndServicesTax,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "GoodsAndServicesTax"),
    :schema_element => [
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => DGREndorsement,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "DGREndorsement"),
    :schema_element => [
      ["endorsedFrom", "SOAP::SOAPDate"],
      ["endorsedTo", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => DgrFund,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "DgrFund"),
    :schema_element => [
      ["dgrFundName", "OrganisationSimpleName[]", [0, nil]],
      ["endorsedFrom", "SOAP::SOAPDate"],
      ["endorsedTo", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => CharityType,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "CharityType"),
    :schema_element => [
      ["charityTypeDescription", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => CharityConcession,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "CharityConcession"),
    :schema_element => [
      ["endorsementType", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => CharitableFund,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "CharitableFund"),
    :schema_element => [
      ["pbiName", "OrganisationSimpleName[]", [0, nil]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  EncodedRegistry.register(
    :class => ResponseBusinessEntity200709,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ResponseBusinessEntity200709"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ResponseBusinessEntity200506"),
    :schema_element => [
      ["recordLastUpdatedDate", "SOAP::SOAPDate"],
      ["aBN", ["Identifier[]", XSD::QName.new(NsABRXMLSearch, "ABN")], [0, nil]],
      ["entityStatus", "EntityStatus[]", [0, nil]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "ASICNumber")]],
      ["entityType", "EntityType"],
      ["goodsAndServicesTax", "GoodsAndServicesTax[]", [0, nil]],
      ["dgrEndorsement", "DGREndorsement[]", [0, nil]],
      [
        ["legalName", "IndividualName[]", [0, 1]],
        ["mainName", "OrganisationName[]", [0, 1]]
      ],
      ["mainTradingName", "OrganisationName[]", [0, nil]],
      ["otherTradingName", "OrganisationName[]", [0, nil]],
      ["mainBusinessPhysicalAddress", "AddressDetails[]", [0, nil]],
      ["dgrFund", "DgrFund[]", [0, nil]],
      ["charityType", "CharityType[]", [0, nil]],
      ["taxConcessionCharityEndorsement", "CharityConcession[]", [0, nil]],
      ["publicBenevolentInstitutionEmployer", "CharitableFund[]", [0, nil]],
      ["superannuationStatus", "SuperannuationStatus", [0, 1]],
      ["mainPostalPhysicalAddress", "AddressFull", [0, 1]]
    ]
  )

  EncodedRegistry.register(
    :class => SuperannuationStatus,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "SuperannuationStatus"),
    :schema_element => [
      ["complyingCode", "SOAP::SOAPString", [0, 1]],
      ["complyingDescription", "SOAP::SOAPString", [0, 1]],
      ["regulator", "SOAP::SOAPString", [0, 1]],
      ["exceptionMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Payload,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "Payload"),
    :schema_element => [
      ["request", "ExternalRequest", [0, 1]],
      ["response", "Response", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequest,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequest"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestABNCharityFilter,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestABNCharityFilter"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ExternalRequestABNFilter"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
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
    :class => ExternalRequestABNEventFilter,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestABNEventFilter"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ExternalRequestABNFilter"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
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
    :class => ExternalRequestABNStatusFilter,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestABNStatusFilter"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ExternalRequestABNFilter"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["activeABNs", "SOAP::SOAPString", [0, 1]],
      ["currentGSTRegistrationOnly", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestABNUpdateEventFilter,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestABNUpdateEventFilter"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ExternalRequestABNFilter"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["updateDate", "SOAP::SOAPDateTime"]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestNameSearchAdvanced2006,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestNameSearchAdvanced2006"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ExternalRequestNameSearchAdvanced"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["filters", "ExternalRequestFilters"],
      ["searchWidth", "SOAP::SOAPString", [0, 1]],
      ["minimumScore", "SOAP::SOAPInt"],
      ["maxSearchResults", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestNameSearchAdvanced,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestNameSearchAdvanced"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ExternalRequestNameSearch"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["filters", "ExternalRequestFilters"],
      ["searchWidth", "SOAP::SOAPString", [0, 1]],
      ["minimumScore", "SOAP::SOAPInt"]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestNameSearch,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestNameSearch"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ExternalRequest"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["name", "SOAP::SOAPString", [0, 1]],
      ["filters", "ExternalRequestFilters"]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestFilters,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestFilters"),
    :schema_element => [
      ["nameType", "ExternalRequestFilterNameType"],
      ["postcode", "SOAP::SOAPString"],
      ["stateCode", "ExternalRequestFilterStateCode"]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestFilterNameType,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestFilterNameType"),
    :schema_element => [
      ["tradingName", "SOAP::SOAPString", [0, 1]],
      ["legalName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestFilterStateCode,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestFilterStateCode"),
    :schema_element => [
      ["qLD", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "QLD")], [0, 1]],
      ["nT", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "NT")], [0, 1]],
      ["sA", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "SA")], [0, 1]],
      ["wA", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "WA")], [0, 1]],
      ["vIC", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "VIC")], [0, 1]],
      ["aCT", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "ACT")], [0, 1]],
      ["tAS", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "TAS")], [0, 1]],
      ["nSW", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "NSW")], [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ExternalRequestIdentifierSearch,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ExternalRequestIdentifierSearch"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ExternalRequest"),
    :schema_element => [
      [ :choice,
        ["externalRequestABNCharityFilter", "ExternalRequestABNCharityFilter", [0, 1]],
        ["externalRequestABNUpdateEventFilter", "ExternalRequestABNUpdateEventFilter", [0, 1]],
        ["externalRequestABNFilter", "ExternalRequestABNFilter", [0, 1]],
        ["nameSearchRequestAdvanced2006", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
        ["externalRequestABNEventFilter", "ExternalRequestABNEventFilter", [0, 1]],
        ["nameSearchRequest", "ExternalRequestNameSearch", [0, 1]],
        ["externalRequestABNStatusFilter", "ExternalRequestABNStatusFilter", [0, 1]],
        ["identifierSearchRequest", "ExternalRequestIdentifierSearch", [0, 1]],
        ["nameSearchRequestAdvanced", "ExternalRequestNameSearchAdvanced", [0, 1]]
      ],
      ["authenticationGUID", "SOAP::SOAPString", [0, 1]],
      ["identifierType", "SOAP::SOAPString", [0, 1]],
      ["identifierValue", "SOAP::SOAPString", [0, 1]],
      ["history", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Response,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "Response"),
    :schema_element => [
      ["usageStatement", "SOAP::SOAPString", [0, 1]],
      ["dateRegisterLastUpdated", "SOAP::SOAPDate"],
      ["dateTimeRetrieved", "SOAP::SOAPDateTime"],
      [ :choice,
        ["businessEntity200506", "ResponseBusinessEntity200506", [0, 1]],
        ["searchResultsList", "ResponseSearchResultsList", [0, 1]],
        ["abnList", "ResponseABNList", [0, 1]],
        ["businessEntity", "ResponseBusinessEntity", [0, 1]],
        ["exception", "ResponseException", [0, 1]],
        ["businessEntity200709", "ResponseBusinessEntity200709", [0, 1]]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseBusinessEntity200506,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ResponseBusinessEntity200506"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ResponseBusinessEntity"),
    :schema_element => [
      ["recordLastUpdatedDate", "SOAP::SOAPDate"],
      ["aBN", ["Identifier[]", XSD::QName.new(NsABRXMLSearch, "ABN")], [0, nil]],
      ["entityStatus", "EntityStatus[]", [0, nil]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "ASICNumber")]],
      ["entityType", "EntityType"],
      ["goodsAndServicesTax", "GoodsAndServicesTax[]", [0, nil]],
      ["dgrEndorsement", "DGREndorsement[]", [0, nil]],
      [
        ["legalName", "IndividualName[]", [0, 1]],
        ["mainName", "OrganisationName[]", [0, 1]]
      ],
      ["mainTradingName", "OrganisationName[]", [0, nil]],
      ["otherTradingName", "OrganisationName[]", [0, nil]],
      ["mainBusinessPhysicalAddress", "AddressDetails[]", [0, nil]],
      ["dgrFund", "DgrFund[]", [0, nil]],
      ["charityType", "CharityType[]", [0, nil]],
      ["taxConcessionCharityEndorsement", "CharityConcession[]", [0, nil]],
      ["publicBenevolentInstitutionEmployer", "CharitableFund[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseBusinessEntity,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ResponseBusinessEntity"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ResponseBody"),
    :schema_element => [
      ["recordLastUpdatedDate", "SOAP::SOAPDate"],
      ["aBN", ["Identifier[]", XSD::QName.new(NsABRXMLSearch, "ABN")], [0, nil]],
      ["entityStatus", "EntityStatus[]", [0, nil]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "ASICNumber")]],
      ["entityType", "EntityType"],
      ["goodsAndServicesTax", "GoodsAndServicesTax[]", [0, nil]],
      ["dgrEndorsement", "DGREndorsement[]", [0, nil]],
      [
        ["legalName", "IndividualName[]", [0, 1]],
        ["mainName", "OrganisationName[]", [0, 1]]
      ],
      ["mainTradingName", "OrganisationName[]", [0, nil]],
      ["otherTradingName", "OrganisationName[]", [0, nil]],
      ["mainBusinessPhysicalAddress", "AddressDetails[]", [0, nil]],
      ["dgrFund", "DgrFund[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseBody,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ResponseBody"),
    :schema_element => []
  )

  LiteralRegistry.register(
    :class => ResponseSearchResultsList,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ResponseSearchResultsList"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ResponseBody"),
    :schema_element => [
      ["numberOfRecords", "SOAP::SOAPInt"],
      ["exceedsMaximum", "SOAP::SOAPString", [0, 1]],
      ["searchResultsRecord", "SearchResultsRecord[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchResultsRecord,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "SearchResultsRecord"),
    :schema_element => [
      ["aBN", ["IdentifierSummary[]", XSD::QName.new(NsABRXMLSearch, "ABN")], [0, nil]],
      [
        ["legalName", "IndividualSimpleName[]", [0, 1]],
        ["dgrFundName", "OrganisationSimpleName[]", [0, 1]],
        ["pBIEName", ["OrganisationSimpleName[]", XSD::QName.new(NsABRXMLSearch, "PBIEName")], [0, 1]],
        ["otherTradingName", "OrganisationSimpleName[]", [0, 1]],
        ["mainName", "OrganisationSimpleName[]", [0, 1]],
        ["mainTradingName", "OrganisationSimpleName[]", [0, 1]]
      ],
      ["mainBusinessPhysicalAddress", "AddressSimple[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => IdentifierSummary,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "IdentifierSummary"),
    :schema_element => [
      ["identifierValue", "SOAP::SOAPString", [0, 1]],
      ["identifierStatus", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => IndividualSimpleName,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "IndividualSimpleName"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "Individual"),
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
    :class => Individual,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "Individual"),
    :schema_element => [
      ["fullName", "SOAP::SOAPString", [0, 1]],
      ["givenName", "SOAP::SOAPString", [0, 1]],
      ["otherGivenName", "SOAP::SOAPString", [0, 1]],
      ["familyName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => IndividualName,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "IndividualName"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "Individual"),
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
    :class => OrganisationSimpleName,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "OrganisationSimpleName"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "Organisation"),
    :schema_element => [
      ["organisationName", "SOAP::SOAPString", [0, 1]],
      ["score", "SOAP::SOAPInt"],
      ["isCurrentIndicator", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Organisation,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "Organisation"),
    :schema_element => [
      ["organisationName", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => OrganisationName,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "OrganisationName"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "Organisation"),
    :schema_element => [
      ["organisationName", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      [ :choice,
        ["effectiveToBlank", nil, [0, 1]],
        ["effectiveTo", "SOAP::SOAPDate"]
      ]
    ]
  )

  LiteralRegistry.register(
    :class => AddressSimple,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "AddressSimple"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "Address"),
    :schema_element => [
      ["stateCode", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["isCurrentIndicator", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => AddressFull,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "AddressFull"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "Address"),
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
    :class => AddressDetails,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "AddressDetails"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "Address"),
    :schema_element => [
      ["stateCode", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseABNList,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ResponseABNList"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ResponseBody"),
    :schema_element => [
      ["numberOfRecords", "SOAP::SOAPInt"],
      ["abn", "SOAP::SOAPString[]", [0, nil]]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseException,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ResponseException"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ResponseBody"),
    :schema_element => [
      ["exceptionDescription", "SOAP::SOAPString", [0, 1]],
      ["exceptionCode", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => Identifier,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "Identifier"),
    :schema_element => [
      ["identifierValue", "SOAP::SOAPString", [0, 1]],
      ["isCurrentIndicator", "SOAP::SOAPString", [0, 1]],
      ["replacedIdentifierValue", "SOAP::SOAPString"],
      ["replacedFrom", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => EntityStatus,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "EntityStatus"),
    :schema_element => [
      ["entityStatusCode", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => EntityType,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "EntityType"),
    :schema_element => [
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["entityDescription", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => GoodsAndServicesTax,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "GoodsAndServicesTax"),
    :schema_element => [
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => DGREndorsement,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "DGREndorsement"),
    :schema_element => [
      ["endorsedFrom", "SOAP::SOAPDate"],
      ["endorsedTo", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => DgrFund,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "DgrFund"),
    :schema_element => [
      ["dgrFundName", "OrganisationSimpleName[]", [0, nil]],
      ["endorsedFrom", "SOAP::SOAPDate"],
      ["endorsedTo", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => CharityType,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "CharityType"),
    :schema_element => [
      ["charityTypeDescription", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => CharityConcession,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "CharityConcession"),
    :schema_element => [
      ["endorsementType", "SOAP::SOAPString", [0, 1]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => CharitableFund,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "CharitableFund"),
    :schema_element => [
      ["pbiName", "OrganisationSimpleName[]", [0, nil]],
      ["effectiveFrom", "SOAP::SOAPDate"],
      ["effectiveTo", "SOAP::SOAPDate"]
    ]
  )

  LiteralRegistry.register(
    :class => ResponseBusinessEntity200709,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "ResponseBusinessEntity200709"),
    :schema_basetype => XSD::QName.new(NsABRXMLSearch, "ResponseBusinessEntity200506"),
    :schema_element => [
      ["recordLastUpdatedDate", "SOAP::SOAPDate"],
      ["aBN", ["Identifier[]", XSD::QName.new(NsABRXMLSearch, "ABN")], [0, nil]],
      ["entityStatus", "EntityStatus[]", [0, nil]],
      ["aSICNumber", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "ASICNumber")]],
      ["entityType", "EntityType"],
      ["goodsAndServicesTax", "GoodsAndServicesTax[]", [0, nil]],
      ["dgrEndorsement", "DGREndorsement[]", [0, nil]],
      [
        ["legalName", "IndividualName[]", [0, 1]],
        ["mainName", "OrganisationName[]", [0, 1]]
      ],
      ["mainTradingName", "OrganisationName[]", [0, nil]],
      ["otherTradingName", "OrganisationName[]", [0, nil]],
      ["mainBusinessPhysicalAddress", "AddressDetails[]", [0, nil]],
      ["dgrFund", "DgrFund[]", [0, nil]],
      ["charityType", "CharityType[]", [0, nil]],
      ["taxConcessionCharityEndorsement", "CharityConcession[]", [0, nil]],
      ["publicBenevolentInstitutionEmployer", "CharitableFund[]", [0, nil]],
      ["superannuationStatus", "SuperannuationStatus", [0, 1]],
      ["mainPostalPhysicalAddress", "AddressFull", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SuperannuationStatus,
    :schema_type => XSD::QName.new(NsABRXMLSearch, "SuperannuationStatus"),
    :schema_element => [
      ["complyingCode", "SOAP::SOAPString", [0, 1]],
      ["complyingDescription", "SOAP::SOAPString", [0, 1]],
      ["regulator", "SOAP::SOAPString", [0, 1]],
      ["exceptionMessage", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ABRSearchByABN,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "ABRSearchByABN"),
    :schema_element => [
      ["searchString", "SOAP::SOAPString", [0, 1]],
      ["includeHistoricalDetails", "SOAP::SOAPString", [0, 1]],
      ["authenticationGuid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ABRSearchByABNResponse,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "ABRSearchByABNResponse"),
    :schema_element => [
      ["aBRPayloadSearchResults", ["Payload", XSD::QName.new(NsABRXMLSearch, "ABRPayloadSearchResults")]]
    ]
  )

  LiteralRegistry.register(
    :class => ABRSearchByASIC,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "ABRSearchByASIC"),
    :schema_element => [
      ["searchString", "SOAP::SOAPString", [0, 1]],
      ["includeHistoricalDetails", "SOAP::SOAPString", [0, 1]],
      ["authenticationGuid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ABRSearchByASICResponse,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "ABRSearchByASICResponse"),
    :schema_element => [
      ["aBRPayloadSearchResults", ["Payload", XSD::QName.new(NsABRXMLSearch, "ABRPayloadSearchResults")]]
    ]
  )

  LiteralRegistry.register(
    :class => ABRSearchByName,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "ABRSearchByName"),
    :schema_element => [
      ["externalNameSearch", "ExternalRequestNameSearch", [0, 1]],
      ["authenticationGuid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ABRSearchByNameResponse,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "ABRSearchByNameResponse"),
    :schema_element => [
      ["aBRPayloadSearchResults", ["Payload", XSD::QName.new(NsABRXMLSearch, "ABRPayloadSearchResults")]]
    ]
  )

  LiteralRegistry.register(
    :class => ABRSearchByNameAdvanced,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "ABRSearchByNameAdvanced"),
    :schema_element => [
      ["externalNameSearch", "ExternalRequestNameSearchAdvanced", [0, 1]],
      ["authenticationGuid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ABRSearchByNameAdvancedResponse,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "ABRSearchByNameAdvancedResponse"),
    :schema_element => [
      ["aBRPayloadSearchResults", ["Payload", XSD::QName.new(NsABRXMLSearch, "ABRPayloadSearchResults")]]
    ]
  )

  LiteralRegistry.register(
    :class => ABRSearchByNameAdvanced2006,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "ABRSearchByNameAdvanced2006"),
    :schema_element => [
      ["externalNameSearch", "ExternalRequestNameSearchAdvanced2006", [0, 1]],
      ["authenticationGuid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ABRSearchByNameAdvanced2006Response,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "ABRSearchByNameAdvanced2006Response"),
    :schema_element => [
      ["aBRPayloadSearchResults", ["Payload", XSD::QName.new(NsABRXMLSearch, "ABRPayloadSearchResults")]]
    ]
  )

  LiteralRegistry.register(
    :class => ABRSearchByNameSimpleProtocol,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "ABRSearchByNameSimpleProtocol"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["legalName", "SOAP::SOAPString", [0, 1]],
      ["tradingName", "SOAP::SOAPString", [0, 1]],
      ["nSW", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "NSW")], [0, 1]],
      ["sA", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "SA")], [0, 1]],
      ["aCT", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "ACT")], [0, 1]],
      ["vIC", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "VIC")], [0, 1]],
      ["wA", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "WA")], [0, 1]],
      ["nT", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "NT")], [0, 1]],
      ["qLD", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "QLD")], [0, 1]],
      ["tAS", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "TAS")], [0, 1]],
      ["authenticationGuid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ABRSearchByNameSimpleProtocolResponse,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "ABRSearchByNameSimpleProtocolResponse"),
    :schema_element => [
      ["aBRPayloadSearchResults", ["Payload", XSD::QName.new(NsABRXMLSearch, "ABRPayloadSearchResults")]]
    ]
  )

  LiteralRegistry.register(
    :class => ABRSearchByNameAdvancedSimpleProtocol,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "ABRSearchByNameAdvancedSimpleProtocol"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["legalName", "SOAP::SOAPString", [0, 1]],
      ["tradingName", "SOAP::SOAPString", [0, 1]],
      ["nSW", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "NSW")], [0, 1]],
      ["sA", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "SA")], [0, 1]],
      ["aCT", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "ACT")], [0, 1]],
      ["vIC", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "VIC")], [0, 1]],
      ["wA", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "WA")], [0, 1]],
      ["nT", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "NT")], [0, 1]],
      ["qLD", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "QLD")], [0, 1]],
      ["tAS", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "TAS")], [0, 1]],
      ["authenticationGuid", "SOAP::SOAPString", [0, 1]],
      ["searchWidth", "SOAP::SOAPString", [0, 1]],
      ["minimumScore", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ABRSearchByNameAdvancedSimpleProtocolResponse,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "ABRSearchByNameAdvancedSimpleProtocolResponse"),
    :schema_element => [
      ["aBRPayloadSearchResults", ["Payload", XSD::QName.new(NsABRXMLSearch, "ABRPayloadSearchResults")]]
    ]
  )

  LiteralRegistry.register(
    :class => ABRSearchByNameAdvancedSimpleProtocol2006,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "ABRSearchByNameAdvancedSimpleProtocol2006"),
    :schema_element => [
      ["name", "SOAP::SOAPString", [0, 1]],
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["legalName", "SOAP::SOAPString", [0, 1]],
      ["tradingName", "SOAP::SOAPString", [0, 1]],
      ["nSW", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "NSW")], [0, 1]],
      ["sA", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "SA")], [0, 1]],
      ["aCT", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "ACT")], [0, 1]],
      ["vIC", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "VIC")], [0, 1]],
      ["wA", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "WA")], [0, 1]],
      ["nT", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "NT")], [0, 1]],
      ["qLD", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "QLD")], [0, 1]],
      ["tAS", ["SOAP::SOAPString", XSD::QName.new(NsABRXMLSearch, "TAS")], [0, 1]],
      ["authenticationGuid", "SOAP::SOAPString", [0, 1]],
      ["searchWidth", "SOAP::SOAPString", [0, 1]],
      ["minimumScore", "SOAP::SOAPString", [0, 1]],
      ["maxSearchResults", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => ABRSearchByNameAdvancedSimpleProtocol2006Response,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "ABRSearchByNameAdvancedSimpleProtocol2006Response"),
    :schema_element => [
      ["aBRPayloadSearchResults", ["Payload", XSD::QName.new(NsABRXMLSearch, "ABRPayloadSearchResults")]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchByABNv200506,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "SearchByABNv200506"),
    :schema_element => [
      ["searchString", "SOAP::SOAPString", [0, 1]],
      ["includeHistoricalDetails", "SOAP::SOAPString", [0, 1]],
      ["authenticationGuid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchByABNv200506Response,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "SearchByABNv200506Response"),
    :schema_element => [
      ["aBRPayloadSearchResults", ["Payload", XSD::QName.new(NsABRXMLSearch, "ABRPayloadSearchResults")]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchByASICv200506,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "SearchByASICv200506"),
    :schema_element => [
      ["searchString", "SOAP::SOAPString", [0, 1]],
      ["includeHistoricalDetails", "SOAP::SOAPString", [0, 1]],
      ["authenticationGuid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchByASICv200506Response,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "SearchByASICv200506Response"),
    :schema_element => [
      ["aBRPayloadSearchResults", ["Payload", XSD::QName.new(NsABRXMLSearch, "ABRPayloadSearchResults")]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchByPostcode,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "SearchByPostcode"),
    :schema_element => [
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["authenticationGuid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchByPostcodeResponse,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "SearchByPostcodeResponse"),
    :schema_element => [
      ["aBRPayloadSearchResults", ["Payload", XSD::QName.new(NsABRXMLSearch, "ABRPayloadSearchResults")]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchByABNStatus,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "SearchByABNStatus"),
    :schema_element => [
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["activeABNsOnly", "SOAP::SOAPString", [0, 1]],
      ["currentGSTRegistrationOnly", "SOAP::SOAPString", [0, 1]],
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["authenticationGuid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchByABNStatusResponse,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "SearchByABNStatusResponse"),
    :schema_element => [
      ["aBRPayloadSearchResults", ["Payload", XSD::QName.new(NsABRXMLSearch, "ABRPayloadSearchResults")]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchByRegistrationEvent,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "SearchByRegistrationEvent"),
    :schema_element => [
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["month", "SOAP::SOAPString", [0, 1]],
      ["year", "SOAP::SOAPString", [0, 1]],
      ["authenticationGuid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchByRegistrationEventResponse,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "SearchByRegistrationEventResponse"),
    :schema_element => [
      ["aBRPayloadSearchResults", ["Payload", XSD::QName.new(NsABRXMLSearch, "ABRPayloadSearchResults")]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchByUpdateEvent,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "SearchByUpdateEvent"),
    :schema_element => [
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["entityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["updatedate", "SOAP::SOAPString", [0, 1]],
      ["authenticationGuid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchByUpdateEventResponse,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "SearchByUpdateEventResponse"),
    :schema_element => [
      ["aBRPayloadSearchResults", ["Payload", XSD::QName.new(NsABRXMLSearch, "ABRPayloadSearchResults")]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchByCharity,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "SearchByCharity"),
    :schema_element => [
      ["postcode", "SOAP::SOAPString", [0, 1]],
      ["state", "SOAP::SOAPString", [0, 1]],
      ["charityTypeCode", "SOAP::SOAPString", [0, 1]],
      ["concessionTypeCode", "SOAP::SOAPString", [0, 1]],
      ["authenticationGuid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchByCharityResponse,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "SearchByCharityResponse"),
    :schema_element => [
      ["aBRPayloadSearchResults", ["Payload", XSD::QName.new(NsABRXMLSearch, "ABRPayloadSearchResults")]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchByABNv200709,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "SearchByABNv200709"),
    :schema_element => [
      ["searchString", "SOAP::SOAPString", [0, 1]],
      ["includeHistoricalDetails", "SOAP::SOAPString", [0, 1]],
      ["authenticationGuid", "SOAP::SOAPString", [0, 1]]
    ]
  )

  LiteralRegistry.register(
    :class => SearchByABNv200709Response,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "SearchByABNv200709Response"),
    :schema_element => [
      ["aBRPayloadSearchResults", ["Payload", XSD::QName.new(NsABRXMLSearch, "ABRPayloadSearchResults")]]
    ]
  )

  LiteralRegistry.register(
    :class => Payload,
    :schema_name => XSD::QName.new(NsABRXMLSearch, "ABRPayloadSearchResults"),
    :schema_element => [
      ["request", "ExternalRequest", [0, 1]],
      ["response", "Response", [0, 1]]
    ]
  )
end
