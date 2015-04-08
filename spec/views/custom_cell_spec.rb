describe CustomCell do
  def cell
    @cell ||= CustomCell.new
  end

  def default_state
    {  key: "value"  }
  end

  before do
    cell.state = default_state # Setting state
  end

  after do
    @cell = nil
  end

  it "has content" do
    cell.find(:label).data.should == "value"
  end
end
