defmodule Deck do
  def create_deck do
    values = [2, 3, 4, 5, 6, 7, 8, 9, "T", "J", "Q", "K", "A"]
    suits = ["C", "D", "H", "S"]
    for suit <- suits, value <- values do
      "#{value}#{suit}"
    end
  end

  def shuffle(deck \\ Deck.create_deck) do
    Enum.shuffle deck
  end

  def deal(deck, hand_size \\ 5) do
    deck
      |> Deck.shuffle
      |> Enum.take_random hand_size
  end
end
