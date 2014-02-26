require 'spec_helper'

describe "pedidos/show" do
  before(:each) do
    @pedido = assign(:pedido, stub_model(Pedido,
      :peso => "Peso",
      :dimensao => "Dimensao",
      :numero => "Numero",
      :cliente => nil,
      :loja => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Peso/)
    rendered.should match(/Dimensao/)
    rendered.should match(/Numero/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
