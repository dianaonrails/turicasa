# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151213194256) do

  create_table "access", force: :cascade do |t|
    t.integer "property", limit: 4
    t.date    "date"
    t.integer "site",     limit: 4
  end

  add_index "access", ["date"], name: "indexdate", using: :btree
  add_index "access", ["property"], name: "indexproperty", using: :btree
  add_index "access", ["site"], name: "indexsite", using: :btree

  create_table "admins", force: :cascade do |t|
    t.string  "user",     limit: 50
    t.string  "password", limit: 50
    t.integer "level",    limit: 4
  end

  create_table "ajuda", force: :cascade do |t|
    t.string  "questao",   limit: 200
    t.text    "resposta",  limit: 16777215
    t.string  "imagem",    limit: 100
    t.integer "categoria", limit: 4
  end

  add_index "ajuda", ["categoria"], name: "questao", using: :btree

  create_table "articles", force: :cascade do |t|
    t.integer "language",     limit: 4
    t.string  "title",        limit: 100
    t.text    "despcription", limit: 4294967295
    t.integer "display",      limit: 4
  end

  add_index "articles", ["display"], name: "display", using: :btree
  add_index "articles", ["language"], name: "language", using: :btree

  create_table "bookings", force: :cascade do |t|
    t.integer "number",                limit: 4
    t.date    "date"
    t.integer "client",                limit: 4
    t.integer "owner",                 limit: 4
    t.integer "agent",                 limit: 4,     default: 0
    t.integer "entrie",                limit: 4
    t.integer "numberofpeople",        limit: 4
    t.date    "arrival"
    t.date    "departure"
    t.integer "numberdays",            limit: 4
    t.text    "remarks",               limit: 65535
    t.float   "totalvalue",            limit: 24
    t.float   "depositvalue",          limit: 24
    t.float   "balancevalue",          limit: 24
    t.date    "datelimitdeposit"
    t.date    "datelimitbalance"
    t.date    "depositpayeddate"
    t.date    "balancepayeddate"
    t.integer "depositpayed",          limit: 4,     default: 0
    t.integer "balancepayed",          limit: 4,     default: 0
    t.integer "status",                limit: 4,     default: 1
    t.float   "commissionowner",       limit: 24,    default: 0.0
    t.float   "commissionagent",       limit: 24,    default: 0.0
    t.float   "ownervalue",            limit: 24,    default: 0.0
    t.float   "agentvalue",            limit: 24,    default: 0.0
    t.float   "cdpvalue",              limit: 24,    default: 0.0
    t.date    "ownervaluepayeddate"
    t.date    "agentvaluepayeddate"
    t.integer "ownerpayed",            limit: 4,     default: 0
    t.integer "agentpayed",            limit: 4,     default: 0
    t.float   "totalpayonline",        limit: 24
    t.float   "totalpaylocal",         limit: 24
    t.integer "methodpay",             limit: 4
    t.integer "autocancel",            limit: 4,     default: 0
    t.integer "daystocancel",          limit: 4,     default: 0
    t.text    "reason",                limit: 65535
    t.text    "description",           limit: 65535
    t.text    "people",                limit: 65535
    t.float   "ownerdepositvalue",     limit: 24,    default: 0.0
    t.float   "ownerbalancevalue",     limit: 24,    default: 0.0
    t.date    "ownerdepositpayeddate"
    t.integer "ownerdepositpayed",     limit: 4,     default: 0
    t.integer "itenerarysent",         limit: 4
    t.integer "vauchersent",           limit: 4
  end

  add_index "bookings", ["agent"], name: "agent", using: :btree
  add_index "bookings", ["client"], name: "client", using: :btree
  add_index "bookings", ["entrie"], name: "entrie", using: :btree
  add_index "bookings", ["owner"], name: "owner", using: :btree

  create_table "bookings_lines", force: :cascade do |t|
    t.integer "booking",  limit: 4
    t.integer "ref",      limit: 4
    t.integer "model",    limit: 4
    t.integer "is",       limit: 4
    t.float   "price",    limit: 24
    t.integer "whenpaid", limit: 4
  end

  add_index "bookings_lines", ["booking"], name: "booking", using: :btree

  create_table "bookings_persons", force: :cascade do |t|
    t.integer "entrie",    limit: 4
    t.string  "firstname", limit: 100
    t.string  "lastname",  limit: 100
    t.integer "age",       limit: 4
    t.integer "sex",       limit: 4
  end

  create_table "caixas", force: :cascade do |t|
    t.integer "language",     limit: 4
    t.string  "title",        limit: 100
    t.text    "despcription", limit: 4294967295
    t.integer "display",      limit: 4
  end

  add_index "caixas", ["display"], name: "display", using: :btree
  add_index "caixas", ["language"], name: "language", using: :btree

  create_table "calendar", id: false, force: :cascade do |t|
    t.integer "id",     limit: 4,                null: false
    t.integer "entrie", limit: 4
    t.date    "date"
    t.integer "value",  limit: 4,  default: 0
    t.float   "price",  limit: 24
    t.float   "buy",    limit: 24, default: 0.0
  end

  create_table "categoriasajuda", id: false, force: :cascade do |t|
    t.integer "id",        limit: 4,              null: false
    t.string  "categoria", limit: 50
    t.integer "language",  limit: 4,  default: 1
    t.integer "order",     limit: 4
  end

  create_table "cdp_acces", id: false, force: :cascade do |t|
    t.integer "id",    limit: 3,             null: false
    t.integer "label", limit: 3, default: 0, null: false
    t.date    "date",                        null: false
    t.integer "count", limit: 3, default: 0, null: false
  end

  create_table "cdp_browser", id: false, force: :cascade do |t|
    t.integer "id",    limit: 3,               null: false
    t.string  "label", limit: 50, default: "", null: false
    t.date    "date",                          null: false
    t.integer "count", limit: 3,  default: 0,  null: false
  end

  create_table "cdp_country", id: false, force: :cascade do |t|
    t.integer "id",    limit: 3,              null: false
    t.string  "label", limit: 4, default: "", null: false
    t.date    "date",                         null: false
    t.integer "count", limit: 3, default: 0,  null: false
  end

  create_table "cdp_day", id: false, force: :cascade do |t|
    t.integer "value", limit: 1
    t.integer "count", limit: 3
  end

  create_table "cdp_host", id: false, force: :cascade do |t|
    t.datetime "date"
    t.string   "host",     limit: 20,    default: "", null: false
    t.text     "hostname", limit: 255,                null: false
    t.text     "page",     limit: 255,                null: false
    t.text     "ref",      limit: 65535,              null: false
    t.text     "agent",    limit: 255,                null: false
    t.integer  "longIP",   limit: 8,     default: 0,  null: false
  end

  create_table "cdp_hour", id: false, force: :cascade do |t|
    t.integer "value", limit: 1
    t.integer "count", limit: 3
  end

  create_table "cdp_iplist", id: false, force: :cascade do |t|
    t.integer  "id",    limit: 3,               null: false
    t.integer  "ip",    limit: 8,  default: 0,  null: false
    t.string   "label", limit: 50, default: "", null: false
    t.datetime "first",                         null: false
    t.datetime "last",                          null: false
    t.integer  "count", limit: 3,  default: 0,  null: false
  end

  create_table "cdp_keyword", id: false, force: :cascade do |t|
    t.integer  "id",      limit: 3,                 null: false
    t.text     "engine",  limit: 255,               null: false
    t.text     "keyword", limit: 65535,             null: false
    t.integer  "page",    limit: 3,     default: 0, null: false
    t.datetime "first",                             null: false
    t.datetime "last",                              null: false
    t.integer  "count",   limit: 3,     default: 0, null: false
  end

  create_table "cdp_os", id: false, force: :cascade do |t|
    t.integer "id",    limit: 3,               null: false
    t.string  "label", limit: 50, default: "", null: false
    t.date    "date",                          null: false
    t.integer "count", limit: 3,  default: 0,  null: false
  end

  create_table "cdp_pages", id: false, force: :cascade do |t|
    t.integer "id",       limit: 3,               null: false
    t.text    "name",     limit: 255,             null: false
    t.date    "added",                            null: false
    t.integer "ref",      limit: 3,   default: 0
    t.integer "se",       limit: 3,   default: 0
    t.integer "internal", limit: 3,   default: 0
    t.integer "other",    limit: 3,   default: 0
    t.integer "old",      limit: 3,   default: 0
  end

  create_table "cdp_path", id: false, force: :cascade do |t|
    t.integer  "id",     limit: 3,               null: false
    t.datetime "first",                          null: false
    t.datetime "last",                           null: false
    t.integer  "entry",  limit: 3,   default: 0
    t.integer  "exit",   limit: 3,   default: 0
    t.text     "path",   limit: 255,             null: false
    t.integer  "length", limit: 3,   default: 0, null: false
    t.integer  "count",  limit: 3,   default: 0, null: false
  end

  create_table "cdp_referrer", id: false, force: :cascade do |t|
    t.integer  "id",      limit: 3,                     null: false
    t.text     "address", limit: 65535,                 null: false
    t.integer  "page",    limit: 3,     default: 0,     null: false
    t.datetime "first",                                 null: false
    t.datetime "last",                                  null: false
    t.integer  "count",   limit: 3,     default: 0,     null: false
    t.boolean  "visited", limit: 1,     default: false
  end

  create_table "cdp_resolution", id: false, force: :cascade do |t|
    t.integer "id",    limit: 3,               null: false
    t.string  "label", limit: 50, default: "", null: false
    t.date    "date",                          null: false
    t.integer "count", limit: 3,  default: 0,  null: false
  end

  create_table "cdp_retention", id: false, force: :cascade do |t|
    t.integer "id",     limit: 3,             null: false
    t.date    "date",                         null: false
    t.integer "mode",   limit: 1, default: 0, null: false
    t.integer "length", limit: 1, default: 0, null: false
    t.integer "count",  limit: 3, default: 0, null: false
  end

  create_table "cdp_uniq", id: false, force: :cascade do |t|
    t.integer "id",    limit: 3,             null: false
    t.integer "label", limit: 3, default: 0
    t.date    "date",                        null: false
    t.integer "count", limit: 3, default: 0, null: false
  end

  create_table "cities", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,     null: false
    t.integer "optionnumber", limit: 4
    t.integer "language",     limit: 4
    t.integer "con",          limit: 4
    t.integer "cou",          limit: 4
    t.integer "reg",          limit: 4
    t.string  "city",         limit: 40
    t.text    "description",  limit: 65535
  end

  create_table "clients", id: false, force: :cascade do |t|
    t.integer "id",                  limit: 4,                 null: false
    t.string  "email",               limit: 100
    t.string  "password",            limit: 100
    t.integer "title",               limit: 4
    t.string  "firstname",           limit: 100
    t.string  "lastname",            limit: 100
    t.integer "gender",              limit: 4
    t.date    "datebirth"
    t.string  "street",              limit: 100
    t.string  "street2",             limit: 100
    t.string  "country",             limit: 100
    t.string  "cityzipp",            limit: 100
    t.string  "telhome",             limit: 20
    t.string  "telwork",             limit: 20
    t.string  "mobille",             limit: 20
    t.string  "photo",               limit: 200
    t.integer "approved",            limit: 4
    t.text    "remarks",             limit: 65535
    t.integer "preferededlanguage",  limit: 4
    t.integer "affiliate",           limit: 4,     default: 0
    t.integer "percentageaffiliate", limit: 4,     default: 0
  end

  create_table "coins", id: false, force: :cascade do |t|
    t.integer "id",          limit: 4,  null: false
    t.string  "coin",        limit: 8
    t.string  "description", limit: 40
  end

  create_table "continents", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,  null: false
    t.integer "optionnumber", limit: 4
    t.integer "language",     limit: 4
    t.string  "continent",    limit: 20
  end

  create_table "countries", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,  null: false
    t.integer "optionnumber", limit: 4
    t.integer "language",     limit: 4
    t.integer "con",          limit: 4
    t.string  "country",      limit: 40
  end

  create_table "descriptions", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,          null: false
    t.integer "entrie",       limit: 4
    t.integer "language",     limit: 4
    t.text    "despcription", limit: 4294967295
  end

  create_table "emailsbookings", id: false, force: :cascade do |t|
    t.integer "id",                         limit: 4,     null: false
    t.integer "language",                   limit: 4
    t.text    "Enewbookingclient",          limit: 65535
    t.text    "Enewbookingowner",           limit: 65535
    t.text    "Eownerapprovebookingclient", limit: 65535
    t.text    "Eownerapprovebookingowner",  limit: 65535
    t.text    "Eownerdeclinebookingclient", limit: 65535
    t.text    "Eownerdeclinebookingowner",  limit: 65535
    t.text    "Eownercancelbookingclient",  limit: 65535
    t.text    "Eownercancelbookingowner",   limit: 65535
    t.text    "Eclientcancelbookingclient", limit: 65535
    t.text    "Eclientcancelbookingowner",  limit: 65535
    t.text    "Eclientpaydepositclient",    limit: 65535
    t.text    "Eclientpaydepositowner",     limit: 65535
    t.text    "Eclientpaybalanceclient",    limit: 65535
    t.text    "Eclientpaybalanceowner",     limit: 65535
    t.text    "Eclientpayallclient",        limit: 65535
    t.text    "Eclientpayallowner",         limit: 65535
    t.text    "Esenditenerary",             limit: 65535
    t.text    "Esendvaucher",               limit: 65535
    t.text    "Eremindowner",               limit: 65535
    t.text    "Eremindclientdeposit",       limit: 65535
    t.text    "Eremindclientbalance",       limit: 65535
  end

  create_table "enquirys", id: false, force: :cascade do |t|
    t.integer  "id",                limit: 4,                      null: false
    t.integer  "entrie",            limit: 4
    t.integer  "numberofpersons",   limit: 4
    t.integer  "includingchildren", limit: 4
    t.date     "arrival"
    t.integer  "stay",              limit: 4
    t.integer  "title",             limit: 4
    t.string   "lastname",          limit: 30
    t.string   "firstname",         limit: 30
    t.date     "dateofbirth"
    t.string   "street",            limit: 80
    t.string   "zip",               limit: 15
    t.string   "city",              limit: 40
    t.string   "phone",             limit: 15
    t.string   "email",             limit: 50
    t.string   "country",           limit: 80
    t.integer  "pets",              limit: 4,          default: 0
    t.text     "remarks",           limit: 4294967295
    t.string   "fax",               limit: 15
    t.string   "obs",               limit: 100
    t.integer  "status",            limit: 4,          default: 0
    t.integer  "owner",             limit: 4
    t.datetime "date"
    t.text     "answer",            limit: 65535
    t.datetime "dateanswer"
  end

  create_table "enquirys_answers", id: false, force: :cascade do |t|
    t.integer  "id",      limit: 4,     null: false
    t.integer  "enquiry", limit: 4
    t.text     "answer",  limit: 65535
    t.datetime "date"
  end

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

  create_table "entries_cancelations", id: false, force: :cascade do |t|
    t.integer "id",         limit: 4, null: false
    t.integer "entrie",     limit: 4
    t.integer "days",       limit: 4
    t.integer "percentage", limit: 4
  end

  create_table "entries_discounts", force: :cascade do |t|
    t.integer "entrie",     limit: 4
    t.integer "days",       limit: 4
    t.integer "entry_type", limit: 4
    t.float   "discount",   limit: 24
    t.integer "unit",       limit: 4
    t.integer "when",       limit: 4
    t.date    "date1"
    t.date    "date2"
  end

  add_index "entries_discounts", ["entrie"], name: "entrie", using: :btree

  create_table "entries_reviews", id: false, force: :cascade do |t|
    t.integer "id",     limit: 4,     null: false
    t.integer "entrie", limit: 4
    t.text    "review", limit: 65535
  end

  create_table "languages_bookings", id: false, force: :cascade do |t|
    t.integer "id",                        limit: 4,     null: false
    t.integer "language",                  limit: 4
    t.text    "beforebookinghelp",         limit: 65535
    t.text    "makebookinghelp",           limit: 65535
    t.text    "confirmbookinghelp",        limit: 65535
    t.text    "thanksforbooking",          limit: 65535
    t.text    "ownernewbooking",           limit: 65535
    t.text    "owneracceptbooking",        limit: 65535
    t.text    "ownerdeclinebooking",       limit: 65535
    t.text    "clientcancelbooking",       limit: 65535
    t.text    "owneracceptbookingowner",   limit: 65535
    t.text    "ownerdeclinebookingowner",  limit: 65535
    t.text    "clientcancelbookingclient", limit: 65535
    t.text    "youareconfirming",          limit: 65535
    t.text    "youaredeclining",           limit: 65535
    t.text    "nothingpayedyet",           limit: 65535
    t.text    "clientcancancel",           limit: 65535
    t.text    "clientarecanceling",        limit: 65535
    t.text    "remindowner",               limit: 65535
    t.text    "remindclientdeposit",       limit: 65535
    t.text    "remindclientbalance",       limit: 65535
    t.text    "pleaseloginor",             limit: 65535
    t.string  "senditenerary",             limit: 50
    t.string  "sendvaucher",               limit: 50
    t.string  "youarerenting",             limit: 50
  end

  create_table "languages_clients", id: false, force: :cascade do |t|
    t.integer "id",                limit: 4,     null: false
    t.integer "language",          limit: 4
    t.text    "introheader",       limit: 65535
    t.text    "textlogin",         limit: 65535
    t.string  "mydetails",         limit: 30
    t.string  "mybookings",        limit: 30
    t.string  "myfavourites",      limit: 30
    t.text    "mydetailshelp",     limit: 65535
    t.text    "editmydetailshelp", limit: 65535
    t.text    "mybookingshelp",    limit: 65535
    t.text    "myfavouriteshelp",  limit: 65535
  end

  create_table "languages_emails", id: false, force: :cascade do |t|
    t.integer "id",                       limit: 4,     null: false
    t.integer "language",                 limit: 4
    t.string  "received_enquiry",         limit: 100
    t.string  "the_message",              limit: 100
    t.string  "login_reply",              limit: 100
    t.string  "thanks",                   limit: 30
    t.string  "cdp_info",                 limit: 200
    t.string  "answered_enquery",         limit: 100
    t.string  "the_answer",               limit: 100
    t.text    "new_owner_welcome",        limit: 65535
    t.text    "new_client_welcome",       limit: 65535
    t.string  "if_you_agree",             limit: 200
    t.string  "new_owner_registration",   limit: 200
    t.string  "new_client_registration",  limit: 200
    t.string  "back_to_login",            limit: 100
    t.string  "your_details",             limit: 100
    t.string  "you_ask_password",         limit: 100
    t.string  "registration_successfull", limit: 100
    t.string  "request_password_page",    limit: 100
    t.string  "password_sent_email",      limit: 100
    t.string  "change_password_page",     limit: 100
    t.string  "old_password",             limit: 30
    t.string  "new_password",             limit: 30
    t.string  "confirm_password",         limit: 30
    t.string  "change_password",          limit: 30
    t.string  "password_changed",         limit: 100
  end

  create_table "languages_owners", id: false, force: :cascade do |t|
    t.integer "id",                   limit: 4,     null: false
    t.integer "language",             limit: 4
    t.text    "introheader",          limit: 65535
    t.text    "textlogin",            limit: 65535
    t.text    "footer",               limit: 65535
    t.string  "step1title",           limit: 200
    t.string  "step2title",           limit: 200
    t.string  "step21title",          limit: 200
    t.string  "step22title",          limit: 200
    t.string  "step23title",          limit: 200
    t.string  "step3title",           limit: 200
    t.string  "step4title",           limit: 200
    t.string  "step5title",           limit: 200
    t.string  "step6title",           limit: 200
    t.string  "step7title",           limit: 200
    t.string  "step8title",           limit: 200
    t.string  "step9title",           limit: 200
    t.string  "step10title",          limit: 200
    t.string  "step11title",          limit: 200
    t.string  "step12title",          limit: 200
    t.text    "step1help",            limit: 65535
    t.text    "step2help",            limit: 65535
    t.text    "step21help",           limit: 65535
    t.text    "step22help",           limit: 65535
    t.text    "step23help",           limit: 65535
    t.text    "step3help",            limit: 65535
    t.text    "step4help",            limit: 65535
    t.text    "step5help",            limit: 65535
    t.text    "step6help",            limit: 65535
    t.text    "step7help",            limit: 65535
    t.text    "step8help",            limit: 65535
    t.text    "step9help",            limit: 65535
    t.text    "step10help",           limit: 65535
    t.text    "step11help",           limit: 65535
    t.text    "step12help",           limit: 65535
    t.text    "yourdetailshelp",      limit: 65535
    t.text    "edityourdetailshelp",  limit: 65535
    t.text    "propertieslisthelp",   limit: 65535
    t.text    "propertiesaddnewhelp", limit: 65535
  end

  create_table "locations", id: false, force: :cascade do |t|
    t.integer "id",       limit: 4,          null: false
    t.integer "entrie",   limit: 4
    t.integer "language", limit: 4
    t.text    "location", limit: 4294967295
  end

  create_table "options_catering", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,  null: false
    t.integer "optionnumber", limit: 4
    t.integer "language",     limit: 4
    t.string  "option",       limit: 40
  end

  create_table "options_children", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,  null: false
    t.integer "optionnumber", limit: 4
    t.integer "language",     limit: 4
    t.string  "option",       limit: 40
  end

  create_table "options_elderorinfirm", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,  null: false
    t.integer "optionnumber", limit: 4
    t.integer "language",     limit: 4
    t.string  "option",       limit: 40
  end

  create_table "options_payments", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,  null: false
    t.integer "optionnumber", limit: 4
    t.integer "language",     limit: 4
    t.string  "option",       limit: 40
  end

  create_table "options_pets", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,  null: false
    t.integer "optionnumber", limit: 4
    t.integer "language",     limit: 4
    t.string  "option",       limit: 40
  end

  create_table "options_prices", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,  null: false
    t.integer "optionnumber", limit: 4
    t.integer "language",     limit: 4
    t.string  "option",       limit: 40
  end

  create_table "options_smoking", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,  null: false
    t.integer "optionnumber", limit: 4
    t.integer "language",     limit: 4
    t.string  "option",       limit: 40
  end

  create_table "options_type", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,  null: false
    t.integer "optionnumber", limit: 4
    t.integer "language",     limit: 4
    t.string  "option",       limit: 40
  end

  create_table "options_wheelchair", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,  null: false
    t.integer "optionnumber", limit: 4
    t.integer "language",     limit: 4
    t.string  "option",       limit: 40
  end

  create_table "otions_extras", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,   null: false
    t.integer "language",     limit: 4
    t.integer "optionnumber", limit: 4
    t.string  "Extra",        limit: 200
  end

  create_table "otions_lines", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,   null: false
    t.integer "language",     limit: 4
    t.integer "optionnumber", limit: 4
    t.string  "line",         limit: 200
  end

  create_table "otions_models", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,   null: false
    t.integer "language",     limit: 4
    t.integer "optionnumber", limit: 4
    t.string  "model",        limit: 100
  end

  create_table "otions_sexs", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,   null: false
    t.integer "language",     limit: 4
    t.integer "optionnumber", limit: 4
    t.string  "sex",          limit: 100
  end

  create_table "otions_status", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,   null: false
    t.integer "language",     limit: 4
    t.integer "optionnumber", limit: 4
    t.string  "status",       limit: 100
  end

  create_table "owners", id: false, force: :cascade do |t|
    t.integer "id",               limit: 4,                     null: false
    t.integer "type",             limit: 4,        default: 1
    t.integer "typeowner",        limit: 4,        default: 2
    t.integer "typeagent",        limit: 4,        default: 0
    t.string  "firstname",        limit: 30
    t.string  "lastname",         limit: 30
    t.string  "street",           limit: 100
    t.string  "street2",          limit: 100
    t.string  "zipandcity",       limit: 100
    t.string  "country",          limit: 50
    t.string  "telhome",          limit: 20
    t.string  "telhome2",         limit: 20
    t.string  "telwork",          limit: 20
    t.string  "telwork2",         limit: 20
    t.string  "mobile",           limit: 20
    t.string  "mobile2",          limit: 20
    t.string  "email",            limit: 50
    t.string  "email2",           limit: 50
    t.string  "bank",             limit: 100
    t.string  "iban",             limit: 50
    t.string  "bicswift",         limit: 50
    t.integer "approved",         limit: 4
    t.text    "remarks",          limit: 16777215
    t.date    "birtday"
    t.string  "photo",            limit: 200
    t.string  "password",         limit: 20
    t.integer "preferedlanguage", limit: 4
    t.integer "title",            limit: 4
    t.string  "company",          limit: 110
    t.integer "preferedpayment",  limit: 4
    t.string  "bankname",         limit: 110
    t.string  "bankcityzipp",     limit: 100
    t.integer "percentageowner",  limit: 4,        default: 10
    t.integer "percentageagent",  limit: 4,        default: 0
    t.integer "level",            limit: 4
  end

  create_table "paginas", id: false, force: :cascade do |t|
    t.integer "id",        limit: 4,     null: false
    t.integer "idioma",    limit: 4
    t.string  "titulo",    limit: 150
    t.text    "pagina",    limit: 65535
    t.integer "principal", limit: 4
    t.integer "activo",    limit: 4
    t.integer "menu",      limit: 4
    t.integer "header",    limit: 4
    t.integer "footer",    limit: 4
    t.integer "ordem",     limit: 4
    t.string  "descricao", limit: 200
    t.string  "keyords",   limit: 200
  end

  create_table "photos", id: false, force: :cascade do |t|
    t.integer "id",          limit: 4,                 null: false
    t.integer "entrie",      limit: 4
    t.string  "photo",       limit: 100
    t.string  "description", limit: 100
    t.integer "ordem",       limit: 4,   default: 100
  end

  create_table "phpTrafficA_conf", id: false, force: :cascade do |t|
    t.string "variable", limit: 32,    default: "", null: false
    t.text   "value",    limit: 65535,              null: false
  end

  create_table "phpTrafficA_conf_ipban", id: false, force: :cascade do |t|
    t.integer "id",    limit: 2,             null: false
    t.integer "ip",    limit: 8, default: 0, null: false
    t.integer "range", limit: 4, default: 0, null: false
    t.date    "date",                        null: false
    t.date    "last",                        null: false
    t.integer "count", limit: 3, default: 0, null: false
  end

  create_table "phpTrafficA_conf_sites", id: false, force: :cascade do |t|
    t.integer "id",       limit: 3,               null: false
    t.string  "table",    limit: 100,             null: false
    t.string  "site",     limit: 255,             null: false
    t.boolean "public",   limit: 1,               null: false
    t.boolean "trim",     limit: 1,               null: false
    t.boolean "crawler",  limit: 1,               null: false
    t.boolean "counter",  limit: 1,               null: false
    t.integer "timediff", limit: 1,   default: 0, null: false
  end

  create_table "phpmysqlautobackup", id: false, force: :cascade do |t|
    t.integer "id",            limit: 4, default: 0, null: false
    t.string  "version",       limit: 6
    t.integer "time_last_run", limit: 4, default: 0, null: false
  end

  create_table "prices", id: false, force: :cascade do |t|
    t.integer "id",          limit: 4,                null: false
    t.integer "entrie",      limit: 4
    t.string  "description", limit: 50
    t.float   "price",       limit: 24, default: 0.0
    t.date    "from"
    t.date    "to"
    t.integer "type",        limit: 4
  end

  create_table "prices_extras", id: false, force: :cascade do |t|
    t.integer "id",              limit: 4,              null: false
    t.integer "entrie",          limit: 4
    t.integer "extra",           limit: 4
    t.float   "price",           limit: 24
    t.float   "buy",             limit: 24
    t.integer "model",           limit: 4
    t.integer "whenapply",       limit: 4
    t.integer "is",              limit: 4
    t.integer "whenpaid",        limit: 4
    t.date    "date1"
    t.date    "date2"
    t.integer "people1",         limit: 4
    t.integer "people2",         limit: 4
    t.integer "peoplecondition", limit: 4,  default: 1
    t.integer "whenapply1",      limit: 4
  end

  create_table "regions", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,  null: false
    t.integer "optionnumber", limit: 4
    t.integer "language",     limit: 4
    t.integer "con",          limit: 4
    t.integer "cou",          limit: 4
    t.string  "region",       limit: 40
  end

  create_table "shortdescriptions", id: false, force: :cascade do |t|
    t.integer "id",                limit: 4,          null: false
    t.integer "entrie",            limit: 4
    t.integer "language",          limit: 4
    t.text    "shortdespcription", limit: 4294967295
  end

  create_table "siteconfiguration", id: false, force: :cascade do |t|
    t.integer "id",                  limit: 4,     null: false
    t.string  "title",               limit: 50
    t.string  "keywords",            limit: 200
    t.string  "shortdescription",    limit: 150
    t.string  "description",         limit: 200
    t.integer "defaultlanguage",     limit: 4
    t.text    "header",              limit: 65535
    t.string  "bodycolor",           limit: 30
    t.string  "leftboxtitlecolor",   limit: 30
    t.string  "leftboxcolor",        limit: 30
    t.string  "rightboxtitlecolor",  limit: 30
    t.string  "rightboxcolor",       limit: 30
    t.string  "centerboxtitlecolor", limit: 30
    t.string  "centerboxcolor",      limit: 30
    t.string  "boxestitleimage",     limit: 100
    t.text    "footer",              limit: 65535
  end

  create_table "siteconfigurationtop", id: false, force: :cascade do |t|
    t.integer "id",               limit: 4,     null: false
    t.string  "template",         limit: 50
    t.string  "title",            limit: 50
    t.string  "keywords",         limit: 200
    t.string  "shortdescription", limit: 150
    t.string  "description",      limit: 200
    t.integer "defaultlanguage",  limit: 4
    t.text    "header",           limit: 65535
    t.text    "footer",           limit: 65535
    t.string  "headerimg",        limit: 150
    t.string  "logo",             limit: 150
  end

  create_table "specialoffers", id: false, force: :cascade do |t|
    t.integer "id",          limit: 4,          null: false
    t.integer "entrie",      limit: 4
    t.integer "language",    limit: 4
    t.string  "name",        limit: 200
    t.date    "from"
    t.date    "to"
    t.text    "description", limit: 4294967295
    t.float   "price",       limit: 24
  end

  create_table "tags", id: false, force: :cascade do |t|
    t.integer "id",               limit: 4,     null: false
    t.integer "byy",              limit: 4
    t.integer "language",         limit: 4
    t.string  "title",            limit: 150
    t.string  "keywords",         limit: 250
    t.text    "shortdescription", limit: 65535
    t.text    "description",      limit: 65535
  end

  create_table "tagstop", id: false, force: :cascade do |t|
    t.integer "id",               limit: 4,     null: false
    t.integer "language",         limit: 4
    t.string  "title",            limit: 150
    t.string  "keywords",         limit: 250
    t.text    "shortdescription", limit: 65535
    t.text    "description",      limit: 65535
  end

  create_table "terms", id: false, force: :cascade do |t|
    t.integer "id",            limit: 4,     null: false
    t.integer "language",      limit: 4
    t.text    "terms_client",  limit: 65535
    t.text    "terms_owner",   limit: 65535
    t.text    "terms_booking", limit: 65535
  end

  create_table "titles_enquirys", id: false, force: :cascade do |t|
    t.integer "id",           limit: 4,  null: false
    t.integer "optionnumber", limit: 4
    t.integer "language",     limit: 4
    t.string  "title",        limit: 30
  end

  create_table "top_acces", id: false, force: :cascade do |t|
    t.integer "id",    limit: 3,             null: false
    t.integer "label", limit: 3, default: 0, null: false
    t.date    "date",                        null: false
    t.integer "count", limit: 3, default: 0, null: false
  end

  create_table "top_browser", id: false, force: :cascade do |t|
    t.integer "id",    limit: 3,               null: false
    t.string  "label", limit: 50, default: "", null: false
    t.date    "date",                          null: false
    t.integer "count", limit: 3,  default: 0,  null: false
  end

  create_table "top_country", id: false, force: :cascade do |t|
    t.integer "id",    limit: 3,              null: false
    t.string  "label", limit: 4, default: "", null: false
    t.date    "date",                         null: false
    t.integer "count", limit: 3, default: 0,  null: false
  end

  create_table "top_day", id: false, force: :cascade do |t|
    t.integer "value", limit: 1
    t.integer "count", limit: 3
  end

  create_table "top_host", id: false, force: :cascade do |t|
    t.datetime "date"
    t.string   "host",     limit: 20,    default: "", null: false
    t.text     "hostname", limit: 255,                null: false
    t.text     "page",     limit: 255,                null: false
    t.text     "ref",      limit: 65535,              null: false
    t.text     "agent",    limit: 255,                null: false
    t.integer  "longIP",   limit: 8,     default: 0,  null: false
  end

  create_table "top_hour", id: false, force: :cascade do |t|
    t.integer "value", limit: 1
    t.integer "count", limit: 3
  end

  create_table "top_iplist", id: false, force: :cascade do |t|
    t.integer  "id",    limit: 3,               null: false
    t.integer  "ip",    limit: 8,  default: 0,  null: false
    t.string   "label", limit: 50, default: "", null: false
    t.datetime "first",                         null: false
    t.datetime "last",                          null: false
    t.integer  "count", limit: 3,  default: 0,  null: false
  end

  create_table "top_keyword", id: false, force: :cascade do |t|
    t.integer  "id",      limit: 3,                 null: false
    t.text     "engine",  limit: 255,               null: false
    t.text     "keyword", limit: 65535,             null: false
    t.integer  "page",    limit: 3,     default: 0, null: false
    t.datetime "first",                             null: false
    t.datetime "last",                              null: false
    t.integer  "count",   limit: 3,     default: 0, null: false
  end

  create_table "top_os", id: false, force: :cascade do |t|
    t.integer "id",    limit: 3,               null: false
    t.string  "label", limit: 50, default: "", null: false
    t.date    "date",                          null: false
    t.integer "count", limit: 3,  default: 0,  null: false
  end

  create_table "top_pages", id: false, force: :cascade do |t|
    t.integer "id",       limit: 3,               null: false
    t.text    "name",     limit: 255,             null: false
    t.date    "added",                            null: false
    t.integer "ref",      limit: 3,   default: 0
    t.integer "se",       limit: 3,   default: 0
    t.integer "internal", limit: 3,   default: 0
    t.integer "other",    limit: 3,   default: 0
    t.integer "old",      limit: 3,   default: 0
  end

  create_table "top_path", id: false, force: :cascade do |t|
    t.integer  "id",     limit: 3,               null: false
    t.datetime "first",                          null: false
    t.datetime "last",                           null: false
    t.integer  "entry",  limit: 3,   default: 0
    t.integer  "exit",   limit: 3,   default: 0
    t.text     "path",   limit: 255,             null: false
    t.integer  "length", limit: 3,   default: 0, null: false
    t.integer  "count",  limit: 3,   default: 0, null: false
  end

  create_table "top_referrer", id: false, force: :cascade do |t|
    t.integer  "id",      limit: 3,                     null: false
    t.text     "address", limit: 65535,                 null: false
    t.integer  "page",    limit: 3,     default: 0,     null: false
    t.datetime "first",                                 null: false
    t.datetime "last",                                  null: false
    t.integer  "count",   limit: 3,     default: 0,     null: false
    t.boolean  "visited", limit: 1,     default: false
  end

  create_table "top_resolution", id: false, force: :cascade do |t|
    t.integer "id",    limit: 3,               null: false
    t.string  "label", limit: 50, default: "", null: false
    t.date    "date",                          null: false
    t.integer "count", limit: 3,  default: 0,  null: false
  end

  create_table "top_retention", id: false, force: :cascade do |t|
    t.integer "id",     limit: 3,             null: false
    t.date    "date",                         null: false
    t.integer "mode",   limit: 1, default: 0, null: false
    t.integer "length", limit: 1, default: 0, null: false
    t.integer "count",  limit: 3, default: 0, null: false
  end

  create_table "top_uniq", id: false, force: :cascade do |t|
    t.integer "id",    limit: 3,             null: false
    t.integer "label", limit: 3, default: 0
    t.date    "date",                        null: false
    t.integer "count", limit: 3, default: 0, null: false
  end

  create_table "types_agents", id: false, force: :cascade do |t|
    t.integer "id",         limit: 4,   null: false
    t.string  "type",       limit: 100
    t.float   "percentage", limit: 24
  end

  create_table "types_owners", id: false, force: :cascade do |t|
    t.integer "id",         limit: 4,   null: false
    t.string  "type",       limit: 100
    t.float   "percentage", limit: 24
  end

end
