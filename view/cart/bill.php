<div class="row mb">
    <div class="boxtrai mr">
        <form action="index.php?act=billcomfirm" method="post"></form>
        <div class="row mb">
            <div class="boxtitle">Thông Tin Đặt Hàng</div>
        
        <div class="row boxcontent cart">
            <table>
                <?php 
                if(isset($_SESSION['user'])) {
                    $user=$_SESSION['user']['user'];
                    $address=$_SESSION['user']['address'];
                    $email=$_SESSION['user']['email'];
                    $tel=$_SESSION['user']['tel'];
                } else {
                    $name="";
                    $address="";
                    $email="";
                    $tel="";
                }
                ?>
                <tr>
                    <td>Người đặt hàng</td>
                    <td><input type="text" name="name"  value="<?=$user?>"></td>
                </tr>
                <tr>
                    <td>Địa Chỉ</td>
                    <td><input type="text" name="address" value="<?=$address?>"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="text" name="email" value="<?=$email?>"></td>
                </tr>
                <tr>
                    <td>Điện thoại</td>
                    <td><input type="text" name="tell" value="<?=$tel?>"></td>
                </tr>
            </table>
        </div>
    </div>
        <div class="row mb bill">
           <div class="boxtitle">
            Phương Thức Thanh Toán
           </div>
           <div class="row boxcontent">
                 <table>
                    <tr>
                        <td><input type="radio" name="pttt" checked>Trả tiền khi nhận hàng</td>
                        <td><input type="radio" name="pttt" >Chuyển khoản ngân hàng</td>
                        <td><input type="radio" name="pttt" >Thanh Toán Online</td>
                    </tr>
                 </table>
           </div>
        </div>
        <div class="row mb bill frmcontent">
            <input type="button" value="Đồng ý Đặt Hàng"> 
        </div>    
</div>


    <?php include "view/boxphai.php";?>
