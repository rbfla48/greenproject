<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"> 
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <!--구글플랫폼라이브러리 로드-->
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <!--구글클라우드에서 발급받은 클라이언트ID사용-->
    <meta name="google-signin-client_id" 
          content="80716139947-stn33227j0nbvchealkj5i8un1c939qs.apps.googleusercontent.com">
    <script>
    <!--로그인시 가져올 내용-->
      function onSignIn(googleUser) {
        var profile = googleUser.getBasicProfile();
        console.log('ID: ' + profile.getId()); 
        console.log('Name: ' + profile.getName());
        console.log('Image URL: ' + profile.getImageUrl());
        console.log('Email: ' + profile.getEmail()); 
        }
      <!--로그아웃-->
      function signOut() {
        var auth2 = gapi.auth2.getAuthInstance();
        auth2.signOut().then(function () {
        console.log('User signed out.');
    });
        
    auth2.disconnect();
  }
    </script>
</head>
<body>
    <h1>google login</h1>
    <!--로그인버튼-->
    <div class="g-signin2" data-onsuccess="onSignIn"></div>
    <!--로그아웃버튼-->
    <a href="#" onclick="signOut();">Sign out</a>

</body>
</html>