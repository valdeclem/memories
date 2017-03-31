# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: "admin@gmail.com", password: "111111", password_confirmation: "111111", firstname: "Clément", lastname: "Valderrama" )
User.create!(email: "user1@gmail.com", password: "111111", password_confirmation: "111111", firstname: "Alissa", lastname: "Ruiz" )
User.create!(email: "user2@gmail.com", password: "111111", password_confirmation: "111111", firstname: "Elie", lastname: "Margoet" )

title = ["","Bordeaux","Un monde magnifique","La grande Chine","Juste un petit tour","Allo on m'entend?"]
town = ["","Bordeaux","Paris","Gers","Nice","Toulouse"]
history = [
  "",
  "Au temps de la Nouvelle-France, le succès de la traite des fourrures dépendait du travail des hommes qui transportaient les fourrures. Au tout début de la colonie, ces hommes étaient des coureurs de bois. Le coureur de bois était indépendant. Il travaillait par lui-même et pour lui-même. Mais vers 1763, la traite des fourrures a quelque peu changé et c’est le voyageur qui a commencé à faire ce même travail.
Les voyageurs étaient engagés par une compagnie de fourrure. Ils travaillaient donc pour cette compagnie. Le voyageur qui travaillait pour la Compagnie du Nord-Ouest (de Montréal) s’appelait le \"Canadien\". Quant au voyageur qui travaillait pour la Compagnie de la Baie d’Hudson (de l’Angleterre), il s’appelait \"Orkneyman\".",
  "Si la rencontre avec la cuisine des peuples du Nouveau Monde a modifié en profondeur le régime alimentaire européen, l’introduction de ces produits dans notre quotidien ne s’est pas faite en un jour. L’arrivée d’ingrédients inconnus, exotiques et étranges a parfois donné lieu à des rumeurs, à des méfiances et inquiétudes d’autant plus fortes que ces produits étaient radicalement nouveaux.
!Comme nous le rappelle l’anthropologue Claude Lévi-Strauss, pour être « bon à manger », un aliment doit d’abord être « bon à manger », c’est-à-dire qu’il doit trouver une place dans notre représentation du monde, rentrer dans la sphère du culturellement mangeable, du comestible, voire du délicieux. Faute d’être pensable, l’inconnu ne saurait trouver place dans notre assiette. En témoigne par exemple la réaction de dégoût que suscite généralement l’idée de manger des insectes, ces ingrédients étant a priori exclus de notre champ alimentaire.",
  "La fin de l’automne et le début de l’hiver sont les moments parfaits pour improviser un week-end quelque part, en Europe, en France, et plus encore à Paris.
Je dis souvent qu’il s’agit de ma ville préférée ; que je la connais sur le bout de mes doigts tout en étant conscient que je n’arriverai jamais à tout découvrir d’elle. Parce qu’elle se réinvente en permanence ; parce qu’il y a mille et uns secrets cachés, oubliés, hérités de siècles d’histoires.
Mais, pour une personne qui découvrirait la ville pour la première fois, ou pour deux personnes qui sont déjà passés par la capitale mais qui y viennent pour la première fois en amoureux, en détente, en loisirs, en vacances, que pourrais-je leur conseiller ? Pour un week-end improvisé à Paris, original et très personnel, loin des Tour Eiffel et Bateaux-mouches, voici le programme que je concocterais pour deux amis ou amants.",
  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
  "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",


]
date = ["","2017-03-31","1942-03-31","2000-01-02","1999-03-09","1976-12-25"]
(1..5).each do |i|
  Memory.create!(histoire: history[i], category: "text", user_id: 1, title: title[i], adress: town[i], date: date[i])
end


# Memory.create!(histoire: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In feugiat purus dapibus fermentum sagittis. Fusce in tempus felis. Phasellus a erat ut lorem lacinia bibendum. Vivamus viverra facilisis neque, in scelerisque urna pharetra vel. Donec a est mauris. Integer eget metus quis eros egestas elementum. Integer bibendum risus hendrerit dapibus tempor. Fusce placerat in orci vitae tincidunt.",
# category: "text", user_id: 1, title: title[i], adress: town[i], date: date[i])
