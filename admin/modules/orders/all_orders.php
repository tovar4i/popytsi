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
                        <th>Ім'я замовника</th>
                        <!-- <th>Телефон замовника</th> -->
                        <th>Перелік страв</th>
                        <th>Сума замовлення</th>
                        <th>Адреса</th>
                        <th>Час</th>
                        <th>Опції</th>
                    </tr>
                </thead>

                <tbody>

                    <?php 
                        // виводимо всі дані окрім того, чия зараз сессія (адміна)
                        $sql = "SELECT * FROM final";
                        $result = mysqli_query($connect, $sql); 
                        // var_dump($result);
                        while($row = $result->fetch_assoc()) // отримуємо всі рядки в циклі по одному
                        {
                    ?> 

                    <tr>
                        <td><?php echo $row['id']; ?></td>
                        <td><?php echo $row['id_users']; ?></td>
                        <td><?php echo $row['id_composition']; ?></td>
                        <td><?php echo $row['order_sum']; ?></td>
                        <td><?php echo $row['address']; ?></td>
                        <td><?php echo $row['time_now']; ?></td>
                        <td>
                            <a class="btn btn-light" href="?page=edit_order&id=<?php echo $row['id']; ?>"><i class="fas fa-marker"></i>  Редагувати</a>
                            <a class="btn btn-dark" href="/admin/modules/users/delete_order.php?id=<?php echo $row['id']; ?>">
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
