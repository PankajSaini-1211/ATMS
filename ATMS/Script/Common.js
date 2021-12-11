var Commom ={

    callWebMethod: function (url, args, callBack, isAsync) {
        args1 = arguments;
        isAsync = isAsync == undefined ? true : isAsync;
        $.ajax({
            type: "Post",
            url: url,
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            data: args,
            async: isAsync,
            cache: true,
            error: function (msg) {
                var msg1 = msg;
                alert('');
            },
            success: function (msg) {
                if (callBack != undefined) {
                    callBack.call(this, msg, args1);
                }
                return msg.d;
            }
        });
    },
}