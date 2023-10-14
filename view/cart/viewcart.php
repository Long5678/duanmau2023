<div class="row mb">
    <div class="boxtrai mr">
        <div class="row mb">
            <div class="boxtitle">GIỎ HÀNG</div>
        </div>
        <div class="row boxcontent cart mb10 frmdsloai">
            <table>
                <tr>
                    <th>Hình</th>
                    <th>Sản phẩm</th>
                    <th>Đơn giá</th>
                    <th>Số lượng</th>
                    <th>Thành Tiền</th>
                    <th>Thao Tác</th>
                </tr>
                <?php
                $tong = 0;
                $i=0;
                foreach ($_SESSION['mycart'] as $cart) {
                    $hinh = $img_path . $cart[2];
                    $ttien = $cart[3] * $cart[4];
                    $tong += $ttien;
                    $xoasp='<a href="index.php?act=delcart&idcart='.$i.'"><input type="button" value="Xóa"></a>';
                    echo '<tr>
                            <td><img src="'.$hinh.'" alt="" height="80px"></td>
                            <td>'.$cart[1].'</td>
                            <td>'.$cart[3].'</td>
                            <td>'.$cart[4].'</td>
                            <td>'.$ttien.'</td>
                            <td>'.$xoasp.'</td>
                          </tr>';
                          $i+=1;
                }
                echo '<tr>
                        <td colspan="4">Tổng đơn hàng</td>
                        <td>' . $tong . '</td>
                        <td></td>
                      </tr>'
                ?>
            </table>
        </div>
        <div class="row mb bill frmcontent">
            <a href="index.php?act=bill">
            <input type="button" value="Tiếp tục Đặt Hàng"> 
            </a>
            <a href="index.php?act=delcart"><input type="button" value="Xóa giỏ hàng"></a>
        </div>
    </div>


    <?php include "view/boxphai.php";?>
