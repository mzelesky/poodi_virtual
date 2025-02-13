class Bottles

  def song
    verses(99, 0)
  end

  def verses(first_num, last_num)
    output = ''.dup
    first_num.downto(last_num).each do |number|
      output << verse(number)
      output << "\n" if number > last_num
    end
    output
  end

  def verse(number)
    "#{initial_quantity(number)} #{container(number)} of beer on the wall, " +
    "#{quantity(number)} #{container(number)} of beer.\n" +
    "#{action(number)}, " +
    "#{quantity(number - 1) } #{container(number - 1)} of beer on the wall.\n"
  end

  private

  def initial_quantity(number)
    if number == 0
      'No more'
    elsif number < 0
      99
    else
      number
    end
  end

  def action(number)
    case number
    when 0
      'Go to the store and buy some more'
    when 1
      'Take it down and pass it around'
    else
      'Take one down and pass it around'
    end
  end

  def container(number)
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end


  def quantity(number)
    if number == 0
      'no more'
    elsif number < 0
      99
    else
      number
    end
  end
end
