require 'spec_helper'

describe "pedidos/edit" do
  before(:each) do
    @pedido = assign(:pedido, stub_model(Pedido,
      :peso => "MyString",
      :dimensao => "MyString",
      :numero => "MyString",
      :cliente => nil,
      :loja => nil
    ))
  end

  it "renders the edit pedido form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pedido_path(@pedido), "post" do
      assert_select "input#pedido_peso[name=?]", "pedido[peso]"
      assert_select "input#pedido_dimensao[name=?]", "pedido[dimensao]"
      assert_select "input#pedido_numero[name=?]", "pedido[numero]"
      assert_select "input#pedido_cliente[name=?]", "pedido[cliente]"
      assert_select "input#pedido_loja[name=?]", "pedido[loja]"
    end
  end
end
