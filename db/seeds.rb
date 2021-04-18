Dj.destroy_all
Playlist.destroy_all

 
title = ["Coastal Drift- 6-7pm, June 5,2018", "Night Wavves — 6pm to 7pm, October 1, 2019", "Neon.wav, 7-8pm, February 16, 2018", "The Factory — 8 to 9pm, October 25, 2016","My Finest Hour: Finale — 3 to 4pm, December 12, 2016
    "]

5.times do 
    Dj.create(name: Faker::Name.name   , 
        username: Faker::Hipster.word ,
        password: "password",
        dj_name: Faker::Food.fruits )
    
        
end

Dj.create(name: "William", username:"3in1bodywash",dj_name: "3in1bodywash",password: "password")

10.times do

    Playlist.create(title: title.sample,
    dj: Dj.all.sample,
    genre: Faker::Music.genre,
    content: Faker::Quotes::Shakespeare.romeo_and_juliet_quote,
    air_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long))
    

    
end




puts "seeds have been planted :)"