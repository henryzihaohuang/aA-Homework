function mysteryScoping1() {
    var x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}
// variables defined within if statements are not accessible outside

function mysteryScoping2() {
    const x = 'out of block';
    if (true) {
        const x = 'in block';
        console.log(x);
    }
    console.log(x);
}

function mysteryScoping3() {
    const x = 'out of block';
    if (true) {
        var x = 'in block';
        console.log(x);
    }
    console.log(x);
}

// syntax error??

function mysteryScoping4() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    console.log(x);
}

// if statement scope

function mysteryScoping5() {
    let x = 'out of block';
    if (true) {
        let x = 'in block';
        console.log(x);
    }
    let x = 'out of block again';
    console.log(x);
}

// syntax error



function madLib(verb,adj,noun) {
    return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase() }.`
}


function isSubstring(searchString, subString) {
    return searchString.includes(subString);
}

function fizzBuzz(array) {
    const answer = [];

    array.forEach(el => {
        if ((el %3 === 0 )^ (el %===0)) {
            answer.push(el);
        }
    });

    return answer;
}

