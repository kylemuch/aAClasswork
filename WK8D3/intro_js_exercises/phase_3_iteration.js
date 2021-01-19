Array.prototype.bubbleSort = function() {
  //we need to iterate through the array and compare the elements immediately adjacent in the array.
  let arr = this.slice();
  let sorted = false;

  while (!sorted) {
    sorted = true;
    for (let i = 0; i < arr.length; i += 1) {
      if (arr[i] > arr[i + 1]) {
        sorted = false;
        [arr[i], arr[i + 1]] = [arr[i + 1], arr[i]];
      }
    }
  }

  return arr;  
}

let testArr = [7,6,7,3,1,2, -1];
console.log(testArr.bubbleSort());

String.prototype.substrings = function() {
  let subStrings = [];
  let str = this;

  for (let i = 0; i < str.length - 1; i += 1) {
    for (let j = i + 1; j < str.length; j += 1) {
      subStrings.push(str.slice(i, j+1));
    }
  }

  return subStrings;
}

// let testString = 'Kyle';
// console.log(testString.substrings())

let destArr = [0,1,2,3];

[destArr[1], destArr[2]] = [destArr[2], destArr[1]]

console.log(destArr);