<title>Este &eacute; mais um deploy via Kubernetes</title>

<h1>&#24433;&#20998;&#36523;&#12398;&#34899;!</h1>

<p>

<h1>Ol&aacute;! Eu sou o pod <?php echo $_SERVER['SERVER_ADDR']; ?> &agrave; disposi&ccedil;&atilde;o.</h1></p>

<p><?php

function exibirIP() {
    if(isset($_SERVER['HTTP_X_REAL_IP']) && $_SERVER['HTTP_X_REAL_IP'] !== null) {
        echo "Voc&ecirc; &eacute; " . $_SERVER['HTTP_X_REAL_IP'];
    }
}

exibirIP();
 ?></p>

<p> Host do pod: <?php
$hostname = gethostname();
echo $hostname;
?>
</p>

<p>Data: <?php echo date("D M j, Y,  G:i:s T "); ?></p>

<p>D&uacute;vidas: <a href='mailto:adilson@adilson.net.br'>adilson@adilson.net.br</a></p>


