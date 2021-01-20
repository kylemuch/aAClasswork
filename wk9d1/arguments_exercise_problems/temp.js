class Cat {
  constructor(name) {
    this.name = name;
  } 

  meow() {
    console.log(`${this.name} says meow!`)
  }

  playWith(person1, person2) {
    console.log(`${this.name} plays with ${person1} and ${person2}.`)
  }
}

const zippy = new Cat('zippy');

// zippy.meow();

class Blab {
  constructor(name) {
    this.name = name;
  }
}

const apollo = new Blab('Apollo');

zippy.meow.bind(apollo)()