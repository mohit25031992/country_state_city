
c1=Country.create( country: "INDIA")
c2=Country.create( country: "US")

s1= State.create( state: "MH", country_id: c1.id )
s2= State.create( state: "UP", country_id: c1.id )
s3= State.create( state: "Texas", country_id: c2.id )
s4= State.create( state: "Illinos", country_id: c2.id )


 City.create(city: "Mumbai", country_id: c1.id , state_id: s1.id )
 City.create( city: "Pune", country_id: c1.id , state_id: s1.id)
 City.create( city: "Lucknow", country_id: c1.id, state_id: s2.id )
 City.create( city: "Jhansi", country_id: c1.id , state_id: s2.id)



 City.create( city: "LosAngeles", country_id: c2.id , state_id: s3.id )
 City.create( city: "LasVegas", country_id: c2.id , state_id: s3.id)
 City.create( city: "Chicago", country_id: c2.id , state_id: s4.id )
 City.create( city: "xyz", country_id: c2.id , state_id: s4.id)



# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
