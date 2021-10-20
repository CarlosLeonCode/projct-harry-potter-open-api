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
        },
        { 
            name: 'Severus', lastname: 'Snape', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Gilderoy', lastname: 'Lockhard', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Ginny', lastname: 'Weasly', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Lucius', lastname: 'Malfoy', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Vernon', lastname: 'Dursley', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Petunia', lastname: 'Dursley', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Dudley', lastname: 'Dursley', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Arthur', lastname: 'Weasly', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Molly', lastname: 'Weasly', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Sirius', lastname: 'Black', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Remus', lastname: 'Lupin', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Peter', lastname: 'Pettigrew', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Professor', lastname: 'Trelawney', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Neville', lastname: 'Longbottom', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: 'https://i.ibb.co/VT6JWJV/neville-real.jpg',
            cartoon_photo: ''
        },
        { 
            name: 'Fred', lastname: 'Weasley', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'George', lastname: 'Weasley', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Alastor', lastname: 'Moody', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: 'https://i.ibb.co/DbbcdMY/ojoloco-real.jpg',
            cartoon_photo: ''
        },
        { 
            name: 'Cedric', lastname: 'Diggory', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Cho', lastname: 'Chang', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Fleur', lastname: 'Delacour', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Viktor', lastname: 'Krum', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Rita', lastname: 'Skeeter', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Bartemius', lastname: 'Crouch Jr', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Lord', lastname: 'Voldemort', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Bellatrix', lastname: 'Lestrange', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Dolores', lastname: 'Umbridge', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Barty', lastname: 'Crouch Sr', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Cornelius', lastname: 'Fudge', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Luna', lastname: 'Lovegood', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: 'https://i.ibb.co/XjtWH7Q/luna-real.jpg',
            cartoon_photo: 'https://i.ibb.co/6mRHz7s/luna-cartoon.jpg'
        },
        { 
            name: 'Nymphadora', lastname: 'Tonks', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Argus', lastname: 'Flich', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Horace', lastname: 'Slughorn', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Narcissa', lastname: 'Malfoy', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Fenrir', lastname: 'Greyback', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Kingsley', lastname: 'Shacklebolt', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Rufus', lastname: 'Scrimgeour', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Xenophilius', lastname: 'Lovegood', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Bill', lastname: 'Weasly', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Gellert', lastname: 'Grindelwald', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Garrick', lastname: 'Ollivander', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Pomona', lastname: 'Sprout', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Percy', lastname: 'Weasly', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Charlie', lastname: 'Weasly', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Albus Severus', lastname: 'Potter', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Lily Luna', lastname: 'Potter', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'James Sirius', lastname: 'Potter', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Hugo', lastname: 'Weasley', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Rose', lastname: 'Weasley', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'James', lastname: 'Potter', genre_id: Genre.where(name: 'Male').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Lily', lastname: 'Evans', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: '',
            cartoon_photo: ''
        },
        { 
            name: 'Moaning', lastname: 'Myrtle', genre_id: Genre.where(name: 'Female').first.id, 
            real_photo: '',
            cartoon_photo: ''
        }
    ])

    puts "Seed -> People were created 🤓" 
else 
    puts "Seed -> People already exist 😅" 
end