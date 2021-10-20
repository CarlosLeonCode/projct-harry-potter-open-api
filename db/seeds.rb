Dir[Rails.root.join('db', 'seeds', '*.rb')].sort.each do |f|
    load f
end