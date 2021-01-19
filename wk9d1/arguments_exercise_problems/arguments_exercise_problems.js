
function sum() {
  let ouput = 0;

  for (let i = 0; i < arguments.length; i++) {
    ouput += arguments[i];
  }

  return ouput;
}

console.log(sum(1,3,5));

function otherSum(name, ...args) {
  let output = 0;
  console.log(name);

  args.forEach(el => output += el);
  
  return output;
}

console.log(otherSum(1,2,3))

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

Function.prototype.myBind = function(newThis, ...args) {
  console.log(this);

  // let boundFunc(...boundedArgs) = this.apply(newThis, boundedArgs.concat(args));

  return boundFunc();
}

markov.says.myBind(pavlov, "meow", "Kush");
