/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
const name = document.getElementById('name');
const studentid = document.getElementById('studentid');
const email = document.getElementById('email');
const dob = document.getElementById('dob');
const phone = document.getElementById('phone');
let validname = false;
let validstudid = false;
let validemail = false;
let validdob = false;
let validphone = false;


name.addEventListener('blur', () => {
    // console.log('Name is blurred');
    let regex = /^([a-zA-Z\s]){3,20}$/
    let str = name.value;
    console.log(regex, str);
    if (regex.test(str)) {
        console.log("Name is valid");
        name.classList.remove('is-invalid')
        validname = true;
    } else {
        console.log("Name is invalid. Enter correct name.");
        name.classList.add('is-invalid')
    }
})

studentid.addEventListener('blur', () => {
    let regex = /^[0-9]{2}$/
    let str = studentid.value;
    console.log(regex, str);
    if (regex.test(str)) {
        console.log("Student id is valid");
        studentid.classList.remove('is-invalid')
        validstudid = true;
    } else {
        console.log("Student id is invalid. Enter correct Student id.");
        studentid.classList.add('is-invalid')
    }
})

email.addEventListener('blur', () => {
    // console.log('email is blurred');
    let regex = /^([^\s@])+@([^\s@])+\.([^\s@])+$/
    let str2 = email.value;
    console.log(regex, str2);
    if (regex.test(str2)) {
        console.log("Email is valid");
        email.classList.remove('is-invalid')
        validemail = true;
    } else {
        console.log("Email is invalid. Enter correct email.");
        email.classList.add('is-invalid')
    }
})

dob.addEventListener('blur', () => {
    // console.log('password is blurred');
    let regex = /^\d{4}-(0[1-9]|1[0-2])-(0[1-9]|[12][0-9]|3[01])$/
    let str2 = dob.value;
    console.log(regex, str2);
    if (regex.test(str2)) {
        console.log("DOB is valid");
        dob.classList.remove('is-invalid')
        validdob = true;
    } else {
        console.log("DOB is invalid.");
        dob.classList.add('is-invalid')
    }
})


phone.addEventListener('blur', () => {
    let regex = /^\d{10}$/
    let str2 = phone.value;
    console.log(regex, str2);
    if (regex.test(str2)) {
        console.log("Phone number is valid");
        phone.classList.remove('is-invalid');
        validphone = true;
    } else {
        console.log("Phone number is invalid. Enter correct number.");
        phone.classList.add('is-invalid')
    }
})



let btn = document.getElementById('btn2');
btn.addEventListener('click', (e) => {
    e.preventDefault();
    console.log('clicked');
    if (validname || validstudid || validemail || validdob || validphone) {
    console.log("All validations passed and preparing the form to submit..");
     document.getElementById('editedform').submit(); 
        let success = document.getElementById('success');
        success.classList.add('show');
        fail.classList.remove('show');
    } else {
        let fail = document.getElementById('fail');
        fail.classList.add('show');
        success.classList.remove('show');
    }

})

