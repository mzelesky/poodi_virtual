class Bottles

  def song
    verses(99, 0)
  end

  def verses(first_num, last_num)
    output = ''.dup
    first_num.downto(last_num).each do |verse_num|
      output << verse(verse_num)
      output << "\n" if verse_num > last_num
    end
    output
  end

  def verse(verse_num)
    if verse_num < 1
      final_verse
    else
      standard_verse(verse_num)
    end
  end

  private

  def standard_verse(verse_num)
    "#{quantity(verse_num)} #{container(verse_num)} of beer on the wall, " +
    "#{quantity(verse_num)} #{container(verse_num)} of beer.\n" +
    "Take #{subject(verse_num)} down and pass it around, " +
    "#{quantity(verse_num - 1) } #{container(verse_num - 1)} of beer on the wall.\n"
  end

  def final_verse
    'No more bottles of beer on the wall, ' +
    "no more bottles of beer.\n" +
    'Go to the store and buy some more, ' +
    "99 bottles of beer on the wall.\n"
  end

  def container(verse_num)
    if verse_num == 1
      'bottle'
    else
      'bottles'
    end
  end

  def subject(verse_num)
    case verse_num
    when 1
      'it'
    else
      'one'
    end
  end

  def quantity(verse_num)
    case verse_num
    when 0
      'no more'
    else
      verse_num
    end
  end
end
