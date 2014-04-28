require "spec_helper"

describe NoticeMailer do
  describe "sendmail_reserved" do
    let(:mail) { NoticeMailer.sendmail_reserved_to_client }

    it "renders the headers" do
      mail.subject.should eq("Sendmail reserved")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "sendmail_ready" do
    let(:mail) { NoticeMailer.sendmail_ready_to_client }

    it "renders the headers" do
      mail.subject.should eq("Sendmail ready")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "sendmail_overdue" do
    let(:mail) { NoticeMailer.sendmail_overdue_to_client }

    it "renders the headers" do
      mail.subject.should eq("Sendmail overdue")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "sendmail_inventory" do
    let(:mail) { NoticeMailer.sendmail_inventory }

    it "renders the headers" do
      mail.subject.should eq("Sendmail inventory")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
