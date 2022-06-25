 //pending to match with a HTML file 
 
 const contacts = [
    {
      firstName: "Akira",
      lastName: "Laine",
      number: "0543236543",
      likes: ["Pizza", "Coding", "Brownie Points"],
    },
    {
      firstName: "Harry",
      lastName: "Potter",
      number: "0994372684",
      likes: ["Hogwarts", "Magic", "Hagrid"],
    },
    {
      firstName: "Sherlock",
      lastName: "Holmes",
      number: "0487345643",
      likes: ["Intriguing Cases", "Violin"],
    },
    {
      firstName: "Kristian",
      lastName: "Vos",
      number: "unknown",
      likes: ["JavaScript", "Gaming", "Foxes"],
    },
  ];
  
  function lookUpProfile(name, prop) {
    // Only change code below this line
    for (let i = 0;i < contacts.length; i++ ) { //a loops runs to check if name matches with one object
      if(name === contacts[i].firstName) {      //if it matches name with a property a second condition i checked 
        if (contacts[i].hasOwnProperty(prop)){  //if second condition applyes 
          return contacts[i][prop]              //result is given
        } else {                                //if second condition doesnot match, return else statement 
          return "No such property"
        }
      }
    } return "No such contact"                   //if non condition is matched, this is the return of console
  
    // Only change code above this line
  }
  
  console.log(lookUpProfile("Kristian", "likes"));  //returns ["JavaScript", "Gaming", "Foxes"]
  console.log(lookUpProfile("Kristian", "number")); //returns unknown
  

  