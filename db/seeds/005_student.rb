if Student.all.empty?
    school = School.first

    Student.create([
        { 
            school_id: school.id, 
            school_house_id: SchoolHouse.where(name: 'Gryffindor').first.id,
            person_id: Person.where(name: 'Harry').first.id
        }
    ])
    puts "Seed -> Student were created 🤓" 
else 
    puts "Seed -> Students already exist 😅" 
end