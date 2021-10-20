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
        },
        {
            name: 'Durmstrang Institute',
            url_logo: ''
        },
        {
            name: 'Ilvermorny School of Witchcraft and Wizardry',
            url_logo: ''
        },
        {
            name: 'Koldovstoretz',
            url_logo: ''
        },
        {
            name: 'Mahoutokoro School of Magic',
            url_logo: ''
        },
        {
            name: 'Uagadou School of Magic',
            url_logo: ''
        },
    ])
    puts "Seed -> School created 🤓" 
else 
    puts "Seed -> School already exist 😅"
end