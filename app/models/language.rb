# == Schema Information
#
# Table name: languages
#
#  id                          :integer          not null, primary key
#  prefix                      :string(4)
#  name                        :string(40)
#  active                      :integer          default(1)
#  flag                        :string(100)
#  charset                     :string(30)
#  USER_NOREG2                 :string(30)
#  EMAIL_ALREADY2              :string(30)
#  REM_PASSWORD                :string(30)
#  MONTH_SEP                   :string(30)
#  MONTH_MAR                   :string(30)
#  ALL_RECORDS                 :string(30)
#  PASSWORD_WAS_CHANGED        :string(30)
#  BETWEEN                     :string(30)
#  NO                          :string(30)
#  YES                         :string(30)
#  REGISTER                    :string(30)
#  REMINDER                    :string(30)
#  PROCEED_LOGIN               :string(30)
#  RECORDS_PP                  :string(30)
#  PLEASE_ENTER                :string(30)
#  NO_RECORDS                  :string(30)
#  FIELDS_EMAILS               :string(30)
#  EXPORT_RESULTS              :string(30)
#  ERR_LINE                    :string(30)
#  DETAILS_FOUND               :string(30)
#  ADD_NEW_RECORD              :string(30)
#  LANGUAGE                    :string(30)
#  MASTER                      :string(30)
#  REQUIRED_FIELD              :string(30)
#  RECORD_UPDATED              :string(30)
#  MONTH_OCT                   :string(30)
#  FIELDS_REQUIRED             :string(30)
#  Wendsday                    :string(30)
#  Saturday                    :string(30)
#  CSV                         :string(30)
#  ANY_FIELD                   :string(30)
#  FIELDS_TIME                 :string(30)
#  VIEW_SOURCE                 :string(30)
#  PREVIOUS                    :string(30)
#  FORGOT                      :string(30)
#  EXPORT                      :string(30)
#  DELETE_SELECTED             :string(30)
#  CLOSE_WINDOW                :string(30)
#  BACK_TO_LIST                :string(30)
#  ADVANCED_SEARCH             :string(30)
#  OLD_PASSWORD                :string(30)
#  COPY                        :string(30)
#  NEXT                        :string(30)
#  LOGED_AS                    :string(30)
#  FIELDS_DATE                 :string(30)
#  Tuesday                     :string(30)
#  CURRENT_PAGE                :string(30)
#  BACK_TO_MENU                :string(30)
#  KEEP                        :string(30)
#  QUICK_JUMP                  :string(30)
#  VIEW                        :string(30)
#  USERNAME                    :string(30)
#  MONTH_JUL                   :string(30)
#  LOGIN                       :string(30)
#  GUEST                       :string(30)
#  Sunday                      :string(30)
#  Monday                      :string(30)
#  DATE_RANGE                  :string(30)
#  CONVERT_INTEGER1            :string(30)
#  CONTAINS                    :string(30)
#  INVALID_PASSWORD            :string(30)
#  FILENAME                    :string(30)
#  ENTER_EMAIL                 :string(30)
#  SHOW_ALL                    :string(30)
#  PLEASE_SELECT               :string(30)
#  MORE                        :string(30)
#  MONTH_DESC                  :string(30)
#  LESS_THAN                   :string(30)
#  FIELDS_SSN                  :string(30)
#  EQUAL_OR_MORE               :string(30)
#  CONVERT_INTEGER2            :string(30)
#  BACK_TO_MASTER              :string(30)
#  BACK_TO_LOGIN               :string(30)
#  ADV_SEARCH                  :string(30)
#  BACK                        :string(30)
#  DELETE_CONFIRM              :string(30)
#  WERE_SENT                   :string(30)
#  SUBMIT                      :string(30)
#  STARTS_WITH                 :string(30)
#  PASSWORD_REQ                :string(30)
#  MONTH_MAY                   :string(30)
#  MONTH_JUN                   :string(30)
#  MONTH_FEB                   :string(30)
#  MONTH_APR                   :string(30)
#  LAST                        :string(30)
#  FIELDS_NUMBERS              :string(30)
#  ERR_TYPE                    :string(30)
#  CANT_BE_BLANK1              :string(30)
#  VALID_EMAIL                 :string(30)
#  REENTER                     :string(30)
#  SEARCH                      :string(30)
#  MONTH_NOV                   :string(30)
#  MONTH_AUG                   :string(30)
#  ERR_HAPPENED                :string(30)
#  Thursday                    :string(30)
#  CONN_STRING                 :string(30)
#  CANT_BE_BLANK2              :string(30)
#  EMAIL                       :string(30)
#  EMPTY                       :string(30)
#  DONT_MATCH                  :string(30)
#  TECH_INFO                   :string(30)
#  START_PAGE                  :string(30)
#  RESET                       :string(30)
#  MORE_THAN                   :string(30)
#  FIELDS_PASSWORD1            :string(30)
#  FIELDS_CURRENCY             :string(30)
#  ERR_FILE                    :string(30)
#  AVERAGE                     :string(30)
#  PASSWORDS_DONT_MATCH        :string(30)
#  SESSION_EXPIRED             :string(30)
#  USERNAME_EXISTS1            :string(30)
#  REG_SUCESS                  :string(30)
#  VIEW_RECORD                 :string(30)
#  NO_PERMISSIONS              :string(30)
#  MONTH_JAN                   :string(30)
#  LOGIN_PAGE                  :string(30)
#  FILE_NOT_FOUND1             :string(30)
#  FIELDS_PHONE                :string(30)
#  FIELDS_PASSWORD2            :string(30)
#  EQUAL_OR_LESS               :string(30)
#  EDIT                        :string(30)
#  CALENDAR                    :string(30)
#  CONFIRM_PASSWORD            :string(30)
#  UPDATE                      :string(30)
#  USERNAME_EXISTS2            :string(30)
#  CANCEL                      :string(30)
#  USERNAME_REQ                :string(30)
#  URL                         :string(30)
#  RECORD_ADDED                :string(30)
#  OUTPUT_FORMAT               :string(30)
#  LOG_OUT                     :string(30)
#  INVALID_FORMAT              :string(30)
#  FILE_NOT_FOUND2             :string(30)
#  FIELDS_PASSWORD3            :string(30)
#  COUNT                       :string(30)
#  USER_NOEMPTY                :string(30)
#  FIRST                       :string(30)
#  EDIT_RECORD                 :string(30)
#  CONVERT_DATE1               :string(30)
#  ADD_NEW                     :string(30)
#  OK                          :string(30)
#  EMAIL_DONT_EXIST            :string(30)
#  SELECT                      :string(30)
#  RECORD_INSERTED             :string(30)
#  PRINTER_FRIENDLY            :string(30)
#  INVALID_LOGIN               :string(30)
#  INVALID_KEY                 :string(30)
#  DELETE                      :string(30)
#  CONVERT_DATE2               :string(30)
#  NEW_PASSWORD                :string(30)
#  PLEASE_WAIT                 :string(30)
#  SQL QUERY                   :string(30)
#  FIELDS_ZIPCODES             :string(30)
#  CHANGE_PASSWORD             :string(30)
#  PAGE1                       :string(30)
#  TOTAL                       :string(30)
#  STORE_AS                    :string(30)
#  KEY_FIELD                   :string(30)
#  FIELDS_STATE                :string(30)
#  ERR_DESC                    :string(30)
#  Friday                      :string(30)
#  PAGE2                       :string(30)
#  USER_NOREG1                 :string(30)
#  EMAIL_ALREADY1              :string(30)
#  SEARCH_FOR                  :string(30)
#  SAVE                        :string(30)
#  PREVIOUS_MONTH              :string(30)
#  PICKUP_DATE                 :string(30)
#  PASSWORD                    :string(30)
#  NEXT_MONTH                  :string(30)
#  LONG_BINARY                 :string(30)
#  FIELDS_CC                   :string(30)
#  EQUALS                      :string(30)
#  SIMPLE_SEARCH               :string(30)
#  EXTREME_SEARCH              :string(30)
#  OCUPATION_SEARCH            :string(30)
#  NOT                         :string(30)
#  LOCATION_NEAR_PLACES        :string(30)
#  CONTINENT                   :string(30)
#  COUNTRY                     :string(30)
#  REGION                      :string(30)
#  CITY                        :string(30)
#  TYPE                        :string(30)
#  CATERING                    :string(30)
#  BEACH                       :string(30)
#  COUNTRYSIDE                 :string(30)
#  RURAL                       :string(30)
#  SKI_AREA                    :string(30)
#  MOUNTAINS                   :string(30)
#  MINIMUN_RENTAL              :string(30)
#  NUMBER_SLEEPS               :string(30)
#  INCLUDING_CHILDREN          :string(30)
#  LIVING_AREA                 :string(30)
#  NUMBER_BEDROMS              :string(30)
#  NUMBER_DOUBLES              :string(30)
#  NUMBER_TWINS                :string(30)
#  NUMBER_DOUBLE_SOFA_BEDS     :string(30)
#  NUMBER_BABY_BEDS            :string(30)
#  NUMBER_BABY_HIGHCHAIRS      :string(30)
#  NUMBER_BATHROOMS            :string(30)
#  NUMBER_SHOWER_ROOMS         :string(30)
#  NUMBER_GUEST_WC             :string(30)
#  NUMBER_ENSUITE_BATHROOMS    :string(30)
#  AIRPORT_DISTANCE            :string(30)
#  AIRPORT_NAME                :string(30)
#  BACH_DISTANCE               :string(30)
#  SHOPPING_DISTANCE           :string(30)
#  RESTAURANT_DISTANCE         :string(30)
#  BAR_DISTANCE                :string(30)
#  WATERPARK_DISTANCE          :string(30)
#  GOLF_DISTANCE               :string(30)
#  SKILIFTS_DISTANCE           :string(30)
#  MUSEUM_DISTANCE             :string(30)
#  ZOO_DISTANCE                :string(30)
#  PETS                        :string(30)
#  WHEELCHAIR                  :string(30)
#  CHILDREN                    :string(30)
#  SMOOKING                    :string(30)
#  ELDERLY_OR_INFIRM           :string(30)
#  CURRENCY                    :string(30)
#  KITCHEN                     :string(30)
#  OVE                         :string(30)
#  TOASTER                     :string(30)
#  KITCHEN_WARE                :string(30)
#  KITCHINETTE                 :string(30)
#  MICROWAVE                   :string(30)
#  COFFE_MACHINE               :string(30)
#  SEPARATE_DINING             :string(30)
#  REFRIGERATOR                :string(30)
#  DISH_WATER                  :string(30)
#  GLASSWARE                   :string(30)
#  COOKER                      :string(30)
#  FREEZER                     :string(30)
#  WASH_MACHINE                :string(30)
#  BEDLINEN                    :string(30)
#  CEILING_FANS                :string(30)
#  TELEPHONE                   :string(30)
#  ALARM                       :string(30)
#  SAFE                        :string(30)
#  SAUNA                       :string(30)
#  TOWELS                      :string(30)
#  VENTILATORS                 :string(30)
#  FAX                         :string(30)
#  TV                          :string(30)
#  STEREO                      :string(30)
#  CENTRAL_HEATING             :string(30)
#  ELECTRICAL_HEATERS          :string(30)
#  INTERNET_WIFI_CONNECTION    :string(30)
#  CABLE_SATELITE_TV           :string(30)
#  DVD                         :string(30)
#  AIR_CONDITIONING            :string(30)
#  FIRE_PLACE                  :string(30)
#  INTERNET_WITH_COMPUTER      :string(30)
#  RADIO                       :string(30)
#  CD_PLAYER                   :string(30)
#  LAKE_VIEW                   :string(30)
#  SEA_VIEW                    :string(30)
#  BBQ                         :string(30)
#  SHARED_SWIMMINGPOOL         :string(30)
#  TABLE_TENNIS                :string(30)
#  MOUNTAINS_VIEW              :string(30)
#  BALCONY                     :string(30)
#  DECK                        :string(30)
#  SHARED_SWIMMINGPOOL_HEATED  :string(30)
#  TENNIS_COURT                :string(30)
#  POOL_VIEW                   :string(30)
#  GARDEN                      :string(30)
#  PRIVATE_SWIMMINGPOOL        :string(30)
#  POOL_SHOWER                 :string(30)
#  PRIVATE_PARKING             :string(30)
#  RIVER_VIEW                  :string(30)
#  TERRACE                     :string(30)
#  PRIVATE_SWIMMINGPOOL_HEATED :string(30)
#  JACUZZI                     :string(30)
#  GARAGE                      :string(30)
#  BIKING                      :string(30)
#  HUNTING                     :string(30)
#  MUSEUM                      :string(30)
#  ROCK_CLIMBING               :string(30)
#  SIGHT_SEEING                :string(30)
#  SPA                         :string(30)
#  THEME_PARK                  :string(30)
#  WINDSOURFING                :string(30)
#  BOATING                     :string(30)
#  JETSKIING                   :string(30)
#  NIGHTLIFE                   :string(30)
#  SILING                      :string(30)
#  SKIING                      :string(30)
#  SURFING                     :string(30)
#  TREKKING                    :string(30)
#  FISHING                     :string(30)
#  KAYAKING                    :string(30)
#  PARASAILING                 :string(30)
#  SCUBADIVING                 :string(30)
#  SNORKELING                  :string(30)
#  SWIMMING                    :string(30)
#  WATERPARK                   :string(30)
#  HORSEBACK_RIDING            :string(30)
#  MOTORBIKING                 :string(30)
#  RAFTING                     :string(30)
#  SHOPPING                    :string(30)
#  THEATHER                    :string(30)
#  WATERSKIING                 :string(30)
#  ACTIVITIES                  :string(30)
#  OUTSIDE_FACILITIES          :string(30)
#  INSIDE_FACILITIES           :string(30)
#  KITCHEN_EQUIPMENT           :string(30)
#  EXTRA_INFORMATION           :string(30)
#  DISTANCES_IN_KM             :string(30)
#  NUMBER_SINGLE_SOFA_BEDS     :string(30)
#  SNOWBOARDING                :string(30)
#  POTS_PANS                   :string(30)
#  EXTRA_FIELD_1               :string(30)
#  GOLF                        :string(30)
#  NAME_ENTRIE                 :string(30)
#  REF                         :string(30)
#  HOME                        :string(30)
#  NEW_SEARCH                  :string(30)
#  VIEW_DETAILS                :string(30)
#  ORDER_BY                    :string(30)
#  GENERAL_INFO                :string(30)
#  PRICES                      :string(30)
#  SPECIAL_OFFERS              :string(30)
#  FROM                        :string(30)
#  TO                          :string(30)
#  PRICE                       :string(30)
#  CLICK_DESIRED_PHOTO         :string(30)
#  AVAILABLE                   :string(30)
#  NOT_AVAILABLE               :string(30)
#  UNKNOWN                     :string(30)
#  YOU_WILL_RECEIVE            :string(100)
#  COMPULSORY_FIELDS           :string(50)
#  NUMBER_OF_PERSONS           :string(30)
#  ARRIVAL                     :string(30)
#  STAY                        :string(30)
#  NIGHTS                      :string(30)
#  LAST_NAME                   :string(30)
#  FIRST_NAME                  :string(30)
#  DATE_OF_BIRTH               :string(30)
#  STREET                      :string(30)
#  ZIP                         :string(30)
#  PHONE                       :string(30)
#  REMARKS                     :string(30)
#  TITLE                       :string(30)
#  DAYS                        :string(30)
#  PRICES_OFFERS               :string(30)
#  PHOTOS                      :string(30)
#  ENQUERY                     :string(30)
#  NUMBER                      :string(30)
#  PRICES_AV_BO                :string(30)
#  MAP                         :string(30)
#  REVIEWS                     :string(30)
#  TENNIS1                     :string(30)
#  GASTRONOMY                  :string(30)
#  PAYMENTINFO                 :string(30)
#  DEPOSITCOLECTED             :string(30)
#  DAYSBEFOREBOOKING           :string(30)
#  DAYSAFTERBOOKING            :string(30)
#  AMOUNT                      :string(30)
#  BALANCECOLECTED             :string(30)
#  BREAKAGEDEPOSIT             :string(30)
#  DAYSAFTERLEAVING            :string(30)
#  CHECKBREAKAGES              :string(30)
#  LATESTCHECKIN               :string(30)
#  EARLIESTARRIVALTIME         :string(30)
#  LATESTDEPARTURETIME         :string(30)
#  STARTPREFEREDDAY            :string(30)
#  ENDPREFEREDDAY              :string(30)
#  LATITUDE                    :string(30)
#  LONGITUDE                   :string(30)
#  SHOWALL                     :string(30)
#  MPNAME                      :string(30)
#  PRICEEXTRAS                 :string(30)
#  DESCRIPTION                 :string(30)
#  MODE                        :string(30)
#  WHENAPPLY                   :string(30)
#  WHENPAYD                    :string(30)
#  PERDAY                      :string(30)
#  PERBOOKING                  :string(30)
#  PERPERSONBOOKING            :string(30)
#  PERPERSONDAY                :string(30)
#  ALWAYS                      :string(30)
#  CERTAINDATES                :string(30)
#  CERTAINNUMBEROFPEOPLE       :string(30)
#  LOCALY                      :string(30)
#  INPLACE                     :string(30)
#  OPTIONAL                    :string(30)
#  COMPOLSORY                  :string(30)
#  WITHBOOKING                 :string(30)
#  EARLYLATELONGDISCOUNTS      :string(30)
#  TYPEDISCOUNT                :string(30)
#  DISCOUNT                    :string(30)
#  EARLYBOOKING                :string(30)
#  LATEBOOKING                 :string(30)
#  LONGSTAYBOOKING             :string(30)
#  DEPOSIT                     :string(30)
#  CANCELATIONTERMS            :string(30)
#  YOURINFO                    :string(30)
#  WELCOME                     :string(30)
#  HELP                        :string(30)
#  CONTACTUS                   :string(30)
#  SAVEANDCONTINUE             :string(30)
#  CONTACTDETAILS              :string(30)
#  COMPANY                     :string(30)
#  WORK                        :string(30)
#  MOBILE                      :string(30)
#  IMPORTANTLOGIN              :string(30)
#  PHOTO                       :string(30)
#  BANKDETAILS                 :string(30)
#  BANKNAME                    :string(30)
#  BANKZIPPCITY                :string(30)
#  IBAN                        :string(30)
#  BICSWIFT                    :string(30)
#  PREFEREDPAYMENT             :string(30)
#  BANK                        :string(30)
#  YOURPROPERTIES              :string(30)
#  COST                        :string(30)
#  BOOKED                      :string(30)
#  MAKEBOOKING                 :string(30)
#  SEND                        :string(30)
#  ANSWER                      :string(30)
#  YOURENQUIRYS                :string(30)
#  DATE                        :string(30)
#  AGE                         :string(30)
#  SEX                         :string(30)
#  MALE                        :string(30)
#  FEMALE                      :string(30)
#  PAY                         :string(30)
#  BOOKINGPERSONS              :string(30)
#  BOOKING                     :string(30)
#  AGREETERMS                  :string(50)
#  PLEASECONFIRM               :string(50)
#  DEPARTURE                   :string(30)
#  CLIENT                      :string(30)
#  VALUE                       :string(30)
#  PAYED                       :string(30)
#  BALANCE                     :string(30)
#  DATELIMIT                   :string(30)
#  OWNER                       :string(30)
#  AUTOCANCEL                  :string(30)
#  PERSONS                     :string(30)
#  RESUME                      :string(30)
#  CONFIRM                     :string(30)
#  DECLINE                     :string(30)
#  STATUS                      :string(30)
#  APPROVE                     :string(30)
#  PREFEREDLANGUAGE            :string(30)
#  GENDER                      :string(30)
#  MYDETAILS                   :string(30)
#  RECOVERY                    :string(30)
#  YOURDETAILS                 :string(30)
#  ENQUIRYS                    :string(30)
#  TERMS                       :string(30)
#  BOOKINGS                    :string(30)
#  READ                        :string(30)
#  CHANGE                      :string(30)
#  REQUEST_MONEY               :string(30)
#  ENTRIE                      :string(30)
#  ROOM                        :string(30)
#  DETAILS                     :string(30)
#  ENTERTEINMENT               :string(30)
#  EQUIPMENT                   :string(30)
#  COMMUNICATIONS              :string(30)
#  LEISURE                     :string(30)
#  HEATING                     :string(30)
#  HOUSEHOLD                   :string(30)
#  OUTSIDE                     :string(30)
#  SPORTS_AND_OUTDOOR          :string(30)
#  SIGHTS_AND_ATTRACTIONS      :string(30)
#  PESCADOALTO                 :string(30)
#  EXTRA                       :string(30)
#  AUTOCANCELATION             :string(30)
#  LIMITPAYDEPOSIT             :string(30)
#  REVIEW                      :string(30)
#  ACTIVE1                     :string(30)
#

class Language < ActiveRecord::Base
end
