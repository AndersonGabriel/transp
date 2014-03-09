require 'spec_helper'

describe "historicos/edit" do
  before(:each) do
    @historico = assign(:historico, stub_model(Historico,
      :evento => "MyString",
      :observacao => "MyString",
      :data => "MyString",
      :remessa => nil
    ))
  end

  it "renders the edit historico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", historico_path(@historico), "post" do
      assert_select "input#historico_evento[name=?]", "historico[evento]"
      assert_select "input#historico_observacao[name=?]", "historico[observacao]"
      assert_select "input#historico_data[name=?]", "historico[data]"
      assert_select "input#historico_remessa[name=?]", "historico[remessa]"
    end
  end
end
