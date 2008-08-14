$LOAD_PATH << File.dirname(__FILE__)

require 'rubygems'
gem 'soap4r'
require 'default.rb'
require 'defaultMappingRegistry.rb'
require 'soap/rpc/driver'

class ABRXMLSearchSoap < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "http://abr.business.gov.au/abrxmlsearch/abrxmlsearch.asmx"

  Methods = [
    [ "http://abr.business.gov.au/ABRXMLSearch/ABRSearchByABN",
      "aBRSearchByABN",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "ABRSearchByABN"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "ABRSearchByABNResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://abr.business.gov.au/ABRXMLSearch/ABRSearchByASIC",
      "aBRSearchByASIC",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "ABRSearchByASIC"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "ABRSearchByASICResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://abr.business.gov.au/ABRXMLSearch/ABRSearchByName",
      "aBRSearchByName",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "ABRSearchByName"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "ABRSearchByNameResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://abr.business.gov.au/ABRXMLSearch/ABRSearchByNameAdvanced",
      "aBRSearchByNameAdvanced",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "ABRSearchByNameAdvanced"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "ABRSearchByNameAdvancedResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://abr.business.gov.au/ABRXMLSearch/ABRSearchByNameAdvanced2006",
      "aBRSearchByNameAdvanced2006",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "ABRSearchByNameAdvanced2006"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "ABRSearchByNameAdvanced2006Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://abr.business.gov.au/ABRXMLSearch/ABRSearchByNameSimpleProtocol",
      "aBRSearchByNameSimpleProtocol",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "ABRSearchByNameSimpleProtocol"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "ABRSearchByNameSimpleProtocolResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://abr.business.gov.au/ABRXMLSearch/ABRSearchByNameAdvancedSimpleProtocol",
      "aBRSearchByNameAdvancedSimpleProtocol",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "ABRSearchByNameAdvancedSimpleProtocol"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "ABRSearchByNameAdvancedSimpleProtocolResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://abr.business.gov.au/ABRXMLSearch/ABRSearchByNameAdvancedSimpleProtocol2006",
      "aBRSearchByNameAdvancedSimpleProtocol2006",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "ABRSearchByNameAdvancedSimpleProtocol2006"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "ABRSearchByNameAdvancedSimpleProtocol2006Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://abr.business.gov.au/ABRXMLSearch/SearchByABNv200506",
      "searchByABNv200506",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "SearchByABNv200506"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "SearchByABNv200506Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://abr.business.gov.au/ABRXMLSearch/SearchByASICv200506",
      "searchByASICv200506",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "SearchByASICv200506"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "SearchByASICv200506Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://abr.business.gov.au/ABRXMLSearch/SearchByPostcode",
      "searchByPostcode",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "SearchByPostcode"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "SearchByPostcodeResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://abr.business.gov.au/ABRXMLSearch/SearchByABNStatus",
      "searchByABNStatus",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "SearchByABNStatus"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "SearchByABNStatusResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://abr.business.gov.au/ABRXMLSearch/SearchByRegistrationEvent",
      "searchByRegistrationEvent",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "SearchByRegistrationEvent"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "SearchByRegistrationEventResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://abr.business.gov.au/ABRXMLSearch/SearchByUpdateEvent",
      "searchByUpdateEvent",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "SearchByUpdateEvent"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "SearchByUpdateEventResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://abr.business.gov.au/ABRXMLSearch/SearchByCharity",
      "searchByCharity",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "SearchByCharity"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "SearchByCharityResponse"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
        :faults => {} }
    ],
    [ "http://abr.business.gov.au/ABRXMLSearch/SearchByABNv200709",
      "searchByABNv200709",
      [ ["in", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "SearchByABNv200709"]],
        ["out", "parameters", ["::SOAP::SOAPElement", "http://abr.business.gov.au/ABRXMLSearch/", "SearchByABNv200709Response"]] ],
      { :request_style =>  :document, :request_use =>  :literal,
        :response_style => :document, :response_use => :literal,
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



