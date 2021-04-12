RadioStation.destroy_all
Show.destroy_all


5.times do 
    RadioStation.create(name: Faker::Mountain.name, 
        username: Faker::Hipster.word ,
        password: "password")
    
end
