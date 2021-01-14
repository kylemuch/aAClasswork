// Array#myEach(callback) - receives a callback function and executes the callback for each element in the array

let testArrayForEach = [1,2,3,4,5,6]

Array.prototype.myEach = function(cb) {

  for (let i = 0; i < this.length; i += 1) {
    let el = this[i]
    cb(el)
  }
}

// testArrayForEach.myEach((num) => {
//   console.log(num * -1)
// })


// Note that JavaScript's forEach function has no return value (returns undefined)
// Array#myMap(callback) - receives a callback function, returns a new array of the results of calling the callback function on each element of the array
// should use myEach and a closure

let testArrayMyMap = [2,4,5,6];

Array.prototype.myMap = function(cb) {
  let mappedArray = []

  this.myEach(el => mappedArray.push(cb(el)))

  return mappedArray;
}

// console.log(testArrayMyMap.myMap(el => el * 4));


// Array#myReduce(callback[, initialValue]) - (like Ruby's Array#inject) receives a callback function, and optional initial value, returns an accumulator by applying the callback function to each element and the result of the last invocation of the callback (or initial value if supplied)

Array.prototype.myReduce = function(cb, initialValue) {

  let arr = this;

  if (initialValue === undefined) {
    initialValue = arr[0];
    arr = arr.slice(1);
  }

  let result = initialValue;

  arr.myEach(el => result = cb(result, el))

  return result;
}

console.log(testArrayMyMap.myReduce((el, acc) => {
  return el + acc }, 3))


function sayName(first, last) {
  console.log(`${first} ${last}`);
}

sayName('Kyle');
// initialValue is optional and should default to the first element of the array if not provided
// examples:

// // without initialValue
// [1, 2, 3].myReduce(function (acc, el) {
//   return acc + el;
// }); // => 6

// // with initialValue
// [1, 2, 3].myReduce(function (acc, el) {
//   return acc + el;
// }, 25); // => 31
// should also use myEach