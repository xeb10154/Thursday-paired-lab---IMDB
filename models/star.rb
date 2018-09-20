require_relative("../db/sql_runner")
require("pry")

class Star

  attr_reader :id
  attr_accessor :first_name, :last_name

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @first_name = options["first_name"]
    @last_name = options["last_name"]
  end

  def save()
    sql = "INSERT INTO stars (first_name, last_name)
    VALUES
    (
      $1,$2
    )
    RETURNING id"

    values =[@first_name, @last_name]
    result = SqlRunner.run(sql, values).first
    @id = result["id"].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM stars"
    SqlRunner.run(sql)
  end

  def movies
    sql = "SELECT movies.*
      FROM movies INNER JOIN castings
      ON movies.id = castings.movie_id
      WHERE star_id = $1"

      values = [@id]
      movies_data = SqlRunner.run(sql, values)
      return movies_data.map {|movies_hash| Movie.new(movies_hash)}
      # binding.pry
  end

end
