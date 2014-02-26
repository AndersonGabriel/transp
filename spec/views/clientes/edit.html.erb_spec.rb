require 'spec_helper'

describe "clientes/edit" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :nome => "MyString",
      :endereco => "MyString",
      :tel => "MyString"
    ))
  end

  it "renders the edit cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", cliente_path(@cliente), "post" do
      assert_select "input#cliente_nome[name=?]", "cliente[nome]"
      assert_select "input#cliente_endereco[name=?]", "cliente[endereco]"
      assert_select "input#cliente_tel[name=?]", "cliente[tel]"
    end
  end
end
