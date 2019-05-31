require 'rspec'
require './coffee'

describe 'Una taza de café' do

  it 'Cuesta $10' do
    expect(Coffee.new.precio).to eq(10)
  end

  it 'Con leche, cuesta $15' do
    expect(Coffee.new.agrega_leche).to eq(15)
  end

  it 'Agrega otro ingrediente que no es leche' do
    pending "Aún no nos llegan"
    expect(Coffee.new.agrega_ingrediente).to_not eq(10)
  end

end
