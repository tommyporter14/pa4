// Paste your answers for each question in the appropriate spot below. (Keep the number headings)
// #5
db.inventory.insertMany([
  { name: "Toothpaste", department: "personal care", quantity: 10, price: 4 },
  { name: "Toothbrush", department: "personal care", quantity: 56, price: 7 },
  { name: "Shampoo", department: "personal care", quantity: 41, price: 9 },
  { name: "Soap", department: "personal care", quantity: 44, price: 5 },
  { name: "Eggs", department: "grocery", quantity: 100, price: 4 },
  { name: "Milk", department: "grocery", quantity: 20, price: 2 },
  { name: "Cheese", department: "grocery", quantity: 30, price: 5 },
]);


// #6
db.inventory.updateMany(
  {name: /^Tooth/},
  { $inc: { quantity: -5}}
  );

// #7
db.inventory.find({ $or:[
  {quantity: {$lte: 20}},
  {quantity: {$gt: 75}}
  ]});

// #8
db.inventory.find().sort({price: -1}).limit(3);

// #9
db.inventory.update(
  {_id: ObjectId("62b37789fa21debe0faa07df")},
  { $set: {quantity: 50}}
  );

// #10
db.inventory.deleteMany(
  {department: "grocery"}
  );