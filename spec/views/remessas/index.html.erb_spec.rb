require 'spec_helper'

describe "remessas/index" do
  before(:each) do
    assign(:remessas, [
      stub_model(Remessa,
        :codigorastreio => "Codigorastreio",
        :status => "Status",
        :datapostagem => "Datapostagem",
        :previsaoentrega => "Previsaoentrega",
        :pedido => nil
      ),
      stub_model(Remessa,
        :codigorastreio => "Codigorastreio",
        :status => "Status",
        :datapostagem => "Datapostagem",
        :previsaoentrega => "Previsaoentrega",
        :pedido => nil
      )
    ])
  end

  it "renders a list of remessas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Codigorastreio".to_s, :count => 2
    assert_select "tr>td", :text => "Status".to_s, :count => 2
    assert_select "tr>td", :text => "Datapostagem".to_s, :count => 2
    assert_select "tr>td", :text => "Previsaoentrega".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
