# Define parameters
nb_cities = 5
nb_tags = 10
nb_users = 20
nb_gossips = 20
nb_tags = 50
nb_link_gossips_tag = 20
nb_private_messages = 50


# Create cities
nb_cities.times do |i|
  c = City.create(name: "City n°#{i+1}", postal_code: i*100)
end

# Create tags
nb_tags.times do |i|
  t = Tag.create(title: "Tag n°#{i+1}")
end

# Create users
nb_users.times do |i|
  u = User.create(
    first_name: "fname_#{i+1}",
    last_name: "lname_#{i+1}",
    description: "blablabla_#{i+1}",
    city: City.find(Random.new.rand(1..nb_cities)),
    email: "lname_#{i+1}",
    age: Random.new.rand(12..99)
    )
end

# Create gossips
nb_gossips.times do |i|
  g = Gossip.create(title: "title_#{i+1}", content: "blablabla_#{i+1}", user: User.find(Random.new.rand(1..nb_users)))
end

# Create tags
nb_tags.times do |i|
  t = Tag.create(title: "Tag_#{i+1}")
end

# Create links between tags & gossips (n - n relationship)
nb_link_gossips_tag.times do |i|
  Gossip.find(Random.new.rand(1..nb_gossips)).tags << Tag.find(Random.new.rand(1..nb_tags))
end

# Create private messages
nb_private_messages.times do |i|
  pm = PrivateMessage.create(content: "blablabla gem les frites #{i}", recipient_id: Random.new.rand(1..20), sender_id: Random.new.rand(1..20))

  #ATTENTION QUENTIN, JAI RAJOUTÉ QUELQUES TRUCS LIGNE 50, POUR ESSAYER DE GENERER DES RECIPIENTS ET DES SENDERS (a partir de recipient_id)
