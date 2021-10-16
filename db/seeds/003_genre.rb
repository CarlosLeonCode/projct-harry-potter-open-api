if Genre.all.empty?
    Genre.create([
        { name: 'Female' },
        { name: 'Male' }
    ])
    puts "Seed -> Genres were created 🤓" 
else 
    puts "Seed -> Genres already exist 😅" 
end