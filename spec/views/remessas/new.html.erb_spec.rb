require 'spec_helper'

describe "remessas/new" do
  before(:each) do
    assign(:remessa, stub_model(Remessa,
      :codigorastreio => "MyString",
      :status => "MyString",
      :datapostagem => "MyString",
      :previsaoentrega => "MyString",
      :pedido => nil
    ).as_new_record)
  end

  it "renders new remessa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", remessas_path, "post" do
      assert_select "input#remessa_codigorastreio[name=?]", "remessa[codigorastreio]"
      assert_select "input#remessa_status[name=?]", "remessa[status]"
      assert_select "input#remessa_datapostagem[name=?]", "remessa[datapostagem]"
      assert_select "input#remessa_previsaoentrega[name=?]", "remessa[previsaoentrega]"
      assert_select "input#remessa_pedido[name=?]", "remessa[pedido]"
    end
  end
end
