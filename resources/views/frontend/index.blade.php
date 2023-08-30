@extends('frontend.master_dashboard')
@section('main')



     @include('frontend.home.home_slider')
 
        <!--End hero slider-->
     @include('frontend.home.home_features_category')

        <!--End category slider-->
     @include('frontend.home.home_banner')
        <!--End banners-->


	@include('frontend.home.home_new_product')

        <!--Products Tabs-->
 
 

    @include('frontend.home.home_features_product')

        
        <!--End Best Sales-->
 



        <!-- Fashion Category -->

    <section class="product-tabs section-padding position-relative">
            <div class="container">
                <div class="section-title style-2 wow animate__animated animate__fadeIn">
                    <h3></h3>
                   
                </div>
                <!--End nav-tabs-->
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="tab-one" role="tabpanel" aria-labelledby="tab-one">
                        <div class="row product-grid-4">


   
    <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
        <div class="product-cart-wrap mb-30 wow animate__animated animate__fadeIn" data-wow-delay=".1s">
            <div class="product-img-action-wrap">
                <div class="product-img product-img-zoom">
                    <a href="">
                        <img class="default-img" src="" alt="" />
                        
                    </a>
                </div>
                <div class="product-action-1">
   <a aria-label="Add To Wishlist" class="action-btn" id="" onclick=""  ><i class="fi-rs-heart"></i></a>
                    
   <a aria-label="Compare" class="action-btn"  id="" onclick=""><i class="fi-rs-shuffle"></i></a>

   <a aria-label="Quick view" class="action-btn" data-bs-toggle="modal" data-bs-target="" id="" onclick="productView(this.id)" ><i class="fi-rs-eye"></i></a>
                </div>

   


                <div class="product-badges product-badges-position product-badges-mrg">

                    
                    <span class="new">New</span>
                 
                    <span class="hot"> </span>
                 

                    
                </div>
            </div>
            <div class="product-content-wrap">
                <div class="product-category">
                    <a href="shop-grid-right.html"> </a>
                </div>
                <h2><a href="">  </a></h2>
     

      

                <div class="product-rate-cover">
                    <div class="product-rate d-inline-block">
                     
      
                           
    <div class="product-rating" style="width: 20%"></div>
                            
    <div class="product-rating" style="width: 40%"></div>
                          
    <div class="product-rating" style="width: 60%"></div>
                           
    <div class="product-rating" style="width: 80%"></div>
                          
    <div class="product-rating" style="width: 100%"></div>
  
                    </div>
                    <span class="font-small ml-5 text-muted"> <span>
                </div>


                
                <div>
                   
<span class="font-small text-muted">By <a href="vendor-details-1.html">Owner</a></span>
                   
  <span class="font-small text-muted">By <a href="vendor-details-1.html"></a></span>

                 
                   


                </div>
                <div class="product-card-bottom">

                    
                     <div class="product-price">
                        <span></span>
                       
                    </div>

                 
                    <div class="product-price">
                        <span></span>
                        <span class="old-price"></span>
                    </div>
                   


                     
                    <div class="add-cart">
                        <a class="add" href="shop-cart.html"><i class="fi-rs-shopping-cart mr-5"></i>Add </a>
                    </div>
                </div>
            </div>
        </div>
    </div> 
    <!--end product card-->
   



                           
                           
                        </div>
                        <!--End product-grid-4-->
                    </div>
                   
                   
                </div>
                <!--End tab-content-->
            </div>


  </section>
        <!--End Fashion Category -->





        <!-- SweetHome Category -->

   <section class="product-tabs section-padding position-relative">
            <div class="container">
                <div class="section-title style-2 wow animate__animated animate__fadeIn">
                    <h3></h3>
                   
                </div>
                <!--End nav-tabs-->
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="tab-one" role="tabpanel" aria-labelledby="tab-one">
                        <div class="row product-grid-4">


    
    <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
        <div class="product-cart-wrap mb-30 wow animate__animated animate__fadeIn" data-wow-delay=".1s">
            <div class="product-img-action-wrap">
                <div class="product-img product-img-zoom">
                    <a href="">
                        <img class="default-img" src="" alt="" />
                        
                    </a>
                </div>
                <div class="product-action-1">
                     <a aria-label="Add To Wishlist" class="action-btn" id="" onclick="addToWishList(this.id)"  ><i class="fi-rs-heart"></i></a>
                    
   <a aria-label="Compare" class="action-btn"  id="" onclick=""><i class="fi-rs-shuffle"></i></a>

   <a aria-label="Quick view" class="action-btn" data-bs-toggle="modal" data-bs-target="" id="" onclick=" ><i class="fi-rs-eye"></i></a>
                </div>

   

                <div class="product-badges product-badges-position product-badges-mrg">

                   
                    <span class="new">New</span>
                  
                    <span class="hot"> </span>
                

                    
                </div>
            </div>
            <div class="product-content-wrap">
                <div class="product-category">
                    <a href="shop-grid-right.html"> </a>
                </div>
                <h2><a href="">  </a></h2>
                <div class="product-rate-cover">
                    <div class="product-rate d-inline-block">
                        <div class="product-rating" style="width: 90%"></div>
                    </div>
                    <span class="font-small ml-5 text-muted"> (4.0)</span>
                </div>
                <div>
                   
