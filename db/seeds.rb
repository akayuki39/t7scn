# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.delete_all
Article.delete_all

Category.create!([{name: 'characters'}, {name: 'songs'}])
Article.create!([
  {
    title:    'Kasukebe Haru',
    category_id: Category.find_by(name: "characters").id,
    content:
      %{<p>
        This is the page for Kasukabe Haru.
        </p>}
  },
  {
    title:    'Tendouji Musubi',
    category_id: Category.find_by(name: "characters").id,
    content:
      %{<p>
        This is the page for Tendouji Musubi.
        </p>}
  },
  {
    title:    'Star☆Glitter',
    category_id: Category.find_by(name: "songs").id,
    content:
      %{<p>
        This is the page for Star☆Glitter.
        </p>}
  } ])