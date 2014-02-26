# coding: utf-8

require 'spec_helper'

feature 'gerenciar remessa' do

  scenario 'incluir remessa', :javascript => true do

    pedido = FactoryGirl.create(:pedido, :numero => 'XXX')
    

    visit new_remessa_path

    preencher_e_verificar_remessa
 

  end

  scenario 'alterar remessa' do #, :js => true do

    pedido = FactoryGirl.create(:pedido, :numero => 'XXX')
    remessa = FactoryGirl.create(:remessa, :pedido=> pedido)
    
    visit edit_remessa_path(remessa)

    preencher_e_verificar_remessa



  end

   scenario 'excluir remessa' do #, :javascript => true do

       pedido = FactoryGirl.create(:pedido, :numero => 'XXX')
       remessa = FactoryGirl.create(:remessa, :pedido=> pedido)

        visit remessas_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_remessa

      fill_in 'Codigorastreio', :with => "DF123476BR"
      fill_in 'Status', :with => "enviado"
      fill_in 'Datapostagem', :with => "10/10/2013"
      fill_in 'Previsaoentrega', :with => "13/10/2013"
      select 'XXX', :from => 'Pedido'
      
     
 
      click_button 'Salvar'

      page.should have_content 'Codigorastreio: DF123476BR'
      page.should have_content 'Status: enviado'
      page.should have_content 'Datapostagem: 10/10/2013'
      page.should have_content 'Previsaoentrega: 13/10/2013'
      page.should have_content 'Pedido: XXX'
           

   end
end
