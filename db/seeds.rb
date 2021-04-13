Dj.destroy_all
Playlist.destroy_all

show_type = ["Talk Show.","Specialty Show.","Rotation Show."]
title = ["Coastal Drift", "The Garden", "The Factory", "The Velvet Hour", "Neon.wav", "Night Wavves","My Finest Hour"]

5.times do 
    Dj.create(name: Faker::Name.name   , 
        username: Faker::Hipster.word ,
        password: "password",
        dj_name: Faker::Food.fruits )
    
        
end

10.times do

    Playlist.create(title: title.sample,
    dj: Dj.all.sample,
    show_type: show_type.sample,
    genre: Faker::Music.genre,
    content: Faker::Quotes::Shakespeare.romeo_and_juliet_quote )
    

    
end




puts "seeds have been planted :)"