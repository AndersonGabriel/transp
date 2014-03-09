require 'spec_helper'

describe "historicos/show" do
  before(:each) do
    @historico = assign(:historico, stub_model(Historico,
      :evento => "Evento",
      :observacao => "Observacao",
      :data => "Data",
      :remessa => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Evento/)
    rendered.should match(/Observacao/)
    rendered.should match(/Data/)
    rendered.should match(//)
  end
end
