# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Artwork.destroy_all
ArtworkShare.destroy_all 

user_1 = User.create(username: 'Matt')
user_2 = User.create(username: 'Rz')
user_3 = User.create(username: 'Josh')

aw_1 = user_1.artworks.create(title: 'Sunset Over the Moon', image_url: 'https://tinyurl.com/yxnnkpca')
aw_2 = user_1.artworks.create(title: 'Sunset Over the Ocean', image_url: 'https://tinyurl.com/y3rypqdz')

# user_2.shared_artworks.create(aw_1)
# user_3.shared_artworks.create(aw_1)

# aw_1.artwork_shares.create(viewer: user_3.id)
# aw_2.artwork_shares.create(viewer: user_3.id)

ArtworkShare.create(viewer_id: user_2.id, artwork_id: aw_1.id)
ArtworkShare.create(viewer_id: user_3.id, artwork_id: aw_1.id)
ArtworkShare.create(viewer_id: user_3.id, artwork_id: aw_2.id)