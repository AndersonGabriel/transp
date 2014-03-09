require 'spec_helper'

describe "historicos/index" do
  before(:each) do
    assign(:historicos, [
      stub_model(Historico,
        :evento => "Evento",
        :observacao => "Observacao",
        :data => "Data",
        :remessa => nil
      ),
      stub_model(Historico,
        :evento => "Evento",
        :observacao => "Observacao",
        :data => "Data",
        :remessa => nil
      )
    ])
  end

  it "renders a list of historicos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Evento".to_s, :count => 2
    assert_select "tr>td", :text => "Observacao".to_s, :count => 2
    assert_select "tr>td", :text => "Data".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
