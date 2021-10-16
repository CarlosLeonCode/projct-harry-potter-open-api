Dir[Rails.root.join('db', 'seeds', '*.rb')].each do |f|
    load f
end