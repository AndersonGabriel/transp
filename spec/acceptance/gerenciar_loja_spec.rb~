# coding: utf-8

require 'spec_helper'

feature 'gerenciar loja' do

  scenario 'incluir loja', :javascript => true do

    visit new_loja_path

    preencher_e_verificar_loja
 

  end

  scenario 'alterar loja' do #, :js => true do

    loja = FactoryGirl.create(:loja)

    visit edit_loja_path(loja)

    preencher_e_verificar_loja



  end

   scenario 'excluir loja' do #, :javascript => true do

       loja = FactoryGirl.create(:loja)

        visit lojas_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_loja

      fill_in 'Nome', :with => "Netshoes"
      fill_in 'Endereco', :with => "Rua10"
      fill_in 'Tel', :with => "27252473"
     
 
      click_button 'Salvar'

      page.should have_content 'Nome: Netshoes'
      page.should have_content 'Endereco: Rua10'
      page.should have_content 'Tel: 27252473'
           

   end
end