<span class="font-small text-muted">By <a href="vendor-details-1.html">Owner</a></span>
                   
  <span class="font-small text-muted">By <a href="vendor-details-1.html"></a></span>

                
                   


                </div>
                <div class="product-card-bottom">

                    
                     <div class="product-price">
                        <span></span>
                       
                    </div>

                   
                    <div class="product-price">
                        <span></span>
                        <span class="old-price"></span>
                    </div>
                    


                     
                    <div class="add-cart">
                        <a class="add" href="shop-cart.html"><i class="fi-rs-shopping-cart mr-5"></i>Add </a>
                    </div>
                </div>
            </div>
        </div>
    </div> 
    <!--end product card-->
 



                           
                           
                        </div>
                        <!--End product-grid-4-->
                    </div>
                   
                   
                </div>
                <!--End tab-content-->
            </div>


  </section>
        <!--End SweetHome Category -->


 





  
        <!-- Mobile Category -->

   <section class="product-tabs section-padding position-relative">
            <div class="container">
                <div class="section-title style-2 wow animate__animated animate__fadeIn">
                    <h3></h3>
                   
                </div>
                <!--End nav-tabs-->
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="tab-one" role="tabpanel" aria-labelledby="tab-one">
                        <div class="row product-grid-4">


    
    <div class="col-lg-1-5 col-md-4 col-12 col-sm-6">
        <div class="product-cart-wrap mb-30 wow animate__animated animate__fadeIn" data-wow-delay=".1s">
            <div class="product-img-action-wrap">
                <div class="product-img product-img-zoom">
                    <a href="">
                        <img class="default-img" src="" alt="" />
                        
                    </a>
                </div>
                <div class="product-action-1">
                    <a aria-label="Add To Wishlist" class="action-btn" id="" onclick="addToWishList(this.id)"  ><i class="fi-rs-heart"></i></a>
                    
   <a aria-label="Compare" class="action-btn"  id="" onclick=""><i class="fi-rs-shuffle"></i></a>

   <a aria-label="Quick view" class="action-btn" data-bs-toggle="modal" data-bs-target="l" id="" onclick="productView(this.id)" ><i class="fi-rs-eye"></i></a>
                </div>

   


                <div class="product-badges product-badges-position product-badges-mrg">

                    
                    <span class="new">New</span>
                 
                    <span class="hot"> </span>
                   

                    
                </div>
            </div>
            <div class="product-content-wrap">
                <div class="product-category">
                    <a href="shop-grid-right.html"></a>
                </div>
                <h2><a href="">  </a></h2>
                <div class="product-rate-cover">
                    <div class="product-rate d-inline-block">
                        <div class="product-rating" style="width: 90%"></div>
                    </div>
                    <span class="font-small ml-5 text-muted"> (4.0)</span>
                </div>
                <div>
                    
