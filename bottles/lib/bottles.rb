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
    puts
    "#{quantity(number).capitalize} #{container(number)} of beer on the wall, " +
    "#{quantity(number)} #{container(number)} of beer.\n" +
    "#{action(number)}, " +
    "#{quantity(number - 1) } #{container(number - 1)} of beer on the wall.\n"
  end

  private

  def quantity(number)
    if number == 0
      'no more'
    elsif number < 0
      99.to_s
    else
      number.to_s
    end
  end

  def action(number)
    case number
    when 0
      'Go to the store and buy some more'
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def pronoun(number)
    case number
    when 1
      'it'
    else
      'one'
    end
  end

  def container(number)
    if number == 1
      'bottle'
    else
      'bottles'
    end
  end
end
