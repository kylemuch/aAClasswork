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

// console.log(exponent(2,3))

function exponent2(base, exp) {
  if (exp % 2 === 0) {
    return (exponent(base, exp / 2) ** 2);
  } else {
    return (base * (exponent(base, (exp - 1) / 2) ** 2));
  }
}

// console.log(exponent2(2,5));


function fibonacci(n) {
  if (n === 0) {
    return 0;
  }

  if (n === 1 || n === 2) {
    return 1;
  }

  return (fibonacci(n - 1) + fibonacci(n - 2));
}

console.log(fibonacci(45));