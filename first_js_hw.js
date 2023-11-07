// 1. DRY stands for Don't Repeat Yourself and is important so that we don't have an extremely long or hard to read code. Things like functions, arrays, and objects were developed to mitigate having to repeat code.
// 2. Const is a variable used for values that will never change. Let is a variable used for values that may change. Var was the original variable used before const and let were created.

const a = 4;
const b = 53;
const c = 57;
const d = 16;
const e = 'Kelvin';
const f = false;
let g = 0;

console.log(a<b);
console.log(c>d);
console.log(e===e);
console.log(a<b<c);
console.log(a===a!==d);
console.log(e!=='Kevin');
console.log(48=='48');
console.log(f!==e);
console.log(g===0);
console.log(g = b + c); // changes g's value to (b+c); changes b/c its a let variable
console.log(g);

// I chose let for variable g because I knew that it would be changed.
// If I were to use const for g when its changed, I would get an error that says "TypeError": Assignment to constant variable.
// 10=g results in a syntax error that states "Invalid left-hand side in assignment" which means that it SHOULD read g=10.

// The first while loop would run infinitely since there is no code to make the statment false.
// The second while loop would not run at all as runProgram is a set const where the value is true but it is then changed to false. This would result in a typeError.

let letters = "A"; // the variable 'letters' has a value of 'A'
let i = 0; // the iterator has a value of '0'

while (i < 20) { // starts a while loop where it will run so long as i is less than 20
	letters += "A"; // the value of the variable letters is "A" which is added to the outcome
	i++;  // adds an "A" to the output so long as it is less than 20
}

console.log(letters); // prints the value of "letters" to the terminal
// The expected outcome would be "AAAAAAAAAAAAAAAAAAA"

// The code did provide the expected outcome. The loop ran as long as its outcome was less than 20 characters.
// So, with letters += A, the loop adds an A until it gets to the 19th addition, where it would then stop running.

// A key difference between a for loop and a while loop is that for loops will eventually stop running on their own.
// For loops are used when we know how many times a loop should run.
// While loops will run until stopped, which can cause infinite loops. They are used when we aren't sure how many times a loop needs to run BUT when we know what the outcome should be.

// Three Components of the Control Panel
	// 1. let i = 0 - this means that the interations start at 0
	// 2. i < 100 - this determines how many times the loop should run, which is up to 99 but not 100
	// 3. i++ - this states that 1 iteration will be added every time the loop runs

for (let i = 0; i < 1000; i++) {
	console.log(i)
}

for (let i = 999; i > 0; i--) {
	console.log(i)
}

for (let i = 1; i < 11; i++) {
	console.log("The value of i is: " + i + " of 10") //string concatenation
}

const StarWars = ["Han", "C3PO", "R2D2", "Luke", "Leia", "Anakin"];
console.log(StarWars[0]) //pulls the element from the array based on its index (numbered position starting with 0)
console.log(StarWars[1])
console.log(StarWars[2])
console.log(StarWars[3])
console.log(StarWars[4])
console.log(StarWars[5])

console.log(StarWars[0] + i) 
console.log(StarWars[1] + i)
console.log(StarWars[2] + i)
console.log(StarWars[3] + i)
console.log(StarWars[4] + i)
console.log(StarWars[5] + i)
