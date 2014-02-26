# coding: utf-8

require 'spec_helper'

feature 'gerenciar cliente' do

  scenario 'incluir cliente', :javascript => true do

    visit new_cliente_path

    preencher_e_verificar_cliente
 

  end

  scenario 'alterar cliente' do #, :js => true do

    cliente = FactoryGirl.create(:cliente)

    visit edit_cliente_path(cliente)

    preencher_e_verificar_cliente



  end

   scenario 'excluir cliente' do #, :javascript => true do

       cliente = FactoryGirl.create(:cliente)

        visit clientes_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_cliente

      fill_in 'Nome', :with => "Anderson"
      fill_in 'Endereco', :with => "Rua10"
      fill_in 'Tel', :with => "27252473"
     
 
      click_button 'Salvar'

      page.should have_content 'Nome: Anderson'
      page.should have_content 'Endereco: Rua10'
      page.should have_content 'Tel: 27252473'
           

   end
end
