# == Schema Information
#
# Table name: entries
#
#  id                          :integer          not null, primary key
#  ref                         :string(8)
#  ranking                     :integer          default(0)
#  name                        :string(30)
#  continent                   :integer
#  country                     :integer
#  region                      :integer
#  city                        :integer
#  type_of                     :integer
#  catering                    :integer
#  sleeps                      :integer
#  includingchildren           :integer
#  livingarea                  :integer
#  nobedroms                   :integer
#  nodoubles                   :integer
#  notwins                     :integer
#  doublesofabeds              :integer
#  singlesofabeds              :integer
#  babybeds                    :integer
#  babyhighchairs              :integer
#  nobathrooms                 :integer
#  noshowerrooms               :integer
#  noguestwc                   :integer
#  noensuitebathrooms          :integer
#  iscity                      :integer          default(0)
#  isbeach                     :integer          default(0)
#  iscountryside               :integer          default(0)
#  isrural                     :integer          default(0)
#  isskiarea                   :integer          default(0)
#  ismountains                 :integer          default(0)
#  iskitchen                   :integer          default(0)
#  iskitchinette               :integer          default(0)
#  isseparatedining            :integer          default(0)
#  iscooker                    :integer          default(0)
#  isove                       :integer          default(0)
#  ismicrowave                 :integer          default(0)
#  isrefrigerator              :integer          default(0)
#  isfreezer                   :integer          default(0)
#  istoaster                   :integer          default(0)
#  iscoffemachine              :integer          default(0)
#  isdishwater                 :integer          default(0)
#  iswashmachine               :integer          default(0)
#  iskitchenware               :integer          default(0)
#  ispotspans                  :integer          default(0)
#  isglassware                 :integer          default(0)
#  isbedlinen                  :integer          default(0)
#  istowels                    :integer          default(0)
#  iscentralheating            :integer          default(0)
#  isairconditioning           :integer          default(0)
#  isceilingfans               :integer          default(0)
#  isventilators               :integer          default(0)
#  iselectricalheaters         :integer          default(0)
#  isfireplace                 :integer          default(0)
#  istelephone                 :integer          default(0)
#  isfax                       :integer          default(0)
#  isinternetwificonnection    :integer          default(0)
#  isinternetwithcomputer      :integer          default(0)
#  isalarm                     :integer          default(0)
#  istv                        :integer          default(0)
#  iscablesatelitetv           :integer          default(0)
#  isradio                     :integer          default(0)
#  issafe                      :integer          default(0)
#  isstereo                    :integer          default(0)
#  isdvd                       :integer          default(0)
#  iscdplayer                  :integer          default(0)
#  issauna                     :integer          default(0)
#  islakeview                  :integer          default(0)
#  ismountainsview             :integer          default(0)
#  ispoolview                  :integer          default(0)
#  isriverview                 :integer          default(0)
#  isseaview                   :integer          default(0)
#  isbalcony                   :integer          default(0)
#  isgarden                    :integer          default(0)
#  isterrace                   :integer          default(0)
#  isbbq                       :integer          default(0)
#  isdeck                      :integer          default(0)
#  isprivateswimmingpool       :integer          default(0)
#  isprivateswimmingpoolheated :integer          default(0)
#  issharedswimmingpool        :integer          default(0)
#  issharedswimmingpoolheated  :integer          default(0)
#  ispoolshower                :integer          default(0)
#  isjacuzzi                   :integer          default(0)
#  istabletennis               :integer          default(0)
#  istenniscourt               :integer          default(0)
#  isprivateparking            :integer          default(0)
#  isgarage                    :integer          default(0)
#  isgolf                      :integer          default(0)
#  istenis1                    :integer          default(0)
#  isgastronomy                :integer          default(0)
#  ispescadoalto               :integer          default(0)
#  isbiking                    :integer          default(0)
#  isboating                   :integer          default(0)
#  isfishing                   :integer          default(0)
#  ishorsebackriding           :integer          default(0)
#  ishunting                   :integer          default(0)
#  isjetskiing                 :integer          default(0)
#  iskayaking                  :integer          default(0)
#  ismotorbiking               :integer          default(0)
#  ismuseum                    :integer          default(0)
#  isnightlife                 :integer          default(0)
#  isparasailing               :integer          default(0)
#  israfting                   :integer          default(0)
#  isrockclimbing              :integer          default(0)
#  issailing                   :integer          default(0)
#  isscubadiving               :integer          default(0)
#  isshopping                  :integer          default(0)
#  issightseeing               :integer          default(0)
#  isskiing                    :integer          default(0)
#  issnorkeling                :integer          default(0)
#  issnowboarding              :integer          default(0)
#  isspa                       :integer          default(0)
#  issurfing                   :integer          default(0)
#  isswimming                  :integer          default(0)
#  istheater                   :integer          default(0)
#  isthemepark                 :integer          default(0)
#  istrekking                  :integer          default(0)
#  iswaterpark                 :integer          default(0)
#  iswaterskiing               :integer          default(0)
#  iswinsourfing               :integer          default(0)
#  airportdistance             :float(24)
#  airportunit                 :string(10)
#  airportname                 :string(40)
#  beachdistance               :float(24)
#  beachunit                   :string(10)
#  shoppingdistance            :float(24)
#  shoppingunit                :string(10)
#  restaurantdistance          :float(24)
#  restaurantunit              :string(10)
#  bardistance                 :float(24)
#  barunit                     :string(10)
#  waterparkdistance           :float(24)
#  waterparkunit               :string(10)
#  golfdistance                :float(24)
#  golfunit                    :string(10)
#  skiliftsdistance            :float(24)
#  skiliftsunit                :string(10)
#  museumdistance              :float(24)
#  museumunit                  :string(10)
#  zoodistance                 :float(24)
#  zoomunit                    :string(10)
#  pets                        :integer
#  smooking                    :integer
#  wheelchair                  :integer
#  elderlyorinfirm             :integer
#  children                    :integer
#  currency                    :string(10)
#  minimunrental               :integer
#  fotoprincipal               :string(100)
#  owner                       :integer          default(1)
#  agent                       :integer
#  commissionowner             :float(24)
#  commissionagent             :float(24)
#  deposit                     :float(24)
#  daystopaydeposit            :integer
#  daystopayall                :integer
#  latestcheckin               :time
#  emergencyphonenumber        :string(15)
#  autocancelation             :integer
#  startpreferedday            :integer
#  whichdaystart               :integer
#  endpreferedday              :integer
#  whichdayend                 :integer
#  earliestarrivaltime         :time
#  latestdeparturetime         :time
#  timelimittopaydeposit       :integer
#  lat                         :string(30)       default("40.1452892956766")
#  lon                         :string(30)       default("-7.119140625")
#  breakagedeposit             :float(24)        default(0.0)
#  checkbreakages              :integer
#  breakagesunit               :integer
#  active                      :integer          default(0)
#  approved                    :integer          default(0)
#  mpmeses                     :string(50)       default("123")
#  itenerary                   :text(65535)
#  vaucher                     :text(65535)
#  feed                        :integer          default(1)
#  visits                      :integer          default(0)
#

class Entry < ActiveRecord::Base
	has_many :entries_discounts
	has_many :entries_reviews
	has_many :photos
	has_many :prices

	has_one :description


	scope :active, -> {where active: 1}
	scope :approved, -> { where approved: 1}
	scope :region, -> (region) { where region: region }
	scope :guests, -> (guests) { where sleeps: guests}
	scope :check_in, -> (check_in) { where whichdaystart: check_in}
	scope :check_out, -> (check_out) { where whichdayend: check_out}
	scope :country, -> (country) {where country: country}
	scope :city, -> (city) {where city: city}

	def entries_reviews(entry)
		begin
        	@reviews = EntriesReview.where(entrie: entry.id)
      	rescue RecordNotFound => e
        	@reviews = 0
      	end
	end		

	def photos(entry)
		begin
        	@photos = Photo.where(entrie: entry.id)
      	rescue RecordNotFound => e
        	@photos = 0
      	end
	end	

	accepts_nested_attributes_for :prices, allow_destroy: true
end
