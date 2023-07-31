=begin
#Circuit ID REST API

## Introduction Circuit ID&reg; is an innovative cloud communications platform that redefines your connectivity experience. Our cutting-edge AI-powered solution seamlessly integrates calling, meetings, messaging, voicemail, fax, SIP Trunking, mobile broadband, and mobile phone services, accessible wherever you and your devices go.                  Whether you are a beginner getting started with our API or an experienced developer looking for advanced features, this documentation site will serve as your comprehensive guide.   We are excited to have you on board and are confident that this documentation site will empower you to leverage the full potential of our REST API.  If you have any questions or require further assistance, please don't hesitate to reach out to our support team.                  Happy coding!

The version of the OpenAPI document: 0.47.20
Contact: support@circuitid.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for CircuitID::GetUser200Response
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe CircuitID::GetUser200Response do
  let(:instance) { CircuitID::GetUser200Response.new }

  describe 'test an instance of GetUser200Response' do
    it 'should create an instance of GetUser200Response' do
      expect(instance).to be_instance_of(CircuitID::GetUser200Response)
    end
  end
  describe 'test attribute "email"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "password"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "sip_password"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "turn_password"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "first"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "last"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "mobile_phone"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "business_phone"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "extension"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "custom_caller_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "job_title"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "department"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "office"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "avatar"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "language"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["fr", "en", "ja", "de", "es"])
      # validator.allowable_values.each do |value|
      #   expect { instance.language = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "is_primary"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Integer', [1, 0])
      # validator.allowable_values.each do |value|
      #   expect { instance.is_primary = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "vm_greeting_type"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["default", "mp3", "number"])
      # validator.allowable_values.each do |value|
      #   expect { instance.vm_greeting_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "vm_timeout"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "vm_file"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "vm_playback_number"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "pin"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "number"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "region"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "caller_id_number"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "admin_permission"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["r", "rw"])
      # validator.allowable_values.each do |value|
      #   expect { instance.admin_permission = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "billing_permission"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["r", "rw"])
      # validator.allowable_values.each do |value|
      #   expect { instance.billing_permission = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "phone_permission"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["r", "rw"])
      # validator.allowable_values.each do |value|
      #   expect { instance.phone_permission = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "timezone"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Europe/Andorra", "Asia/Dubai", "Asia/Kabul", "Europe/Tirane", "Asia/Yerevan", "Antarctica/Casey", "Antarctica/Davis", "Antarctica/DumontDUrville", "Antarctica/Mawson", "Antarctica/Palmer", "Antarctica/Rothera", "Antarctica/Syowa", "Antarctica/Troll", "Antarctica/Vostok", "America/Argentina/Buenos_Aires", "America/Argentina/Cordoba", "America/Argentina/Salta", "America/Argentina/Jujuy", "America/Argentina/Tucuman", "America/Argentina/Catamarca", "America/Argentina/La_Rioja", "America/Argentina/San_Juan", "America/Argentina/Mendoza", "America/Argentina/San_Luis", "America/Argentina/Rio_Gallegos", "America/Argentina/Ushuaia", "Pacific/Pago_Pago", "Europe/Vienna", "Australia/Lord_Howe", "Antarctica/Macquarie", "Australia/Hobart", "Australia/Currie", "Australia/Melbourne", "Australia/Sydney", "Australia/Broken_Hill", "Australia/Brisbane", "Australia/Lindeman", "Australia/Adelaide", "Australia/Darwin", "Australia/Perth", "Australia/Eucla", "Asia/Baku", "America/Barbados", "Asia/Dhaka", "Europe/Brussels", "Europe/Sofia", "Atlantic/Bermuda", "Asia/Brunei", "America/La_Paz", "America/Noronha", "America/Belem", "America/Fortaleza", "America/Recife", "America/Araguaina", "America/Maceio", "America/Bahia", "America/Sao_Paulo", "America/Campo_Grande", "America/Cuiaba", "America/Santarem", "America/Porto_Velho", "America/Boa_Vista", "America/Manaus", "America/Eirunepe", "America/Rio_Branco", "America/Nassau", "Asia/Thimphu", "Europe/Minsk", "America/Belize", "America/St_Johns", "America/Halifax", "America/Glace_Bay", "America/Moncton", "America/Goose_Bay", "America/Blanc-Sablon", "America/Toronto", "America/Nipigon", "America/Thunder_Bay", "America/Iqaluit", "America/Pangnirtung", "America/Atikokan", "America/Winnipeg", "America/Rainy_River", "America/Resolute", "America/Rankin_Inlet", "America/Regina", "America/Swift_Current", "America/Edmonton", "America/Cambridge_Bay", "America/Yellowknife", "America/Inuvik", "America/Creston", "America/Dawson_Creek", "America/Fort_Nelson", "America/Vancouver", "America/Whitehorse", "America/Dawson", "Indian/Cocos", "Europe/Zurich", "Africa/Abidjan", "Pacific/Rarotonga", "America/Santiago", "America/Punta_Arenas", "Pacific/Easter", "Asia/Shanghai", "Asia/Urumqi", "America/Bogota", "America/Costa_Rica", "America/Havana", "Atlantic/Cape_Verde", "America/Curacao", "Indian/Christmas", "Asia/Nicosia", "Asia/Famagusta", "Europe/Prague", "Europe/Berlin", "Europe/Copenhagen", "America/Santo_Domingo", "Africa/Algiers", "America/Guayaquil", "Pacific/Galapagos", "Europe/Tallinn", "Africa/Cairo", "Africa/El_Aaiun", "Europe/Madrid", "Africa/Ceuta", "Atlantic/Canary", "Europe/Helsinki", "Pacific/Fiji", "Atlantic/Stanley", "Pacific/Chuuk", "Pacific/Pohnpei", "Pacific/Kosrae", "Atlantic/Faroe", "Europe/Paris", "Europe/London", "Asia/Tbilisi", "America/Cayenne", "Africa/Accra", "Europe/Gibraltar", "America/Godthab", "America/Danmarkshavn", "America/Scoresbysund", "America/Thule", "Europe/Athens", "Atlantic/South_Georgia", "America/Guatemala", "Pacific/Guam", "Africa/Bissau", "America/Guyana", "Asia/Hong_Kong", "America/Tegucigalpa", "America/Port-au-Prince", "Europe/Budapest", "Asia/Jakarta", "Asia/Pontianak", "Asia/Makassar", "Asia/Jayapura", "Europe/Dublin", "Asia/Jerusalem", "Asia/Kolkata", "Indian/Chagos", "Asia/Baghdad", "Asia/Tehran", "Atlantic/Reykjavik", "Europe/Rome", "America/Jamaica", "Asia/Amman", "Asia/Tokyo", "Africa/Nairobi", "Asia/Bishkek", "Pacific/Tarawa", "Pacific/Enderbury", "Pacific/Kiritimati", "Asia/Pyongyang", "Asia/Seoul", "Asia/Almaty", "Asia/Qyzylorda", "Asia/Qostanay", "Asia/Aqtobe", "Asia/Aqtau", "Asia/Atyrau", "Asia/Oral", "Asia/Beirut", "Asia/Colombo", "Africa/Monrovia", "Europe/Vilnius", "Europe/Luxembourg", "Europe/Riga", "Africa/Tripoli", "Africa/Casablanca", "Europe/Monaco", "Europe/Chisinau", "Pacific/Majuro", "Pacific/Kwajalein", "Asia/Yangon", "Asia/Ulaanbaatar", "Asia/Hovd", "Asia/Choibalsan", "Asia/Macau", "America/Martinique", "Europe/Malta", "Indian/Mauritius", "Indian/Maldives", "America/Mexico_City", "America/Cancun", "America/Merida", "America/Monterrey", "America/Matamoros", "America/Mazatlan", "America/Chihuahua", "America/Ojinaga", "America/Hermosillo", "America/Tijuana", "America/Bahia_Banderas", "Asia/Kuala_Lumpur", "Asia/Kuching", "Africa/Maputo", "Africa/Windhoek", "Pacific/Noumea", "Pacific/Norfolk", "Africa/Lagos", "America/Managua", "Europe/Amsterdam", "Europe/Oslo", "Asia/Kathmandu", "Pacific/Nauru", "Pacific/Niue", "Pacific/Auckland", "Pacific/Chatham", "America/Panama", "America/Lima", "Pacific/Tahiti", "Pacific/Marquesas", "Pacific/Gambier", "Pacific/Port_Moresby", "Pacific/Bougainville", "Asia/Manila", "Asia/Karachi", "Europe/Warsaw", "America/Miquelon", "Pacific/Pitcairn", "America/Puerto_Rico", "Asia/Gaza", "Asia/Hebron", "Europe/Lisbon", "Atlantic/Madeira", "Atlantic/Azores", "Pacific/Palau", "America/Asuncion", "Asia/Qatar", "Indian/Reunion", "Europe/Bucharest", "Europe/Belgrade", "Europe/Kaliningrad", "Europe/Moscow", "Europe/Simferopol", "Europe/Kirov", "Europe/Astrakhan", "Europe/Volgograd", "Europe/Saratov", "Europe/Ulyanovsk", "Europe/Samara", "Asia/Yekaterinburg", "Asia/Omsk", "Asia/Novosibirsk", "Asia/Barnaul", "Asia/Tomsk", "Asia/Novokuznetsk", "Asia/Krasnoyarsk", "Asia/Irkutsk", "Asia/Chita", "Asia/Yakutsk", "Asia/Khandyga", "Asia/Vladivostok", "Asia/Ust-Nera", "Asia/Magadan", "Asia/Sakhalin", "Asia/Srednekolymsk", "Asia/Kamchatka", "Asia/Anadyr", "Asia/Riyadh", "Pacific/Guadalcanal", "Indian/Mahe", "Africa/Khartoum", "Europe/Stockholm", "Asia/Singapore", "America/Paramaribo", "Africa/Juba", "Africa/Sao_Tome", "America/El_Salvador", "Asia/Damascus", "America/Grand_Turk", "Africa/Ndjamena", "Indian/Kerguelen", "Asia/Bangkok", "Asia/Dushanbe", "Pacific/Fakaofo", "Asia/Dili", "Asia/Ashgabat", "Africa/Tunis", "Pacific/Tongatapu", "Europe/Istanbul", "America/Port_of_Spain", "Pacific/Funafuti", "Asia/Taipei", "Europe/Kiev", "Europe/Uzhgorod", "Europe/Zaporozhye", "Pacific/Wake", "America/New_York", "America/Detroit", "America/Kentucky/Louisville", "America/Kentucky/Monticello", "America/Indiana/Indianapolis", "America/Indiana/Vincennes", "America/Indiana/Winamac", "America/Indiana/Marengo", "America/Indiana/Petersburg", "America/Indiana/Vevay", "America/Chicago", "America/Indiana/Tell_City", "America/Indiana/Knox", "America/Menominee", "America/North_Dakota/Center", "America/North_Dakota/New_Salem", "America/North_Dakota/Beulah", "America/Denver", "America/Boise", "America/Phoenix", "America/Los_Angeles", "America/Anchorage", "America/Juneau", "America/Sitka", "America/Metlakatla", "America/Yakutat", "America/Nome", "America/Adak", "Pacific/Honolulu", "America/Montevideo", "Asia/Samarkand", "Asia/Tashkent", "America/Caracas", "Asia/Ho_Chi_Minh", "Pacific/Efate", "Pacific/Wallis", "Pacific/Apia", "Africa/Johannesburg"])
      # validator.allowable_values.each do |value|
      #   expect { instance.timezone = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "vm_transcription"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Integer', [1, 0])
      # validator.allowable_values.each do |value|
      #   expect { instance.vm_transcription = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "communication"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "created_by_user_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "updated_by_user_id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "created_at"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "updated_at"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
