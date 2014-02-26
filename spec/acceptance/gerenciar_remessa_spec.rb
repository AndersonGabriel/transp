# coding: utf-8

require 'spec_helper'

feature 'gerenciar remessa' do

  scenario 'incluir remessa', :javascript => true do

    pedido = FactoryGirl.create(:pedido, :numero => 'XXX')
    

    visit new_remessa_path

    preencher_e_verificar_remessa
 

  end

  scenario 'alterar pedido' do #, :js => true do

    cliente = FactoryGirl.create(:cliente, :nome => 'XXX')
    loja = FactoryGirl.create(:loja, :nome => 'XXX')
    pedido = FactoryGirl.create(:pedido, :cliente => cliente, :loja => loja)
    
    visit edit_pedido_path(pedido)

    preencher_e_verificar_pedido



  end

   scenario 'excluir pedido' do #, :javascript => true do

       cliente = FactoryGirl.create(:cliente, :nome => 'XXX')
       loja = FactoryGirl.create(:loja, :nome => 'XXX')
       pedido = FactoryGirl.create(:pedido, :cliente => cliente, :loja => loja)

        visit pedidos_path

        click_link 'Excluir'

    

  end

   def preencher_e_verificar_pedido

      fill_in 'Peso', :with => "10kg"
      fill_in 'Dimensao', :with => "20x20cm"
      fill_in 'Numero', :with => "123456789"
      select 'XXX', :from => 'Cliente'
      select 'XXX', :from => 'Loja'
     
 
      click_button 'Salvar'

      page.should have_content 'Peso: 10kg'
      page.should have_content 'Dimensao: 20x20cm'
      page.should have_content 'Numero: 123456789'
      page.should have_content 'Cliente: XXX'
      page.should have_content 'Loja: XXX'
           

   end
end
