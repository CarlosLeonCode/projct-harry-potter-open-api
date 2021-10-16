if SchoolHouse.all.empty?
    SchoolHouse.create([
        { name: 'Gryffindor', url_logo: 'https://i.ibb.co/8MJY087/Gryffindor.jpg', school_id: 1},
        { name: 'Hufflepuff', url_logo: 'https://i.ibb.co/G9c2JvW/hufflepuf.jpg', school_id: 1},
        { name: 'Ravenclaw', url_logo: 'https://i.ibb.co/PYcSYqS/ravenclaw.jpg', school_id: 1},
        { name: 'Slytherin', url_logo: 'hhttps://i.ibb.co/gytPcxf/slytherin.jpg', school_id: 1 }
    ])
    puts "Seed -> School houses created 🤓" 
else 
    puts "Seed -> School houses already exist 😅" 
end