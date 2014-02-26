require 'spec_helper'

describe "pedidos/index" do
  before(:each) do
    assign(:pedidos, [
      stub_model(Pedido,
        :peso => "Peso",
        :dimensao => "Dimensao",
        :numero => "Numero",
        :cliente => nil,
        :loja => nil
      ),
      stub_model(Pedido,
        :peso => "Peso",
        :dimensao => "Dimensao",
        :numero => "Numero",
        :cliente => nil,
        :loja => nil
      )
    ])
  end

  it "renders a list of pedidos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Peso".to_s, :count => 2
    assert_select "tr>td", :text => "Dimensao".to_s, :count => 2
    assert_select "tr>td", :text => "Numero".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
