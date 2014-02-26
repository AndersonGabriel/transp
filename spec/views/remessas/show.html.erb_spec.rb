require 'spec_helper'

describe "remessas/show" do
  before(:each) do
    @remessa = assign(:remessa, stub_model(Remessa,
      :codigorastreio => "Codigorastreio",
      :status => "Status",
      :datapostagem => "Datapostagem",
      :previsaoentrega => "Previsaoentrega",
      :pedido => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Codigorastreio/)
    rendered.should match(/Status/)
    rendered.should match(/Datapostagem/)
    rendered.should match(/Previsaoentrega/)
    rendered.should match(//)
  end
end
