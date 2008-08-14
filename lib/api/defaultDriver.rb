require 'default.rb'
require 'defaultMappingRegistry.rb'
require 'soap/rpc/driver'

class ABRXMLSearchRPCSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://abr.business.gov.au/abrxmlsearchRPC/abrxmlsearch.asmx"
  NsABRXMLSearchRPC = "http://abr.business.gov.au/ABRXMLSearchRPC/"

  Methods = [
    [ XSD::QName.new(NsABRXMLSearchRPC, "ABRSearchByABN"),
      "http://abr.business.gov.au/ABRXMLSearchRPC/ABRSearchByABN",
      "aBRSearchByABN",
      [ ["in", "searchString", ["::SOAP::SOAPString"]],
        ["in", "includeHistoricalDetails", ["::SOAP::SOAPString"]],
        ["in", "authenticationGuid", ["::SOAP::SOAPString"]],
        ["retval", "ABRSearchByABNResult", ["Payload", "http://abr.business.gov.au/ABRXMLSearchRPC/", "Payload"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsABRXMLSearchRPC, "ABRSearchByASIC"),
      "http://abr.business.gov.au/ABRXMLSearchRPC/ABRSearchByASIC",
      "aBRSearchByASIC",
      [ ["in", "searchString", ["::SOAP::SOAPString"]],
        ["in", "includeHistoricalDetails", ["::SOAP::SOAPString"]],
        ["in", "authenticationGuid", ["::SOAP::SOAPString"]],
        ["retval", "ABRSearchByASICResult", ["Payload", "http://abr.business.gov.au/ABRXMLSearchRPC/", "Payload"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsABRXMLSearchRPC, "ABRSearchByName"),
      "http://abr.business.gov.au/ABRXMLSearchRPC/ABRSearchByName",
      "aBRSearchByName",
      [ ["in", "externalNameSearch", ["ExternalRequestNameSearch", "http://abr.business.gov.au/ABRXMLSearchRPC/", "ExternalRequestNameSearch"]],
        ["in", "authenticationGuid", ["::SOAP::SOAPString"]],
        ["retval", "ABRSearchByNameResult", ["Payload", "http://abr.business.gov.au/ABRXMLSearchRPC/", "Payload"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsABRXMLSearchRPC, "ABRSearchByNameAdvanced"),
      "http://abr.business.gov.au/ABRXMLSearchRPC/ABRSearchByNameAdvanced",
      "aBRSearchByNameAdvanced",
      [ ["in", "externalNameSearch", ["ExternalRequestNameSearchAdvanced", "http://abr.business.gov.au/ABRXMLSearchRPC/", "ExternalRequestNameSearchAdvanced"]],
        ["in", "authenticationGuid", ["::SOAP::SOAPString"]],
        ["retval", "ABRSearchByNameAdvancedResult", ["Payload", "http://abr.business.gov.au/ABRXMLSearchRPC/", "Payload"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsABRXMLSearchRPC, "ABRSearchByNameAdvanced2006"),
      "http://abr.business.gov.au/ABRXMLSearchRPC/ABRSearchByNameAdvanced2006",
      "aBRSearchByNameAdvanced2006",
      [ ["in", "externalNameSearch", ["ExternalRequestNameSearchAdvanced2006", "http://abr.business.gov.au/ABRXMLSearchRPC/", "ExternalRequestNameSearchAdvanced2006"]],
        ["in", "authenticationGuid", ["::SOAP::SOAPString"]],
        ["retval", "ABRSearchByNameAdvanced2006Result", ["Payload", "http://abr.business.gov.au/ABRXMLSearchRPC/", "Payload"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsABRXMLSearchRPC, "ABRSearchByNameSimpleProtocol"),
      "http://abr.business.gov.au/ABRXMLSearchRPC/ABRSearchByNameSimpleProtocol",
      "aBRSearchByNameSimpleProtocol",
      [ ["in", "name", ["::SOAP::SOAPString"]],
        ["in", "postcode", ["::SOAP::SOAPString"]],
        ["in", "legalName", ["::SOAP::SOAPString"]],
        ["in", "tradingName", ["::SOAP::SOAPString"]],
        ["in", "NSW", ["::SOAP::SOAPString"]],
        ["in", "SA", ["::SOAP::SOAPString"]],
        ["in", "ACT", ["::SOAP::SOAPString"]],
        ["in", "VIC", ["::SOAP::SOAPString"]],
        ["in", "WA", ["::SOAP::SOAPString"]],
        ["in", "NT", ["::SOAP::SOAPString"]],
        ["in", "QLD", ["::SOAP::SOAPString"]],
        ["in", "TAS", ["::SOAP::SOAPString"]],
        ["in", "authenticationGuid", ["::SOAP::SOAPString"]],
        ["retval", "ABRSearchByNameSimpleProtocolResult", ["Payload", "http://abr.business.gov.au/ABRXMLSearchRPC/", "Payload"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsABRXMLSearchRPC, "ABRSearchByNameAdvancedSimpleProtocol"),
      "http://abr.business.gov.au/ABRXMLSearchRPC/ABRSearchByNameAdvancedSimpleProtocol",
      "aBRSearchByNameAdvancedSimpleProtocol",
      [ ["in", "name", ["::SOAP::SOAPString"]],
        ["in", "postcode", ["::SOAP::SOAPString"]],
        ["in", "legalName", ["::SOAP::SOAPString"]],
        ["in", "tradingName", ["::SOAP::SOAPString"]],
        ["in", "NSW", ["::SOAP::SOAPString"]],
        ["in", "SA", ["::SOAP::SOAPString"]],
        ["in", "ACT", ["::SOAP::SOAPString"]],
        ["in", "VIC", ["::SOAP::SOAPString"]],
        ["in", "WA", ["::SOAP::SOAPString"]],
        ["in", "NT", ["::SOAP::SOAPString"]],
        ["in", "QLD", ["::SOAP::SOAPString"]],
        ["in", "TAS", ["::SOAP::SOAPString"]],
        ["in", "authenticationGuid", ["::SOAP::SOAPString"]],
        ["in", "searchWidth", ["::SOAP::SOAPString"]],
        ["in", "minimumScore", ["::SOAP::SOAPString"]],
        ["retval", "ABRSearchByNameAdvancedSimpleProtocolResult", ["Payload", "http://abr.business.gov.au/ABRXMLSearchRPC/", "Payload"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsABRXMLSearchRPC, "ABRSearchByNameAdvancedSimpleProtocol2006"),
      "http://abr.business.gov.au/ABRXMLSearchRPC/ABRSearchByNameAdvancedSimpleProtocol2006",
      "aBRSearchByNameAdvancedSimpleProtocol2006",
      [ ["in", "name", ["::SOAP::SOAPString"]],
        ["in", "postcode", ["::SOAP::SOAPString"]],
        ["in", "legalName", ["::SOAP::SOAPString"]],
        ["in", "tradingName", ["::SOAP::SOAPString"]],
        ["in", "NSW", ["::SOAP::SOAPString"]],
        ["in", "SA", ["::SOAP::SOAPString"]],
        ["in", "ACT", ["::SOAP::SOAPString"]],
        ["in", "VIC", ["::SOAP::SOAPString"]],
        ["in", "WA", ["::SOAP::SOAPString"]],
        ["in", "NT", ["::SOAP::SOAPString"]],
        ["in", "QLD", ["::SOAP::SOAPString"]],
        ["in", "TAS", ["::SOAP::SOAPString"]],
        ["in", "authenticationGuid", ["::SOAP::SOAPString"]],
        ["in", "searchWidth", ["::SOAP::SOAPString"]],
        ["in", "minimumScore", ["::SOAP::SOAPString"]],
        ["in", "maxSearchResults", ["::SOAP::SOAPString"]],
        ["retval", "ABRSearchByNameAdvancedSimpleProtocol2006Result", ["Payload", "http://abr.business.gov.au/ABRXMLSearchRPC/", "Payload"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsABRXMLSearchRPC, "SearchByABNv200506"),
      "http://abr.business.gov.au/ABRXMLSearchRPC/SearchByABNv200506",
      "searchByABNv200506",
      [ ["in", "searchString", ["::SOAP::SOAPString"]],
        ["in", "includeHistoricalDetails", ["::SOAP::SOAPString"]],
        ["in", "authenticationGuid", ["::SOAP::SOAPString"]],
        ["retval", "SearchByABNv200506Result", ["Payload", "http://abr.business.gov.au/ABRXMLSearchRPC/", "Payload"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsABRXMLSearchRPC, "SearchByASICv200506"),
      "http://abr.business.gov.au/ABRXMLSearchRPC/SearchByASICv200506",
      "searchByASICv200506",
      [ ["in", "searchString", ["::SOAP::SOAPString"]],
        ["in", "includeHistoricalDetails", ["::SOAP::SOAPString"]],
        ["in", "authenticationGuid", ["::SOAP::SOAPString"]],
        ["retval", "SearchByASICv200506Result", ["Payload", "http://abr.business.gov.au/ABRXMLSearchRPC/", "Payload"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsABRXMLSearchRPC, "SearchByPostcode"),
      "http://abr.business.gov.au/ABRXMLSearchRPC/SearchByPostcode",
      "searchByPostcode",
      [ ["in", "postcode", ["::SOAP::SOAPString"]],
        ["in", "authenticationGuid", ["::SOAP::SOAPString"]],
        ["retval", "SearchByPostcodeResult", ["Payload", "http://abr.business.gov.au/ABRXMLSearchRPC/", "Payload"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsABRXMLSearchRPC, "SearchByABNStatus"),
      "http://abr.business.gov.au/ABRXMLSearchRPC/SearchByABNStatus",
      "searchByABNStatus",
      [ ["in", "postcode", ["::SOAP::SOAPString"]],
        ["in", "activeABNsOnly", ["::SOAP::SOAPString"]],
        ["in", "currentGSTRegistrationOnly", ["::SOAP::SOAPString"]],
        ["in", "entityTypeCode", ["::SOAP::SOAPString"]],
        ["in", "authenticationGuid", ["::SOAP::SOAPString"]],
        ["retval", "SearchByABNStatusResult", ["Payload", "http://abr.business.gov.au/ABRXMLSearchRPC/", "Payload"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsABRXMLSearchRPC, "SearchByRegistrationEvent"),
      "http://abr.business.gov.au/ABRXMLSearchRPC/SearchByRegistrationEvent",
      "searchByRegistrationEvent",
      [ ["in", "postcode", ["::SOAP::SOAPString"]],
        ["in", "state", ["::SOAP::SOAPString"]],
        ["in", "entityTypeCode", ["::SOAP::SOAPString"]],
        ["in", "month", ["::SOAP::SOAPString"]],
        ["in", "year", ["::SOAP::SOAPString"]],
        ["in", "authenticationGuid", ["::SOAP::SOAPString"]],
        ["retval", "SearchByRegistrationEventResult", ["Payload", "http://abr.business.gov.au/ABRXMLSearchRPC/", "Payload"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsABRXMLSearchRPC, "SearchByUpdateEvent"),
      "http://abr.business.gov.au/ABRXMLSearchRPC/SearchByUpdateEvent",
      "searchByUpdateEvent",
      [ ["in", "postcode", ["::SOAP::SOAPString"]],
        ["in", "state", ["::SOAP::SOAPString"]],
        ["in", "entityTypeCode", ["::SOAP::SOAPString"]],
        ["in", "updatedate", ["::SOAP::SOAPString"]],
        ["in", "authenticationGuid", ["::SOAP::SOAPString"]],
        ["retval", "SearchByUpdateEventResult", ["Payload", "http://abr.business.gov.au/ABRXMLSearchRPC/", "Payload"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsABRXMLSearchRPC, "SearchByCharity"),
      "http://abr.business.gov.au/ABRXMLSearchRPC/SearchByCharity",
      "searchByCharity",
      [ ["in", "postcode", ["::SOAP::SOAPString"]],
        ["in", "state", ["::SOAP::SOAPString"]],
        ["in", "charityTypeCode", ["::SOAP::SOAPString"]],
        ["in", "concessionTypeCode", ["::SOAP::SOAPString"]],
        ["in", "authenticationGuid", ["::SOAP::SOAPString"]],
        ["retval", "SearchByCharityResult", ["Payload", "http://abr.business.gov.au/ABRXMLSearchRPC/", "Payload"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsABRXMLSearchRPC, "SearchByABNv200709"),
      "http://abr.business.gov.au/ABRXMLSearchRPC/SearchByABNv200709",
      "searchByABNv200709",
      [ ["in", "searchString", ["::SOAP::SOAPString"]],
        ["in", "includeHistoricalDetails", ["::SOAP::SOAPString"]],
        ["in", "authenticationGuid", ["::SOAP::SOAPString"]],
        ["retval", "SearchByABNv200709Result", ["Payload", "http://abr.business.gov.au/ABRXMLSearchRPC/", "Payload"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = DefaultMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = DefaultMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end



