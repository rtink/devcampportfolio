10.times do |blog|
  Blog.create!(
      title: "My Blog Post #{blog}",
      body: "Zombie ipsum reversus ab viral inferno, nam rick grimes malum cerebro. 
        De carne lumbering animata corpora quaeritis. Summus brains sit, 
        morbo vel maleficia? De apocalypsi gorger omero undead survivor dictum mauris. 
        Hi mindless mortuis soulless creaturas, imo evil stalking monstra adventus resi 
        dentevil vultus comedat cerebella viventium. Qui animated corpse, cricket bat max
        brucks terribilem incessu zomby. The voodoo sacerdos flesh eater, suscitat mortuos 
        comedere carnem virus. Zonbi tattered for solum oculi eorum defunctis go lum cerebro. 
        Nescio brains an Undead zombies. Sicut malus putrid voodoo horror. Nigh tofth eliv ingdead."
    )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 75
    )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "My great service",
    body: "De apocalypsi gorger omero undead survivor dictum mauris. 
      Hi mindless mortuis soulless creaturas, imo evil stalking monstra 
      adventus resi dentevil vultus comedat cerebella viventium. 
      Qui animated corpse, cricket bat max brucks terribilem incessu zomby.",
    main_image: "http://via.placeholder.com/600x400",
    thumb_image: "http://via.placeholder.com/350x200",
    )
end

puts "9 portfolio items created"
