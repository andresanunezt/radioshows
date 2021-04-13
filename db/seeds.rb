Dj.destroy_all
Playlist.destroy_all

 
title = ["Coastal Drift Tuesday 34", "The Garden", "The Factory", "The Velvet Hour", "Neon.wav", "Night Wavves","My Finest Hour"]

5.times do 
    Dj.create(name: Faker::Name.name   , 
        username: Faker::Hipster.word ,
        password: "password",
        dj_name: Faker::Food.fruits )
    
        
end

10.times do

    Playlist.create(title: title.sample,
    dj: Dj.all.sample,
    genre: Faker::Music.genre,
    content: Faker::Quotes::Shakespeare.romeo_and_juliet_quote,
    air_time: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :long),
    host: "Sample DJ NAME")
    

    
end




puts "seeds have been planted :)"