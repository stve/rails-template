# http://robots.thoughtbot.com/post/30994874643/testing-your-factories-first

FactoryGirl.factories.map(&:name).each do |factory_name|
  describe "The #{factory_name} factory" do
    it 'is valid' do
      build(factory_name).should be_valid
    end
  end
end
