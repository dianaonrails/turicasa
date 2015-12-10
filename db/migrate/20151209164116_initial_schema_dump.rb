class InitialSchemaDump < ActiveRecord::Migration
  def change
  	create_table "entries", force: :cascade do |t|
	    t.string  "ref",                         limit: 8
	    t.integer "ranking",                     limit: 4,     default: 0
	    t.string  "name",                        limit: 30
	    t.integer "continent",                   limit: 4
	    t.integer "country",                     limit: 4
	    t.integer "region",                      limit: 4
	    t.integer "city",                        limit: 4
	    t.integer "entry_type",                  limit: 4
	    t.integer "catering",                    limit: 4
	    t.integer "sleeps",                      limit: 4
	    t.integer "includingchildren",           limit: 4
	    t.integer "livingarea",                  limit: 4
	    t.integer "nobedroms",                   limit: 4
	    t.integer "nodoubles",                   limit: 4
	    t.integer "notwins",                     limit: 4
	    t.integer "doublesofabeds",              limit: 4
	    t.integer "singlesofabeds",              limit: 4
	    t.integer "babybeds",                    limit: 4
	    t.integer "babyhighchairs",              limit: 4
	    t.integer "nobathrooms",                 limit: 4
	    t.integer "noshowerrooms",               limit: 4
	    t.integer "noguestwc",                   limit: 4
	    t.integer "noensuitebathrooms",          limit: 4
	    t.integer "iscity",                      limit: 4,     default: 0
	    t.integer "isbeach",                     limit: 4,     default: 0
	    t.integer "iscountryside",               limit: 4,     default: 0
	    t.integer "isrural",                     limit: 4,     default: 0
	    t.integer "isskiarea",                   limit: 4,     default: 0
	    t.integer "ismountains",                 limit: 4,     default: 0
	    t.integer "iskitchen",                   limit: 4,     default: 0
	    t.integer "iskitchinette",               limit: 4,     default: 0
	    t.integer "isseparatedining",            limit: 4,     default: 0
	    t.integer "iscooker",                    limit: 4,     default: 0
	    t.integer "isove",                       limit: 4,     default: 0
	    t.integer "ismicrowave",                 limit: 4,     default: 0
	    t.integer "isrefrigerator",              limit: 4,     default: 0
	    t.integer "isfreezer",                   limit: 4,     default: 0
	    t.integer "istoaster",                   limit: 4,     default: 0
	    t.integer "iscoffemachine",              limit: 4,     default: 0
	    t.integer "isdishwater",                 limit: 4,     default: 0
	    t.integer "iswashmachine",               limit: 4,     default: 0
	    t.integer "iskitchenware",               limit: 4,     default: 0
	    t.integer "ispotspans",                  limit: 4,     default: 0
	    t.integer "isglassware",                 limit: 4,     default: 0
	    t.integer "isbedlinen",                  limit: 4,     default: 0
	    t.integer "istowels",                    limit: 4,     default: 0
	    t.integer "iscentralheating",            limit: 4,     default: 0
	    t.integer "isairconditioning",           limit: 4,     default: 0
	    t.integer "isceilingfans",               limit: 4,     default: 0
	    t.integer "isventilators",               limit: 4,     default: 0
	    t.integer "iselectricalheaters",         limit: 4,     default: 0
	    t.integer "isfireplace",                 limit: 4,     default: 0
	    t.integer "istelephone",                 limit: 4,     default: 0
	    t.integer "isfax",                       limit: 4,     default: 0
	    t.integer "isinternetwificonnection",    limit: 4,     default: 0
	    t.integer "isinternetwithcomputer",      limit: 4,     default: 0
	    t.integer "isalarm",                     limit: 4,     default: 0
	    t.integer "istv",                        limit: 4,     default: 0
	    t.integer "iscablesatelitetv",           limit: 4,     default: 0
	    t.integer "isradio",                     limit: 4,     default: 0
	    t.integer "issafe",                      limit: 4,     default: 0
	    t.integer "isstereo",                    limit: 4,     default: 0
	    t.integer "isdvd",                       limit: 4,     default: 0
	    t.integer "iscdplayer",                  limit: 4,     default: 0
	    t.integer "issauna",                     limit: 4,     default: 0
	    t.integer "islakeview",                  limit: 4,     default: 0
	    t.integer "ismountainsview",             limit: 4,     default: 0
	    t.integer "ispoolview",                  limit: 4,     default: 0
	    t.integer "isriverview",                 limit: 4,     default: 0
	    t.integer "isseaview",                   limit: 4,     default: 0
	    t.integer "isbalcony",                   limit: 4,     default: 0
	    t.integer "isgarden",                    limit: 4,     default: 0
	    t.integer "isterrace",                   limit: 4,     default: 0
	    t.integer "isbbq",                       limit: 4,     default: 0
	    t.integer "isdeck",                      limit: 4,     default: 0
	    t.integer "isprivateswimmingpool",       limit: 4,     default: 0
	    t.integer "isprivateswimmingpoolheated", limit: 4,     default: 0
	    t.integer "issharedswimmingpool",        limit: 4,     default: 0
	    t.integer "issharedswimmingpoolheated",  limit: 4,     default: 0
	    t.integer "ispoolshower",                limit: 4,     default: 0
	    t.integer "isjacuzzi",                   limit: 4,     default: 0
	    t.integer "istabletennis",               limit: 4,     default: 0
	    t.integer "istenniscourt",               limit: 4,     default: 0
	    t.integer "isprivateparking",            limit: 4,     default: 0
	    t.integer "isgarage",                    limit: 4,     default: 0
	    t.integer "isgolf",                      limit: 4,     default: 0
	    t.integer "istenis1",                    limit: 4,     default: 0
	    t.integer "isgastronomy",                limit: 4,     default: 0
	    t.integer "ispescadoalto",               limit: 4,     default: 0
	    t.integer "isbiking",                    limit: 4,     default: 0
	    t.integer "isboating",                   limit: 4,     default: 0
	    t.integer "isfishing",                   limit: 4,     default: 0
	    t.integer "ishorsebackriding",           limit: 4,     default: 0
	    t.integer "ishunting",                   limit: 4,     default: 0
	    t.integer "isjetskiing",                 limit: 4,     default: 0
	    t.integer "iskayaking",                  limit: 4,     default: 0
	    t.integer "ismotorbiking",               limit: 4,     default: 0
	    t.integer "ismuseum",                    limit: 4,     default: 0
	    t.integer "isnightlife",                 limit: 4,     default: 0
	    t.integer "isparasailing",               limit: 4,     default: 0
	    t.integer "israfting",                   limit: 4,     default: 0
	    t.integer "isrockclimbing",              limit: 4,     default: 0
	    t.integer "issailing",                   limit: 4,     default: 0
	    t.integer "isscubadiving",               limit: 4,     default: 0
	    t.integer "isshopping",                  limit: 4,     default: 0
	    t.integer "issightseeing",               limit: 4,     default: 0
	    t.integer "isskiing",                    limit: 4,     default: 0
	    t.integer "issnorkeling",                limit: 4,     default: 0
	    t.integer "issnowboarding",              limit: 4,     default: 0
	    t.integer "isspa",                       limit: 4,     default: 0
	    t.integer "issurfing",                   limit: 4,     default: 0
	    t.integer "isswimming",                  limit: 4,     default: 0
	    t.integer "istheater",                   limit: 4,     default: 0
	    t.integer "isthemepark",                 limit: 4,     default: 0
	    t.integer "istrekking",                  limit: 4,     default: 0
	    t.integer "iswaterpark",                 limit: 4,     default: 0
	    t.integer "iswaterskiing",               limit: 4,     default: 0
	    t.integer "iswinsourfing",               limit: 4,     default: 0
	    t.float   "airportdistance",             limit: 24
	    t.string  "airportunit",                 limit: 10
	    t.string  "airportname",                 limit: 40
	    t.float   "beachdistance",               limit: 24
	    t.string  "beachunit",                   limit: 10
	    t.float   "shoppingdistance",            limit: 24
	    t.string  "shoppingunit",                limit: 10
	    t.float   "restaurantdistance",          limit: 24
	    t.string  "restaurantunit",              limit: 10
	    t.float   "bardistance",                 limit: 24
	    t.string  "barunit",                     limit: 10
	    t.float   "waterparkdistance",           limit: 24
	    t.string  "waterparkunit",               limit: 10
	    t.float   "golfdistance",                limit: 24
	    t.string  "golfunit",                    limit: 10
	    t.float   "skiliftsdistance",            limit: 24
	    t.string  "skiliftsunit",                limit: 10
	    t.float   "museumdistance",              limit: 24
	    t.string  "museumunit",                  limit: 10
	    t.float   "zoodistance",                 limit: 24
	    t.string  "zoomunit",                    limit: 10
	    t.integer "pets",                        limit: 4
	    t.integer "smooking",                    limit: 4
	    t.integer "wheelchair",                  limit: 4
	    t.integer "elderlyorinfirm",             limit: 4
	    t.integer "children",                    limit: 4
	    t.string  "currency",                    limit: 10
	    t.integer "minimunrental",               limit: 4
	    t.string  "fotoprincipal",               limit: 100
	    t.integer "owner",                       limit: 4,     default: 1
	    t.integer "agent",                       limit: 4
	    t.float   "commissionowner",             limit: 24
	    t.float   "commissionagent",             limit: 24
	    t.float   "deposit",                     limit: 24
	    t.integer "daystopaydeposit",            limit: 4
	    t.integer "daystopayall",                limit: 4
	    t.time    "latestcheckin"
	    t.string  "emergencyphonenumber",        limit: 15
	    t.integer "autocancelation",             limit: 4
	    t.integer "startpreferedday",            limit: 4
	    t.integer "whichdaystart",               limit: 4
	    t.integer "endpreferedday",              limit: 4
	    t.integer "whichdayend",                 limit: 4
	    t.time    "earliestarrivaltime"
	    t.time    "latestdeparturetime"
	    t.integer "timelimittopaydeposit",       limit: 4
	    t.string  "lat",                         limit: 30,    default: "40.1452892956766"
	    t.string  "lon",                         limit: 30,    default: "-7.119140625"
	    t.float   "breakagedeposit",             limit: 24,    default: 0.0
	    t.integer "checkbreakages",              limit: 4
	    t.integer "breakagesunit",               limit: 4
	    t.integer "active",                      limit: 4,     default: 0
	    t.integer "approved",                    limit: 4,     default: 0
	    t.string  "mpmeses",                     limit: 50,    default: "123"
	    t.text    "itenerary",                   limit: 65535
	    t.text    "vaucher",                     limit: 65535
	    t.integer "feed",                        limit: 4,     default: 1
	    t.integer "visits",                      limit: 4,     default: 0
	  end
  end
end
