<h1 class="h3 mb-2 text-gray-800">Замовлення</h1>
<p class="mb-4"> 
    <?php 
    if(!empty($_POST)) {
        $sql = "UPDATE `final`(`username`, `phone`, `email`) VALUES ('" . $_POST['name'] . "', '" . $_POST['phone'] . "', '" . $_POST['email'] . "')";
        
        if (mysqli_query($connect, $sql)) {
            echo 'Зміни внесені в замовлення. <a href="/admin/orders.php">Повернутись</a>';
        } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($connect);
        }
    }

    $sql = "SELECT * FROM final";
    $result =  mysqli_query($connect, $sql);
    $row = $result->fetch_assoc();
    ?>
</p>


<div class="card shadow mb-4">
    <div class="card-header py-3">
        <h6 class="m-0 font-weight-bold text-primary">Редагування замовлення</h6>
    </div>
    
    <div class="card-body">
       <form class="user" action="?page=edit_order&id=<?php echo $_GET['id']; ?>" method="POST">
            
            <div class="form-group">
                <input type="text" class="form-control form-control-user" id="username" placeholder="Ім'я"
                name="name" value="<?php echo $row['username']; ?>">
            </div>
            
            <div class="form-group">
                <input type="tel" class="form-control form-control-user" id="phone" placeholder="Телефон"
                name="phone" value="<?php echo $row['phone']; ?>">
            </div>

           

            <button type="submit" class="btn btn-success btn-user btn-block">Зберегти зміни</button>
        </form>
    </div>
</div>
