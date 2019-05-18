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

ActiveRecord::Schema.define(version: 2019_05_18_011025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "engenharias", force: :cascade do |t|
    t.string "descricao"
    t.string "status"
    t.bigint "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "produto_id"
    t.bigint "ingrediente_id"
    t.index ["ingrediente_id"], name: "index_engenharias_on_ingrediente_id"
    t.index ["produto_id"], name: "index_engenharias_on_produto_id"
    t.index ["usuario_id"], name: "index_engenharias_on_usuario_id"
  end

  create_table "ingredientes", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.boolean "produzido"
    t.decimal "quantidade"
    t.decimal "quantidade_consumo"
    t.bigint "processo_id"
    t.bigint "engenharia_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engenharia_id"], name: "index_ingredientes_on_engenharia_id"
    t.index ["processo_id"], name: "index_ingredientes_on_processo_id"
  end

  create_table "processos", force: :cascade do |t|
    t.string "nome"
    t.string "descricao"
    t.bigint "engenharia_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engenharia_id"], name: "index_processos_on_engenharia_id"
  end

  create_table "produtos", force: :cascade do |t|
    t.string "descricao"
    t.string "nome"
    t.decimal "quantidade"
    t.decimal "preco"
    t.boolean "produzido"
    t.string "imagem"
    t.bigint "engenharia_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["engenharia_id"], name: "index_produtos_on_engenharia_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nome"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

  add_foreign_key "engenharias", "ingredientes"
  add_foreign_key "engenharias", "produtos"
  add_foreign_key "engenharias", "usuarios"
  add_foreign_key "ingredientes", "engenharias"
  add_foreign_key "ingredientes", "processos"
  add_foreign_key "processos", "engenharias"
  add_foreign_key "produtos", "engenharias"
end
