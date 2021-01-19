function range(start, end) {
  if (start === end) {
    return [];
  }

  let r = range(start, end - 1);
  r.push(end - 1);

  return r;
}

// console.log(range(1,3))

function sumRec(arr) {
  if (arr.length === 0) {
    return 0
  }

  
  let lastEl = arr.pop();

  return (sumRec(arr) + lastEl); 
}

// console.log(sumRec([1,2,3,6]))

function exponent(base, exp) {
  if (exp === 0) {
    return 1;
  }

  return (base * exponent(base, exp - 1))


}

console.log(exponent(2,3))


