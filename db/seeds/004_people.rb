if Person.all.empty?
    Person.create([
        { 
           name: 'Harry', lastname: 'Potter', genre_id: Genre.where(name: 'Male').first.id, 
           real_photo: 'https://i.ibb.co/C9LrC1j/harry-real.jpg',
           cartoon_photo: 'https://i.ibb.co/cTv2VKK/harry-cartoon.jpg'
        },
        { 
            name: 'Ron', lastname: 'Weasley', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: 'https://i.ibb.co/nBN2QbF/ron-real.jpg',
            cartoon_photo: 'https://i.ibb.co/2c91mFm/ron-cartoon.jpg'
        },
        { 
            name: 'Hermione', lastname: 'Granger', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: 'https://i.ibb.co/Cn9YjPK/hermione-real.jpg',
            cartoon_photo: 'https://i.ibb.co/BChBvDR/hermione-cartoon.jpg'
        },
        { 
            name: 'Rubeus', lastname: 'Hagrid', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: 'https://i.ibb.co/qBHVRtJ/2002-Harry-Potter-And-The-Chamber-Of-Secrets-Original-Film-Title-Harry-Potter-And-The-Chamber-Of-Sec.jpg',
            cartoon_photo: 'https://i.ibb.co/rxSSKmy/hagrid-cartoon.jpg'
        },
        { 
            name: 'Albus', lastname: 'Dumbledore', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: 'https://i.ibb.co/NpnG2bn/dumbledore-real.jpg',
            cartoon_photo: 'https://i.ibb.co/YhBC3FD/dumbledore-cartoon.jpg'
        },
        { 
            name: 'Draco', lastname: 'Malfoy', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Minerva', lastname: 'McGonagall', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: 'https://i.ibb.co/wRprHyD/minerva-real.jpg',
            cartoon_photo: 'https://i.ibb.co/YcXr5Lf/minerva-cartoon.jpg'
        }
    ])

    puts "Seed -> People were created 🤓" 
else 
    puts "Seed -> People already exist 😅" 
end