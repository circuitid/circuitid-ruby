=begin
#Circuit ID REST API

## Introduction Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.                  Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide.   We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.                  Happy coding!

The version of the OpenAPI document: 0.47.22
Contact: support@circuitid.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

# Common files
require 'circuitid-ruby/api_client'
require 'circuitid-ruby/api_error'
require 'circuitid-ruby/version'
require 'circuitid-ruby/configuration'

# Models
require 'circuitid-ruby/models/acceptedsenders'
require 'circuitid-ruby/models/acceptedsenders_create_or_patch'
require 'circuitid-ruby/models/announcements'
require 'circuitid-ruby/models/announcements_create_or_patch'
require 'circuitid-ruby/models/authentication'
require 'circuitid-ruby/models/authentication_create_or_patch'
require 'circuitid-ruby/models/callqueueagents'
require 'circuitid-ruby/models/callqueueagents_create_or_patch'
require 'circuitid-ruby/models/callqueues'
require 'circuitid-ruby/models/callqueues_create_or_patch'
require 'circuitid-ruby/models/chatrooms'
require 'circuitid-ruby/models/chatrooms_create_or_patch'
require 'circuitid-ruby/models/clients'
require 'circuitid-ruby/models/clients_create_or_patch'
require 'circuitid-ruby/models/conferencerooms'
require 'circuitid-ruby/models/conferencerooms_create_or_patch'
require 'circuitid-ruby/models/contacts'
require 'circuitid-ruby/models/contacts_create_or_patch'
require 'circuitid-ruby/models/conversationmessages'
require 'circuitid-ruby/models/conversationmessages_create_or_patch'
require 'circuitid-ruby/models/conversations'
require 'circuitid-ruby/models/conversations_create_or_patch'
require 'circuitid-ruby/models/create_authentication200_response'
require 'circuitid-ruby/models/customers'
require 'circuitid-ruby/models/customers_create_or_patch'
require 'circuitid-ruby/models/developerapps'
require 'circuitid-ruby/models/developerapps_create_or_patch'
require 'circuitid-ruby/models/developerappsubscriptions'
require 'circuitid-ruby/models/developerappsubscriptions_create_or_patch'
require 'circuitid-ruby/models/directories'
require 'circuitid-ruby/models/directories_create_or_patch'
require 'circuitid-ruby/models/domains'
require 'circuitid-ruby/models/domains_create_or_patch'
require 'circuitid-ruby/models/faxaccounts'
require 'circuitid-ruby/models/faxaccounts_create_or_patch'
require 'circuitid-ruby/models/faxes'
require 'circuitid-ruby/models/faxes_create_or_patch'
require 'circuitid-ruby/models/find'
require 'circuitid-ruby/models/find_accepted_senders200_response'
require 'circuitid-ruby/models/find_announcements200_response'
require 'circuitid-ruby/models/find_app_marketplace200_response'
require 'circuitid-ruby/models/find_call_queue_agents200_response'
require 'circuitid-ruby/models/find_call_queues200_response'
require 'circuitid-ruby/models/find_chat_rooms200_response'
require 'circuitid-ruby/models/find_clients200_response'
require 'circuitid-ruby/models/find_conference_rooms200_response'
require 'circuitid-ruby/models/find_contacts200_response'
require 'circuitid-ruby/models/find_conversation_messages200_response'
require 'circuitid-ruby/models/find_conversations200_response'
require 'circuitid-ruby/models/find_customers200_response'
require 'circuitid-ruby/models/find_developer_app_subscriptions200_response'
require 'circuitid-ruby/models/find_developer_apps200_response'
require 'circuitid-ruby/models/find_directories200_response'
require 'circuitid-ruby/models/find_domains200_response'
require 'circuitid-ruby/models/find_fax_accounts200_response'
require 'circuitid-ruby/models/find_faxes200_response'
require 'circuitid-ruby/models/find_firewall200_response'
require 'circuitid-ruby/models/find_group_members200_response'
require 'circuitid-ruby/models/find_groups200_response'
require 'circuitid-ruby/models/find_holidays200_response'
require 'circuitid-ruby/models/find_invoice_items200_response'
require 'circuitid-ruby/models/find_invoices200_response'
require 'circuitid-ruby/models/find_licenses200_response'
require 'circuitid-ruby/models/find_menu_options200_response'
require 'circuitid-ruby/models/find_menus200_response'
require 'circuitid-ruby/models/find_message_brands200_response'
require 'circuitid-ruby/models/find_message_campaigns200_response'
require 'circuitid-ruby/models/find_number_ports200_response'
require 'circuitid-ruby/models/find_numbers200_response'
require 'circuitid-ruby/models/find_offices200_response'
require 'circuitid-ruby/models/find_phone_inbound_rule_actions200_response'
require 'circuitid-ruby/models/find_phone_inbound_rules200_response'
require 'circuitid-ruby/models/find_phone_outbound_rule_actions200_response'
require 'circuitid-ruby/models/find_phone_outbound_rules200_response'
require 'circuitid-ruby/models/find_rate_centers200_response'
require 'circuitid-ruby/models/find_servers200_response'
require 'circuitid-ruby/models/find_time_schedules200_response'
require 'circuitid-ruby/models/find_user_tokens200_response'
require 'circuitid-ruby/models/find_users200_response'
require 'circuitid-ruby/models/find_virtual_extensions200_response'
require 'circuitid-ruby/models/firewall'
require 'circuitid-ruby/models/firewall_create_or_patch'
require 'circuitid-ruby/models/get_accepted_sender200_response'
require 'circuitid-ruby/models/get_announcement200_response'
require 'circuitid-ruby/models/get_call_queue200_response'
require 'circuitid-ruby/models/get_call_queue_agent200_response'
require 'circuitid-ruby/models/get_chat_room200_response'
require 'circuitid-ruby/models/get_client200_response'
require 'circuitid-ruby/models/get_conference_room200_response'
require 'circuitid-ruby/models/get_contact200_response'
require 'circuitid-ruby/models/get_conversation200_response'
require 'circuitid-ruby/models/get_conversation_message200_response'
require 'circuitid-ruby/models/get_customer200_response'
require 'circuitid-ruby/models/get_developer_app200_response'
require 'circuitid-ruby/models/get_developer_app_subscription200_response'
require 'circuitid-ruby/models/get_domain200_response'
require 'circuitid-ruby/models/get_fax200_response'
require 'circuitid-ruby/models/get_fax_account200_response'
require 'circuitid-ruby/models/get_firewall200_response'
require 'circuitid-ruby/models/get_group200_response'
require 'circuitid-ruby/models/get_group_member200_response'
require 'circuitid-ruby/models/get_holiday200_response'
require 'circuitid-ruby/models/get_invoice200_response'
require 'circuitid-ruby/models/get_invoice_item200_response'
require 'circuitid-ruby/models/get_license200_response'
require 'circuitid-ruby/models/get_menu200_response'
require 'circuitid-ruby/models/get_menu_option200_response'
require 'circuitid-ruby/models/get_message_brand200_response'
require 'circuitid-ruby/models/get_message_campaign200_response'
require 'circuitid-ruby/models/get_number200_response'
require 'circuitid-ruby/models/get_number_port200_response'
require 'circuitid-ruby/models/get_office200_response'
require 'circuitid-ruby/models/get_phone_inbound_rule200_response'
require 'circuitid-ruby/models/get_phone_inbound_rule_action200_response'
require 'circuitid-ruby/models/get_phone_outbound_rule200_response'
require 'circuitid-ruby/models/get_phone_outbound_rule_action200_response'
require 'circuitid-ruby/models/get_rate_center200_response'
require 'circuitid-ruby/models/get_server200_response'
require 'circuitid-ruby/models/get_time_schedule200_response'
require 'circuitid-ruby/models/get_user200_response'
require 'circuitid-ruby/models/get_user_token200_response'
require 'circuitid-ruby/models/get_virtual_extension200_response'
require 'circuitid-ruby/models/getdirectory200_response'
require 'circuitid-ruby/models/groupmembers'
require 'circuitid-ruby/models/groupmembers_create_or_patch'
require 'circuitid-ruby/models/groups'
require 'circuitid-ruby/models/groups_create_or_patch'
require 'circuitid-ruby/models/holidays'
require 'circuitid-ruby/models/holidays_create_or_patch'
require 'circuitid-ruby/models/id'
require 'circuitid-ruby/models/invoiceitems'
require 'circuitid-ruby/models/invoices'
require 'circuitid-ruby/models/licenses'
require 'circuitid-ruby/models/licenses_create_or_patch'
require 'circuitid-ruby/models/menuoptions'
require 'circuitid-ruby/models/menuoptions_create_or_patch'
require 'circuitid-ruby/models/menus'
require 'circuitid-ruby/models/menus_create_or_patch'
require 'circuitid-ruby/models/messagebrands'
require 'circuitid-ruby/models/messagebrands_create_or_patch'
require 'circuitid-ruby/models/messagecampaigns'
require 'circuitid-ruby/models/messagecampaigns_create_or_patch'
require 'circuitid-ruby/models/numberports'
require 'circuitid-ruby/models/numberports_create_or_patch'
require 'circuitid-ruby/models/numbers'
require 'circuitid-ruby/models/numbers_create_or_patch'
require 'circuitid-ruby/models/offices'
require 'circuitid-ruby/models/offices_create_or_patch'
require 'circuitid-ruby/models/phoneinboundruleactions'
require 'circuitid-ruby/models/phoneinboundruleactions_create_or_patch'
require 'circuitid-ruby/models/phoneinboundrules'
require 'circuitid-ruby/models/phoneinboundrules_create_or_patch'
require 'circuitid-ruby/models/phoneoutboundruleactions'
require 'circuitid-ruby/models/phoneoutboundruleactions_create_or_patch'
require 'circuitid-ruby/models/phoneoutboundrules'
require 'circuitid-ruby/models/phoneoutboundrules_create_or_patch'
require 'circuitid-ruby/models/ratecenters'
require 'circuitid-ruby/models/response_date'
require 'circuitid-ruby/models/response_error'
require 'circuitid-ruby/models/response_users'
require 'circuitid-ruby/models/servers'
require 'circuitid-ruby/models/servers_create_or_patch'
require 'circuitid-ruby/models/timeschedules'
require 'circuitid-ruby/models/timeschedules_create_or_patch'
require 'circuitid-ruby/models/timeschedules_sunday'
require 'circuitid-ruby/models/timeschedules_sunday_schedules_inner'
require 'circuitid-ruby/models/users'
require 'circuitid-ruby/models/users_communication'
require 'circuitid-ruby/models/users_communication_notifications'
require 'circuitid-ruby/models/users_communication_web'
require 'circuitid-ruby/models/users_create_or_patch'
require 'circuitid-ruby/models/usertokens'
require 'circuitid-ruby/models/usertokens_create_or_patch'
require 'circuitid-ruby/models/virtualextensions'
require 'circuitid-ruby/models/virtualextensions_create_or_patch'

