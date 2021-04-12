RadioStation.destroy_all
Show.destroy_all

show_type = ["Talk Show.","Specialty Show.","Rotation Show."]


5.times do 
    RadioStation.create(name:Faker::JapaneseMedia::Naruto.village , 
        username: Faker::Hipster.word ,
        password: "password",
        region:)
    
end

10.times do

    Show.create(name: Faker::TvShows::TwinPeaks.location ,
    radio_station: RadioStation.all.sample,
    host: Host.all.sample,
    show_type: show_type.sample,
    )
    



end




puts "seeds have been planted :)"