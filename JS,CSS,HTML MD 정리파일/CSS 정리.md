# CSS 프로퍼티 속성 모음
## Background(배경 이미지 관련 속성)
|속성|설명|값|
|------|---|---|
|background|background의 여러 가지 속성을 간단하게<br> 한번에 선언하여 사용할수 있다.|● background-color<br>● background-images<br>● background-repeat<br>● background-attachment<br>● background-position|
|background-attachment|페이지 스크롤을 할 때, 페이지와 함께 스크롤<br>되게 할 것인지 아니면 배경 이미지는 고정되게<br>할 것인지를 설정할 수 있다.|● scroll : 배경이 요소와 함께 스크롤됩니다.<br>● fixed : 배경이 고정되어 스크롤에 영향을 받지 않습니다.|
|background-color|특정 요소의 배경 색상을 지정할 수 있다.|● color-rgb : RGB(Red, Green, Blue) 값을 사용하여 색상을 지정<br>● color-hex : 16진수 값으로 색상을 지정<br>● color-name : 미리 정의된 색상 이름을 사용하여 지정<br>● transparent : 배경을 투명하게 처리|
|background-images|배경 이미지를 지정할 수 있다.|● url(URL) : 이미지 파일의 URL 경로를 지정하여 배경 이미지를 추가<br>● none : 배경 이미지를 사용하지 않음을 나타냄|
|background-position|배경 이미지가 시작되는 위치를 조정할 수 있다.|● top left : 배경 이미지를 요소의 위쪽에 정렬하며, 왼쪽에 위치시킴<br>● top center : 배경 이미지를 요소의 위쪽에 정렬하며, 가운데에 위치시킴<br>● top right : 배경 이미지를 요소의 위쪽에 정렬하며, 오른쪽에 위치시킴<br>● center left : 배경 이미지를 요소의 중앙에 정렬하며, 왼쪽에 위치시킴<br>● center center : 배경 이미지를 요소의 중앙에 정렬하며, 가운데에 위치시킴<br>● center right : 배경 이미지를 요소의 중앙에 정렬하며, 오른쪽에 위치시킴<br>● bottom left : 배경 이미지를 요소의 아래쪽에 정렬하며, 왼쪽에 위치시킴<br>● bottom center : 배경 이미지를 요소의 아래쪽에 정렬하며, 가운데에 위치시킴<br>● bottom right : 배경 이미지를 요소의 아래쪽에 정렬하며, 오른쪽에 위치시킴<br>● x% y% : 배경 이미지를 요소 내에서 지정한 수평 및 수직 백분율 위치에 위치시킴<br>● xpos ypos : 배경 이미지를 요소 내에서 지정한 수평 및 수직 위치에 위치시킴|
|background-repeat|배경이미지를 반복할 것인지 하나만 보여줄<br>것인지 설정할 수 있다. 배경 이미지 반복 시<br>어느 방향으로 반복할 것인지도 설정할 수 있다.|● repeat : 기본값. 배경이미지가 반복적으로 적용<br>● repeat-x : 배경이미지가 가로방향으로만 반복적으로 적용<br>● repeat-y : 배경이미지가 세로방향으로만 반복적으로 적용<br>● no-repeat : 배경이미지가 반복적으로 적용되지 않고 한번만 적용|
## Border (테두리 관련 속성)
|속성|설명|값|
|------|---|---|
|border|border의 여러 가지 속성을 간단하게 한번에<br>선언하여 사용할 수 있다.|● border-width<br>● border-style<br>● border-color<br>● border-bottom|
|border-bottom|border-bottom(아래쪽 테두리)의 여러가지<br> 속성을 간단하게 한번에 선언할 수 있다.|● border-bottom-width : border-bottom의 선의 두께를 설정.선의 두께는 픽셀(px), 백분율(%), thin, medium, thick 등의 값을 사용하여 지정할 수 있음<br>● border-style : border-bottom의 선의 스타일을 설정.선의 스타일은 none, hidden, dotted, dashed, solid, double, groove, ridge, inset, outset 등의 값을 사용하여 지정할 수 있음<br>● border-color : border-bottom의 선의 색상을 설정.|
|border-bottom-color|border-bottom의 색상을 설정할 수 있다.|● border-color : border-bottom의 선의 색상을 설정.|
|border-bottom-style|border-bottom의 스타일을 설정할 수 있다.|● border-style : border-bottom의 선의 스타일을 설정하는데 사용|
|border-bottom-width|border-bottom의 너비를 설정할 수 있다.|● thin : 상대적으로 얇은 선을 지정.medium보다 얇고, thick보다 더 얇음<br>● medium : 기본값으로 정해진 두께를 가진 선을 지정<br>● thick : 상대적으로 두꺼운 선을 지정.medium보다 두껍고, thin보다 더 두꺼움<br>● length : 픽셀(px), 백분율(%) 등과 같은 유효한 길이 값을 사용하여 직접 선의 두께를 지정할 수 있음|
|border-color|상하좌우 모든 테두리의 색상을 1개에서<br>4개까지 한번에 설정할 수 있다.|● color|
|border-left|border-left(왼쪽테두리)의 여러가지 속성을<br>간단하게 한번에 선언하여 사용할 수 있다.|● border-left-width<br>● border-style<br>● border-color|
|border-left-color|border-left의 색상을 설정할 수 있다.|border-color|
|border-left-style|border-left의 스타일은 설정할 수 있다.|border-style|
|border-left-width|border-left의 너비를 설정할 수 있다.|● thin : 상대적으로 얇은 선을 지정.medium보다 얇고, thick보다 더 얇음<br>● medium : 기본값으로 정해진 두께를 가진 선을 지정<br>● thick : 상대적으로 두꺼운 선을 지정.medium보다 두껍고, thin보다 더 두꺼움<br>● length : 픽셀(px), 백분율(%) 등과 같은 유효한 길이 값을 사용하여 직접 선의 두께를 지정할 수 있음|
|border-right|border-right(오른쪽테두리)의 여러가지 속성을<br>간단하게 한번에 선언하여 사용할 수 있다.|● border-bottom-width<br>● border-style<br>● border-color|
|border-right-color|border-right의 색상을 설정할 수 있다.|● border-color|
|border-right-style|border-right의 스타일을 설정할 수 있다.|● border-style|
|border-right-width|border-right의 너비를 설정할 수 있다.|● thin : 상대적으로 얇은 선을 지정.medium보다 얇고, thick보다 더 얇음<br>● medium : 기본값으로 정해진 두께를 가진 선을 지정<br>● thick : 상대적으로 두꺼운 선을 지정.medium보다 두껍고, thin보다 더 두꺼움<br>● length : 픽셀(px), 백분율(%) 등과 같은 유효한 길이 값을 사용하여 직접 선의 두께를 지정할 수 있음|
|border-style|상하좌우 모든 테두리의 모양을 1개에서 4개까지<br>스타일을 한번에 설정할 수 있다.|● none : 테두리를 없애고 투명하게 처리. 테두리가 보이지 않음<br>● hidden : 테두리를 없애고 투명하게 처리.none과 동일하지만, 일부 브라우저에서는 다르게 처리될 수도 있음<br>● dotted : 점선 스타일의 테두리를 생성<br>● dashed : 대시 스타일의 테두리를 생성<br>● solid : 기본값.실선 스타일의 테두리를 생성<br>● double : 두 줄의 실선 테두리를 생성<br>● groove : 테두리를 홈 형태로 생성<br>● ridge : 테두리를 돌출 형태로 생성<br>● inset : 테두리를 요소 안쪽으로 홈 형태로 생성<br>● outset : 테두리를 요소 바깥쪽으로 돌출 형태로 생성|
|border-top|border-top(위쪽테두리)의 여러가지 속성을<br>간단하게 한번에 선언하여 사용할 수 있다.|● berder-top-width<br>● border-style<br>● border-color|
|border-top-color|border-top의 색상을 설정할 수 있다.|● border-color|
|border-top-style|border-top의 스타일을 설정할 수 있다.|● border-style|
|border-top-width|border-top의 너비를 설정할 수 있다.|● thin : 상대적으로 얇은 선을 지정.medium보다 얇고, thick보다 더 얇음<br>● medium : 기본값으로 정해진 두께를 가진 선을 지정<br>● thick : 상대적으로 두꺼운 선을 지정.medium보다 두껍고, thin보다 더 두꺼움<br>● length : 픽셀(px), 백분율(%) 등과 같은 유효한 길이 값을 사용하여 직접 선의 두께를 지정할 수 있음|
|border-width|상하좌우 모든 테두리의 너비를 한번에<br>설정할 수 있다.|● thin : 상대적으로 얇은 선을 지정.medium보다 얇고, thick보다 더 얇음<br>● medium : 기본값으로 정해진 두께를 가진 선을 지정<br>● thick : 상대적으로 두꺼운 선을 지정.medium보다 두껍고, thin보다 더 두꺼움<br>● length : 픽셀(px), 백분율(%) 등과 같은 유효한 길이 값을 사용하여 직접 선의 두께를 지정할 수 있음|
## CLASSIFICATION (분류)
|속성|설명|값|
|------|---|---|
|clear|바로 이전의 요소에서 선언된 float 속성을<br>해제한다.|● left : 속성을 가진 요소가 왼쪽에 위치한 경우에만 해제함. 즉,바로 이전 요소가 왼쪽으로 띄워져 있을 때만 흐름을 해제함<br>● right : 속성을 가진 요소가 오른쪽에 위치한 경우에만 해제함. 즉, 바로 이전 요소가 오른쪽으로 띄워져 있을 때만 흐름을 해제함<br>● both : 속성을 가진 요소가 어느 쪽에 위치해도 해제함. 즉, 왼쪽이나 오른쪽으로 띄워진 요소가 있을 때 모두 흐름을 해제함<br>● none : 기본값으로, float 속성을 해제하지 않음. 이전 요소의 float 속성이 유지됨|
|cursor|마우스 포인터의 모양을 지정할 수 있다.|● url : 사용자 지정 커서 이미지 지정 가능, URL에 이미지 파일 경로를 지정하여 원하는 커서 이미지 사용 가능<br>● auto : 기본값으로 브라우저가 요소에 대해 적절한 커서를 자동으로 선택<br>● crosshair : 십자선 형태의 커서를 표시<br>● default : 일반적인 화살표 모양의 커서를 표시<br>● pointer : 포인터 형태의 손가락 모양 커서를 표시. 일반적으로 링크에 사용<br>● move : 이동 가능한 커서를 표시. 요소를 드래그하여 이동할 수 있음을 나타냄<br>● e-resize : 요소의 오른쪽 가장자리를 가리키는 커서로, 요소의 가로 크기를 조정할 수 있음을 나타냄<br>● ne-resize : 요소의 오른쪽 상단 모서리를 가리키는 커서로, 요소의 오른쪽 상단 모서리를 드래그하여 가로 및 세로 크기를 동시에 조정할 수 있음을 나타냄<br>● nw-resize : 요소의 왼쪽 상단 모서리를 가리키는 커서로, 요소의 왼쪽 상단 모서리를 드래그하여 가로 및 세로 크기를 동시에 조정할 수 있음을 나타냄<br>● n-resize : 요소의 위쪽 가장자리를 가리키는 커서로, 요소의 세로 크기를 조정할 수 있음을 나타냄<br>● se-resize : 요소의 오른쪽 하단 모서리를 가리키는 커서로, 요소의 오른쪽 하단 모서리를 드래그하여 가로 및 세로 크기를 동시에 조정할 수 있음을 나타냄<br>● s-resize : 요소의 아래쪽 가장자리를 가리키는 커서로, 요소의 세로 크기를 조정할 수 있음을 나타냄<br>● w-resize : 요소의 왼쪽 가장자리를 가리키는 커서로, 요소의 가로 크기를 조정할 수 있음을 나타냄<br>● text : 텍스트 입력 가능 영역에서 텍스트 입력을 나타내는 커서를 표시<br>● wait : 작업이 처리되는 동안 기다리는 상태를 나타내는 커서를 표시<br>● help : 도움말이 필요함을 나타내는 커서를 표시|
|display|요소를 보일 것인지, 감출 것인지를 지정할 수 있다.<br>요소를 보이게 할 경우 어떤 방식으로 보이게 할 것<br>인지 설정할 수 있다.|● none : 요소를 화면에서 숨김. 레이아웃에 영향을 주지 않음<br>● inline : 요소를 인라인 요소로 표시. 요소의 크기가 내용에 맞게 설정됨<br>● block : 요소를 블록 요소로 표시. 요소는 새로운 줄에서 시작하며, 가능한 최대 너비를 가짐<br>● list-item : 목록 요소를 표시. 주로 `< li >` 요소와 함께 사용<br>● run-in : 인라인 또는 블록 요소로 표시. 자동으로 결정됨<br>● compact : 요소를 인라인 요소로 표시하며, 높이와 너비를 축소하여 여러 요소를 동일 라인에 배치함<br>● marker : 표시하지 않는 목록 마커를 설정. `< li >` 요소 내용을 마커만 표시<br>● table : 테이블 요소를 블록 레벨 요소로 표시<br>● inline-table :  테이블 요소를 인라인 레벨 요소로 표시<br>● table-row-group : 테이블의 행들을 그룹화<br>● table-header-group : 테이블의 헤더(첫 번째 행)를 그룹화<br>● table-footer-group : 테이블의 푸터(마지막 행)를 그룹화<br>● table-row : 테이블의 각 행을 정의<br>● table-column-group : 테이블의 열들을 그룹화<br>● table-column : 테이블의 각 열을 정의<br>● table-cell : 테이블의 각 셀(데이터)을 정의<br>● table-caption : 테이블의 캡션(표 제목)을 정의|
|float|텍스트나 이미지 등의 요소를 흐르게 만들어,<br>인접해 있는 다른 요소와 함께 흐르게 만들수 있다.|● left : 띄운 요소는 페이지에서 왼쪽으로 흐르게 되고, 다른 요소들이 오른쪽에 나란히 배치됨<br>● right : 띄운 요소는 페이지에서 오른쪽으로 흐르게 되고, 다른 요소들이 왼쪽에 나란히 배치됨<br>● none : 기본값으로, 요소를 띄우지 않고, 흐름에 따라 위치됨|
|position|요소를 어떤 방식으로 위치시킬 것인지<br>지정할 수 있다.|● static : 기본값으로, 요소를 일반적인 문서 흐름에 따라 배치함(top, right, bottom, left, z-index 등의 속성을 사용하여 위치와 겹침을 조정할 수 없음)<br>● relative : 요소를 일반적인 문서 흐름에 따라 배치함(top, right, bottom, left, z-index 등의 속성을 사용하여 요소를 자기 자신 기준으로 상대적으로 위치시킬 수 있음.원래 위치를 기준으로 상대적인 이동을 수행함)<br>● absolute : 요소를 일반적인 문서 흐름에서 빼내어 해당 요소의 가장 가까운 조상 요소 중 position 값이 relative, absolute, 또는 fixed인 요소를 기준으로 배치함(top, right, bottom, left, z-index 등의 속성을 사용하여 원하는 위치에 자유롭게 위치시킬 수 있음)<br>● fixed : 요소를 뷰포트(브라우저 창)를 기준으로 배치함(스크롤해도 항상 같은 위치에 고정되어 있음.top, right, bottom, left, z-index 등의 속성을 사용하여 원하는 위치에 고정시킬 수 있음)|
|visibility|요소를 보이거나 감출 수 있다.|● visible : 기본값으로, 요소를 보이게 함(요소가 화면에 나타나고, 공간을 차지하며, 내용이 보이게 됨)<br>● hidden : 요소를 감춤(요소는 화면에 보이지 않지만, 여전히 공간을 차지하며, 화면 영역을 차지함)<br>● collapse : 주로 테이블 요소(`< table >`, `< tr >`, `< td >` 등)에서 사용됨(테이블의 행이나 열을 감춤. 테이블 레이아웃에서 해당 행 또는 열의 공간을 차지하지 않게 됨)|
## Dimesion (각종 치수)
|속성|설명|값|
|------|---|---|
|height|요소의 높이를 지정할 수 있습니다.|● auto<br>● length<br>● %|
|line-height|문장의 줄 간격을 지정할 수 있습니다.|● normal<br>● number<br>● length<br>● %|
|max-height|요소의 최대 제한 높이를 지정한다.|● none<br>● length<br>● %|
|min-height|요소의 최소 높이를 지정한다.|● length<br>● %|
|width|요소의 너비를 지정한다.|● auto<br>● length<br>● %|
|max-width|요소의 최대 제한 너비를 지정한다.|● none<br>● length<br>● %|
|min-width|요소의 최소 제한 너비를 지정한다.|● length<br>● %|
## Font (글꼴)
|속성|설명|값|
|------|---|---|
|font|폰트를 설정하기 위해 필요한 다양한 속성의<br>값들을 줄여서 간편하게 선언할 수 있다.|● font-style<br>● font-variant<br>● font-weight<br>● font-size/line-height<br>● font-family<br>● caption<br>● icon<br>● menu<br>● message-box<br>● small-caption<br>● status-barfont-family|
|family name|폰트의 종류를 지정할 수 있다.|● generic-family|
|font-size|폰트의 크기를 지정할 수 있다.|● xx-small<br>● x-small<br>● small<br>● medium<br>● large<br>● x-large<br>● xx-large<br>● smaller<br>● lager<br>● length<br>● %|
|font-size-adjust|소문자를 기준으로 글자 크기를 조정할 수 있다.<br>font-size에서 지정된 글자의 높이와 소문자 x의<br>비율로 글자 크기를 재지정한다.|● none<br>● number|
|font-stretch|글자의 선명도, 즉 장평을 설정할 수 있다.|● normal<br>● wider<br>● narrower<br>● ultra-condensed<br>● extra-condensed<br>● condensed<br>● semi-condensed<br>● semi-expanded<br>● expanded<br>● extra-expanded<br>● ultra-expanded|
|font-style|폰트를 기울임체로 사용할 수 있다.|● normal<br>● ltalic<br>● oblique|
|font-variant|소문자를 작은 대문자로 만들 수 있다.|● normal<br>● small-caps|
|font-weight|폰트의 두께를 지정할 수 있다.|● normal<br>● bold<br>● bolder<br>● lighter<br>● 100~900|
## Generated Content (콘텐츠 생성) 
|속성|설명|값|
|------|---|---|
|content|요소의 앞(:before)과 뒤(:after)에 어떤 내용을<br>생성할 것인지 지정할 수 있다.|● string<br>● url<br>● counter(name)<br>● counter(name,list-style-type)<br>● counters(name,string)<br>● counters(name,string,list-style-type)<br>● attr(X)<br>● open-quote<br>● close-quote<br>● no-open-quote<br>● no-close-quote|
|counter-increment|요소 요소에 번호를 매길 수 있다. 번호는 카운터로<br>자동으로 증가하는 특성을 가지고 있다.<br>앞과 뒤 선택자와 함께 사용된다.|● none<br>● identifier number|
|counter-reset|앞서 만든 카운터의 값을 초기화 한다.|● none<br>● identifier number|
|quotes string|요소 앞뒤에 인용부호를 주가할 수 있다.|● none|
## List and Marker (리스트와 표시)
|속성|설명|값|
|------|---|---|
|list-style|여러가지 리스트 스타일을 줄여서 한 번에<br>지정할 수 있다.|● list-style-type<br>● list-style-position<br>● list-style-image|
|list-style-image|리스트 앞에 붙는 아이콘을 임의의 이미지로<br>지정해 줄 수 있다.|● none<br>● url|
|list-style-position|리스트 앞에 붙는 블릿을 리스트에 포함해서<br>표현할 것인지, 리스트에 포함하지 않고 표현할<br>것인지 지정할 수 있다.|● inside<br>● outside|
|list-style-position|리스트 앞에 붙는 블릿 아이콘의 모양을<br>설정 할 수 있다.|● none<br>● disc<br>● circle<br>● square<br>● decimal<br>● decimal-leading-zero<br>● lower-roman<br>● upper-roman<br>● lower-alpha<br>● upper-alpha<br>● lower-latin<br>● upper-latin<br>● hebrew<br>● armenian<br>● georgian<br>● cjk-ideographic<br>● hiragana<br>● katakana<br>● hiragana-iroha<br>● katakana-iroha|
|marker-offset|항목표시자와 블럭간의 간격 지정|● auto<br>● length|
## Margin (마진 - 바깥여백)
|속성|설명|값|
|------|---|---|
|margin|마진 속성을 한꺼번에 줄여서 사용할 수 있다.|● margin-top<br>● margin-right<br>● margin-bottom<br>● margin-left|
|margin-bottom|요소의 아래쪽 마진을 줄일 수 있다.|● auto<br>● length<br>● %|
|margin-left|요소의 왼쪽 마진을 줄일 수 있다.|● auto<br>● length<br>● %|
|margin-right|요소의 오른쪽 마진을 줄일 수 있다.|● auto<br>● length<br>● %|
|margin-top|요소의 위쪽 마진을 줄일 수 있다.|● auto<br>● length<br>● %|
## Padding (패딩 - 안쪽여백)
|속성|설명|값|
|------|---|---|
|padding|패딩 속성을 한꺼번에 줄여서 사용할 수 있다.|● padding-bottom<br>● padding-left<br>● padding-right<br>● padding-top|
|padding-bottom|요소의 아래쪽 패딩을 줄 수 있다.|● length<br>● %|
|padding-left|요소의 왼쪽 패딩을 줄 수 있다.|● length<br>● %|
|padding-right|요소의 오른쪽 패딩을 줄 수 있다.|● length<br>● %|
|padding-top|요소의 위쪽 패딩을 줄 수 있다.|● length<br>● %|
## Outlines (윤곽)
|속성|설명|값|
|------|---|---|
|outline|요소의 윤곽을 디자인 할 수 있다. border와 달리<br>화면 배치나 크기에 영향을 주지 않는다.|● outline-color<br>● outline-style<br>● outline-width|
|outline-color|요소의 윤곽 색상을 지정 할 수 있다.|● color<br>● invert|
|outline-style|요소의 윤곽 스타일을 지정 할 수 있다.|● none<br>● dotted<br>● dashed<br>● solid<br>● double<br>● groove<br>● ridge<br>● inset<br>● outset|
|outline-width|요소의 윤곽 너비를 지정할 수 있다.|● thin<br>● medium<br>● thick<br>● length|
## Positioning (위치제어) 
|속성|설명|값|
|------|---|---|
|bottom|지정된 요소의 위치를 요소의 아래쪽 기준으로<br>지정한다.|● auto<br>● %<br>● length|
|left|지정된 요소의 위치를 왼쪽 기준으로 지정한다.|● auto<br>● %<br>● length|
|clip|지정된 수치만큼 4각형의 각 부분을 잘라낸다.|● auto<br>● shape|
|overflow|컨텐츠가 요소의 크기보다 커져서 넘치게 되면<br>이를 보이게 할 것인지 혹은 감출 것인지 등에<br>대한 설정을 할 수 있다.|● visible<br>● hidden<br>● scroll<br>● auto|
|position|요소가 위치할 방식을 지정한다.<br>요소가 자연스럽게 흐르게 할 것인지, 공중에<br>둥둥 뜨게 할 것인지 등을 지정할 수 있다.|● static<br>● relative<br>● absolute<br>● fixed|
|right|지정된 요소의 위치를 오른쪽 기준으로 지정한다.|● auto<br>● %<br>● length|
|top|지정된 요소의 위치를 위쪽 기준으로 지정한다.|● auto<br>● %<br>● length|
|vertical-align|요소안에 들어가는 요소들에 대해서 세로정렬을<br>지정 할 수 있다.|● baseline<br>● sub<br>● super<br>● top<br>● text-top<br>● middle<br>● bottom<br>● text-bottom<br>● length<br>● %|
|z-index|요소를 쌓아 올릴 수 있다. 이 설정을 통해서 요소끼리<br>겹처 보일 경우 어떤 요소가 더 위에 보이게 할 것인지<br>설정 할 수 있다.|● auto<br>● number|
## Table (표) 
|속성|설명|값|
|------|---|---|
|border-collapse|이웃하는 셀의 테두리를 겹쳐서 보이게 하거나,<br>떨어져 보이게 할 수 있다.|● collapse<br>● separate|
|border-spacing|인접한 테두리의 간격을 조성할 수 있다.|● length|
|caption-side|테이블의 제목의 위치를 테이블의 상하좌우<br>어디에 위치시킬 것인지 지정할 수 있다.|● bottom<br>● left<br>● right<br>● top|
|empty-cells|내용이 없는 셀을 보이게 할 것인지 감출 것인지<br>여부를 설정 할 수 있다.|● show<br>● hide|
|table-layout|테이블과 셀 등의 요소의 크기를 고정하여 문장이<br>길어도 늘어나거나 줄어들지 않게 한다.|● auto<br>● fixed|
## TEXT (문자) 
|속성|설명|값|
|------|---|---|
|color|텍스트의 색상을 설정할 수 있다.|● color|
|direction|텍스트가 위치할 가로 방향을 지정할 수 있다.<br>왼쪽→오른쪽, 혹은 오른쪽→왼쪽|● ltr<br>● rtl|
|line-height|문장과 문장 사이의 간격을 지정 할 수 있다.|● normal<br>● number<br>● length<br>● %|
|letter-spacing|글자 하나하나의 간격을 줄이거나 늘릴 수 있다.|● normal<br>● length|
|text-align|요소 안의 텍스트 정렬을 지정 할 수 있다.|● left<br>● right<br>● center<br>● justify|
|text-decoration|텍스트를 꾸밀 수 있다.|● none<br>● underline<br>● overline<br>● line-through|
|text-indent|문장의 첫행을 들여쓰기 할 수 있다.|● length<br>● %|
|text-shadow|텍스트에 그림자 효과를 줄 수 있다.|● none<br>● color<br>● length|
|text-transform|소문자를 대문자로, 대문자를 소문자로<br>설정 할 수 있다.|● none<br>● capitalize<br>● uppercase<br>● lowercase|
|unicode-bidi|글자 하나하나의 방향을 뒤집거나 되돌릴 수 있다.|● normal<br>● embed<br>● bidi-override|
|white-space|스페이스바(공백)을 자유롭게 지정할 수 있다.|● normal<br>● pre<br>● nowrap|
|word-spacing|단어와 단어 사이의 간격을 줄이거나 늘릴 수 있다.|● normal<br>● nowrap|
## Pseudo-Classes (유사클래스, 가상클래스) 
|속성|설명|
|------|---|
|: active|활동적인 요소의 특별한 스타일을 적용한다.|
|: focus|요소가 포커스에가 있을때 특별한 스타일을 적용한다.|
|: hover|마우스가 가리킬때 요소에 특별한 스타일을 적용한다.|
|: link|방문하지 않은 링크에 특별한 스타일을 적용한다.|
|: visited|방문한 링크에 특별한 스타일을 적용한다.|
|: first-child|다른 요소의 first-child에 특별한 스타일을 적용한다.|
|: lang|구체적인 요소에 원하는 언어를 적용한다.|
