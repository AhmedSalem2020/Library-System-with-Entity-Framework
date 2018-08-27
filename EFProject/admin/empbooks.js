$(function () {
    tblObj1 = $("#sample_1");
    tblObj1.block({
        message: '<img src="../../assets/img/ajax-loading.gif" align="">',
        centerY:  true,
        css: {
            top: '10%',
            border: 'none',
            padding: '2px',
            backgroundColor: 'none'
        },
        overlayCSS: {
            backgroundColor: '#000',
            opacity: 0.05,
            cursor: 'wait'
        }
    });


    $.ajax({
        type: "POST",
        url: "empbooks.aspx/getbooks",
        data: '',
        contentType: "application/json; charset=utf-8",
        dataType: "json",

        success: function (result) {

            //$.parseJSON(result) without dataType:json
            //global = result;
            tblObj = $("table[role^=membersTB]")[0];
            var options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };


            $.each(result.d, function (index, elm) {
                //+ '<td><input type="checkbox" class="checkboxes" value="1" /></td>'
                eval("publishDate= new " + elm.publishDate.slice(1, -1))

                if (elm.availableCopies > 1)
                    borrowbtn = '<a href="#borrow"><input role="' + elm.id + '" name="' + elm.title + '" value="borrow" type="button" class="btn blue borrowAction" /></a>'
                else
                    borrowbtn = '';
                readbtn = '<a href="#read">    <input role="' + elm.id + '" name="' + elm.title + '" " value="read"   type="button" class="btn green readAction" /></a>'


              
                trObj = '<tr class="odd gradeX">'
                    + ' <td>' + elm.title + '</td>'
                    + ' <td>' + elm.author.fName + ' ' + elm.author.lName + '</td>'
                    + ' <td>' + elm.publisher.name + '</td>'
                    + ' <td class="hidden-480">' + elm.categoryName + '</td>'
                    + ' <td class="hidden-480">' +
                    publishDate.toLocaleDateString('ar-EG', options) + '</td>'
                  
                    + '<td>' + borrowbtn + '</td>'
                    + '<td>' + readbtn   + '</td></tr > ';
                tblObj1.append(trObj);

            });//each


            $(".borrowAction").click(chooseBorrowBook);
            $(".readAction").click(chooseReadBook);
            TableManaged.init();
            tblObj1.unblock();
        },
        error: function (Error) {

            tblObj1.unblock();
            console.log(Error);
            alert("Error");
        }

    });//ajaxCall

    $("#btn_AddBrow").click(addBrowFun);
    $("#btn_addRead").click(addReadFun);
   

    borrowBookid = -1;
    readBookid = -1;

});//load


addBrowFun = function () {

    if (borrowBookid!=-1) {
        $("#borrow").block({
            message: '<img src="../../assets/img/ajax-loading.gif" align="">',
            centerY: true,
            css: {
                top: '10%',
                border: 'none',
                padding: '2px',
                backgroundColor: 'none'
            },
            overlayCSS: {
                backgroundColor: '#000',
                opacity: 0.05,
                cursor: 'wait'
            }
        });

      
        var obj = { bookId: borrowBookid, userId: $("#ContentPlaceHolder2_ddl_users option:selected").val()}
        $.ajax({
            type: "Post",
            url: "empbooks.aspx/addBorrow",

            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",

            success: function (result) {
               
                if (result.d ==-1)  {

                    $("#borrow").block({
                        message: '<span class="btn red">already borrow this book</span>',
                        centerY: true,
                        css: {
                            top: '10%',
                            border: 'none',
                            padding: '2px',
                            backgroundColor: 'none'
                        },
                        overlayCSS: {
                            backgroundColor: '#000',
                            opacity: 0.05,
                            cursor: 'wait'
                        }
                    });

                    setTimeout(function () {
                        $("#borrow").unblock();
                     },3000)
                }
                borrowBookid = -1;
                $("#ContentPlaceHolder2_txt_borrow").val("")

                $("#borrow").unblock();
            },
            error: function (Error) {
                console.log(Error);
                alert("Error");
                $("#borrow").unblock();

            }

        });//ajaxCall

        //myform.reset();
    }
}



addReadFun = function () {

    if (readBookid != -1) {
        $("#read").block({
            message: '<img src="../../assets/img/ajax-loading.gif" align="">',
            centerY: true,
            css: {
                top: '10%',
                border: 'none',
                padding: '2px',
                backgroundColor: 'none'
            },
            overlayCSS: {
                backgroundColor: '#000',
                opacity: 0.05,
                cursor: 'wait'
            }
        });


        var obj = { bookId: readBookid, userId: $("#ContentPlaceHolder2_ddl_users2 option:selected").val() }
        $.ajax({
            type: "Post",
            url: "empbooks.aspx/addRead",

            data: JSON.stringify(obj),
            contentType: "application/json; charset=utf-8",
            dataType: "json",

            success: function (result) {
                $("#ContentPlaceHolder2_txt_read").val("")

                if (result.d == -1) {

                    $("#read").block({
                        message: '<span class="btn red">already read this book</span>',
                        centerY: true,
                        css: {
                            top: '10%',
                            border: 'none',
                            padding: '2px',
                            backgroundColor: 'none'
                        },
                        overlayCSS: {
                            backgroundColor: '#000',
                            opacity: 0.1,
                            cursor: 'wait'
                        }
                    });

                    setTimeout(function () {
                        $("#read").unblock();
                    }, 3000)
                }
                readBookid = -1;
                $("#ContentPlaceHolder2_txt_read").val()

                $("#read").unblock();
            },
            error: function (Error) {
                console.log(Error);
                alert("Error");
                $("#read").unblock();

            }

        });//ajaxCall

        //myform.reset();
    }
}



chooseBorrowBook = function () {
    var obj = { id: this.getAttribute("role"), bookName: this.getAttribute("name") };
    borrowBookid = obj.id;

    $("#ContentPlaceHolder2_txt_borrow").val(obj.bookName)

}

chooseReadBook = function () {
    var obj = { id: this.getAttribute("role"), bookName: this.getAttribute("name") };
    readBookid = obj.id;

    $("#ContentPlaceHolder2_txt_read").val(obj.bookName)
}