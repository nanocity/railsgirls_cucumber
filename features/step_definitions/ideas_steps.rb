Dado(/^que he creado (\d+) ideas$/) do |num|
  num.to_i.times do |i|
    Idea.create!( name: "Idea #{i}", description: "Idea numero #{i}" )
  end

  Idea.count.should eql 2
end

Cuando(/^visito la página de edición de la primera idea$/) do
  visit edit_idea_path( Idea.first )
end

Cuando(/^elijo ponerle (\d+) estrellas$/) do |num|
  select num.to_i, from: 'idea_stars'
  click_button "Update"
end

Cuando(/^visito el listado principal$/) do
  visit ideas_path
end

Entonces(/^debería ver (\d+) estrellas para la primera idea$/) do |num|
  page.should have_selector( 'i.fa.fa-star' )
end
