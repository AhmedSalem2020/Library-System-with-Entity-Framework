$(function () {
    tblObj1 = $("#sample_1");
    tblObj1.block();


    $.ajax({
        type: "POST",
        url: "empMembers.aspx/getMembers",
        data: '',
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (result) {

            tblObj1.unblock();
            //$.parseJSON(result) without dataType:json
            //global = result;
            tblObj = $("table[role^=membersTB]")[0];
            var options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };


            $.each(result.d, function (index, elm) {
                //+ '<td><input type="checkbox" class="checkboxes" value="1" /></td>'
                eval("datebirth= new " + elm.birthDate.slice(1, -1))
                eval("dateMem= new " + elm.JoinDate.slice(1, -1))
                if (elm.blockStaues == 0)

                    isBlock = '<input role="' + elm.userName + '" value="not Blocked" type="button"  class="btn green blockAction" />';
                else if (elm.blockStaues == 1)
                    isBlock = '<span class="label label-inverse"> blocked </span>'
                else {
                    isBlock = '<input role="' + elm.userName + '" value="blocked more than week" type="button" class="btn yellow blockAction" />'
                }

                deletebtn = '<input role="' + elm.userName + '" value="delete" type="button" class="btn red deleteAction" />'


                if (elm.profile != "PLReUw==") {
                    myImg = '<a><img src="data:image/jpeg;base64,' + elm.profile + '" style=" height: 50px;"/></a>'
                }
                else {
                    myImg = ''
                }
                trObj = '<tr class="odd gradeX">'
                    + ' <td>' + elm.fName + " " + elm.lName + '</td>'
                    + ' <td>' + elm.userName + '</td>'
                    + ' <td class="hidden-480"><a href="mailto:' + elm.email + '">' + elm.email + '</a></td>'
                    + ' <td class="hidden-480">' +
                    datebirth.toLocaleDateString('ar-EG', options) + '</td>'
                    + '<td class="center hidden-480">' +
                    dateMem.toLocaleDateString('ar-EG', options) + '</td>'
                    + ' <td >' + myImg + '</td>'
                    + '<td>' + isBlock + '</td>'
                    + '<td>' + deletebtn + '</td></tr > ';
                tblObj1.append(trObj);

            });//each


            $(".blockAction").click(blockFun);
            $(".deleteAction").click(deleteFun);

            TableManaged.init();
            tblObj1.unblock();
        },
        error: function (Error) {

            tblObj1.unblock();
            console.log(Error);
            alert("Error");
        }

    });//ajaxCall


    inputs = document.getElementsByTagName("input")
    for (key in inputs) {
        if ((key != "length" && inputs[parseInt(key)] != undefined) && (inputs[parseInt(key)].id == "userName" || inputs[parseInt(key)].id == "email")) {
            inputs[parseInt(key)].addEventListener("blur", checkempty);
            inputs[parseInt(key)].addEventListener("focus", focustext);
        }
    }

    $("#addbtn").click(addFun);
    validUserName = 1;
    validEmail = 1;
    userNameInput = $("#userName")[0];
    emailInput = $("#email")[0];
    myform = $("#form1");

});//load
addFun = function () {

    if (myform.valid() && validUserName == 0 && validEmail == 0) {
        myform.block();

        var image = $(".fileupload-preview")[0].children[0].src;

        var base64ImageContent = image.replace(/^data:image\/(png|jpeg|jpg);base64,/, "");
        //var blob = base64ToBlob(base64ImageContent, 'image/png');
        
        var user = {
            userName: $("#userName")[0].value,
            fName: $("#fName")[0].value,
            lName: $("#lName")[0].value,
            email: $("#email")[0].value,
            birthDate: $("#bdate")[0].value,
            profile: base64ImageContent,

        }
        var obj = { user: user }
        $.ajax({
            type: "Post",
            url: "empMembers.aspx/addMembers",

            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",

            success: function (result) {
                var options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };


                
                datebirth = user.birthDate;
                dateMem = 'New';
                    
                        isBlock = '<input role="' + user.userName + '" value="not Blocked" type="button"  class="btn green blockAction" />';
                   
                    if (user.profile != "PLReUw==") {
                        myImg = '<a><img src="data:image/jpeg;base64,' + user.profile + '" style=" height: 50px;"/></a>'
                    }
                    else {
                        myImg = ''
                    }
                    trObj = '<tr class="odd gradeX">'
                        + ' <td>' + user.fName + " " + user.lName + '</td>'
                        + ' <td>' + user.userName + '</td>'
                        + ' <td class="hidden-480"><a href="' + user.email + '">' + user.email + '</a></td>'
                        + ' <td class="hidden-480">' +
                        datebirth+ '</td>'
                        + '<td class="center hidden-480"><span class="label label-blue">' +
                        dateMem + '</td>'
                        + ' <td >' + myImg + '</td>'
                        + '<td>' + isBlock + '</td></tr>';
                    tblObj1.append(trObj);


    myform.unblock();
    $('#form1')[0].reset();

            },
            error: function (Error) {


                myform.block({
                    message: '<div class="btn red">image is very big</div>',
                    centerY: true,
                    css: {
                        top:'230%',
                        border: 'none',
                        padding: '2px',
                        backgroundColor: 'none'
                    },
                    overlayCSS: {
                        backgroundColor: '#000',
                        opacity: 0.3,
                        cursor: 'wait'
                    }
                });
                console.log(Error);
                setTimeout(function () {
                    myform.unblock();
                }, 2000);

            }

        });//ajaxCall

        //myform.reset();
    }
}

