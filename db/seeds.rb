# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Annonce.destroy_all

Annonce.create(name: 'Elsa Wild', child_number: 3, adresse: '32 bd saint germain', picture: 'http://static1.squarespace.com/static/5424a65de4b07a1288bf1460/t/5613fec9e4b075fc1f9329af/1444150985884/Children+often+develop+very+close+attachments+to+their+caregivers+-+this+helps+with+social+bonding.++Image+courtesy+of+Google.?format=1500w', city: 'paris', price: 25,  description: 'Animatrice dans un périscolaire et centre de loisirs je suis acellement en mise en disponibilité pour un an. Je suis à la recherche d une garde d enfants à domicile n ayant pas encore fait ma demande d agrément je suis donc considéré comme baby sitter',)
Annonce.create(name: 'Mathilde Cochet', child_number: 3, adresse: '24 cours de l ile Seguin', picture: 'http://static1.squarespace.com/static/5424a65de4b07a1288bf1460/t/54887df6e4b060c67e7958fd/1418231287047/nanny.jpg', city: 'paris', price: 15,  description: 'Animatrice dans un périscolaire et centre de loisirs je suis acellement en mise en disponibilité pour un an. Je suis à la recherche d une garde d enfants à domicile n ayant pas encore fait ma demande d agrément je suis donc considéré comme baby sitter',)
Annonce.create(name: 'Margaux Savy', child_number: 3, adresse: '44 rue Pauline Borghese', picture: 'http://i.huffpost.com/gen/934898/images/o-NANNY-QUESTIONNAIRE-facebook.jpg', city: 'Neuilly-sur-Seine', price: 20,  description: 'Animatrice dans un périscolaire et centre de loisirs je suis acellement en mise en disponibilité pour un an. Je suis à la recherche d une garde d enfants à domicile n ayant pas encore fait ma demande d agrément je suis donc considéré comme baby sitter',)
Annonce.create(name: 'Audrey Achache', child_number: 3, adresse: '14 rue du four', picture: 'http://cdn.sheknows.com/articles/2012/04/sarah_parenting/nanny-parent.jpg', city: 'paris', price: 25,  description: 'Animatrice dans un périscolaire et centre de loisirs je suis acellement en mise en disponibilité pour un an. Je suis à la recherche d une garde d enfants à domicile n ayant pas encore fait ma demande d agrément je suis donc considéré comme baby sitter',)
Annonce.create(name: 'Basma Tahir', child_number: 3, adresse: '4 Villa Gaudelet', picture: 'http://cdn2.hubspot.net/hub/54123/file-14519879-jpg/images/aa013900.jpg?t=1446208316692', city: 'paris', price: 15,  description: 'Animatrice dans un périscolaire et centre de loisirs je suis acellement en mise en disponibilité pour un an. Je suis à la recherche d une garde d enfants à domicile n ayant pas encore fait ma demande d agrément je suis donc considéré comme baby sitter',)
Annonce.create(name: 'Alexandra Maubouss', child_number: 3, adresse: '74 bd saint germain', picture: 'http://static1.squarespace.com/static/51a3ad6ee4b020a19ed5dbc0/t/51a678b7e4b08ef6a68bc825/1369864376550/nanny-1.jpg', city: 'paris', price: 20,  description: 'Animatrice dans un périscolaire et centre de loisirs je suis acellement en mise en disponibilité pour un an. Je suis à la recherche d une garde d enfants à domicile n ayant pas encore fait ma demande d agrément je suis donc considéré comme baby sitter',)
Annonce.create(name: 'Emma Sadone', child_number: 3, adresse: '16 Villa Gaudelet', picture: 'http://www.thenanny.com/nanny/tnhp2.jpg', city: 'paris', price: 25,  description: 'Animatrice dans un périscolaire et centre de loisirs je suis acellement en mise en disponibilité pour un an. Je suis à la recherche d une garde d enfants à domicile n ayant pas encore fait ma demande d agrément je suis donc considéré comme baby sitter',)




