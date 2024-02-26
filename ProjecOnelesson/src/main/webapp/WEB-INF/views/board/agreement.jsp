<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">

    <title>약관동의서</title>
    <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
	<link rel="apple-touch-icon" href="${pageContext.request.contextPath}/resources/images/favicon_g.png"/>
    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/carousel/">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">


<style>
* {
  box-sizing: border-box;
}

html,
body {
  height: 100%;
}

body {
  display: flex;
  margin: 0;
  background-color: #f5f6f7;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Oxygen,
    Ubuntu, Cantarell, "Open Sans", "Helvetica Neue", sans-serif;
}

ul {
  list-style: none;
  padding: 0;
  margin: 0;
}

.wrap {
  margin: auto;
}

.wrap .logo {
  text-align: center;
  margin-bottom: 10px;
}

.wrap .logo h1 {
  margin: 0;
  font-size: 50px;
}

.wrap .contents {
  padding: 50px;
  background-color: #ffffff;
  border: 1px solid #dadada;
  border-radius: 5px;
  box-shadow: 0 4px 6px rgba(50, 50, 93, 0.11), 0 1px 3px rgba(0, 0, 0, 0.08);
}

#form__wrap {
  margin: 0 auto;
  width: 460px;
  font-size: 14px;
}

#form__wrap .terms__check__all {
  display: flex;
  margin-bottom: 35px;
}

#form__wrap .terms__check__all label {
  margin-left: 3px;
  text-decoration: underline;
}

.terms__list .terms__box {
  margin: 20px 0;
}

.contents label {
  font-weight: 700;
}

label.required::after {
  margin-left: 4px;
  font-size: 13px;
  font-weight: 400;
  line-height: 24px;
  color: #0086ff;
  content: "(필수)";
}

.terms__list .terms__content {
  height: 88px;
  overflow: auto;
  margin-top: 8px;
  padding: 12px;
  border: 1px solid #dadada;
  background: #fff;
  font-size: 12px;
}

.next-button {
  width: 100%;
  height: 40px;
  outline: none;
  cursor: pointer;
  background-color: #242222;
  color: #ffffff;
  border: none;
  border-radius: 5px;
  transition-duration: 0.2s;
}

.next-button:hover:enabled {
  background-color: #a3a2a2;
}

.next-button:disabled {
  opacity: 0.2;
  cursor: not-allowed;
}

@media (max-width: 768px) {
  .wrap {
    min-width: 280px;
    padding: 20px;
  }

  #form__wrap {
    max-width: 460px;
    width: auto;
  }
}

</style>



