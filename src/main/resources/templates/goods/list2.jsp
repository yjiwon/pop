<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<body th:replace="~{fragments/aside :: asideFragment )}">

<!--
author: Boostraptheme
author URL: https://boostraptheme.com
License: Creative Commons Attribution 4.0 Unported
License URL: https://creativecommons.org/licenses/by/4.0/
-->



    <!--====================================================
                        ABOUT
    ======================================================-->
      <section class="resume-section p-3 p-lg-5 d-flex d-column" id="about">
          <div class="my-auto" >


          </div>
      </section>


    <!--====================================================
                        리스트
    ======================================================-->
      <section class="resume-section p-3 p-lg-5 d-flex flex-column" id="${list.gdsCat}">
          <div class="row my-auto">
              <div class="col-12">
                <h2 class="text-center">[[${list.gdsCat}]]</h2>
                <div class="mb-5 heading-border"></div>
              </div>
              <div class="col-md-12">
                <div class="port-head-cont">
                </div>
              </div>
          </div>
          <div class="row my-auto">
              <div class="col-sm-4 portfolio-item filter pop">
                  <a class="portfolio-link" href="#popModal" data-toggle="modal">
                      <div class="caption-port">
                          <div class="caption-port-content">
                              <i class="fa fa-search-plus fa-3x"></i>
                          </div>
                      </div>
                      <img class="img-fluid" th:src="${list.gdsImage}" alt="사진을 넣어주세용">
                  </a>
              </div>
          </div>
      </section>



        <!--====================================================
                          !!!!최종주문!!!!
        ======================================================-->
      <section class="resume-section p-3 p-lg-5 d-flex flex-column">
          <div class="row my-auto" id="order">
            <div class="col-md-8">
              <div class="contact-cont">
                <h3> 장바구니!!! </h3>
                <div class="heading-border-light"></div>
                <p> as opposed to using Content here.</p>
              </div>
              <div class="row con-form">
                <div class="col-md-12">
                  <input type="text" name="full-name" placeholder="Full Name" class="form-control">
                </div>
                <div class="col-md-12">
                  <input type="text" name="email" placeholder="Email Id" class="form-control">
                </div>
                <div class="col-md-12">
                  <input type="text" name="subject" placeholder="Subject" class="form-control">
                </div>
                <div class="col-md-12"><textarea name="" id=""></textarea></div>
                <div class="col-md-12 sub-but"><button class="btn btn-general btn-white" role="button">Send</button></div>
              </div>
            </div>
            <div class="col-md-4 col-sm-12 mt-5">
              <div class="contact-cont2">
                <div class="contact-add contact-box-desc">
                  <h3><i class="fa fa-map-marker cl-atlantis fa-2x"></i> Address</h3>
                  <p>25, Dist town Street, Logn <br>
                  California, US <br></p>
                </div>
                <div class="contact-phone contact-side-desc contact-box-desc">
                  <h3><i class="fa fa-phone cl-atlantis fa-2x"></i> Phone</h3>
                  <p>800 123 3456 <br>900 123 3457</p>
                </div>
                <div class="contact-mail contact-side-desc contact-box-desc">
                  <h3><i class="fa fa-envelope-o cl-atlantis fa-2x"></i> Email</h3>
                <address class="address-details-f">
                  Fax: 800 123 3456 <br>
                  Email: <a href="mailto:info@themsbit.com" class="">info@themsbit.com</a>
                </address>
                <ul class="list-inline social-icon-f top-data">
                  <li><a href="#" target="_empty"><i class="fa top-social fa-facebook" style="color: #4267b2; border-color:#4267b2;"></i></a></li>
                  <li><a href="#" target="_empty"><i class="fa top-social fa-twitter" style="color: #4AB3F4; border-color:#4AB3F4;"></i></a></li>
                  <li><a href="#" target="_empty"><i class="fa top-social fa-google-plus" style="color: #e24343; border-color:#e24343;"></i></a></li>
                </ul>
                </div>
              </div>
            </div>
          </div>
      </section>


    </body>

<!--====================================================
                  MODALS
======================================================-->

    <div class="portfolio-modal modal fade" id="popModal" tabindex="-1" role="dialog" aria-hidden="true" >
      <div class="modal-dialog" role="document">
          <div class="modal-content">
              <div class="close-modal" data-dismiss="modal">
                  <div class="lr">
                      <div class="rl"></div>
                  </div>
              </div>
              <div class="container">
                  <div class="row">
                          <div class="modal-body">
                              <div class="title-bar">
                                <div class="col-md-12">
                                  <h2 class="text-center">[[${list.gdsName}]]</h2>
                                  <div class="heading-border"></div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="col-md-6">
                                    <img class="img-fluid img-centered" th:value="${list.gdsImage}" alt="">
                                </div>
                                  <div class="col-md-6">
                                      <p>[[${list.gdsDes}]]</p>
                                      <ul class="list-inline item-details">
                                          <li>가격:
                                              <strong th:value="${list.gdsPrice}"> 원 </strong>
                                          </li>
                                          <li>구매수량:
                                              <strong th:value="${list.gdsStock}"> 개 </strong>
                                          </li>
                                      </ul>
                                      <button class="btn btn-general btn-white" type="button" data-dismiss="modal">
                                          <i class="fa fa-times"></i> 카트담기
                                      </button>
                              </div>
                            </div>
                          </div>
                  </div>
              </div>
          </div>
      </div>
    </div>


        <!-- Global javascript -->
    <script th:inline="js/jquery/jquery.min.js"></script>
    <script th:inline="js/bootstrap/bootstrap.bundle.min.js"></script>
    <script th:inline="js/jquery-easing/jquery.easing.min.js"></script>
    <script th:inline="js/counter/jquery.waypoints.min.js"></script>
    <script th:inline="js/counter/jquery.counterup.min.js"></script>
    <script th:inline="js/custom.js"></script>
    <script th:inline="javascript">
        $(document).ready(function(){

        $(".filter-b").click(function(){
            var value = $(this).attr('data-filter');
            if(value == "all")
            { 
                $('.filter').show('1000');
            }
            else
            { 
                $(".filter").not('.'+value).hide('3000');
                $('.filter').filter('.'+value).show('3000');
            }
        });
        
        if ($(".filter-b").removeClass("active")) {
          $(this).removeClass("active");
        }
        $(this).addClass("active");
        });

            <!-- 카트담기 -->

 $(".btn btn-general btn-white").click(function(){
  var gdsNum = $("#gdsNum").val();
  var cartStock = $(".numBox").val();

  var data = {
    gdsNum : gdsNum,
    cartStock : cartStock
    };

  $.ajax({
   url : "/shop/view/addCart",
   type : "post",
   data : data,
   success : function(result){

    if(result == 1) {
     alert("카트 담기 성공");
     $(".numBox").val("1");
    } else {
     alert("회원만 사용할 수 있습니다.")
     $(".numBox").val("1");
    }
   },
   error : function(){
    alert("카트 담기 실패");
   }
  });
 });

 </script>
</body>
</html>