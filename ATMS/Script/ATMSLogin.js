$(document).ready(function () {
    ATMSLogin.init();
});

var ATMSLogin = {
    init: function () {
        ATMSLogin.RegisterEvent();
    },

    RegisterEvent: function () {
        //$('#btnSubmit').click(function () {

        //    if (ATMSLogin.validation() == true) {
        //        ATMSLogin.RegisterFormDetails();
        //    }
        //});
    },
    validation: function () {
        if ($.trim($('#UserName').val()) == '') {
            alert('please enter user name');
            //ATMSLogin.showErrorMsg('#UserName', 'Enter User Name')
            return false;
        }
        if ($.trim($('#Password').val()) == '') {
            ATMSLogin.showErrorMsg('#Password', 'Enter User Name')
            return false;
        }
        if ($.trim($('#ConfirmPassword').val()) == '') {
            ATMSLogin.showErrorMsg('#ConfirmPassword', 'Enter User Name')
            return false;
        }
        if ($.trim($('#Email').val()) == '') {
            ATMSLogin.showErrorMsg('#Email', 'Enter User Name')
            return false;
        }
        if ($.trim($('#MobileNo').val()) == '') {
            ATMSLogin.showErrorMsg('#MobileNo', 'Enter User Name')
            return false;
        }
        return true;
    },
    RegisterFormDetails: function () {
        var mode = "Add";
        var RegisterData = {};
        RegisterData.UserName = $.trim($('#UserName').val());
        RegisterData.Password = $.trim($('#Password').val());
        RegisterData.ConfirmPassword = $.trim($('#ConfirmPassword').val());
        RegisterData.Email = $.trim($('#Email').val());
        RegisterData.MobileNo = $.trim($('#MobileNo').val());

        //var args = { 'RegisterData': RegisterData, 'Mode': mode };
        var args = { 'Mode': mode };
        var url = 'ATMSLogin.aspx/ATMSRegister';
        Common.callWebMethod(url, JSON.stringify(args), ATMSLogin.RegisterFormSuccess, false)
    },
    RegisterFormSuccess: function (data, args) {
        if (data != undefined) {
            alert('Successfully Register...Please login Now..');
        }
        else {
            alert('please try again later');
        }
    },
}