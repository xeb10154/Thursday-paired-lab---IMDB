require_relative("./models/casting")
require_relative("./models/star")
require_relative("./models/movie")

require("pry-byebug")

Movie.delete_all
Star.delete_all
Casting.delete_all()


star1 = Star.new({
  "first_name" => "Tom",
  "last_name" => "Hanks"
  })
  star1.save()

  star2 = Star.new({
    "first_name" => "Meg",
    "last_name" => "Ryan"
    })
    star2.save()

    star3 = Star.new({
      "first_name" => "Sam",
      "last_name" => "Rockwell"
      })
      star3.save()

      movie1 = Movie.new({
        "title" => "The Green Mile",
        "genre" => "Drama"
        })
        movie1.save()

        movie2 = Movie.new({
          "title" => "Saving Private Ryan",
          "genre" => "Action"
          })
          movie2.save()

          movie3 = Movie.new({
            "title" => "Sleepless in Seatle",
            "genre" => "Romance"
            })
            movie3.save()

            casting1 = Casting.new({
              "star_id" => star1.id,
              "movie_id" => movie1.id,
              "fee" => 500
              })
              casting1.save()

              casting2 = Casting.new({
                "star_id" => star2.id,
                "movie_id" => movie3.id,
                "fee" => 200
                })
                casting2.save()

                casting3 = Casting.new({
                  "star_id" => star1.id,
                  "movie_id" => movie2.id,
                  "fee" => 100
                  })
                  casting3.save()

                  casting4 = Casting.new({
                    "star_id" => star3.id,
                    "movie_id" => movie1.id,
                    "fee" => 800
                    })
                    casting4.save()

                    casting5 = Casting.new({
                      "star_id" => star1.id,
                      "movie_id" => movie3.id,
                      "fee" => 100
                      })
                      casting5.save()


star1.movies()

movie1.stars()






binding.pry
nil
