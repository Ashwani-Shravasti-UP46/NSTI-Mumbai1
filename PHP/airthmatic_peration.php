
  <html>
    <body>
        <h1>Simple airthmatic operator</h1>
       <?php
          $a = 12;
          $b = 5;
          $add = $a+$b;
          $sub = $a-$b;
          $pro = $a*$b;
          $div = $a/$b;

          echo "Value of a: ". $a ."<br>";
          echo "Value of b: ". $b ."<br><hr>";
          echo "<b>Addition of a+b: ". $add ."<br></b><hr>";
          echo "<b>Substraction of a-b: ". $sub ."<br></b><hr>";
          echo "<b>Multiplaction of a*b: ". $pro ."<br></b><hr>";
          echo "<b>Division of a/b: ". $div ."<br></b><hr>";

          echo "<script>
         
            alert('Hello from JavaScript via PHP' );
          </script>";
        ?>
      
    </body>
  </html>
  