function base64ToBlob(base64, mime) {
    mime = mime || '';
    var sliceSize = 1024;
    var byteChars = window.atob(base64);
    var byteArrays = [];

    for (var offset = 0, len = byteChars.length; offset < len; offset += sliceSize) {
        var slice = byteChars.slice(offset, offset + sliceSize);

        var byteNumbers = new Array(slice.length);
        for (var i = 0; i < slice.length; i++) {
            byteNumbers[i] = slice.charCodeAt(i);
        }

        var byteArray = new Uint8Array(byteNumbers);

        byteArrays.push(byteArray);
    }

    return new Blob(byteArrays, { type: mime });
}



deleteFun = function () {
    var obj = { userName: this.getAttribute("role") }
    www = $(this);
    myform.block();
    $.ajax({
        type: "Post",
        url: "empMembers.aspx/deleteMembers",
        data: JSON.stringify(obj),
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (result) {
            
            if (result.d == 'True')
                www.parent().parent().remove();
            myform.unblock();
        },
        error: function (Error) {
            console.log(Error);
            alert("Error");
            myform.unblock();

        }

    });//ajaxCall


}

blockFun = function () {
    var obj = { userName: this.getAttribute("role") }
    www = $(this)
    console.log(www
    )
    $.ajax({
        type: "Post",
        url: "empMembers.aspx/blockMembers",
        data: JSON.stringify(obj),
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (result) {
            if (result.d == true) {

            }
            if (result.d == 'True') {
                isBlock = '<span class="label label-inverse"> blocked </span>'

            } else {
                isBlock = '<input role="' + obj.userName + '" value="not Blocked" type="button"  class="btn green blockAction" />';

            }
            www.parent().append(isBlock);
            www.remove();
        },
        error: function (Error) {
            console.log(Error);
            alert("Error");
        }

    });//ajaxCall


}

checkUserNameFun = function (un) {
    var obj = { userName: un }
    www = $(this)
    console.log(www
    )
    $.ajax({
        type: "Post",
        url: "empMembers.aspx/checkUserName",
        data: JSON.stringify(obj),
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (result) {
            validUserName = result.d;
        },
        error: function (Error) {
            console.log(Error);
            alert("Error");
        }

    });//ajaxCall


}

checkEmailFun = function (email) {
    var obj = { email: email }
   
    $.ajax({
        type: "Post",
        url: "empMembers.aspx/checkemail",
        data: JSON.stringify(obj),
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (result) {
            validEmail = result.d;
        },
        error: function (Error) {
            console.log(Error);
            alert("Error");
        }

    });//ajaxCall


}

checkempty = function () {
    if (this.id == "userName" && isNaN(this.value)) {
        checkUserNameFun(this.value)
        setTimeout(function () {
            if (validUserName == 0) {
                userNameInput.style.borderColor = "white";
            }
            else {
                userNameInput.style.borderColor = "red";
            }
        }, 200)

    }
    else if (this.id == "email") {
        if (this.checkValidity())
          checkEmailFun(this.value)
        setTimeout(function () {
            if (validEmail == 0) {
                emailInput.style.borderColor = "white";
            }
            else {
                emailInput.style.borderColor = "red";
            }
        }, 200)
    }
   
}
focustext = function () {
    this.style.borderColor = "white";
}