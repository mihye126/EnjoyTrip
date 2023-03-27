
<!-- Map JS -->
<script
        type="text/javascript"
        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9aec3b964ed8614de3ec88c7cd3be6ce&libraries=services,clusterer,drawing"
></script>
<c:set var="longitude" value="${longitude}"/>
<c:set var="latitude" value="${latitude}"/>
<c:set var="title" value="${title}"/>

<script>

  var mapContainer = document.getElementById('map'), // 지도를 표시할 div
      mapOption = {
        center: new kakao.maps.LatLng(${latitude},${longitude}), // 지도의 중심좌표
        level: 2 // 지도의 확대 레벨
      }

  var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

  // 마커가 표시될 위치입니다
  var markerPosition  = new kakao.maps.LatLng(${latitude},${longitude});
  var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png";
  var imageSize = new kakao.maps.Size(24, 35);

  // 마커 이미지를 생성합니다
  var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
  // 마커를 생성합니다
  var marker = new kakao.maps.Marker({
    map: map, // 마커를 표시할 지도
    position: markerPosition,
    image: markerImage, // 마커 이미지

  });


</script>

