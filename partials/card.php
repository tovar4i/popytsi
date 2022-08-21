<?php
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header.php");
require($_SERVER['DOCUMENT_ROOT'] . "/partials/header-menu.php");
?>

<div class="container">
<div class="row justify-content-center">
<div class="col-md-6 text-center mb-4">
<h2 class="heading-section">Table #06</h2>
</div>
</div>
<div class="row">
<div class="col-md-12">
<h3 class="h5 mb-4 text-center">Table Accordion</h3>
<div class="table-wrap">
<table class="table">
<thead class="thead-primary">
<tr>
<th>&nbsp;</th>
<th>&nbsp;</th>
<th>Product</th>
<th>Price</th>
<th>Quantity</th>
<th>total</th>
<th>&nbsp;</th>
</tr>
</thead>
<tbody>
<tr class="alert" role="alert">
<td>
<label class="checkbox-wrap checkbox-primary">
<input type="checkbox" checked="">
<span class="checkmark"></span>
</label>
</td>
<td>
<div class="img" style="background-image:url(images/product-1.png)"></div>
</td>
<td>
<div class="email">
<span>Sneakers Shoes 2020 For Men </span>
<span>Fugiat voluptates quasi nemo, ipsa perferendis</span>
</div>
</td>
<td>$44.99</td>
<td class="quantity">
<div class="input-group">
<input type="text" name="quantity" class="quantity form-control input-number" value="2" min="1" max="100">
</div>
</td>
<td>$89.98</td>
<td>
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
<span aria-hidden="true"><i class="fa fa-close"></i></span>
</button>
</td>
</tr>
<tr class="alert" role="alert">
<td>
<label class="checkbox-wrap checkbox-primary">
<input type="checkbox">
<span class="checkmark"></span>
</label>
</td>
<td>
<div class="img" style="background-image:url(images/product-2.png)"></div>
</td>
<td>
<div class="email">
<span>Sneakers Shoes 2020 For Men </span>
<span>Fugiat voluptates quasi nemo, ipsa perferendis</span>
</div>
</td>
<td>$30.99</td>
<td class="quantity">
<div class="input-group">
<input type="text" name="quantity" class="quantity form-control input-number" value="1" min="1" max="100">
</div>
</td>
<td>$30.99</td>
<td>
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
<span aria-hidden="true"><i class="fa fa-close"></i></span>
</button>
</td>
</tr>
<tr class="alert" role="alert">
<td>
<label class="checkbox-wrap checkbox-primary">
<input type="checkbox">
<span class="checkmark"></span>
</label>
</td>
<td>
<div class="img" style="background-image:url(images/product-3.png)"></div>
</td>
<td>
<div class="email">
<span>Sneakers Shoes 2020 For Men </span>
<span>Fugiat voluptates quasi nemo, ipsa perferendis</span>
</div>
</td>
<td>$35.50</td>
<td class="quantity">
<div class="input-group">
<input type="text" name="quantity" class="quantity form-control input-number" value="1" min="1" max="100">
</div>
</td>
<td>$35.50</td>
<td>
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
<span aria-hidden="true"><i class="fa fa-close"></i></span>
</button>
</td>
</tr>
<tr class="alert" role="alert">
<td>
<label class="checkbox-wrap checkbox-primary">
<input type="checkbox">
<span class="checkmark"></span>
</label>
</td>
<td>
<div class="img" style="background-image:url(images/product-4.png)"></div>
</td>
<td>
<div class="email">
<span>Sneakers Shoes 2020 For Men </span>
<span>Fugiat voluptates quasi nemo, ipsa perferendis</span>
</div>
</td>
<td>$76.99</td>
<td class="quantity">
<div class="input-group">
<input type="text" name="quantity" class="quantity form-control input-number" value="1" min="1" max="100">
</div>
</td>
<td>$76.99</td>
<td>
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
<span aria-hidden="true"><i class="fa fa-close"></i></span>
</button>
</td>
</tr>
<tr class="alert" role="alert">
<td class="border-bottom-0">
<label class="checkbox-wrap checkbox-primary">
<input type="checkbox">
<span class="checkmark"></span>
</label>
</td>
<td class="border-bottom-0">
<div class="img" style="background-image:url(images/product-1.png)"></div>
</td>
<td class="border-bottom-0">
<div class="email">
<span>Sneakers Shoes 2020 For Men </span>
<span>Fugiat voluptates quasi nemo, ipsa perferendis</span>
</div>
</td>
<td class="border-bottom-0">$40.00</td>
<td class="quantity border-bottom-0">
<div class="input-group">
<input type="text" name="quantity" class="quantity form-control input-number" value="1" min="1" max="100">
</div>
</td>
<td class="border-bottom-0">$40.00</td>
<td class="border-bottom-0">
<button type="button" class="close" data-dismiss="alert" aria-label="Close">
<span aria-hidden="true"><i class="fa fa-close"></i></span>
</button>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</div>

<?php
require($_SERVER['DOCUMENT_ROOT'] . "/partials/footer-site.php");
require($_SERVER['DOCUMENT_ROOT'] . "/partials/footer.php");
?>