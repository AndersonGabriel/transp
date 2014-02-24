require 'spec_helper'

describe "lojas/show" do
  before(:each) do
    @loja = assign(:loja, stub_model(Loja,
      :nome => "Nome",
      :endereco => "Endereco",
      :tel => "Tel"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Endereco/)
    rendered.should match(/Tel/)
  end
end
