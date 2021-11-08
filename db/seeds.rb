# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'cccc@yahoo.co.jp', password: 'cccccc', name:'c川c助', number:'011')
User.create(email: 'dddd@yahoo.co.jp', password: 'dddddd', name:'user-example', number:'012')
User.create(email: 'eeee@yahoo.co.jp', password: 'eeeeee', name:'user-example-1', number:'013')
User.create(email: 'ffff@yahoo.co.jp', password: 'ffffff', name:'user-example-2', number:'014')
User.create(email: 'gggg@yahoo.co.jp', password: 'gggggg', name:'user-example-3', number:'015')
User.create(email: 'hhhh@yahoo.co.jp', password: 'hhhhhh', name:'user-example-4', number:'016')
User.create(email: 'iiii@yahoo.co.jp', password: 'iiiiii', name:'user-example-5', number:'017')
User.create(email: 'jjjj@yahoo.co.jp', password: 'jjjjjj', name:'user-example-6', number:'018')
User.create(email: 'kkkk@yahoo.co.jp', password: 'kkkkkk', name:'user-example-7', number:'019')
User.create(email: 'llll@yahoo.co.jp', password: 'llllll', name:'user-example-8', number:'020') 
User.create(email: 'mmmm@yahoo.co.jp', password: 'mmmmmm', name:'user-example-9', number:'021')

Customer.create(user_id: '4', name: 'customer-example-4', address: '東京都千代田区平河町二丁目3番19号', postal_code: '000000000', telephone_number: '00000000000')
Customer.create(user_id: '5', name: 'customer-example-5', address: '東京都千代田区平河町二丁目3番19号', postal_code: '000000000', telephone_number: '00000000000')
Customer.create(user_id: '6', name: 'customer-example-6', address: '東京都千代田区平河町二丁目3番19号', postal_code: '000000000', telephone_number: '00000000000')
Customer.create(user_id: '7', name: 'customer-example-7', address: '東京都千代田区平河町二丁目3番19号', postal_code: '000000000', telephone_number: '00000000000')
Customer.create(user_id: '8', name: 'customer-example-8', address: '東京都千代田区平河町二丁目3番19号', postal_code: '000000000', telephone_number: '00000000000')
Customer.create(user_id: '9', name: 'customer-example-9', address: '東京都千代田区平河町二丁目3番19号', postal_code: '000000000', telephone_number: '00000000000')
Customer.create(user_id: '10', name: 'customer-example-10', address: '東京都千代田区平河町二丁目3番19号', postal_code: '000000000', telephone_number: '00000000000')
Customer.create(user_id: '11', name: 'customer-example-11', address: '東京都千代田区平河町二丁目3番19号', postal_code: '000000000', telephone_number: '00000000000')
Customer.create(user_id: '12', name: 'customer-example-12', address: '東京都千代田区平河町二丁目3番19号', postal_code: '000000000', telephone_number: '00000000000')
Customer.create(user_id: '13', name: 'customer-example-13', address: '東京都千代田区平河町二丁目3番19号', postal_code: '000000000', telephone_number: '00000000000')

Item.create(name: 'item-example-1', content: 'example-1', image:File.open("./db/fixtures/142_refileDownloadImage.png"))
Item.create(name: 'item-example-2', content: 'example-2', image:File.open("./db/fixtures/142_refileDownloadImage.png"))
Item.create(name: 'item-example-3', content: 'example-3', image:File.open("./db/fixtures/142_refileDownloadImage.png"))
Item.create(name: 'item-example-4', content: 'example-4', image:File.open("./db/fixtures/142_refileDownloadImage.png"))
Item.create(name: 'item-example-5', content: 'example-5', image:File.open("./db/fixtures/142_refileDownloadImage.png"))
Item.create(name: 'item-example-6', content: 'example-6', image:File.open("./db/fixtures/142_refileDownloadImage.png"))
Item.create(name: 'item-example-7', content: 'example-7', image:File.open("./db/fixtures/142_refileDownloadImage.png"))
Item.create(name: 'item-example-8', content: 'example-8', image:File.open("./db/fixtures/142_refileDownloadImage.png"))
Item.create(name: 'item-example-9', content: 'example-9', image:File.open("./db/fixtures/142_refileDownloadImage.png"))
Item.create(name: 'item-example-10', content: 'example-10', image:File.open("./db/fixtures/142_refileDownloadImage.png"))
Item.create(name: 'item-example-11', content: 'example-11', image:File.open("./db/fixtures/142_refileDownloadImage.png"))

Admin.create(email: 'admin-example@yahoo.co.jp', password: 'example')