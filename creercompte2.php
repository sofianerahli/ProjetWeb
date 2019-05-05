<?php
require_once("header.php");

session_start();

if(isset($_POST['submit'])) 
{
      if(($_POST['Nom_Prenom'])&&($_POST['Adresse'])&&($_POST['Email']))
      {
            $Nom_Prenom=$_POST['Nom_Prenom'];
            $_SESSION['Nom_Prenom']=$_POST['Nom_Prenom'];
            $Adresse=$_POST['Adresse'];
            $Email=$_POST['Email'];
            $database = "ece_amazon";
            $db_handle = mysqli_connect('localhost', 'root', '' );
            $db_found = mysqli_select_db($db_handle, $database );
            if($db_found)
            {
                  $SQL="SELECT * FROM acheteur WHERE (Nom_Prenom='$Nom_Prenom')";
                  $result = mysqli_query($db_handle, $SQL);
                  $donnee = mysqli_fetch_array($result);
            
            if($donnee)
                  {
                        ?>
                  <script type="text/javascript"> alert("Pseudo déjà pris");</script>
                  <?php
                  }
                  else
                  {
                        $SQL2 = "INSERT INTO acheteur ( Nom_Prenom, Adresse, Email)  VALUES ('$Nom_Prenom', '$Adresse', '$Email')";
                  $result2 = mysqli_query($db_handle, $SQL2);
                  

                        header('Location:choixfond.php');               
                  }
            
                  mysqli_close($db_handle);
            }
      }
            

            
      
      
            
      
      else
      {
            echo 'Champs vides: Veuillez remplir';
      }

}
?>


<div style="background:#A9F5E1;width:35% ; padding: 0.5%;
    margin-left: auto;
    margin-right: auto;
    border: 1px solid #f1f1f1;
    box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);box-sizing: border-box;">
<form align="center" action="" method="POST">
<h1><u><big>Création du compte</big></u></h1>
<h3>Nom et Prénom :</h3><input placeholder="Entrez un Nom_Prenom" type="text" name="Nom_Prenom"/><br/><br/>
<h3>Votre adresse :</h3>
<input placeholder="Entrez une adresse" type="text" name="Adresse"/><br/></br/>
<h3>Votre adresse mail :</h3>
<input placeholder="Entrez un email" type="email" name="Email"/><br/></br/>
<input type="submit" name="submit"/><br/><br/>
</form>
</div>

<?php
echo
require_once("footer.php");
?>