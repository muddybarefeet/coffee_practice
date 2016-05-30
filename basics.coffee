# from learn x in y minutes on coffeescript

###
block comments
###

# variable do not need var or a semicolon
number = 55
opposite = true

# if (opposite) { number = -55 }
number = -55 of opposite

# function
square = (x) -> x * x
###
var square = function (x) {
  return x * x;
}
###

# declare if a value is null
fill = (container, liquid = "coffee") ->
  "Filling the #{container} with #{liquid} ..."

###
var fill;
fill = function(container, liquid) {
  if (liquid === null) {
    liquid = "coffee"
  }
  return "filling the " + container + " with " + liquid + " ...";
}
###

# Ranges
list = [1..5]
# var list = [1,2,3,4,5];

# Objects
home = 
  apt:472
  street:"fremont"
  size: (a,b) -> b * a

# Splat: way to pass a variable number of arguments to a function
race = (winners, runners...) ->
  print winner, runners
###
race = function () {
  var runners, winners;
  winner = arguments[0], runners = 2 <= arguments.length ? slice.call(arguments,1) : [];
  return print(winner,runners);
}
###

# Existence
alert "It does't matter it's in the past!" if unhappy?
###
if (typeof unhappy !== undefined && unhappy !== null) {
  alert("It does't matter it's in the past!");
}
###

# Array Comprehensions
cubes = (Math.pow num for num in numArray);
# apply the Math.pow function to every num in the collection "numArray"

###
var numArray = [2,4,8,5];
var cubes = (function() {
  var _i, _len, _results, _results = [];
  for (_i = 0, _len = numArray.length; _i < _len; _i++) {
    num = numArray[_i];
    _results.push(Math.pow(num,2));
  }
  return _results;
})();
###

foods = ['broccoli', 'spinach', 'chocolate']
eat food for food in foods when food isnt 'chocolate'

# apply the function eat to all in foods where foood is not chocolate?

###
var eat = function (thing) {
  console.log('Yum');
}

var foods = ['broccoli', 'spinach', 'chocolate'];

for (_k = 0, _len2 = foods.length; _k < _len2; _k++) {
  food = foods[_k];
  if (food !== 'chocolate') {
    eat(food);
  }
}
###