<span class="font-small text-muted">By <a href="vendor-details-1.html">Owner</a></span>
                   
  <span class="font-small text-muted">By <a href="vendor-details-1.html"></a></span>

                 
                   


                </div>
                <div class="product-card-bottom">

                    
                     <div class="product-price">
                        <span></span>
                       
                    </div>

                 
                    <div class="product-price">
                        <span></span>
                        <span class="old-price"></span>
                    </div>
                   


                     
                    <div class="add-cart">
                        <a class="add" href="shop-cart.html"><i class="fi-rs-shopping-cart mr-5"></i>Add </a>
                    </div>
                </div>
            </div>
        </div>
    </div> 
    <!--end product card-->
   



                           
                           
                        </div>
                        <!--End product-grid-4-->
                    </div>
                   
                   
                </div>
                <!--End tab-content-->
            </div>


  </section>
        <!--End Mobile Category -->


 



        <section class="section-padding mb-30">
            <div class="container">
                <div class="row">
                    <div class="col-xl-3 col-lg-4 col-md-6 mb-sm-5 mb-md-0 wow animate__animated animate__fadeInUp" data-wow-delay="0">
                        <h4 class="section-title style-1 mb-30 animated animated"> Hot Deals </h4>
                        <div class="product-list-small animated animated">
                            
                           
    <article class="row align-items-center hover-up">
        <figure class="col-md-4 mb-0">
            <a href=""><img src="" alt="" /></a>
        </figure>
        <div class="col-md-8 mb-0">
            <h6>
                <a href=""></a>
            </h6>
            <div class="product-rate-cover">
                <div class="product-rate d-inline-block">
                    <div class="product-rating" style="width: 90%"></div>
                </div>
                <span class="font-small ml-5 text-muted"> (4.0)</span>
            </div>
            
                     <div class="product-price">
                        <span></span>
                       
                    </div>

                 
                    <div class="product-price">
                        <span></span>
                        <span class="old-price"></span>
                    </div>
                   
        </div>
    </article>
    


                            
                        </div>
                    </div>




                    <div class="col-xl-3 col-lg-4 col-md-6 mb-md-0 wow animate__animated animate__fadeInUp" data-wow-delay=".1s">
                        <h4 class="section-title style-1 mb-30 animated animated">  Special Offer </h4>
                        <div class="product-list-small animated animated">
                            

                       
    <article class="row align-items-center hover-up">
        <figure class="col-md-4 mb-0">
            <a href=""><img src="" alt="" /></a>
        </figure>
        <div class="col-md-8 mb-0">
            <h6>
                <a href="">  </a>
            </h6>
            <div class="product-rate-cover">
                <div class="product-rate d-inline-block">
                    <div class="product-rating" style="width: 90%"></div>
                </div>
                <span class="font-small ml-5 text-muted"> (4.0)</span>
            </div>
             
                     <div class="product-price">
                        <span></span>
                       
                    </div>

                
                    <div class="product-price">
                        <span></span>
                        <span class="old-price"></span>
                    </div>
                 
        </div>
    </article>
   


                            
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6 mb-sm-5 mb-md-0 d-none d-lg-block wow animate__animated animate__fadeInUp" data-wow-delay=".2s">
                        <h4 class="section-title style-1 mb-30 animated animated">Recently added</h4>
                        <div class="product-list-small animated animated">
                           

                   
    <article class="row align-items-center hover-up">
        <figure class="col-md-4 mb-0">
            <a href=""><img src="" alt="" /></a>
        </figure>
        <div class="col-md-8 mb-0">
            <h6>
                <a href="">  </a>
            </h6>
            <div class="product-rate-cover">
                <div class="product-rate d-inline-block">
                    <div class="product-rating" style="width: 90%"></div>
                </div>
                <span class="font-small ml-5 text-muted"> (4.0)</span>
            </div>
             
                     <div class="product-price">
                        <span></span>
                       
                    </div>

                    
                    <div class="product-price">
                        <span></span>
                        <span class="old-price"></span>
                    </div>
                   
        </div>
    </article>
   


                           
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-4 col-md-6 mb-sm-5 mb-md-0 d-none d-xl-block wow animate__animated animate__fadeInUp" data-wow-delay=".3s">
                        <h4 class="section-title style-1 mb-30 animated animated"> Special Deals </h4>
                        <div class="product-list-small animated animated">
                            

                     
    <article class="row align-items-center hover-up">
        <figure class="col-md-4 mb-0">
            <a href=""><img src="" alt="" /></a>
        </figure>
        <div class="col-md-8 mb-0">
            <h6>
                <a href="">  </a>
            </h6>
            <div class="product-rate-cover">
                <div class="product-rate d-inline-block">
                    <div class="product-rating" style="width: 90%"></div>
                </div>
                <span class="font-small ml-5 text-muted"> (4.0)</span>
            </div>
            
                     <div class="product-price">
                        <span></span>
                       
                    </div>

                  
                    <div class="product-price">
                        <span></span>
                        <span class="old-price"></span>
                    </div>
                   
        </div>
    </article>
   



                            
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--End 4 columns-->

 

  <!--Vendor List -->

@include('frontend.home.home_vendor_list')

 <!--End Vendor List -->

@endsection