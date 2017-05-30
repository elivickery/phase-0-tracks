// Set up arrays

var colors = ['red','blue','glitter','purple'];

var names = ['Ed','Reina','James','Beauty'];

colors.push('pink');

names.push('Gertrude');

console.log(colors);

console.log(names);


// Set up the object

horses = {};

for(var i = 0; i < names.length; i++) {
    horses[names[i]] = colors[i];
}

console.log(horses);