# APIs
require 'circuitid-ruby/api/accepted_senders_api'
require 'circuitid-ruby/api/announcements_api'
require 'circuitid-ruby/api/app_marketplace_api'
require 'circuitid-ruby/api/authentication_api'
require 'circuitid-ruby/api/call_queue_agents_api'
require 'circuitid-ruby/api/call_queues_api'
require 'circuitid-ruby/api/chat_rooms_api'
require 'circuitid-ruby/api/clients_api'
require 'circuitid-ruby/api/conference_numbers_api'
require 'circuitid-ruby/api/conference_rooms_api'
require 'circuitid-ruby/api/contacts_api'
require 'circuitid-ruby/api/conversation_messages_api'
require 'circuitid-ruby/api/conversations_api'
require 'circuitid-ruby/api/customers_api'
require 'circuitid-ruby/api/dns_records_api'
require 'circuitid-ruby/api/developer_app_subscriptions_api'
require 'circuitid-ruby/api/developer_apps_api'
require 'circuitid-ruby/api/directories_api'
require 'circuitid-ruby/api/domains_api'
require 'circuitid-ruby/api/fax_accounts_api'
require 'circuitid-ruby/api/faxes_api'
require 'circuitid-ruby/api/find_numbers_api'
require 'circuitid-ruby/api/firewall_api'
require 'circuitid-ruby/api/group_members_api'
require 'circuitid-ruby/api/groups_api'
require 'circuitid-ruby/api/holidays_api'
require 'circuitid-ruby/api/info_api'
require 'circuitid-ruby/api/invoice_items_api'
require 'circuitid-ruby/api/invoices_api'
require 'circuitid-ruby/api/licenses_api'
require 'circuitid-ruby/api/menu_options_api'
require 'circuitid-ruby/api/menus_api'
require 'circuitid-ruby/api/message_brands_api'
require 'circuitid-ruby/api/message_campaigns_api'
require 'circuitid-ruby/api/number_ports_api'
require 'circuitid-ruby/api/numbers_api'
require 'circuitid-ruby/api/offices_api'
require 'circuitid-ruby/api/phone_inbound_rule_actions_api'
require 'circuitid-ruby/api/phone_inbound_rules_api'
require 'circuitid-ruby/api/phone_outbound_rule_actions_api'
require 'circuitid-ruby/api/phone_outbound_rules_api'
require 'circuitid-ruby/api/rate_centers_api'
require 'circuitid-ruby/api/servers_api'
require 'circuitid-ruby/api/time_schedules_api'
require 'circuitid-ruby/api/user_tokens_api'
require 'circuitid-ruby/api/users_api'
require 'circuitid-ruby/api/virtual_extensions_api'
require 'circuitid-ruby/api/voicemail_api'

module CircuitID
  class << self
    # Customize default settings for the SDK using block.
    #   CircuitID.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
