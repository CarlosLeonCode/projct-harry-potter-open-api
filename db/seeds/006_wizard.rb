if Wizard.all.empty?
    Wizard.create([
        { 
           person_id: Person.where(name: 'Harry').first.id, 
           wand_name: 'no identify',
        } 
    ])

    puts "Seed -> Wizards were created 🤓" 
else 
    puts "Seed -> Wizards already exist 😅" 
end