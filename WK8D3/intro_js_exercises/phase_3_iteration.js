Array.prototype.bubbleSort = function() {
  //we need to iterate through the array and compare the elements immediately adjacent in the array.
  let arr = this.slice();

  for (let i = 0; i < arr.length; i += 1) {
    let el1 = arr[i];
    let el2 = arr[i + 1];
    let tempStorage;

    if (el1 > el2) {
      tempStorage = el1;
      arr[i] = el2;
      arr[i + 1] = tempStorage;
    }
  }

  return arr;  
}

let testArr = [5,4,3,2,1];

console.log(testArr.bubbleSort());