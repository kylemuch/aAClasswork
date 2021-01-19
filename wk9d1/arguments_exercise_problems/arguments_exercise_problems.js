function sum() {
  let ouput = 0;

  for (let i = 0; i < arguments.length; i++) {
    ouput += arguments[i];
  }

  return ouput;
}

// console.log(sum(1, 3, 5));

function otherSum(name, ...args) {
  let output = 0;
  console.log(name);

  args.forEach((el) => (output += el));

  return output;
}

// console.log(otherSum(1, 2, 3));

class Cat {
  constructor(name) {
    this.name = name;
  }

  says(sound, person) {
    console.log(`${this.name} says ${sound} to ${person}!`);
    return true;
  }
}

class Dog {
  constructor(name) {
    this.name = name;
  }
}

const markov = new Cat("Markov");
const pavlov = new Dog("Pavlov");

Function.prototype.myBind = function (dogThis, ...args) {
  let catThis = this;
  let catArgs = args;
  // debugger;
  return function (...dogArgs) {
    return catThis.apply(dogThis, catArgs.concat(dogArgs));
  };
};

// markov.says.myBind(pavlov, "meow", "Kush")();
// markov.says.myBind(pavlov)("meow", "Kush");

function curriedSum(numArgs) {
  const numbers = [];

  function _curriedSum(num) {
    numbers.push(num);

    if (numbers.length === numArgs) {
      let output = 0;
      numbers.forEach((el) => (output += el));
      return output;
    } else {
      return _curriedSum;
    }
  }

  return _curriedSum;
}

// let cur_sum = curriedSum(2);
// console.log(cur_sum(1)(9));
