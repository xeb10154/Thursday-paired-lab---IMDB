require_relative("../db/sql_runner")

class Casting

  attr_reader :id
  attr_accessor :fee, :star_id, :movie_id

  def initialize(options)
    @id = options["id"].to_i if options["id"]
    @star_id = options["star_id"]
    @movie_id = options["movie_id"]
    @fee = options["fee"]
  end

  def save()
    sql = "INSERT INTO castings (star_id, movie_id, fee)
    VALUES
    (
      $1,$2,$3
    )
    RETURNING id"

    values =[@star_id, @movie_id, @fee]
    result = SqlRunner.run(sql, values).first
    @id = result["id"].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM castings"
    SqlRunner.run(sql)
  end

  def update()
    sql = "UPDATE castings SET (star_id, movie_id, fee) =
     ($1, $2, $3)"

    values =

  end

end
