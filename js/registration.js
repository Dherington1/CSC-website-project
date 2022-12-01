// connected input variables
username = document.querySelector('#regUsername');
email = document.querySelector('#regEmail');
password = document.querySelector('#regPassword');
confirmPassword = document.querySelector('#regPasswordConfirm');
regButton = document.querySelector('.reg-button');
ageConfirm = document.querySelector('#ageConfirm');
termsConfirm = document.querySelector('#terms');

// connected hidden wrong message variables
noStartCharacter = document.querySelector('#noStartCharacter');
lessThanThreeLetters = document.querySelector('#lessThanThreeLetters');
notEmail = document.querySelector('#NotEmail');
passwordWrong = document.querySelector('#NotValid');
passwordNoMatch = document.querySelector('#NotValid');
notAgeConfirmed = document.querySelector('#notAgeConfirmed');
notAccepted = document.querySelector('#notAccepted');

// connected hidden empty inputs 
usernameEmpty = document.querySelector('#usernameEmpty');
emailEmpty = document.querySelector('#emailEmpty');
passwordEmpty = document.querySelector('#passwordEmpty');
confirmpasswordEmpty = document.querySelector('#confirmpasswordEmpty');
form = document.querySelector('#empty');

// function that calls all function on click of register button
const submit = (e) => {
  // Prevent refresh
  e.preventDefault();
  // check if inputs are empty
  emptyInputs()
  // run username validation
  usernameValidation();
  // email validation
  emailValidation();
  // password validation
  passwordValidation();
  // run to confirm password validation
  confirmPasswordValidation();
  // run for radio buttons
  radioButtonChecked();
}

// check for empty inputs first
const emptyInputs = () => {
  let usernameValue = username.value;
  let emailValue = email.value;
  let passwordValue = password.value;
  let passwordConfirmValue = confirmPassword.value;

  // if something is empty
  if (usernameValue === "" || emailValue === "" || passwordValue === "" || passwordConfirmValue === ""){
    form.removeAttribute("hidden")
  } else {
    form.setAttribute("hidden", true);
  }

  //username empty
  if (usernameValue === "") {
    // change box to red
    username.style.border="2px solid red";
  } else {
    // get rid if red
    username.style.border="2px solid #dddddd";
  }

  console.log(emailValue)
  if (emailValue === "") {
    // change box to red
    email.style.border="2px solid red";
  } else {
    // get rid if red
    email.style.border="2px solid #dddddd";
  }

  
  if (passwordValue === "") {
    // change box to red
    password.style.border="2px solid red";
  } else {
    // get rid if red
    password.style.border="2px solid #dddddd";
  }


  if (passwordConfirmValue === "") {
    // change box to red
    confirmPassword.style.border="2px solid red";
  } else {
    // get rid if red
    confirmPassword.style.border="2px solid #dddddd";
  }

   // if age confirmed is checked 
   if (!ageConfirm.checked){
    notAgeConfirmed.removeAttribute("hidden");
  } else {
    notAgeConfirmed.setAttribute("hidden", true);
  }

  // if terms are checked off
  if (!termsConfirm.checked) {
    notAccepted.removeAttribute("hidden");
    termsConfirm.style.border="2px solid red";
  } else {
    notAccepted.setAttribute("hidden", true);
  }
}



// Validate username
const usernameValidation = () => {

    console.log(username.value);
    let validate = username.value;

    // input into an array
    let usernameArray = validate.split('');
    // first letter match if starts with a letter
    // let firstLetter = usernameArray[0].match(/[a-zA-Z]/i);
    let firstLetter = usernameArray[0].match(/[a-zA-Z]/i);
    // if first letter is not a letter
    if (!firstLetter){
      console.log("doesn't begin with letter");
      noStartCharacter.removeAttribute("hidden");
    } else {
      noStartCharacter.setAttribute("hidden", true)
    }
  
    // username length 3 or more
    if (validate.length <= 2){
      console.log("too short")
      lessThanThreeLetters.removeAttribute("hidden");
    } else {
      lessThanThreeLetters.setAttribute("hidden",true);
    }
}


// Validate email
const emailValidation = () => {
  let validate = email.value;

  // make input an array
  let emailArray = validate.split('');
  // check to see if @ is in input
  let valid = emailArray.includes("@") 


  // if not valid 
  if (!valid){
    notEmail.removeAttribute("hidden");
  } else {
    notEmail.setAttribute("hidden", true);
  }
}


// Validate password
const passwordValidation = () => {
  let validate = password.value;

  // make sure password is valid
  let valid =  validate.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/);

  // if not valid
  if(!valid) {
    console.log("Your password is not valid")
    passwordWrong.removeAttribute("hidden");
  } else {
    console.log("password is valid")
    passwordWrong.setAttribute("hidden",true);
  }
}

// confirm password same as password 
const confirmPasswordValidation = () => {

  passwordValue = password.value;
  confirmPasswordValue = confirmPassword.value;

  if (confirmPasswordValue != passwordValue){
    console.log("passwords do not match")
    passwordNoMatch.removeAttribute("hidden");
  } else {

    passwordNoMatch.setAttribute("hidden", true);
  }
}

// check if radio buttons are checked
const radioButtonChecked = () => {
  // if age confirmed is checked 
  if (!ageConfirm.checked){
    notAgeConfirmed.removeAttribute("hidden");
  } else {
    notAgeConfirmed.setAttribute("hidden", true);
  }

  // if terms are checked off
  if (!termsConfirm.checked) {
    notAccepted.removeAttribute("hidden");
  } else {
    notAccepted.setAttribute("hidden", true);
  }
}


// button submit listener
regButton.addEventListener('click', submit);

