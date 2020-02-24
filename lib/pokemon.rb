class Pokemon

<<<<<<< HEAD

attr_accessor :id, :name, :type, :db
@@all = []

=======
>>>>>>> aef94a1bb6f4d58bc90e99de003c69d72a62b6e4
  def initialize(id:, name:, type:, db:)
    @id = id
    @name = name
    @db = db
<<<<<<< HEAD
    @type = type
    @@all << self
  end

  def self.save(name, type, db)
    sql = <<-SQL
    INSERT INTO pokemon(name, type)
    VALUES (?,?)
    SQL
    db.execute(sql,name, type)
  end

    def self.find(id, db)
      pokemon = db.execute("SELECT * FROM pokemon WHERE id=?", id).flatten
      new_id = pokemon[0]
      name = pokemon[1]
      type = pokemon[2]
      new_pokemon = self.new(id: new_id, name: name, type: type, db: db)
      new_pokemon
    end

=======

  end

  def self.save

  end

  def self.find

  end
>>>>>>> aef94a1bb6f4d58bc90e99de003c69d72a62b6e4

end
