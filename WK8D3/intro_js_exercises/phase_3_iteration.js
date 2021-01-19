Array.prototype.bubbleSort = function() {
  //we need to iterate through the array and compare the elements immediately adjacent in the array.
  let arr = this.slice();
  let sorted = false;

  while (!sorted) {
    sorted = true;
    for (let i = 0; i < arr.length; i += 1) {
      let tempStorage;
  
      if (arr[i] > arr[i + 1]) {
        sorted = false;
        tempStorage = arr[i];
        arr[i] = arr[i + 1];
        arr[i + 1] = tempStorage;
      }
    }
  }

  return arr;  
}

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

let testString = 'Kyle';
console.log(testString.substrings())

