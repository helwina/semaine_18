text = "Un homme nourrissait une chèvre et un âne. Or la chèvre devint envieuse de l'âne, parce qu'il était trop bien nourri. Et elle lui dit : \"Entre la meule à tourner et les fardeaux à porter, ta vie est un tourment sans fin,\" et elle lui conseillait de simuler l'épilepsie, et de se laisser tomber dans un trou pour avoir du repos. Il suivit le conseil, se laissa tomber et se froissa tout le corps. Son maître ayant fait venir le vétérinaire, lui demanda un remède pour le blessé. Le vétérinaire lui prescrivit d'infuser le poumon..."

frequence = Hash.new(0)
  mots = text.tr('.,":', '').downcase.split(' ')
  mots.each do |mot|
  frequence[mot] += 1
  end

frequence = frequence.sort_by { |mot, count| count }
frequence.reverse!
first = frequence.first

frequence.each do |mot|
  puts "le mot \"#{mot[0]}\"apparait #{mot[1]} fois"
end

puts "Le mot qui apparait le plus souvent est le mot : \"#{first[0]}\" qui apparait #{first[1]} fois"
