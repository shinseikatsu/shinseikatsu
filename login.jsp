<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
  <head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>New Life Support app</title>
     <link rel="stylesheet" href="./assets/vendors/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="./assets/vendors/css/vendor.bundle.base.css">
    <link rel="stylesheet" href="./assets/css/style.css">
    <link rel="shortcut icon" href="./assets/img/logo.svg">
  </head>
  <body>
    <div class="container-scroller">
      <div class="container-fluid page-body-wrapper full-page-wrapper">
        <div class="content-wrapper d-flex align-items-center auth">
          <div class="row flex-grow">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-light text-left p-5">
                <div class="brand-logo">
                  <img src="./assets/img/logo.svg">
                  </div>
                <h4>ログイン画面</h4>


                <form action="j_security_check" class="pt-3" method="post" >

                  <div class="form-group">
                    <input type="text" name="j_username" class="form-control form-control-lg"
                     id="exampleInputEmail1" placeholder="ユーザー名" size="32">
                  </div>

                  <div class="form-group">
                    <input type="password" name="j_password" class="form-control form-control-lg"
                    size="32" id="exampleInputPassword1" placeholder="パスワード">
                  </div>

                  <button type="submit" class="btn btn-gradient-primary me-2" value="login"  >サインイン</button>
                  <div class="my-2 d-flex justify-content-between align-items-center">


                  </div>

				   <div class="text-center mt-4 font-weight-light">アカウントを新規登録する <a href="register.jsp" class="text-primary">作成</a>
                  </div>


                </form>
              </div>
            </div>
          </div>
        </div>

      </div>

    </div>

    <script src="./assets/vendors/js/vendor.bundle.base.js"></script>

    <script src="./assets/js/off-canvas.js"></script>
    <script src="./assets/js/hoverable-collapse.js"></script>
    <script src="./assets/js/misc.js"></script>

  </body>
</html>