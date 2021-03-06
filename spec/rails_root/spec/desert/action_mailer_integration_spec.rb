require File.expand_path("#{File.dirname(__FILE__)}/../rails_spec_helper")

module ActionMailer
  describe Base do
    describe "#render template" do
      it "gives priority to the rails app" do
        @base = ::SpiffyMailer.create_spiffy_mail
        @base.body.should == "From App"
      end

      it "gives priority to plugins added later" do
        @base = ::SpiffyMailer.create_acts_as_spiffy
        @base.body.should == "From Super Spiffy"
      end
    end
  end

  if !Desert::VersionChecker.rails_version_is_below_220?
    describe "view_paths" do
      it "should be memoized" do
        ActionMailer::Base.view_paths = []
        SpiffyMailer.deliver_spiffy_mail
        ActionMailer::Base.view_paths.should_not be_nil
      end
    end
  end
end
