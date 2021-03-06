# coding: utf-8

require 'spec_helper'

feature 'gerenciar historico' do

  scenario 'incluir historico', :javascript => true do

    remessa = FactoryGirl.create(:remessa, :codigorastreio => 'XXX')
    

    visit new_historico_path

    preencher_e_verificar_historico
 

  end

  scenario 'alterar historico' do #, :js => true do

    remessa = FactoryGirl.create(:remessa, :codigorastreio => 'XXX')
    historico = FactoryGirl.create(:historico, :remessa=> remessa)
    
    visit edit_historico_path(historico)

    preencher_e_verificar_historico



  end

   scenario 'excluir historico' do #, :javascript => true do

       remessa = FactoryGirl.create(:remessa, :codigorastreio => 'XXX')
       historico = FactoryGirl.create(:historico, :remessa=> remessa)

       visit historicos_path

       click_link 'Excluir'

    

  end

   def preencher_e_verificar_historico

      fill_in 'Evento', :with => "recusado"
      fill_in 'Observacao', :with => "ausente"
      fill_in 'Data', :with => "10/10/2013"
      select 'XXX', :from => 'Remessa'
      
     
 
      click_button 'Salvar'

      page.should have_content 'Evento: recusado'
      page.should have_content 'Observacao: ausente'
      page.should have_content 'Data: 10/10/2013'
      page.should have_content 'Remessa: XXX'
           

   end
end
