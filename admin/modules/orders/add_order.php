<h1 class="h3 mb-2 text-gray-800">Замовлення</h1>
<p class="mb-4"> 
    <?php 
    if(!empty($_POST)) {
        $sql = "INSERT INTO `final`(`username`, `phone`, `email`) VALUES ('" . $_POST['name'] . "', '" . $_POST['phone'] . "', '" . $_POST['email'] . "')";
        if (mysqli_query($connect, $sql)) {
            echo 'Замовлення додано. <a href="/admin/orders.php">Повернутись</a>';
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($connect);
        }
    }
    ?>
</p>


<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Додавання замовлення</h6>
    </div>
    
    <div class="card-body">
        <form class="user" action="?page=add_user" method="POST">
            
            <div class="form-group">
                <input type="text" name="name" class="form-control form-control-user" placeholder="Ім'я" required>
            </div>
            
            <div class="form-group">
                <input type="tel" name="phone" class="form-control form-control-user" placeholder="Телефон" required>
            </div>

           

            <button type="submit" class="btn btn-success btn-user btn-block">Створити нове замовлення</button>
        </form>
    </div>
</div>
