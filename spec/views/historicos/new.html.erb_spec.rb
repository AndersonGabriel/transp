require 'spec_helper'

describe "historicos/new" do
  before(:each) do
    assign(:historico, stub_model(Historico,
      :evento => "MyString",
      :observacao => "MyString",
      :data => "MyString",
      :remessa => nil
    ).as_new_record)
  end

  it "renders new historico form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", historicos_path, "post" do
      assert_select "input#historico_evento[name=?]", "historico[evento]"
      assert_select "input#historico_observacao[name=?]", "historico[observacao]"
      assert_select "input#historico_data[name=?]", "historico[data]"
      assert_select "input#historico_remessa[name=?]", "historico[remessa]"
    end
  end
end
