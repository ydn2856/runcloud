var acc="";
var acc_id="";
(function ($) {
  $.UrlParam = function (name) {
      //宣告正規表達式
      var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
      /*
       * window.location.search 獲取URL ?之後的參數(包含問號)
       * substr(1) 獲取第一個字以後的字串(就是去除掉?號)
       * match(reg) 用正規表達式檢查是否符合要查詢的參數
      */
      var r = window.location.search.substr(1).match(reg);
      //如果取出的參數存在則取出參數的值否則回穿null
      if (r != null) return unescape(r[2]); return null;
  }
})(jQuery);

function login_action(account,password){
    $.ajax({
      //async: false,
      type:"POST",
      url:"api/actionlogin.php",//请求页面
      data: {
        account: account,
        password:password
      },
      success:function(){
        $("#login_btn").text("登出");
      },
      error: function(){
        window.location.href="login.html";
      }
    })
}

function check_login(t){
  var back;
  $.ajax({
        async: false,
        url: "api/incsession.php",
        type: "POST",
        dataType: "text",
        success: function(data) {
            console.log(data);
            if(t==0){
                if(data=="emptyfalse"||data=="false"||data=="empty"){
                  back="no";
                }else{
                  set_acc(data);
                  back="yes";
                }
            }
            if(t==1){
                if(data=="emptyfalse"||data=="false"||data=="empty"){
                  window.location.href="login.html";
                }else{
                  set_acc(data);
                  set_acc_id();
                }
            }
        }
  });
  return back;
}

function set_acc(text){
    acc=text;
}

function get_acc(){
  return acc;
}

function logout(){
  $.ajax({
        url: "api/logout.php",
        type: "POST",
        dataType: "text",
        success: function(data) {
            console.log(data);
        }
  });
}

function set_acc_id(){
  $.ajax({
      async: false,
      url: "api/get_acc_id.php",
      type: "POST",
      data: {
        acc:acc
      },
      success: function(id){
        acc_id=id;
      }
  })
}

function get_acc_id(){
  return acc_id;
}