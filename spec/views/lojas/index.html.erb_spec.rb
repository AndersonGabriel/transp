require 'spec_helper'

describe "lojas/index" do
  before(:each) do
    assign(:lojas, [
      stub_model(Loja,
        :nome => "Nome",
        :endereco => "Endereco",
        :tel => "Tel"
      ),
      stub_model(Loja,
        :nome => "Nome",
        :endereco => "Endereco",
        :tel => "Tel"
      )
    ])
  end

  it "renders a list of lojas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Tel".to_s, :count => 2
  end
end
