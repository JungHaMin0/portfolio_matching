<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
</head>
<body>
  <script>
    $(function(){
        var IMP = window.IMP; 
        IMP.init('imp73348172');
        var msg;
        
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : '${portfolio.portfolio_title}',
            amount : '${portfolio.portfolio_price}',
            buyer_name : '${member.user_id}',
            buyer_postcode : '123-456',
        }, function(rsp) {
            if ( rsp.success ) {
                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
                jQuery.ajax({
                    url: "portfolio_order", //cross-domain error가 발생하지 않도록 주의해주세요
                    type: 'POST',
                    dataType: 'json',
                    data: {
                    	"deal_portfolio_id" : ${portfolio.portfolio_id},
                    	"deal_price" : rsp.paid_amount,
                        "deal_purUser" :  rsp.buyer_name
                        //기타 필요한 데이터가 있으면 추가 전달
                    }
                    
                }).done(function(data) {
                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                    if ( data ) {
                        msg = '결제가 완료되었습니다.';
                        alert(msg);
                        
                        location.href="<%=request.getContextPath()%>/portfolio_payment_success";
                    } else {
                        //[3] 아직 제대로 결제가 되지 않았습니다.
                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                    }
                });
             	
            } else {
                msg = '결제에 실패하였습니다.';
                msg += '\n에러내용 : ' + rsp.error_msg;
                //실패시 이동할 페이지
                location.href="/ex/portfolio_payment_fail?portfolio_id=" + ${portfolio.portfolio_id};
                alert(msg);
            }
        });
        
    });
    </script>

</body>
</html>