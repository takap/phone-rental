# coding: utf-8
require 'spec_helper'

describe TerminalDecorator do
  let(:terminal) { Terminal.new.extend TerminalDecorator }
  subject { terminal }
  it { should be_a Terminal }
end
