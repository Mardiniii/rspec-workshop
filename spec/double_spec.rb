RSpec.describe "a random double" do
  it "only allows defined methods to be involved" do
    stuntman = double("Mr. Danger", fall_of_ladder: "Ouch", light_on_fire: true)
    
    expect(stuntman.fall_of_ladder).to eq("Ouch")
    expect(stuntman.light_on_fire).to eq(true)
  end

  it "only allows defined methods to be involved using allow" do
    stuntman = double("Mr. Danger")
    allow(stuntman).to receive(:fall_of_ladder).and_return("Ouch")
    expect(stuntman.fall_of_ladder).to eq("Ouch")
  end

  it "only allows defined methods to be involved using receive_messages" do
    stuntman = double("Mr. Danger")
    allow(stuntman).to receive_messages(fall_of_ladder: "Ouch", light_on_fire: true)

    expect(stuntman.fall_of_ladder).to eq("Ouch")
    expect(stuntman.light_on_fire).to eq(true)
  end 
end