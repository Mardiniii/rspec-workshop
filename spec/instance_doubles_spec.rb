class Person
  def a(seconds)
    sleep(seconds)
    "hello"
  end
end

RSpec.describe Person do
  describe "regular double" do
    it "can implement any method" do
      person = double(a: "Hello", b: 20)

      expect(person.a).to eq("Hello")
    end
  end

  describe "instance double" do
    it "can only implment methods that are defined on the class" do
      person = instance_double(Person, a: "Hello")

      person = instance_double(Person)      
    end

    it "can only implment methods that are defined on the class matching arguments" do    
      person = instance_double(Person)
      # the next line should fail
      # allow(person).to receive(:a).with(3, 10).and_return("Hello")
      allow(person).to receive(:a).with(3).and_return("Hello")

      expect(person.a(3)).to eq("Hello")
    end
  end
end