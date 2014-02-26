require 'spec_helper'

describe "pedidos/new" do
  before(:each) do
    assign(:pedido, stub_model(Pedido,
      :peso => "MyString",
      :dimensao => "MyString",
      :numero => "MyString",
      :cliente => nil,
      :loja => nil
    ).as_new_record)
  end

  it "renders new pedido form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", pedidos_path, "post" do
      assert_select "input#pedido_peso[name=?]", "pedido[peso]"
      assert_select "input#pedido_dimensao[name=?]", "pedido[dimensao]"
      assert_select "input#pedido_numero[name=?]", "pedido[numero]"
      assert_select "input#pedido_cliente[name=?]", "pedido[cliente]"
      assert_select "input#pedido_loja[name=?]", "pedido[loja]"
    end
  end
end
