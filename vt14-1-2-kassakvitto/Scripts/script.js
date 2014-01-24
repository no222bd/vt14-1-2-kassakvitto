var TextBox = document.getElementById("AmountTextBox");
var Button = document.getElementById("CalculateButton");

document.body.onload = function () {
    TextBox.select();
}

Button.onclick = function () {
    document.getElementById("AmountTextBox").select();
}