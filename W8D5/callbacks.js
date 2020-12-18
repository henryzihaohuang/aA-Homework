// Simple timeout

setTimeout( function timeout(){
    alert("HAMMERTIME");
}, 5000);

// timeout plus closure
function hammerTime(time) {
    setTimeout(function () {
        alert(`${time} is HAMMER TIME!`); 
    }); 
}

const readline = require('readline');

const reader = readline.createInterface({
    input: process.stdin,
    output: process.stdout
});

function teaAndBiscuits () {
    reader.question("Would you like some tea?", (answer) => {console.log(`You replied ${answer}`);
    
    reader.question("Would you like some biscuits?", (answer2) => {
        console.log(`You replied ${answer2}.`);

        const first = (answer === 'yes') ? 'do' : "don't";
        const second = (answer === 'yes') ? 'do' : "don't";

        console.log(`So you ${first} want tea and you ${second} want biscuits.`); 
            
        reader.close();
        });
    });
}
