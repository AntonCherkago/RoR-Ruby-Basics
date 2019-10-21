class Doggy
  attr_accessor :name, :health, :hunger, :mood, :tiredness, :asleep, :defend

  def initialize(name)
    @name = name
    @health = 100
  	@mood = 100
  	@hunger = 0
  	@tiredness = 0
    @asleep = 100
    @defend = false
    puts "#{@name} начал жить с нами :)"
  end

  # кормить
  def feed
		p "Вы кормите #{@name}a"
    @hunger = 0
    @health += 10
    @mood += 10
		p "#{@name} понравилось :)"
    timePasses
  end

  # гулять
  def walk
		p "Вы гуляете с #{@name}"
		@tiredness += 30
    @mood += 20
    timePasses
  end

  # спать
  def go_to_sleep
	  p "#{@name} пошел спать"
    @hunger += 50
    @health += 25
    @asleep = 100
    @tiredness = 0
    timePasses
	 end

   # играть
  def play
    p "Весело играть с #{@name}!"
    @mood += 30
    @tiredness += 20
    @health += 5
    @hunger += 20
    timePasses
  end

   # купаться
  def bathe
    p "Нужно привести #{@name} в порядок"
    @health += 10
    @hunger += 5
    @mood +=5
    timePasses
  end

   # гладить, почесывать
  def scratch
    p "#{@name} любит когда его почесывают за ухом"
    @mood += 20
    timePasses
  end

   # увидеть незнакомца и защитить от него
  def see_some_stranger
    p "#{@name} рычит и лает"
    @defend = true
    @hunger += 5
    @asleep += 3
    if @hunger >= 70 && @asleep <= 20
      @health -= 5
    end
    timePasses
  end

  # help
  def help
    p "Собачку можно покормить - doggy.feed
       С ней можно поиграть - doggy.play
       Ее можно уложить спать - doggy.go_to_sleep
       С ней можно погулять - doggy.walk
       Собачку можно искупать - doggy.bathe
       Ее можно почесать за ухом - doggy.scratch
       Она может защитить - doggy.see_some_stranger"
  end

  # наблюдать
  def follow
		r = rand(1..3)
		case r
			when 1
				p "#{@name} бегал по комнате, нашел мячик и схватил его :)"
				@mood += 10
        @tiredness += 10
			when 2
				p "#{@name} гулял по улице, встретил другую собаку и они облаяли друг друга"
				@mood -= 5
        @tiredness += 5
			when 3
				p "Хозяина не было целый день дома. Когда он пришел, #{@name} был очень рад и вилял хвостом"
        @mood += 35
        @hunger += 55
  end

   # описание метода прохождения времени
  private

  def timePasses
    @hunger += 5
    @asleep += 5
    if @hunger > 80 && @health < 20
      p "#{@name} сбегает с дома, потому что вы плохо с ним обращались("
    end
  end

end


p = Doggy.new
