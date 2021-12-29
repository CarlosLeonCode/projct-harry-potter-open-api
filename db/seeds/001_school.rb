if School.all.empty?
    School.create([
        {
            name: 'Hogwarts School of Witchcraft and Wizardry',
            url_logo: 'https://i.ibb.co/60HvbSm/hogwarts.jpg'
        },
        {
            name: 'Beauxbatons Academy of Magic',
            url_logo: ''
        },
        {
            name: 'Castelobruxo',
            url_logo: ''
        }
    ])
    puts "Seed -> School created 🤓" 
else 
    puts "Seed -> School already exist 😅"
end