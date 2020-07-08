<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<script type="text/javascript" 
		src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" 
		charset="utf-8">
</script>
</head>
<body>
<!-- ���̹����̵�ηα��� ��ư ���� ���� -->
<div id="naverIdLogin"></div>
<!-- ���̹��Ƶ��ηα��� �ʱ�ȭ Script -->
<script type="text/javascript"> 
	var naverLogin = new naver.LoginWithNaverId(
		{
			<!--�����ڼ��Ϳ� ����� ClientID-->
			clientId: "5oMddgOp1B42Fe93C3lz",
			<!--�����ڼ��Ϳ� ����� callback Url(�α��ν� �̵��Ұ��)-->
			callbackUrl: "http://localhost/myapp/main.html",
			isPopup: false, /* �˾��� ���� ����ó�� ���� */
			loginButton: {color: "green", type: 3, height: 60} /* �α��� ��ư�� Ÿ���� ���� */
		}
	);
	
	/* ���������� �ʱ�ȭ�ϰ� ������ �غ� */
	naverLogin.init();
	
</script>
<!-- // ���̹����̵�ηα��� �ʱ�ȭ Script -->
</body>
</html>