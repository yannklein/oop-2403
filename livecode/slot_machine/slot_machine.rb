# Let’s implement a SlotMachine class with 3 reels. Each reel has 5 different items.
# SlotMachine.new             => ready to play slot machine
# SlotMachine.new(%w[🍒 7️⃣ 🛎]) => already played slot machine

# The class has one public instance method, `score`, following these rules:

# Item	      Three of the same	  Two of the same + Joker
# Joker   🤩	50	                25 (2 jokers + anything)
# Star    ⭐️	40	                20
# Bell    🛎	30	                15
# Seven   7️⃣	 20	                 10
# Cherry  🍒	10	                5

# Optional
# The class has one public instance method, `play` udpate and return random combi of reels.

# SYMBOLS = %w[🍒 7️⃣ 🛎 ⭐️ 🤩]
SYMBOLS = ["🍒", "7️⃣", "🛎", "⭐️", "🤩"]
#           0.    1.   2.    3.    4 
#           1     2
#           10    20

# SlotMachine.new(["🍒", "7️⃣", "🛎"]) 

class SlotMachine
  def initialize(reels)
    @reels = reels
    @result = 0
  end

  def score
    # if all 3 are the same return max score
    if @reels.uniq.count == 1
      return (SYMBOLS.index(@reels.first) + 1) * 10
    # if 2 are the same + joker return half of max
    
    # else return 0
    else
      return 0
    end
  end
end