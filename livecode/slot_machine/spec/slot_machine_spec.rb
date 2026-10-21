require_relative "../slot_machine"

def test_scenario(reels, result)
  it "should return #{result} if the reels is #{reels.join(" ")}" do
      slot_machine = SlotMachine.new(reels)
      expected = result
      actual  = slot_machine.score
      expect(actual).to eq(expected)
  end
end

describe SlotMachine do
  describe "#score" do
    test_scenario(["🍒", "7️⃣", "🛎"], 0)
    test_scenario(%w[⭐️ 🛎 7️⃣], 0)
    test_scenario(%w[🤩 🤩 🤩], 50)
    test_scenario(%w[⭐️ ⭐️ ⭐️], 40)
    test_scenario(%w[🛎 🛎 🛎], 30)
    test_scenario(%w[7️⃣ 7️⃣ 7️⃣], 20)
    test_scenario(%w[🍒 🍒 🍒], 10)
    test_scenario(%w[🤩 ⭐️ ⭐️], 20)
    test_scenario(%w[🤩 🛎 🛎], 15)
    test_scenario(%w[🤩 7️⃣ 7️⃣], 10)
    test_scenario(%w[🤩 🍒 🍒], 5)
    test_scenario(%w[🤩 🤩 ⭐️], 25)
    test_scenario(%w[🤩 🤩 🛎], 25)
    test_scenario(%w[🤩 🤩 7️⃣], 25)
    test_scenario(%w[🤩 🤩 🍒], 25)
  end
end