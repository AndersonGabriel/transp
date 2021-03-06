# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140226005721) do

  create_table "clientes", force: true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "tel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "historicos", force: true do |t|
    t.string   "evento"
    t.string   "observacao"
    t.string   "data"
    t.integer  "remessa_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "historicos", ["remessa_id"], name: "index_historicos_on_remessa_id"

  create_table "lojas", force: true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "tel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pedidos", force: true do |t|
    t.string   "peso"
    t.string   "dimensao"
    t.string   "numero"
    t.integer  "cliente_id"
    t.integer  "loja_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pedidos", ["cliente_id"], name: "index_pedidos_on_cliente_id"
  add_index "pedidos", ["loja_id"], name: "index_pedidos_on_loja_id"

  create_table "remessas", force: true do |t|
    t.string   "codigorastreio"
    t.string   "status"
    t.string   "datapostagem"
    t.string   "previsaoentrega"
    t.integer  "pedido_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "remessas", ["pedido_id"], name: "index_remessas_on_pedido_id"

end
