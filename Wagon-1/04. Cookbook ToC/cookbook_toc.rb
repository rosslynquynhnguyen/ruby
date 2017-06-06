title = 'Recettes de kiffeur'

chapters = [
             ['Materiel pour cuisiner', 1],
             ['Produits de saison', 8],
             ['Sauces et soupes', 19],
             ['Viandes et Gibiers', 38],
             ['Poissons, coquillages et crustaces', 157]
           ]
           
# You program goes here !
puts title.center(65)
puts ''
for i in 0..chapters.length - 1
  puts "Chapter #{(i + 1).to_s.rjust(2)} : #{chapters[i][0].ljust(40)} #{('page ' + chapters[i][1].to_s).rjust(10)}"
end
