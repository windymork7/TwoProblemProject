<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
<script type="text/javascript">


	var xhr = new XMLHttpRequest();
	var url = 'http://apis.data.go.kr/1741000/EarthquakeIndoors/getEarthquakeIndoorsList'; /*URL*/
	var queryParams = '?' + encodeURIComponent('ServiceKey') + '=' + 'mtqNleuRqYyZNX%2BiKSu8BJvnmv9flg5i%2BeywemR8MxGCfMGz%2FoPwVn%2BjBwXT2t48sSlAg%2F1vZ4wXQoR8Lu%2F9Og%3D%3D'; /*Service Key*/
	queryParams += '&' + encodeURIComponent('ServiceKey') + '='
			+ encodeURIComponent('-'); /**/
	queryParams += '&' + encodeURIComponent('pageNo') + '='
			+ encodeURIComponent('1'); /**/
	queryParams += '&' + encodeURIComponent('numOfRows') + '='
			+ encodeURIComponent('10'); /**/
	queryParams += '&' + encodeURIComponent('type') + '='
			+ encodeURIComponent('xml'); /**/
	queryParams += '&' + encodeURIComponent('flag') + '='
			+ encodeURIComponent('Y'); /**/
	xhr.open('GET', url + queryParams);
	xhr.onreadystatechange = function()
	{
		if (this.readyState == 4) {
			alert('Status: ' + this.status + 'nHeaders: '
					+ JSON.stringify(this.getAllResponseHeaders()) + 'nBody: '
					+ this.responseText);
		}
	};

	xhr.send('');
</script>
</html>