</head>
<body>
<div class="wrap">
      <div class="logo">
        <h1>One lesson</h1>
      </div>
      <div class="contents">
        <form action="/" method="POST" id="form__wrap">
          <div class="terms__check__all">
            <input type="checkbox" name="checkAll" id="checkAll" />
            <label for="checkAll">One lesson은 회원에게 콘텐츠, 상품 등을 제공하는 서비스 플랫폼입니다. 
            회원은 컴퓨터, 휴대전화 등 정보통신기기를 사용하여 One lesson이 회원에게 제공하는 서비스(이하 “서비스”)를 이용할 수 있으며, 서비스의 구체적인 내용과 이용 조건을 이용약관 및 정책, 서비스 페이지 등에서 확인할 수 있습니다.
			이용약관(이하 ”이 약관”)은 서비스 이용과 관련하여 One lesson과 회원 간의 권리와 의무에 대한 내용을 담고 있습니다.</label>
          </div>
          <ul class="terms__list">
            <li class="terms__box">
              <div class="input__check">
                <input type="checkbox" name="agreement" id="termsOfService" value="termsOfService" required />
                <label for="termsOfService" class="required">One lesson 이용약관 동의</label>
              </div>
              <div class="terms__content">
                1. 계정
				1.1 회원가입
				서비스를 이용하기 위해서는 회원가입에 의하여 생성되는 계정이 필요합니다. 
				이와 관련하여 One lesson은 회원에 대한 본인 인증 절차를 진행할 수 있으며, 회원이 회원가입에 필요한 정보 제공을 거절하거나 타인 정보 또는 허위 정보를 입력하는 경우 회원가입이 진행되지 않을 수 있습니다.

				1.2 미성년자
				미성년자는 관련 법령에 따라 회원가입 또는 서비스이용이 제한될 수 있으며, 부모 등 법정대리인의 동의를 얻은 후 서비스이용을 위한 결제를 진행하여야 합니다. 
				다만 법정대리인이 동의하지 아니한 경우, 미성년자 본인 또는 법정대리인은 결제를 취소할 수 있습니다.

				1.3 계정정보의 갱신
				전자우편주소, 연락처 등 계정정보가 변경된 경우 이를 반영하는 것은 회원의 책임이며 One lesson의 고의 또는 과실이 없음에도 불구하고 계정정보를 갱신하지 아니하여 발생하는 불이익은 회원이 부담합니다.
              </div>
            </li>
            <li class="terms__box">
              <div class="input__check">
                <input type="checkbox" name="agreement" id="privacyPolicy" value="privacyPolicy" required />
                <label for="privacyPolicy" class="required">개인정보 수집 및 이용 동의</label>
              </div>
              <div class="terms__content">
                2. 정기구독서비스
				2.1 서비스 이용
				회원은 이용기간 동안 다양한 콘텐츠를 제한 없이 이용할 수 있습니다. 다만, 이용 가능한 콘텐츠의 종류는 수시로 변경될 수 있고, 서비스 이용지역 및 이용기기에 따라 이용 가능한 콘텐츠 종류가 제한될 수 있습니다. 이와 관련하여, One lesson은 정기구독서비스를 이용하는 회원에게 정기구독서비스에 포함되는 콘텐츠에 관하여 문자메시지, 전자우편, 앱 푸시(App Push) 등 전자적 방법으로 안내를 제공할 수 있습니다.

				2.2 결제수단
				정기구독서비스 이용을 위하여 신용카드 등 결제수단 등록이 필요합니다. 결제일에 등록된 결제수단으로 서비스 이용요금이 결제되며, 등록된 결제수단에 의한 결제가 진행되지 않는 경우 정기구독서비스는 해지됩니다. 이와 관련하여, 복수의 결제수단이 등록된 경우, 회원은 기본 결제 수단에 의한 결제가 진행되지 않는 경우 다른 결제수단으로 결제되는 것을 승인합니다. 회원은 결제수단을 변경할 수 있습니다. 만일 회원이 타인의 결제수단을 사용하거나 부정한 정보를 입력하는 경우 예고 없이 서비스 이용이 중단될 수 있습니다.

				2.3 결제일
				회원은 서비스 내 '마이페이지' 내에서 다음 결제일을 확인할 수 있습니다. 제3자 계정(third-party accounts)을 결제 수단으로 사용하여 결제하는 경우에는 해당 제3자 계정에서 회원의 다음 결제일을 확인할 수 있습니다.

				2.4 이용료
				CLASS101은 완전한 재량으로 정기구독서비스 이용료를 변경할 수 있습니다. 이 경우 서비스 이용료 변경 예정일로부터 7일 전까지 회원에게 전자적으로 고지하고 동의를 받습니다. 회원이 이용료 변경에 동의하지 않을 경우 정기구독서비스를 해지할 수 있습니다.

				2.5 청약철회 및 해지
				2.5.1 정기구독서비스 해지 시 해지일이 속하는 이용기간(월)까지 서비스를 이용할 수 있습니다. 다만, 회원이 결제일부터 7일 이내에 콘텐츠를 이용(콘텐츠 또는 자료의 다운로드 포함. 이하 같음)하지 않은 경우 청약철회를 할 수 있고 이 경우 결제대금 전액은 환불됩니다.
				2.5.2. 회원이 1월을 초과하는 정기구독서비스 이용을 결제한 경우 정기구독서비스 해지 시 결제대금에서 해지신청일을 포함하는 이용기간(월)에 비례하는 월이용대금(결제 시점 당시 연간이용권 정가를 기준으로 산정)을 공제한 잔액의 100의 90이 환불됩니다.
				2.5.3 외부 온라인/오프라인 상점 또는 IAP(In-App Purchase)에서 정기구독서비스 이용권을 구입한 경우 환불은 구입처의 환불정책에 의합니다.
              </div>
            </li>
            <li class="terms__box">
              <div class="input__check">
                <input type="checkbox" name="agreement" id="allowPromotions" value="allowPromotions" />
                <label for="allowPromotions">프로모션 정보 수신 동의</label>
              </div>
              <div class="terms__content">
                4. 서비스 이용의 제한
				회원은 상시적으로 서비스를 이용할 수 있습니다. 다만, 전기통신설비의 유지 및 관리가 필요하거나 정보통신망에 장애가 발생한 경우 서비스 이용이 제한될 수 있습니다. 또한 회원이 거주하는 국가의 법령, 재판, 행정명령 등에 의하여 서비스 제공이 제한될 수 있습니다.

				5. 준수사항
				5.1 금지행위
				회원은 서비스 이용과 관련하여 아래의 행위를 하여서는 아니됩니다.
				ㆍ대한민국 또는 외국의 법령을 위반하는 행위
				ㆍ서비스를 직접 또는 간접적으로 이용한 불법행위
				ㆍ부정한 정보를 입력하여 회원가입을 진행하는 행위
				ㆍ위계, 위력 등의 방법으로 제3자의 서비스 이용을 방해하는 행위
				ㆍ제3자의 개인정보 또는 결제수단을 도용하는 행위
				ㆍ본인의 계정 또는 결제수단을 제3자에게 처분(담보, 신탁 등을 포함)하거나 대여하는 행위
				ㆍOne lesson 또는 제3자의 지식재산권을 침해하는 행위
				ㆍOne lesson 또는 제3자의 명예 또는 신용을 훼손하는 행위
				ㆍ음란성ㆍ포악성ㆍ잔인성ㆍ사행성 등이 포함된 정보를 게시하는 행위
				ㆍ개인의 인권 또는 평등권을 침해하는 차별행위
				ㆍ회원 본인 또는 제3자의 영리적 행위(광고 등)를 목적으로 이용하는 행위
				ㆍ제3자의 정보를 무단으로 수집하는 행위
				ㆍOne lesson이 운영하는 서비스를 훼손하거나 방해하거나 전서버에 과부하를 가져오는 행위
				ㆍOne lesson이 정한 정보 이외의 정보(컴퓨터 프로그램)의 송신 또는 게시
				ㆍ서비스에 포함되어 있거나 서비스를 통하여 취득한 콘텐츠와 정보를 아카이브, 복제, 공중송신, 배포, 수정, 전시, 시연, 출판, 라이선스하는 행위 및위 콘텐츠와 정보의 2차적 저작물을 생성, 판매 또는 권유하거나 이용하는 행위
				ㆍ서비스 내 콘텐츠보호기능을 우회, 삭제, 수정, 무효화, 약화 또는 훼손하거나, 서비스에 접근하는 데 로봇, 스파이더, 스크레이퍼나 기타 자동화 수단을 이용하거나, 서비스를 통하여 접근 가능한 소프트웨어나 기타 제품, 프로세스를 역컴파일, 리버스 엔지니어링 또는 역어셈블하거나, 코드나 제품을 삽입하거나 어떤 방식으로든 서비스를 조작하거나, 데이터 마이닝, 데이터 수집 또는 추출 방법을 사용하는 행위
				ㆍ컴퓨터바이러스 기타 컴퓨터 코드, 파일이나 프로그램을 포함하여, 서비스와 관련된 컴퓨터 소프트웨어나 하드웨어 또는 통신 장비의 기능을 방해, 파괴 또는 제한하기 위해 설계된 자료를 업로드, 게시, 이메일 전송, 또는 다른 방식으로 발송, 전송하는 행위

				5.2 커뮤니티 이용
				회원은 커뮤니티 서비스를 이용하여 게시물을 작성할 수 있습니다. 다만, 아래의 어느 하나에 해당하는 표현을 포함하는 게시물을 작성하는 것은 금지됩니다.
				ㆍOne lesson 또는 제3자의 명예를 훼손하는 표현
				ㆍOne lesson 또는 제3자의 지식재산권을 침해하는 표현
				ㆍ제3자의 개인정보를 침해하는 표현
				ㆍ인권 또는 평등권을 침해하는 차별적 표현
				ㆍ특정인에 대하여 불쾌감을 유발하거나 모욕적인 표현
				ㆍ허위임이 증명되거나 명백한 표현
				ㆍ회원 본인 또는 제3자의 영리적 행위(광고 등)를 목적으로 이용하는 행위
				ㆍ음란성ㆍ포악성ㆍ잔인성ㆍ사행성 등이 포함된 표현

				5.3 준수사항의 위반
				회원이 5.1 또는 5.2를 위반하는 경우 One lesson은 시정 요구, 게시물 차단, 계정의 생성 또는 이용의 제한 등을 할 수 있으며, 손해배상 청구 등 법적 절차를 진행할 수 있습니다. CLASS101이위와 같은 조치를 할 경우, CLASS101은 6.4의 규정을 준용하여 해당 회원에게 이를 통지합니다. 또한, 회원이 작성한 게시물로 인하여 사생활 침해나 명예훼손 등 제3자의 권리가 침해된 경우 그 침해를 받은 제3자는 CLASS101고객센터를 통해 침해사실을 소명하여 해당 게시물 삭제를 요청할 수 있으며, CLASS101은요청을 받은 후 지체없이 필요한 조치를 하고 제3자 및 회원에게 전자적 방법으로 고지합니다. 다만, 제3자의 권리 침해 여부를 판단하기 어렵거나 이해당사자 간에 다툼이 예상되는 경우 해당 게시물에 대한 접근을 30일 이내 범위에서 임시적으로 차단할 수 있습니다.

				6. 회원 탈퇴와 계정 정지
				6.1 회원은 언제든지 탈퇴할 수 있습니다. 다만, 회원의 One lesson에 대한 의무가 남아있는 경우 회원탈퇴는 보류될 수 있습니다.

				6.2 회원이 개정 약관에 대하여 동의하지 아니하고, 해당 회원에게 개정 전 약관을 적용할 수 없는 사정이 있는 경우 One lesson은 회원의 신청 여부와 관계없이 회원탈퇴를 진행할 수 있습니다.

				6.3 이 약관 5.1 또는 5.2를 위반하는 경우 회원의 계정은 일시적으로 정지될 수 있습니다. 이 경우 계정 이용의 제한 또는 정지에 따른 수강기간의 경과에 대하여 One lesson은 수강기간 연장 또는 환불 등의 책임을 부담하지 않습니다.

				6.4 One lesson은 6.3에 따른 계정 이용정지 시작일로부터 최소 1주 전 이를 회원에게 개별 통지합니다. 다만, One lesson은 필요한 경우 위 기간을 단축할 수 있고 부득이한 경우 사후적으로 회원에게 계정 이용정지를 통지할 수 있습니다.

				6.5 One lesson은 계정의 이용이 정지된 회원이 게시한 정보가 5.1 또는 5.2를 위반하는 경우 게시한 정보의 전부 또는 일부를 삭제할 수 있습니다.

				7.지식재산권
				7.1 서비스에 의하여 제공되는 콘텐츠는 One lesson 또는 제3자의 저작물로서 관련 법령 및 국제조약에 의하여 보호됩니다.

				7.2 One lesson은 회원과 제3자의 소중한 지식재산을 보호하기 위하여 노력합니다. 만일 One lesson이 회원의 지식재산권을 침해한 경우 One lesson은 관련 법령에 따라 회원이 입은 손해를 배상합니다.

				7.3 회원이 서비스 내 정보를 게시하는 경우 One lesson 또는 제3자는 그 정보를 One lesson 또는 서비스의 운영, 홍보 및 개선 목적으로 이용할 수 있습니다. 다만, 회원이 One lesson에게 그 이용에 대한 반대의사를 통지하는 경우 CLASS101은 그 이용을 중단합니다.

				8.개인정보
				8.1 개인정보의 수집과 이용
				One lesson은 개인정보 처리방침에 따라 회원의 개인정보를 수집하고 이용할 수 있습니다. 다만, 회원은 언제든지 개인정보 제공을 거부하거나 개인정보의 삭제를 요청할 수 있습니다. 또한, One lesson은 관련 법령에 따라 회원에게 문자메시지, 전자우편, 앱 푸시(App Push) 등 전자적 방법을 이용하여 광고성 정보를 전송할 수 있으며, 회원은 언제든지 광고성 정보의 수신을 거절할 수 있습니다.

				8.2 개인정보의 삭제
				One lesson은 회원탈퇴 시 회원의 개인정보를 관련 법령 및 개인정보 처리방침에 따라 파기하거나 일정 기간동안 보존합니다. 다만, One lesson은 회원탈퇴 시 회원이 작성한 게시물을 그대로 게시할 수 있습니다.

				9. 책임의 제한
				9.1 One lesson은 콘텐츠의 적법성, 정확성, 진실성, 신뢰성, 유효성 등을 보증하지 않습니다.

				9.2 One lesson은 서비스를 구성하는 데이터의 무결성을 보증하지 않습니다.

				9.3 One lesson은 회원의 귀책사유에 의하여 발생하는 손해 및 천재지변, 쟁의행위, 감염병 등 One lesson이 통제하기 어려운 사정으로 인하여 발생한 손해에 대하여 책임을 부담하지 않습니다.

				9.4 One lesson은 회원 간 분쟁에 대하여 개입하지 않으며 One lesson의 귀책사유가 없는 한 이로 인하여 발생하는 손해에 대하여 책임을 부담하지 않습니다.

				9.5 One lesson은 관련 법령에 따라 회원의 개인정보를 포함한 정보시스템 보안에 필요한 기술적 보호조치를 하고 있습니다. 다만, 이와 같은 기술적 보호조치에도 불구하고 해킹, 컴퓨터바이러스 등에 의하여 One lesson의 정보시스템에 대한 침해사고가 발생하는 경우 CLASS101의 귀책사유가 없는 한 이로 인하여 회원에게 발생하는 손실에 대하여는 책임을 부담하지 않습니다.

				9.6 One lesson이 통신판매를 중개하는 경우 One lesson의 귀책사유가 없는 한 판매자와 회원 간 거래에 대하여 One lesson은 책임을 부담하지 않습니다. 다만, 관련 법령에 따라 One lesson는 회원에게 판매자 정보를 제공합니다.

				9.7 One lesson이 제조하지 않은 상품을 회원에게 공급하는 경우 One lesson은 제조물 책임을 부담하지 않습니다. 다만, 회원이 상품의 제조업자에 관한 정보를 요청하는 경우 One lesson은 관련 법령에 따라 이를 회원에게 제공합니다.

				10. 약관의 해석 및 개정
				10.1 One lesson은 이 약관을 신의성실의 원칙에 따라 공정하게 해석하며 회원에 따라 다르게 해석하지 않습니다. 또한 이 약관의 내용 중 뜻이 명백하지 않은 부분은 회원에게 유리하게 해석합니다.

				10.2 One lesson은 서비스를 구성하는 개별 서비스에 관하여 개별 약관 또는 정책을 운영할 수 있습니다. 개별 약관 또는 정책은 이 약관 10.3 및 10.4의 규정을 준용하여 제·개정되며, 이 약관과 동일하게 회원에게 효력을 가집니다. 다만, 개별 약관 또는 정책이 이 약관과 상호 간에 모순이 있는 경우 이 약관이 우선적으로 효력을 가집니다.

				10.3 One lesson이 이 약관을 개정하는 경우 회원에게 주요 개정내용과 시행일 등을 명시하여 시행일로부터 7일 전에 전자적 방법으로 알려드리겠습니다. 다만, 개정내용에 회원에게 불리한 내용이 포함되는 경우 시행일로부터 30일 전에 알려드리겠습니다.

				10.4 One lesson은 이 약관을 개정할 경우 회원에게 ‘회원이 위 시행일 전일까지 거부의사를 표시하지 않거나 시행일자 이후 서비스를 계속 이용하는 경우 이 약관의 개정에 동의한 것으로 간주된다.’는 뜻을 별도로 개별적으로 회원에게 고지하고 개정 약관에 대한 동의를 확인합니다. 회원은 이에 대하여 동의하거나 거부할 수 있으며 One lesson은 회원이 위 시행일 전까지 거부의사를 표시하지 않거나 시행일 이후 서비스를 계속 이용하는 경우(기존 서비스의 계속적 이용 또는 신규 서비스의 결제 및 이용하는 경우를 포함), 이용 시점을 기준으로 유효하게 시행 중인 약관에 동의한 것으로 간주할 수 있습니다. 다만, 회원이 개정 약관에 동의하지 않고 해당 회원에게 개정 전 약관을 적용할 수 없는 사정이 있는 경우 회원 탈퇴절차가 진행될 수 있습니다.

				11. 통지와 공고
				CLASS101은 이 약관에 따른 통지를 회원으로부터 제공받은 전자우편주소, 전화번호 등을 통하여 전자적 방법으로 통지합니다. One lesson은 불특정다수 회원에 대한 통지의 경우 개별 회원에 대한 통지를 갈음하여 서비스 내 1주 이상 전자적 방법으로 공고할 수 있습니다. 다만, 회원 본인의 거래와 관련하여 중대한 영향을 미치는 사항에 대하여는 개별통지를 합니다.

				12. 준거법과 재판관할
				12.1 이 약관의 해석과 적용은 대한민국 법령에 의합니다.
				
				12.2 One lesson과 회원 간에 발생한 전자상거래 분쟁에 관한 소송은 제소 당시의 회원의 주소에 의하고, 주소가 없는 경우에는 거소를 관할하는 지방법원의 전속관할로 합니다. 다만, 제소 당시 회원의 주소 또는 거소가 분명하지 않거나 외국 거주자의 경우에는 민사소송법상의 관할법원에 제기합니다.				
				CLASS101 서비스와 관련하여 궁금하신 사항이 있으시면 고객센터(대표번호: 0000 – 0000 / 이메일: One lesson@One lesson.com (평일 10:00~17:00 KST)로 문의 주시기 바랍니다.
              </div>
            </li>
          </ul>
<!--           <button type="submit" class="next-button" disabled>확인</button> -->
          <button type="submit" class="next-button"
          onclick= "location.href='${pageContext.request.contextPath}/member/memberInsert1'">확인</button>
        </form>
      </div>
    </div>


<script>
'use strict';

const form = document.querySelector('#form__wrap');
const checkAll = document.querySelector('.terms__check__all input');
const checkBoxes = document.querySelectorAll('.input__check input');
const submitButton = document.querySelector('button');

const agreements = {
  termsOfService: false,
  privacyPolicy: false,
  allowPromotions: false,
};

form.addEventListener('submit', (e) => e.preventDefault()); // 새로고침(submit) 되는 것 막음

checkBoxes.forEach((item) => item.addEventListener('input', toggleCheckbox));

function toggleCheckbox(e) {
  const { checked, id } = e.target;  
  agreements[id] = checked;
  this.parentNode.classList.toggle('active');
  checkAllStatus();
  toggleSubmitButton();
}

function checkAllStatus() {
  const { termsOfService, privacyPolicy, allowPromotions } = agreements;
  if (termsOfService && privacyPolicy && allowPromotions) {
    checkAll.checked = true;
  } else {
    checkAll.checked = false;
  }
}

function toggleSubmitButton() {
  const { termsOfService, privacyPolicy } = agreements;
  if (termsOfService && privacyPolicy) {
    submitButton.disabled = false;
  } else {
    submitButton.disabled = true;
  }
}

checkAll.addEventListener('click', (e) => {
  const { checked } = e.target;
  if (checked) {
    checkBoxes.forEach((item) => {
      item.checked = true;
      agreements[item.id] = true;
      item.parentNode.classList.add('active');
    });
  } else {
    checkBoxes.forEach((item) => {
      item.checked = false;
      agreements[item.id] = false;
      item.parentNode.classList.remove('active');
    });
  }
  toggleSubmitButton();
});

</script>

<script>
const form = document.querySelector('#form__wrap'); // 데이터를 전송하는 Form 
const checkAll = document.querySelector('.terms__check__all input'); // 모두 동의 체크박스
const checkBoxes = document.querySelectorAll('.input__check input'); // 모두 동의를 제외한 3개의 체크박스
const submitButton = document.querySelector('button'); // 확인 버튼
</script>


<script>
const agreements = {
		  termsOfService: false, // 첫번째 필수동의 체크박스
		  privacyPolicy: false, // 두번째 필수동의 체크박스
		  allowPromotions: false, // 이벤트 수신 동의 체크박스
		};
</script>


<script>
checkAll.addEventListener('click', (e) => {
	  const { checked } = e.target;
	  if (checked) {
	    checkBoxes.forEach((item) => {
	      item.checked = true;
	      agreements[item.id] = true;
	      item.parentNode.classList.add('active');
	    });
	  } else {
	    checkBoxes.forEach((item) => {
	      item.checked = false;
	      agreements[item.id] = false;
	      item.parentNode.classList.remove('active');
	    });
	  }
	  toggleSubmitButton();
	});
</script>

<script>
const { checked } = e.target;

const checked = e.target.checked;

</script>


<script>
if (checked) {
    checkBoxes.forEach((item) => {
      item.checked = true;
      agreements[item.id] = true;
      item.parentNode.classList.add('active');
    });
  } else {
    checkBoxes.forEach((item) => {
      item.checked = false;
      agreements[item.id] = false;
      item.parentNode.classList.remove('active');
    });
  }


if (checked) {
    checkBoxes.forEach((item) => {
      item.checked = true;
      agreements[item.id] = true;
      item.parentNode.classList.add('active');
    });
  }

agreements[item.id] = true;

else {
    checkBoxes.forEach((item) => {
      item.checked = false;
      agreements[item.id] = false;
      item.parentNode.classList.remove('active');
    });
  }
  toggleSubmitButton(); 
  
</script>

<script>
function toggleSubmitButton() {
	  const { termsOfService, privacyPolicy } = agreements;
	  if (termsOfService && privacyPolicy) {
	    submitButton.disabled = false;
	  } else {
	    submitButton.disabled = true;
	  }
	}


const { termsOfService, privacyPolicy } = agreements;


if (termsOfService && privacyPolicy) {
    submitButton.disabled = false; // 버튼 활성화
  } else {
    submitButton.disabled = true; // 버튼 비활성화
  }

</script>

<script>
checkBoxes.forEach((item) => item.addEventListener('input', toggleCheckbox));

function toggleCheckbox(e) {
  const { checked, id } = e.target;  
  agreements[id] = checked;
  this.parentNode.classList.toggle('active');
  checkAllStatus();
  toggleSubmitButton();
}


checkBoxes.forEach((item) => item.addEventListener('input', toggleCheckbox));


function toggleCheckbox(e) {
	  const { checked, id } = e.target; 
	  agreements[id] = checked;
	  this.parentNode.classList.toggle('active'); // 여기선 중요하지 않음
	  checkAllStatus();
	  toggleSubmitButton();
	}


function checkAllStatus() {
	  const { termsOfService, privacyPolicy, allowPromotions } = agreements;
	  if (termsOfService && privacyPolicy && allowPromotions) {
	    checkAll.checked = true;
	  } else {
	    checkAll.checked = false;
	  }
	}


const { termsOfService, privacyPolicy, allowPromotions } = agreements;


if (termsOfService && privacyPolicy && allowPromotions) {
    checkAll.checked = true;
  } else {
    checkAll.checked = false;
  }

</script>


</body>
</html>