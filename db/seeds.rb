# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

NewsItem.create!([
                 {id: 1, title: "Taxidermy heirloom DIY kitsch scenester, pickled migas tilde.", intro_text: "some blabalbla text", body: "Thundercats irony Pinterest art party, fap chia small batch sartorial paleo iPhone Pitchfork photo booth asymmetrical cardigan. Four loko street art Carles umami, deep v pug whatever drinking vinegar post-ironic messenger bag. Cronut paleo sartorial High Life. 8-bit seitan single-origin coffee hashtag. Forage cardigan pop-up, viral Shoreditch stumptown pork belly typewriter cray semiotics ugh fashion axe Wes Anderson cred. Locavore paleo try-hard, flannel Shoreditch Tumblr farm-to-table 3 wolf moon PBR&B heirloom fashion axe before they sold out gastropub. Taxidermy heirloom DIY kitsch scenester, pickled migas tilde.", category_id: 2},
                 {id: 2, title: "Banjo selfies Portland hashtag selvage beard craft beer typewriter.",intro_text: "some blabalbla text", body: "Blue Bottle next level yr tofu. Messenger bag yr farm-to-table beard. Biodiesel narwhal cold-pressed Marfa salvia aesthetic McSweeney's. Gentrify banjo Bushwick, retro PBR tilde occupy paleo church-key mumblecore bitters. Sriracha paleo synth, craft beer Brooklyn trust fund gluten-free Carles literally kale chips Odd Future flannel. 90's bespoke scenester pop-up whatever ugh, ethical next level biodiesel. Banjo selfies Portland hashtag selvage beard craft beer typewriter.", category_id: 1},
                 {id: 3, title: "VHS post-ironic hella, single-origin coffee typewriter 90's flexitarian",intro_text: "some blabalbla text", body: "Four loko PBR&B stumptown Intelligentsia. Photo booth small batch Banksy, raw denim quinoa letterpress stumptown bicycle rights polaroid tote bag. Biodiesel High Life leggings, butcher organic DIY pop-up plaid normcore. Messenger bag trust fund authentic banjo vinyl. Keffiyeh street art bespoke twee, 90's synth mustache crucifix squid before they sold out Neutra viral Intelligentsia. Wolf scenester four loko Tumblr, street art cardigan blog Bushwick polaroid. Helvetica VHS post-ironic hella, single-origin coffee typewriter 90's flexitarian sriracha vinyl Neutra XOXO.", category_id: 3},
                 {id: 4, title: "Tousled forage skateboard polaroid swag dreamcatcher", intro_text: "some blabalbla text", body: "Wes Anderson actually single-origin coffee gastropub kitsch put a bird on it distillery messenger bag pour-over keytar, twee photo booth lomo keffiyeh. Typewriter flexitarian twee asymmetrical, food truck meditation locavore DIY plaid. Blue Bottle fingerstache whatever viral farm-to-table chambray, food truck tofu organic. Vice ethical twee, fanny pack synth wolf plaid. PBR&B fanny pack Helvetica pug. Lumbersexual aesthetic PBR gentrify pickled butcher pork belly tote bag, iPhone you probably haven't heard of them whatever Godard YOLO taxidermy. Roof party irony tofu retro single-origin coffee ennui before they sold out, tousled forage skateboard polaroid swag dreamcatcher.", category_id: 2},
             ])
Category.create!([
                     {id: 1, title: "guests"},
                     {id: 2, title: "trip"},
                     {id: 3, title: "meeting"}
                 ])