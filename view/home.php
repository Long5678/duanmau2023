<div class="row mb ">
            <div class="boxtrai mr">
                <div class="row">
                    <div class="banner">
                        <!-- Slideshow container -->
                      <div class="slideshow-container">

                        <!-- Full-width images with number and caption text -->
                        <div class="mySlides fade">
                        <img src="view/images/banner1.png" style="width:100%">
                        <div class="text">Balo Công Nghệ</div>
                        </div>

                        <div class="mySlides fade">
                        <img src="view/images/banner2.jpg" style="width:100%">
                        <div class="text">Lenovo Ideapad Gaming 3 15ARH7 R5</div>
                        </div>

                        <div class="mySlides fade">
                        <img src="view/images/banner3.jpg" style="width:100%">
                        <div class="text">Tuyển tập truyện trinh thám</div>
                        </div>

                        <!-- Next and previous buttons -->

                        </div>
                        <br>

                        <!-- The dots/circles -->
                        <div style="text-align:center">
                        <span class="dot" onclick="currentSlide(1)"></span>
                        <span class="dot" onclick="currentSlide(2)"></span>
                        <span class="dot" onclick="currentSlide(3)"></span>
                        </div>
                    </div>
                </div>
                <div class="row">
                <?php
                   $i = 0;
                   foreach ($spnew as $sp) {
                    extract($sp);
                       $linksp ="index.php?act=sanphamct&idsp=".$id;
                       $hinh = $img_path . $sp['img'];
                       $mr = ($i == 2 || $i == 5 || $i == 8) ? "" : "mr";
                       
                       echo '<div class="boxsp mb10  ' . $mr . '">
                           <div class="row img ">
                            <a href="'.$linksp.'"><img src="' . $hinh . '" alt=""></a>
                           </div>
                           <p>$' . $sp['price'] . '</p>
                           <a href="'.$linksp.'">' . $sp['name'] . '</a>

                           <div class="row btnaddtocart frmcontent">
                           <form action="index.php?act=addtocart" method="post">
                           <input type="hidden" name="id" value="'.$id.'">
                           <input type="hidden" name="name" value="'.$name.'">
                           <input type="hidden" name="img" value="'.$img.'">
                           <input type="hidden" name="price" value="'.$price.'">
                           <input type="submit" name="addtocart" value="Thêm vào giỏ hàng" style="margin: 7%">
                           </form>
                           
                           </div>
                       </div>';
    
                       $i += 1;
                    }
                    ?>
                    <!-- <div class="boxsp mr">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>30$</p>
                        <a href="#">Đồng Hồ</a>
                    </div>
                    <div class="boxsp mr">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>30$</p>
                        <a href="#">Đồng Hồ</a>
                    </div>
                    <div class="boxsp">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>30$</p>
                        <a href="#">Đồng Hồ</a>
                    </div>
                    <div class="boxsp mr">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>30$</p>
                        <a href="#">Đồng Hồ</a>
                    </div>
                    <div class="boxsp mr">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>30$</p>
                        <a href="#">Đồng Hồ</a>
                    </div>
                    <div class="boxsp">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>30$</p>
                        <a href="#">Đồng Hồ</a>
                    </div>
                    <div class="boxsp mr">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>30$</p>
                        <a href="#">Đồng Hồ</a>
                    </div>
                    <div class="boxsp mr">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>30$</p>
                        <a href="#">Đồng Hồ</a>
                    </div>
                    <div class="boxsp">
                        <div class="row img"><img src="view/images/1.jpg" alt=""></div>
                        <p>30$</p>
                        <a href="#">Đồng Hồ</a>
                    </div> -->
                </div>
            </div>
        <?php include "boxphai.php" ?>
        </div>