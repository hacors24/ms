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

ActiveRecord::Schema.define(version: 20160502173541) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articulos", force: :cascade do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.integer  "stock"
    t.integer  "precio_compra"
    t.integer  "precio_venta"
    t.string   "imagen"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.date     "fecha_nac"
    t.string   "razon_social"
    t.string   "domicilio"
    t.integer  "telefono_fijo"
    t.integer  "celular"
    t.string   "email"
    t.string   "sitio_web"
    t.text     "comentario"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "detalle_cotizacions", force: :cascade do |t|
    t.integer  "cotizacion_id"
    t.integer  "articulo_id"
    t.integer  "cantidad"
    t.integer  "precio_unitario"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "detalle_pedidos", force: :cascade do |t|
    t.integer  "pedido_id"
    t.integer  "articulo_id"
    t.integer  "cantidad"
    t.integer  "precio_unitario"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "detalle_venta", force: :cascade do |t|
    t.integer  "venta_id"
    t.integer  "articulo_id"
    t.integer  "cantidad"
    t.integer  "precio_unitario"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "pedidos", force: :cascade do |t|
    t.integer  "cliente_id"
    t.date     "fecha_pedido"
    t.date     "fecha_entrega"
    t.boolean  "estado"
    t.text     "descripcion"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_foreign_key "pedidos", "clientes"
end
