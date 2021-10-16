if School.all.empty?
    School.create({
        name: 'Hogwarts',
        url_logo: 'https://i.ibb.co/60HvbSm/hogwarts.jpg'
    })
    puts "Seed -> School created 🤓" 
else 
    puts "Seed -> School already exist 😅"
end