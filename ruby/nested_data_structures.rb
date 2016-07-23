grocery_cart = {
  fruit: [
    "apples",
    "bananas",
    "lemons"
  ], 
  vegetables:{
    "salad bin" => 1,
    onion: 2,
    tomato: 2,
    "green pepper" => 1,
    "red pepper" => 2
  }, 
  bread: 2,
  candy: [
    "chocolate",
    "twizzlers",
    "malt balls"
  ],
  snacks: {
    nuts: [
      "peanuts",
      "walnuts",
      "pistachios"
    ],
    other: {
      crackers: "one box",
      chips: "2 bags"
    }
  }
}

p grocery_cart[:snacks][:other][:crackers]

p grocery_cart[:candy][1]

p grocery_cart[:vegetables]["green pepper"]