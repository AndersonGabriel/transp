require 'spec_helper'

describe "remessas/edit" do
  before(:each) do
    @remessa = assign(:remessa, stub_model(Remessa,
      :codigorastreio => "MyString",
      :status => "MyString",
      :datapostagem => "MyString",
      :previsaoentrega => "MyString",
      :pedido => nil
    ))
  end

  it "renders the edit remessa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", remessa_path(@remessa), "post" do
      assert_select "input#remessa_codigorastreio[name=?]", "remessa[codigorastreio]"
      assert_select "input#remessa_status[name=?]", "remessa[status]"
      assert_select "input#remessa_datapostagem[name=?]", "remessa[datapostagem]"
      assert_select "input#remessa_previsaoentrega[name=?]", "remessa[previsaoentrega]"
      assert_select "input#remessa_pedido[name=?]", "remessa[pedido]"
    end
  end
end
