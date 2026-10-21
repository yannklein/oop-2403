class SlotMachine
  SYMBOLS = %w[🍒 7️⃣ 🛎 ⭐️ 🤩]

  
  def initialize(reels =[])
    @reels = reels
  end

  def play
    @reels = []
    60.times do
      @reels = []
      3.times do
        @reels << SYMBOLS.sample
      end
      print "|\t" + @reels.join("\t|\t") + "\t|\r"
      $stdout.flush
      sleep(0.03)
    end
    puts "-" * 49
    print "|\t" + @reels.join("\t|\t") + "\t|\r"
    puts "\n" + "-" * 49
    return @reels
  end

  def score
    # If reels have same 3 items score is
    if @reels.uniq.size == 1
    # the item index plus one, multiply by 10
      (SYMBOLS.index(@reels[0]) + 1) * 10
    # If Two of the same + Joker
    elsif @reels.uniq.size == 2 && @reels.include?("🤩")
    # the item index plus one, multiply by 5
      other_reel = @reels[0] == "🤩" ? @reels[1] : @reels[0]
      (SYMBOLS.index(other_reel) + 1) * 5
    # If (2 jokers + anything)
    # 25
    # else 0
    else
      0
    end
  end
end