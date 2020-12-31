const fs = require('fs');
const INDENT = 2;
const MIN_SPACE = 4;

let maxSize = 1;
let indent = '';
while(indent.length < INDENT) indent += ' ';

const data = fs.readFileSync('config.rasi', 'UTF-8');
const lines = data.split(/\r?\n/);

// First determine max size
lines.forEach((line)=>{
    let arr = line.split(':');
    maxSize = Math.max(arr[0].trim().length, maxSize);
});

// Maxsize is largest token, colon, plus min space
// divisible by indent
maxSize = maxSize + 1 + MIN_SPACE;
while( maxSize % INDENT !== 0 ) maxSize++;

lines.forEach((line) =>{
    line = line.trim();
    if ( line.indexOf(':') < 0 ) {
        console.log(line);
    } else {
        let arr = line.split(':');
        let newline = indent + arr[0].trim() + ':';
        while(newline.length < maxSize) newline += ' ';
        newline += arr[1].trim();
        console.log(newline);
    }
});