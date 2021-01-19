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

let testArr = [5,4,3,2,1];

console.log(testArr.bubbleSort());