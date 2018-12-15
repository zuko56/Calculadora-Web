var ans = 0.0;
var vNum = 0.0;
var result = "";
var lastOpt = null;

var inputText = document.getElementById("textview");
var textArea = document.getElementById("textarea");

function inputController(event) {
    var ch = String.fromCharCode(event.which);
    console.log(event)
    console.log("evento: " + ch + "/ event: " + event.which);

    if('+' == ch) {
        vNum = parseFloat(inputText.value);
        event.preventDefault();
        if(!isNaN(vNum)) {
            lastOpt = event
            ans += vNum
            outWrite(ch)
        } 
    } else if ('-' == ch) {
        vNum = parseFloat(inputText.value);
        event.preventDefault();
        if(!isNaN(vNum)) {
            lastOpt = event
            ans -= vNum
            outWrite(ch)
        } 
    } else if ('*' == ch) {
        vNum = parseFloat(inputText.value);
        event.preventDefault();
        if(!isNaN(vNum)) {
            lastOpt = event
            ans *= vNum
            outWrite(ch)
        } 
    } else if ('/' == ch) {
        vNum = parseFloat(inputText.value);
        event.preventDefault();
        if(!isNaN(vNum)) {
            lastOpt = event
            ans /= vNum
            outWrite(ch)
        } 
    } else if(',' == ch) {
        event.preventDefault();
    } else if(event.which == 13 && ans != 0.0) {
        inputController(lastOpt)
    }
}

function outWrite(opt) {
    if(result == "") {
        result = ans
    } else {
        result += "\n" + opt + "                                                \n" + vNum + "\n----------------------------------\n" + ans;
    }
    inputText.value = ""
    textArea.textContent = result;
}

function getBtnValue(value) {
    var elementValue = value.toElement.attributes[2].value
    
    if(elementValue == 'c') {
        inputText.textContent = ""
        textArea.textContent = ""    
    } else if('+' == elementValue) {
        vNum = parseFloat(inputText.value);
        if(!isNaN(vNum)) {
            lastOpt = event
            ans += vNum
            outWrite(elementValue)
        } 
    } else if ('-' == elementValue) {
        vNum = parseFloat(inputText.value);
        if(!isNaN(vNum)) {
            lastOpt = event
            ans -= vNum
            outWrite(elementValue)
        } 
    } else if ('*' == elementValue) {
        vNum = parseFloat(inputText.value);
        if(!isNaN(vNum)) {
            lastOpt = event
            ans *= vNum
            outWrite(elementValue)
        } 
    } else if ('/' == elementValue) {
        vNum = parseFloat(inputText.value);
        if(!isNaN(vNum)) {
            lastOpt = event
            ans /= vNum
            outWrite(elementValue)
        } 
    }
    else if(elementValue == '=' && ans != 0.0) {
        inputController(lastOpt)
    }
    else {
        inputText.value += elementValue
    }
}