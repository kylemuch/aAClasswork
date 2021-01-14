
// Array#uniq - returns a new array containing each individual element of the original array only once(creating all unique elements)
// the elements should be in the order in which they first appear in the original array
// should not mutate the original array
//   ([1, 2, 2, 3, 3, 3].uniq() => [1, 2, 3])

let testArray = [1, 2, 2, 3, 3, 3,]

Array.prototype.uniq = function() {
  let uniqueArray = [];

  this.forEach((el) => {
    if (uniqueArray.indexOf(el) === -1) {
      uniqueArray.push(el)
    }
  })

  return uniqueArray;
}


// Array#twoSum - returns an array of position pairs where the elements sum to zero

let twoSumTestArray = [1, 2, 3, -3, 8, 9, -8];

Array.prototype.twoSum = function() {
  let zeroSumPairs = [];
  let arr = this;
  let length = this.length;

  for( let i = 0; i < length - 1 ; i += 1 ) {
    let el = arr[i];
    
    for (let j = i + 1; j < length ; j += 1) {
      let innerEl = arr[j];
      if (el + innerEl === 0) {
        zeroSumPairs.push([i,j]);
      }
    }

  }

  return zeroSumPairs;
}


// Array#transpose - where we have a two - dimensional array representing a matrix.returns the transpose
// should not mutate the original array

Array.prototype.transpose = function() {
  let transposedArray = [];

  for (let i = 0; i < this.length; i += 1) {
    let subArray = this[i]
    let transposedSubArray = [];

    for (let j = 0 ; j < subArray.length ; j += 1) {
      transposedSubArray.push(this[j][i])
    }

    transposedArray.push(transposedSubArray);
  }

  return transposedArray
}

let transposeTestArray = [[1,2,3], [4,5,6], [7,8,9]];

console.log(transposeTestArray.transpose())


