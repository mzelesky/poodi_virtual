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
    elsif verse_num == 1
      one_bottle
    else
      standard_verse(verse_num)
    end
  end

  private

  def standard_verse(verse_num)
    "#{verse_form(verse_num)} #{bottle_form(verse_num)} of beer on the wall, " +
    "#{verse_form(verse_num)} #{bottle_form(verse_num)} of beer.\n" +
    'Take one down and pass it around, ' +
    "#{verse_form(verse_num - 1) } #{bottle_form(verse_num - 1)} of beer on the wall.\n"
  end

  def one_bottle
    '1 bottle of beer on the wall, ' +
    "1 bottle of beer.\n" +
    'Take it down and pass it around, ' +
    "no more bottles of beer on the wall.\n"
  end

  def final_verse
    'No more bottles of beer on the wall, ' +
    "no more bottles of beer.\n" +
    'Go to the store and buy some more, ' +
    "99 bottles of beer on the wall.\n"
  end

  def bottle_form(verse_num)
    if verse_num == 1
      'bottle'
    else
      'bottles'
    end
  end

  def verse_form(verse_num)
    if verse_num < 1
      'no more'
    else
      verse_num
    end
  end
end
