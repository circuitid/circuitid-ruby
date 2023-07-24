# circuitid-ruby

CircuitID - the Ruby gem for the Circuit ID REST API

# Introduction
Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.
                
Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide. 

We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.
                
Happy coding!


- API version: 0.47.16
- Package version: 1.0.0

For more information, please visit [https://www.circuitid.com/](https://www.circuitid.com/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build circuitid-ruby.gemspec
```

Then either install the gem locally:

```shell
gem install ./circuitid-ruby-1.0.0.gem
```

(for development, run `gem install --dev ./circuitid-ruby-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'circuitid-ruby', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/circuitid/circuitid-ruby, then add the following in the Gemfile:

    gem 'circuitid-ruby', :git => 'https://github.com/circuitid/circuitid-ruby.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'circuitid-ruby'

# Setup authorization
CircuitID.configure do |config|
  # Configure API key authorization: jwt
  config.api_key['jwt'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['jwt'] = 'Bearer'
end

api_instance = CircuitID::AcceptedSendersApi.new
acceptedsenders = CircuitID::Acceptedsenders.new({object: 3.56, service: 3.56, service_ref: 3.56, ref: users}) # Acceptedsenders | The JSON object that will be posted to the REST API endpoint.

begin
  #Create a new object
  result = api_instance.create_accepted_sender(acceptedsenders)
  p result
rescue CircuitID::ApiError => e
  puts "Exception when calling AcceptedSendersApi->create_accepted_sender: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://rest.circuitid.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*CircuitID::AcceptedSendersApi* | [**create_accepted_sender**](docs/AcceptedSendersApi.md#create_accepted_sender) | **POST** /acceptedsenders | Create a new object
*CircuitID::AcceptedSendersApi* | [**find_accepted_senders**](docs/AcceptedSendersApi.md#find_accepted_senders) | **GET** /acceptedsenders | Find multiple objects
*CircuitID::AcceptedSendersApi* | [**get_accepted_sender**](docs/AcceptedSendersApi.md#get_accepted_sender) | **GET** /acceptedsenders/{id} | Get object by id
*CircuitID::AcceptedSendersApi* | [**patch_accepted_sender**](docs/AcceptedSendersApi.md#patch_accepted_sender) | **PATCH** /acceptedsenders/{id} | Patch object's data
*CircuitID::AcceptedSendersApi* | [**remove_accepted_sender**](docs/AcceptedSendersApi.md#remove_accepted_sender) | **DELETE** /acceptedsenders/{id} | Delete object by id
*CircuitID::AnnouncementsApi* | [**create_announcement**](docs/AnnouncementsApi.md#create_announcement) | **POST** /announcements | Create a new object
*CircuitID::AnnouncementsApi* | [**find_announcements**](docs/AnnouncementsApi.md#find_announcements) | **GET** /announcements | Find multiple objects
*CircuitID::AnnouncementsApi* | [**get_announcement**](docs/AnnouncementsApi.md#get_announcement) | **GET** /announcements/{id} | Get object by id
*CircuitID::AnnouncementsApi* | [**patch_announcement**](docs/AnnouncementsApi.md#patch_announcement) | **PATCH** /announcements/{id} | Patch object's data
*CircuitID::AnnouncementsApi* | [**remove_announcement**](docs/AnnouncementsApi.md#remove_announcement) | **DELETE** /announcements/{id} | Delete object by id
*CircuitID::AppMarketplaceApi* | [**find_app_marketplace**](docs/AppMarketplaceApi.md#find_app_marketplace) | **GET** /appmarketplace | Find multiple objects
*CircuitID::AuthenticationApi* | [**create_authentication**](docs/AuthenticationApi.md#create_authentication) | **POST** /authentication | Create a new object
*CircuitID::CallQueueAgentsApi* | [**create_call_queue_agent**](docs/CallQueueAgentsApi.md#create_call_queue_agent) | **POST** /callqueueagents | Create a new object
*CircuitID::CallQueueAgentsApi* | [**find_call_queue_agents**](docs/CallQueueAgentsApi.md#find_call_queue_agents) | **GET** /callqueueagents | Find multiple objects
*CircuitID::CallQueueAgentsApi* | [**get_call_queue_agent**](docs/CallQueueAgentsApi.md#get_call_queue_agent) | **GET** /callqueueagents/{id} | Get object by id
*CircuitID::CallQueueAgentsApi* | [**patch_call_queue_agent**](docs/CallQueueAgentsApi.md#patch_call_queue_agent) | **PATCH** /callqueueagents/{id} | Patch object's data
*CircuitID::CallQueueAgentsApi* | [**remove_call_queue_agent**](docs/CallQueueAgentsApi.md#remove_call_queue_agent) | **DELETE** /callqueueagents/{id} | Delete object by id
*CircuitID::CallQueuesApi* | [**create_call_queue**](docs/CallQueuesApi.md#create_call_queue) | **POST** /callqueues | Create a new object
*CircuitID::CallQueuesApi* | [**find_call_queues**](docs/CallQueuesApi.md#find_call_queues) | **GET** /callqueues | Find multiple objects
*CircuitID::CallQueuesApi* | [**get_call_queue**](docs/CallQueuesApi.md#get_call_queue) | **GET** /callqueues/{id} | Get object by id
*CircuitID::CallQueuesApi* | [**patch_call_queue**](docs/CallQueuesApi.md#patch_call_queue) | **PATCH** /callqueues/{id} | Patch object's data
*CircuitID::CallQueuesApi* | [**remove_call_queue**](docs/CallQueuesApi.md#remove_call_queue) | **DELETE** /callqueues/{id} | Delete object by id
*CircuitID::ChatRoomsApi* | [**create_chat_room**](docs/ChatRoomsApi.md#create_chat_room) | **POST** /chatrooms | Create a new object
*CircuitID::ChatRoomsApi* | [**find_chat_rooms**](docs/ChatRoomsApi.md#find_chat_rooms) | **GET** /chatrooms | Find multiple objects
*CircuitID::ChatRoomsApi* | [**get_chat_room**](docs/ChatRoomsApi.md#get_chat_room) | **GET** /chatrooms/{id} | Get object by id
*CircuitID::ChatRoomsApi* | [**patch_chat_room**](docs/ChatRoomsApi.md#patch_chat_room) | **PATCH** /chatrooms/{id} | Patch object's data
*CircuitID::ChatRoomsApi* | [**remove_chat_room**](docs/ChatRoomsApi.md#remove_chat_room) | **DELETE** /chatrooms/{id} | Delete object by id
*CircuitID::ClientsApi* | [**create_client**](docs/ClientsApi.md#create_client) | **POST** /clients | Create a new object
*CircuitID::ClientsApi* | [**find_clients**](docs/ClientsApi.md#find_clients) | **GET** /clients | Find multiple objects
*CircuitID::ClientsApi* | [**get_client**](docs/ClientsApi.md#get_client) | **GET** /clients/{id} | Get object by id
*CircuitID::ClientsApi* | [**patch_client**](docs/ClientsApi.md#patch_client) | **PATCH** /clients/{id} | Patch object's data
*CircuitID::ClientsApi* | [**remove_client**](docs/ClientsApi.md#remove_client) | **DELETE** /clients/{id} | Delete object by id
*CircuitID::ConferenceNumbersApi* | [**find_conference_numbers**](docs/ConferenceNumbersApi.md#find_conference_numbers) | **GET** /conferencenumbers | Find multiple objects
*CircuitID::ConferenceRoomsApi* | [**create_conference_room**](docs/ConferenceRoomsApi.md#create_conference_room) | **POST** /conferencerooms | Create a new object
*CircuitID::ConferenceRoomsApi* | [**find_conference_rooms**](docs/ConferenceRoomsApi.md#find_conference_rooms) | **GET** /conferencerooms | Find multiple objects
*CircuitID::ConferenceRoomsApi* | [**get_conference_room**](docs/ConferenceRoomsApi.md#get_conference_room) | **GET** /conferencerooms/{id} | Get object by id
*CircuitID::ConferenceRoomsApi* | [**patch_conference_room**](docs/ConferenceRoomsApi.md#patch_conference_room) | **PATCH** /conferencerooms/{id} | Patch object's data
*CircuitID::ConferenceRoomsApi* | [**remove_conference_room**](docs/ConferenceRoomsApi.md#remove_conference_room) | **DELETE** /conferencerooms/{id} | Delete object by id
*CircuitID::ContactsApi* | [**create_contact**](docs/ContactsApi.md#create_contact) | **POST** /contacts | Create a new object
*CircuitID::ContactsApi* | [**find_contacts**](docs/ContactsApi.md#find_contacts) | **GET** /contacts | Find multiple objects
*CircuitID::ContactsApi* | [**get_contact**](docs/ContactsApi.md#get_contact) | **GET** /contacts/{id} | Get object by id
*CircuitID::ContactsApi* | [**patch_contact**](docs/ContactsApi.md#patch_contact) | **PATCH** /contacts/{id} | Patch object's data
*CircuitID::ContactsApi* | [**remove_contact**](docs/ContactsApi.md#remove_contact) | **DELETE** /contacts/{id} | Delete object by id
*CircuitID::ConversationMessagesApi* | [**create_conversation_message**](docs/ConversationMessagesApi.md#create_conversation_message) | **POST** /conversationmessages | Create a new object
*CircuitID::ConversationMessagesApi* | [**find_conversation_messages**](docs/ConversationMessagesApi.md#find_conversation_messages) | **GET** /conversationmessages | Find multiple objects
*CircuitID::ConversationMessagesApi* | [**get_conversation_message**](docs/ConversationMessagesApi.md#get_conversation_message) | **GET** /conversationmessages/{id} | Get object by id
*CircuitID::ConversationMessagesApi* | [**patch_conversation_message**](docs/ConversationMessagesApi.md#patch_conversation_message) | **PATCH** /conversationmessages/{id} | Patch object's data
*CircuitID::ConversationMessagesApi* | [**remove_conversation_message**](docs/ConversationMessagesApi.md#remove_conversation_message) | **DELETE** /conversationmessages/{id} | Delete object by id
*CircuitID::ConversationsApi* | [**create_conversation**](docs/ConversationsApi.md#create_conversation) | **POST** /conversations | Create a new object
*CircuitID::ConversationsApi* | [**find_conversations**](docs/ConversationsApi.md#find_conversations) | **GET** /conversations | Find multiple objects
*CircuitID::ConversationsApi* | [**get_conversation**](docs/ConversationsApi.md#get_conversation) | **GET** /conversations/{id} | Get object by id
*CircuitID::ConversationsApi* | [**patch_conversation**](docs/ConversationsApi.md#patch_conversation) | **PATCH** /conversations/{id} | Patch object's data
*CircuitID::ConversationsApi* | [**remove_conversation**](docs/ConversationsApi.md#remove_conversation) | **DELETE** /conversations/{id} | Delete object by id
*CircuitID::CustomersApi* | [**create_customer**](docs/CustomersApi.md#create_customer) | **POST** /customers | Create a new object
*CircuitID::CustomersApi* | [**find_customers**](docs/CustomersApi.md#find_customers) | **GET** /customers | Find multiple objects
*CircuitID::CustomersApi* | [**get_customer**](docs/CustomersApi.md#get_customer) | **GET** /customers/{id} | Get object by id
*CircuitID::CustomersApi* | [**patch_customer**](docs/CustomersApi.md#patch_customer) | **PATCH** /customers/{id} | Patch object's data
*CircuitID::CustomersApi* | [**remove_customer**](docs/CustomersApi.md#remove_customer) | **DELETE** /customers/{id} | Delete object by id
*CircuitID::DNSRecordsApi* | [**find_dns_records**](docs/DNSRecordsApi.md#find_dns_records) | **GET** /dnsrecords | Find multiple objects
*CircuitID::DeveloperAppSubscriptionsApi* | [**create_developer_app_subscription**](docs/DeveloperAppSubscriptionsApi.md#create_developer_app_subscription) | **POST** /developerappsubscriptions | Create a new object
*CircuitID::DeveloperAppSubscriptionsApi* | [**find_developer_app_subscriptions**](docs/DeveloperAppSubscriptionsApi.md#find_developer_app_subscriptions) | **GET** /developerappsubscriptions | Find multiple objects
*CircuitID::DeveloperAppSubscriptionsApi* | [**get_developer_app_subscription**](docs/DeveloperAppSubscriptionsApi.md#get_developer_app_subscription) | **GET** /developerappsubscriptions/{id} | Get object by id
*CircuitID::DeveloperAppSubscriptionsApi* | [**patch_developer_app_subscription**](docs/DeveloperAppSubscriptionsApi.md#patch_developer_app_subscription) | **PATCH** /developerappsubscriptions/{id} | Patch object's data
*CircuitID::DeveloperAppSubscriptionsApi* | [**remove_developer_app_subscription**](docs/DeveloperAppSubscriptionsApi.md#remove_developer_app_subscription) | **DELETE** /developerappsubscriptions/{id} | Delete object by id
*CircuitID::DeveloperAppsApi* | [**create_developer_app**](docs/DeveloperAppsApi.md#create_developer_app) | **POST** /developerapps | Create a new object
*CircuitID::DeveloperAppsApi* | [**find_developer_apps**](docs/DeveloperAppsApi.md#find_developer_apps) | **GET** /developerapps | Find multiple objects
*CircuitID::DeveloperAppsApi* | [**get_developer_app**](docs/DeveloperAppsApi.md#get_developer_app) | **GET** /developerapps/{id} | Get object by id
*CircuitID::DeveloperAppsApi* | [**patch_developer_app**](docs/DeveloperAppsApi.md#patch_developer_app) | **PATCH** /developerapps/{id} | Patch object's data
*CircuitID::DeveloperAppsApi* | [**remove_developer_app**](docs/DeveloperAppsApi.md#remove_developer_app) | **DELETE** /developerapps/{id} | Delete object by id
*CircuitID::DirectoriesApi* | [**createdirectory**](docs/DirectoriesApi.md#createdirectory) | **POST** /directories | Create a new object
*CircuitID::DirectoriesApi* | [**find_directories**](docs/DirectoriesApi.md#find_directories) | **GET** /directories | Find multiple objects
*CircuitID::DirectoriesApi* | [**getdirectory**](docs/DirectoriesApi.md#getdirectory) | **GET** /directories/{id} | Get object by id
*CircuitID::DirectoriesApi* | [**patchdirectory**](docs/DirectoriesApi.md#patchdirectory) | **PATCH** /directories/{id} | Patch object's data
*CircuitID::DirectoriesApi* | [**removedirectory**](docs/DirectoriesApi.md#removedirectory) | **DELETE** /directories/{id} | Delete object by id
*CircuitID::DomainsApi* | [**create_domain**](docs/DomainsApi.md#create_domain) | **POST** /domains | Create a new object
*CircuitID::DomainsApi* | [**find_domains**](docs/DomainsApi.md#find_domains) | **GET** /domains | Find multiple objects
*CircuitID::DomainsApi* | [**get_domain**](docs/DomainsApi.md#get_domain) | **GET** /domains/{id} | Get object by id
*CircuitID::DomainsApi* | [**patch_domain**](docs/DomainsApi.md#patch_domain) | **PATCH** /domains/{id} | Patch object's data
*CircuitID::DomainsApi* | [**remove_domain**](docs/DomainsApi.md#remove_domain) | **DELETE** /domains/{id} | Delete object by id
*CircuitID::FaxAccountsApi* | [**create_fax_account**](docs/FaxAccountsApi.md#create_fax_account) | **POST** /faxaccounts | Create a new object
*CircuitID::FaxAccountsApi* | [**find_fax_accounts**](docs/FaxAccountsApi.md#find_fax_accounts) | **GET** /faxaccounts | Find multiple objects
*CircuitID::FaxAccountsApi* | [**get_fax_account**](docs/FaxAccountsApi.md#get_fax_account) | **GET** /faxaccounts/{id} | Get object by id
*CircuitID::FaxAccountsApi* | [**patch_fax_account**](docs/FaxAccountsApi.md#patch_fax_account) | **PATCH** /faxaccounts/{id} | Patch object's data
*CircuitID::FaxAccountsApi* | [**remove_fax_account**](docs/FaxAccountsApi.md#remove_fax_account) | **DELETE** /faxaccounts/{id} | Delete object by id
*CircuitID::FaxesApi* | [**create_fax**](docs/FaxesApi.md#create_fax) | **POST** /faxes | Create a new object
*CircuitID::FaxesApi* | [**find_faxes**](docs/FaxesApi.md#find_faxes) | **GET** /faxes | Find multiple objects
*CircuitID::FaxesApi* | [**get_fax**](docs/FaxesApi.md#get_fax) | **GET** /faxes/{id} | Get object by id
*CircuitID::FaxesApi* | [**remove_fax**](docs/FaxesApi.md#remove_fax) | **DELETE** /faxes/{id} | Delete object by id
*CircuitID::FindNumbersApi* | [**find_find_numbers**](docs/FindNumbersApi.md#find_find_numbers) | **GET** /findnumbers | Find multiple objects
*CircuitID::FirewallApi* | [**create_firewall**](docs/FirewallApi.md#create_firewall) | **POST** /firewall | Create a new object
*CircuitID::FirewallApi* | [**find_firewall**](docs/FirewallApi.md#find_firewall) | **GET** /firewall | Find multiple objects
*CircuitID::FirewallApi* | [**get_firewall**](docs/FirewallApi.md#get_firewall) | **GET** /firewall/{id} | Get object by id
*CircuitID::FirewallApi* | [**patch_firewall**](docs/FirewallApi.md#patch_firewall) | **PATCH** /firewall/{id} | Patch object's data
*CircuitID::FirewallApi* | [**remove_firewall**](docs/FirewallApi.md#remove_firewall) | **DELETE** /firewall/{id} | Delete object by id
*CircuitID::GroupMembersApi* | [**create_group_member**](docs/GroupMembersApi.md#create_group_member) | **POST** /groupmembers | Create a new object
*CircuitID::GroupMembersApi* | [**find_group_members**](docs/GroupMembersApi.md#find_group_members) | **GET** /groupmembers | Find multiple objects
*CircuitID::GroupMembersApi* | [**get_group_member**](docs/GroupMembersApi.md#get_group_member) | **GET** /groupmembers/{id} | Get object by id
*CircuitID::GroupMembersApi* | [**patch_group_member**](docs/GroupMembersApi.md#patch_group_member) | **PATCH** /groupmembers/{id} | Patch object's data
*CircuitID::GroupMembersApi* | [**remove_group_member**](docs/GroupMembersApi.md#remove_group_member) | **DELETE** /groupmembers/{id} | Delete object by id
*CircuitID::GroupsApi* | [**create_group**](docs/GroupsApi.md#create_group) | **POST** /groups | Create a new object
*CircuitID::GroupsApi* | [**find_groups**](docs/GroupsApi.md#find_groups) | **GET** /groups | Find multiple objects
*CircuitID::GroupsApi* | [**get_group**](docs/GroupsApi.md#get_group) | **GET** /groups/{id} | Get object by id
*CircuitID::GroupsApi* | [**patch_group**](docs/GroupsApi.md#patch_group) | **PATCH** /groups/{id} | Patch object's data
*CircuitID::GroupsApi* | [**remove_group**](docs/GroupsApi.md#remove_group) | **DELETE** /groups/{id} | Delete object by id
*CircuitID::HolidaysApi* | [**create_holiday**](docs/HolidaysApi.md#create_holiday) | **POST** /holidays | Create a new object
*CircuitID::HolidaysApi* | [**find_holidays**](docs/HolidaysApi.md#find_holidays) | **GET** /holidays | Find multiple objects
*CircuitID::HolidaysApi* | [**get_holiday**](docs/HolidaysApi.md#get_holiday) | **GET** /holidays/{id} | Get object by id
*CircuitID::HolidaysApi* | [**patch_holiday**](docs/HolidaysApi.md#patch_holiday) | **PATCH** /holidays/{id} | Patch object's data
*CircuitID::HolidaysApi* | [**remove_holiday**](docs/HolidaysApi.md#remove_holiday) | **DELETE** /holidays/{id} | Delete object by id
*CircuitID::InfoApi* | [**get_info**](docs/InfoApi.md#get_info) | **GET** /info | Get object
*CircuitID::InvoiceItemsApi* | [**find_invoice_items**](docs/InvoiceItemsApi.md#find_invoice_items) | **GET** /invoiceitems | Find multiple objects
*CircuitID::InvoiceItemsApi* | [**get_invoice_item**](docs/InvoiceItemsApi.md#get_invoice_item) | **GET** /invoiceitems/{id} | Get object by id
*CircuitID::InvoicesApi* | [**find_invoices**](docs/InvoicesApi.md#find_invoices) | **GET** /invoices | Find multiple objects
*CircuitID::InvoicesApi* | [**get_invoice**](docs/InvoicesApi.md#get_invoice) | **GET** /invoices/{id} | Get object by id
*CircuitID::LicensesApi* | [**create_license**](docs/LicensesApi.md#create_license) | **POST** /licenses | Create a new object
*CircuitID::LicensesApi* | [**find_licenses**](docs/LicensesApi.md#find_licenses) | **GET** /licenses | Find multiple objects
*CircuitID::LicensesApi* | [**get_license**](docs/LicensesApi.md#get_license) | **GET** /licenses/{id} | Get object by id
*CircuitID::LicensesApi* | [**patch_license**](docs/LicensesApi.md#patch_license) | **PATCH** /licenses/{id} | Patch object's data
*CircuitID::LicensesApi* | [**remove_license**](docs/LicensesApi.md#remove_license) | **DELETE** /licenses/{id} | Delete object by id
*CircuitID::MenuOptionsApi* | [**create_menu_option**](docs/MenuOptionsApi.md#create_menu_option) | **POST** /menuoptions | Create a new object
*CircuitID::MenuOptionsApi* | [**find_menu_options**](docs/MenuOptionsApi.md#find_menu_options) | **GET** /menuoptions | Find multiple objects
*CircuitID::MenuOptionsApi* | [**get_menu_option**](docs/MenuOptionsApi.md#get_menu_option) | **GET** /menuoptions/{id} | Get object by id
*CircuitID::MenuOptionsApi* | [**patch_menu_option**](docs/MenuOptionsApi.md#patch_menu_option) | **PATCH** /menuoptions/{id} | Patch object's data
*CircuitID::MenuOptionsApi* | [**remove_menu_option**](docs/MenuOptionsApi.md#remove_menu_option) | **DELETE** /menuoptions/{id} | Delete object by id
*CircuitID::MenusApi* | [**create_menu**](docs/MenusApi.md#create_menu) | **POST** /menus | Create a new object
*CircuitID::MenusApi* | [**find_menus**](docs/MenusApi.md#find_menus) | **GET** /menus | Find multiple objects
*CircuitID::MenusApi* | [**get_menu**](docs/MenusApi.md#get_menu) | **GET** /menus/{id} | Get object by id
*CircuitID::MenusApi* | [**patch_menu**](docs/MenusApi.md#patch_menu) | **PATCH** /menus/{id} | Patch object's data
*CircuitID::MenusApi* | [**remove_menu**](docs/MenusApi.md#remove_menu) | **DELETE** /menus/{id} | Delete object by id
*CircuitID::MessageBrandsApi* | [**create_message_brand**](docs/MessageBrandsApi.md#create_message_brand) | **POST** /messagebrands | Create a new object
*CircuitID::MessageBrandsApi* | [**find_message_brands**](docs/MessageBrandsApi.md#find_message_brands) | **GET** /messagebrands | Find multiple objects
*CircuitID::MessageBrandsApi* | [**get_message_brand**](docs/MessageBrandsApi.md#get_message_brand) | **GET** /messagebrands/{id} | Get object by id
*CircuitID::MessageBrandsApi* | [**patch_message_brand**](docs/MessageBrandsApi.md#patch_message_brand) | **PATCH** /messagebrands/{id} | Patch object's data
*CircuitID::MessageBrandsApi* | [**remove_message_brand**](docs/MessageBrandsApi.md#remove_message_brand) | **DELETE** /messagebrands/{id} | Delete object by id
*CircuitID::MessageCampaignsApi* | [**create_message_campaign**](docs/MessageCampaignsApi.md#create_message_campaign) | **POST** /messagecampaigns | Create a new object
*CircuitID::MessageCampaignsApi* | [**find_message_campaigns**](docs/MessageCampaignsApi.md#find_message_campaigns) | **GET** /messagecampaigns | Find multiple objects
*CircuitID::MessageCampaignsApi* | [**get_message_campaign**](docs/MessageCampaignsApi.md#get_message_campaign) | **GET** /messagecampaigns/{id} | Get object by id
*CircuitID::MessageCampaignsApi* | [**patch_message_campaign**](docs/MessageCampaignsApi.md#patch_message_campaign) | **PATCH** /messagecampaigns/{id} | Patch object's data
*CircuitID::MessageCampaignsApi* | [**remove_message_campaign**](docs/MessageCampaignsApi.md#remove_message_campaign) | **DELETE** /messagecampaigns/{id} | Delete object by id
*CircuitID::NumberPortsApi* | [**create_number_port**](docs/NumberPortsApi.md#create_number_port) | **POST** /numberports | Create a new object
*CircuitID::NumberPortsApi* | [**find_number_ports**](docs/NumberPortsApi.md#find_number_ports) | **GET** /numberports | Find multiple objects
*CircuitID::NumberPortsApi* | [**get_number_port**](docs/NumberPortsApi.md#get_number_port) | **GET** /numberports/{id} | Get object by id
*CircuitID::NumberPortsApi* | [**patch_number_port**](docs/NumberPortsApi.md#patch_number_port) | **PATCH** /numberports/{id} | Patch object's data
*CircuitID::NumbersApi* | [**find_numbers**](docs/NumbersApi.md#find_numbers) | **GET** /numbers | Find multiple objects
*CircuitID::NumbersApi* | [**get_number**](docs/NumbersApi.md#get_number) | **GET** /numbers/{id} | Get object by id
*CircuitID::NumbersApi* | [**patch_number**](docs/NumbersApi.md#patch_number) | **PATCH** /numbers/{id} | Patch object's data
*CircuitID::OfficesApi* | [**create_office**](docs/OfficesApi.md#create_office) | **POST** /offices | Create a new object
*CircuitID::OfficesApi* | [**find_offices**](docs/OfficesApi.md#find_offices) | **GET** /offices | Find multiple objects
*CircuitID::OfficesApi* | [**get_office**](docs/OfficesApi.md#get_office) | **GET** /offices/{id} | Get object by id
*CircuitID::OfficesApi* | [**patch_office**](docs/OfficesApi.md#patch_office) | **PATCH** /offices/{id} | Patch object's data
*CircuitID::OfficesApi* | [**remove_office**](docs/OfficesApi.md#remove_office) | **DELETE** /offices/{id} | Delete object by id
*CircuitID::PhoneInboundRuleActionsApi* | [**create_phone_inbound_rule_action**](docs/PhoneInboundRuleActionsApi.md#create_phone_inbound_rule_action) | **POST** /phoneinboundruleactions | Create a new object
*CircuitID::PhoneInboundRuleActionsApi* | [**find_phone_inbound_rule_actions**](docs/PhoneInboundRuleActionsApi.md#find_phone_inbound_rule_actions) | **GET** /phoneinboundruleactions | Find multiple objects
*CircuitID::PhoneInboundRuleActionsApi* | [**get_phone_inbound_rule_action**](docs/PhoneInboundRuleActionsApi.md#get_phone_inbound_rule_action) | **GET** /phoneinboundruleactions/{id} | Get object by id
*CircuitID::PhoneInboundRuleActionsApi* | [**patch_phone_inbound_rule_action**](docs/PhoneInboundRuleActionsApi.md#patch_phone_inbound_rule_action) | **PATCH** /phoneinboundruleactions/{id} | Patch object's data
*CircuitID::PhoneInboundRuleActionsApi* | [**remove_phone_inbound_rule_action**](docs/PhoneInboundRuleActionsApi.md#remove_phone_inbound_rule_action) | **DELETE** /phoneinboundruleactions/{id} | Delete object by id
*CircuitID::PhoneInboundRulesApi* | [**create_phone_inbound_rule**](docs/PhoneInboundRulesApi.md#create_phone_inbound_rule) | **POST** /phoneinboundrules | Create a new object
*CircuitID::PhoneInboundRulesApi* | [**find_phone_inbound_rules**](docs/PhoneInboundRulesApi.md#find_phone_inbound_rules) | **GET** /phoneinboundrules | Find multiple objects
*CircuitID::PhoneInboundRulesApi* | [**get_phone_inbound_rule**](docs/PhoneInboundRulesApi.md#get_phone_inbound_rule) | **GET** /phoneinboundrules/{id} | Get object by id
*CircuitID::PhoneInboundRulesApi* | [**patch_phone_inbound_rule**](docs/PhoneInboundRulesApi.md#patch_phone_inbound_rule) | **PATCH** /phoneinboundrules/{id} | Patch object's data
*CircuitID::PhoneInboundRulesApi* | [**remove_phone_inbound_rule**](docs/PhoneInboundRulesApi.md#remove_phone_inbound_rule) | **DELETE** /phoneinboundrules/{id} | Delete object by id
*CircuitID::PhoneOutboundRuleActionsApi* | [**create_phone_outbound_rule_action**](docs/PhoneOutboundRuleActionsApi.md#create_phone_outbound_rule_action) | **POST** /phoneoutboundruleactions | Create a new object
*CircuitID::PhoneOutboundRuleActionsApi* | [**find_phone_outbound_rule_actions**](docs/PhoneOutboundRuleActionsApi.md#find_phone_outbound_rule_actions) | **GET** /phoneoutboundruleactions | Find multiple objects
*CircuitID::PhoneOutboundRuleActionsApi* | [**get_phone_outbound_rule_action**](docs/PhoneOutboundRuleActionsApi.md#get_phone_outbound_rule_action) | **GET** /phoneoutboundruleactions/{id} | Get object by id
*CircuitID::PhoneOutboundRuleActionsApi* | [**patch_phone_outbound_rule_action**](docs/PhoneOutboundRuleActionsApi.md#patch_phone_outbound_rule_action) | **PATCH** /phoneoutboundruleactions/{id} | Patch object's data
*CircuitID::PhoneOutboundRuleActionsApi* | [**remove_phone_outbound_rule_action**](docs/PhoneOutboundRuleActionsApi.md#remove_phone_outbound_rule_action) | **DELETE** /phoneoutboundruleactions/{id} | Delete object by id
*CircuitID::PhoneOutboundRulesApi* | [**create_phone_outbound_rule**](docs/PhoneOutboundRulesApi.md#create_phone_outbound_rule) | **POST** /phoneoutboundrules | Create a new object
*CircuitID::PhoneOutboundRulesApi* | [**find_phone_outbound_rules**](docs/PhoneOutboundRulesApi.md#find_phone_outbound_rules) | **GET** /phoneoutboundrules | Find multiple objects
*CircuitID::PhoneOutboundRulesApi* | [**get_phone_outbound_rule**](docs/PhoneOutboundRulesApi.md#get_phone_outbound_rule) | **GET** /phoneoutboundrules/{id} | Get object by id
*CircuitID::PhoneOutboundRulesApi* | [**patch_phone_outbound_rule**](docs/PhoneOutboundRulesApi.md#patch_phone_outbound_rule) | **PATCH** /phoneoutboundrules/{id} | Patch object's data
*CircuitID::PhoneOutboundRulesApi* | [**remove_phone_outbound_rule**](docs/PhoneOutboundRulesApi.md#remove_phone_outbound_rule) | **DELETE** /phoneoutboundrules/{id} | Delete object by id
*CircuitID::RateCentersApi* | [**find_rate_centers**](docs/RateCentersApi.md#find_rate_centers) | **GET** /ratecenters | Find multiple objects
*CircuitID::RateCentersApi* | [**get_rate_center**](docs/RateCentersApi.md#get_rate_center) | **GET** /ratecenters/{id} | Get object by id
*CircuitID::ServersApi* | [**create_server**](docs/ServersApi.md#create_server) | **POST** /servers | Create a new object
*CircuitID::ServersApi* | [**find_servers**](docs/ServersApi.md#find_servers) | **GET** /servers | Find multiple objects
*CircuitID::ServersApi* | [**get_server**](docs/ServersApi.md#get_server) | **GET** /servers/{id} | Get object by id
*CircuitID::ServersApi* | [**patch_server**](docs/ServersApi.md#patch_server) | **PATCH** /servers/{id} | Patch object's data
*CircuitID::ServersApi* | [**remove_server**](docs/ServersApi.md#remove_server) | **DELETE** /servers/{id} | Delete object by id
*CircuitID::TimeSchedulesApi* | [**create_time_schedule**](docs/TimeSchedulesApi.md#create_time_schedule) | **POST** /timeschedules | Create a new object
*CircuitID::TimeSchedulesApi* | [**find_time_schedules**](docs/TimeSchedulesApi.md#find_time_schedules) | **GET** /timeschedules | Find multiple objects
*CircuitID::TimeSchedulesApi* | [**get_time_schedule**](docs/TimeSchedulesApi.md#get_time_schedule) | **GET** /timeschedules/{id} | Get object by id
*CircuitID::TimeSchedulesApi* | [**patch_time_schedule**](docs/TimeSchedulesApi.md#patch_time_schedule) | **PATCH** /timeschedules/{id} | Patch object's data
*CircuitID::TimeSchedulesApi* | [**remove_time_schedule**](docs/TimeSchedulesApi.md#remove_time_schedule) | **DELETE** /timeschedules/{id} | Delete object by id
*CircuitID::UserTokensApi* | [**create_user_token**](docs/UserTokensApi.md#create_user_token) | **POST** /usertokens | Create a new object
*CircuitID::UserTokensApi* | [**find_user_tokens**](docs/UserTokensApi.md#find_user_tokens) | **GET** /usertokens | Find multiple objects
*CircuitID::UserTokensApi* | [**get_user_token**](docs/UserTokensApi.md#get_user_token) | **GET** /usertokens/{id} | Get object by id
*CircuitID::UserTokensApi* | [**patch_user_token**](docs/UserTokensApi.md#patch_user_token) | **PATCH** /usertokens/{id} | Patch object's data
*CircuitID::UserTokensApi* | [**remove_user_token**](docs/UserTokensApi.md#remove_user_token) | **DELETE** /usertokens/{id} | Delete object by id
*CircuitID::UsersApi* | [**create_user**](docs/UsersApi.md#create_user) | **POST** /users | Create a new object
*CircuitID::UsersApi* | [**find_users**](docs/UsersApi.md#find_users) | **GET** /users | Find multiple objects
*CircuitID::UsersApi* | [**get_user**](docs/UsersApi.md#get_user) | **GET** /users/{id} | Get object by id
*CircuitID::UsersApi* | [**patch_user**](docs/UsersApi.md#patch_user) | **PATCH** /users/{id} | Patch object's data
*CircuitID::UsersApi* | [**remove_user**](docs/UsersApi.md#remove_user) | **DELETE** /users/{id} | Delete object by id
*CircuitID::VirtualExtensionsApi* | [**create_virtual_extension**](docs/VirtualExtensionsApi.md#create_virtual_extension) | **POST** /virtualextensions | Create a new object
*CircuitID::VirtualExtensionsApi* | [**find_virtual_extensions**](docs/VirtualExtensionsApi.md#find_virtual_extensions) | **GET** /virtualextensions | Find multiple objects
*CircuitID::VirtualExtensionsApi* | [**get_virtual_extension**](docs/VirtualExtensionsApi.md#get_virtual_extension) | **GET** /virtualextensions/{id} | Get object by id
*CircuitID::VirtualExtensionsApi* | [**patch_virtual_extension**](docs/VirtualExtensionsApi.md#patch_virtual_extension) | **PATCH** /virtualextensions/{id} | Patch object's data
*CircuitID::VirtualExtensionsApi* | [**remove_virtual_extension**](docs/VirtualExtensionsApi.md#remove_virtual_extension) | **DELETE** /virtualextensions/{id} | Delete object by id
*CircuitID::VoicemailApi* | [**find_voicemail**](docs/VoicemailApi.md#find_voicemail) | **GET** /voicemail | Find multiple objects
*CircuitID::VoicemailApi* | [**get_voicemail**](docs/VoicemailApi.md#get_voicemail) | **GET** /voicemail/{id} | Get object by id


## Documentation for Models

 - [CircuitID::Acceptedsenders](docs/Acceptedsenders.md)
 - [CircuitID::Announcements](docs/Announcements.md)
 - [CircuitID::Authentication](docs/Authentication.md)
 - [CircuitID::Callqueueagents](docs/Callqueueagents.md)
 - [CircuitID::Callqueues](docs/Callqueues.md)
 - [CircuitID::Chatrooms](docs/Chatrooms.md)
 - [CircuitID::Clients](docs/Clients.md)
 - [CircuitID::Conferencerooms](docs/Conferencerooms.md)
 - [CircuitID::Contacts](docs/Contacts.md)
 - [CircuitID::Conversationmessages](docs/Conversationmessages.md)
 - [CircuitID::Conversations](docs/Conversations.md)
 - [CircuitID::Customers](docs/Customers.md)
 - [CircuitID::Developerapps](docs/Developerapps.md)
 - [CircuitID::Developerappsubscriptions](docs/Developerappsubscriptions.md)
 - [CircuitID::Directories](docs/Directories.md)
 - [CircuitID::Domains](docs/Domains.md)
 - [CircuitID::Faxaccounts](docs/Faxaccounts.md)
 - [CircuitID::Faxes](docs/Faxes.md)
 - [CircuitID::Find](docs/Find.md)
 - [CircuitID::FindAcceptedSenders200Response](docs/FindAcceptedSenders200Response.md)
 - [CircuitID::FindAnnouncements200Response](docs/FindAnnouncements200Response.md)
 - [CircuitID::FindCallQueueAgents200Response](docs/FindCallQueueAgents200Response.md)
 - [CircuitID::FindCallQueues200Response](docs/FindCallQueues200Response.md)
 - [CircuitID::FindChatRooms200Response](docs/FindChatRooms200Response.md)
 - [CircuitID::FindClients200Response](docs/FindClients200Response.md)
 - [CircuitID::FindConferenceRooms200Response](docs/FindConferenceRooms200Response.md)
 - [CircuitID::FindContacts200Response](docs/FindContacts200Response.md)
 - [CircuitID::FindConversationMessages200Response](docs/FindConversationMessages200Response.md)
 - [CircuitID::FindConversations200Response](docs/FindConversations200Response.md)
 - [CircuitID::FindCustomers200Response](docs/FindCustomers200Response.md)
 - [CircuitID::FindDeveloperAppSubscriptions200Response](docs/FindDeveloperAppSubscriptions200Response.md)
 - [CircuitID::FindDeveloperApps200Response](docs/FindDeveloperApps200Response.md)
 - [CircuitID::FindDirectories200Response](docs/FindDirectories200Response.md)
 - [CircuitID::FindDomains200Response](docs/FindDomains200Response.md)
 - [CircuitID::FindFaxAccounts200Response](docs/FindFaxAccounts200Response.md)
 - [CircuitID::FindFaxes200Response](docs/FindFaxes200Response.md)
 - [CircuitID::FindFirewall200Response](docs/FindFirewall200Response.md)
 - [CircuitID::FindGroupMembers200Response](docs/FindGroupMembers200Response.md)
 - [CircuitID::FindGroups200Response](docs/FindGroups200Response.md)
 - [CircuitID::FindHolidays200Response](docs/FindHolidays200Response.md)
 - [CircuitID::FindInvoiceItems200Response](docs/FindInvoiceItems200Response.md)
 - [CircuitID::FindInvoices200Response](docs/FindInvoices200Response.md)
 - [CircuitID::FindLicenses200Response](docs/FindLicenses200Response.md)
 - [CircuitID::FindMenuOptions200Response](docs/FindMenuOptions200Response.md)
 - [CircuitID::FindMenus200Response](docs/FindMenus200Response.md)
 - [CircuitID::FindMessageBrands200Response](docs/FindMessageBrands200Response.md)
 - [CircuitID::FindMessageCampaigns200Response](docs/FindMessageCampaigns200Response.md)
 - [CircuitID::FindNumberPorts200Response](docs/FindNumberPorts200Response.md)
 - [CircuitID::FindNumbers200Response](docs/FindNumbers200Response.md)
 - [CircuitID::FindOffices200Response](docs/FindOffices200Response.md)
 - [CircuitID::FindPhoneInboundRuleActions200Response](docs/FindPhoneInboundRuleActions200Response.md)
 - [CircuitID::FindPhoneInboundRules200Response](docs/FindPhoneInboundRules200Response.md)
 - [CircuitID::FindPhoneOutboundRuleActions200Response](docs/FindPhoneOutboundRuleActions200Response.md)
 - [CircuitID::FindPhoneOutboundRules200Response](docs/FindPhoneOutboundRules200Response.md)
 - [CircuitID::FindRateCenters200Response](docs/FindRateCenters200Response.md)
 - [CircuitID::FindServers200Response](docs/FindServers200Response.md)
 - [CircuitID::FindTimeSchedules200Response](docs/FindTimeSchedules200Response.md)
 - [CircuitID::FindUserTokens200Response](docs/FindUserTokens200Response.md)
 - [CircuitID::FindUsers200Response](docs/FindUsers200Response.md)
 - [CircuitID::FindVirtualExtensions200Response](docs/FindVirtualExtensions200Response.md)
 - [CircuitID::Firewall](docs/Firewall.md)
 - [CircuitID::Groupmembers](docs/Groupmembers.md)
 - [CircuitID::Groups](docs/Groups.md)
 - [CircuitID::Holidays](docs/Holidays.md)
 - [CircuitID::Invoiceitems](docs/Invoiceitems.md)
 - [CircuitID::Invoices](docs/Invoices.md)
 - [CircuitID::Licenses](docs/Licenses.md)
 - [CircuitID::Menuoptions](docs/Menuoptions.md)
 - [CircuitID::Menus](docs/Menus.md)
 - [CircuitID::Messagebrands](docs/Messagebrands.md)
 - [CircuitID::Messagecampaigns](docs/Messagecampaigns.md)
 - [CircuitID::Numberports](docs/Numberports.md)
 - [CircuitID::Numbers](docs/Numbers.md)
 - [CircuitID::Offices](docs/Offices.md)
 - [CircuitID::Phoneinboundruleactions](docs/Phoneinboundruleactions.md)
 - [CircuitID::Phoneinboundrules](docs/Phoneinboundrules.md)
 - [CircuitID::Phoneoutboundruleactions](docs/Phoneoutboundruleactions.md)
 - [CircuitID::Phoneoutboundrules](docs/Phoneoutboundrules.md)
 - [CircuitID::Ratecenters](docs/Ratecenters.md)
 - [CircuitID::ResponseDate](docs/ResponseDate.md)
 - [CircuitID::ResponseError](docs/ResponseError.md)
 - [CircuitID::ResponseUsers](docs/ResponseUsers.md)
 - [CircuitID::Servers](docs/Servers.md)
 - [CircuitID::Timeschedules](docs/Timeschedules.md)
 - [CircuitID::Users](docs/Users.md)
 - [CircuitID::Usertokens](docs/Usertokens.md)
 - [CircuitID::Virtualextensions](docs/Virtualextensions.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### jwt


- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

