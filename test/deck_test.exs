defmodule DeckTest do
  use ExUnit.Case
  doctest Deck

  setup_all do
    [deck: Deck.create_deck]
  end

  test "create deck", state do
    assert length(state[:deck]) == 52 
  end

  test "shuffle", state do
    assert Deck.shuffle != state[:deck]
  end

  test "deal", state do
    hand = Deck.deal state[:deck]
    assert length(hand) == 5
  end
  
end
