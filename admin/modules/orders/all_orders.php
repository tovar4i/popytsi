<div class="d-sm-flex align-items-center justify-content-between mb-4">
    <h1 class="h3 mb-0 text-gray-800">Замовлення</h1>
    
    <a href="?page=add_order" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm">
        <i class="fas fa-download fa-sm text-white-50"></i> Додати замовлення</a>
</div>

<!-- DataTales Example -->
<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Список замовлень</h6>
    </div>

   

    <div class="card-body">
        <div class="table-responsive">
            <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Ім'я користувача</th>
                        <th>Телефон</th>
                        <th>Назва страви</th>
                        <th>Кількість страв</th>
                        <th>Сумма замовлення</th>
                        <th>Опції</th>
                    </tr>
                </thead>

                <tbody>

                    <?php 
                        // виводимо всі дані окрім того, чия зараз сессія (адміна)
                        $users_cart = mysqli_query($connect, "SELECT users_cart.id, username, phone, composition, quantity, price FROM (users_cart JOIN users ON id_users = users.id) JOIN composition ON id_composition = composition.id;");
                        $users_cart = mysqli_fetch_all($users_cart);
                        foreach ($users_cart as $users_cart) {
                    ?> 

                    <tr>
                        <td><?php echo $users_cart[0] ?></td>
                        <td><?php echo $users_cart[1] ?></td>
                        <td><?php echo $users_cart[2] ?></td>
                        <td><?php echo $users_cart[3] ?></td>
                        <td><?php echo $users_cart[4] ?></td>
                        <td><?php echo $users_cart[5] ?></td>
                        <td>
                          <!--   <a class="btn btn-light" href="?page=edit_user&id=<?php echo $row['id']; ?>"><i class="fas fa-marker"></i>  Редагувати</a>  -->
                            <a class="btn btn-dark" href="/admin/modules/orders/delete_orders.php?id=<?= $users_cart[0] ?>">
                            <i class="fas fa-trash-alt"></i>  Видалити</a>
                        </td>
                    </tr>
                    
                    <?php 
                        }
                    ?>

                </tbody>
            </table>
        </div>
    </div>
</div>
