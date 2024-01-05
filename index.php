<title>Este &eacute; mais um deploy via Kubernetes</title>

<h1>&#24433;&#20998;&#36523;&#12398;&#34899;!</h1>

<p>

<h1>Ol&aacute;! Eu sou o pod <?php echo $_SERVER['SERVER_ADDR']; ?> &agrave; disposi&ccedil;&atilde;o.</h1></p>

<p> Host do pod: <?php
$hostname = gethostname();
echo $hostname;
?>
</p>

<p>
<?php

$filename = '/htdocs/nodename.txt';

if (file_exists($filename)) {
    $content = file_get_contents($filename);
    if ($content !== false) {
        echo "Eu estou no n&oacute; $content";
    } 
}
?>
</p>

<p><?php

function exibirIP() {
    if(isset($_SERVER['HTTP_X_REAL_IP']) && $_SERVER['HTTP_X_REAL_IP'] !== null) {
        echo "Voc&ecirc; &eacute; " . $_SERVER['HTTP_X_REAL_IP'] . "  (" . gethostbyaddr($_SERVER['HTTP_X_REAL_IP']) . ")";
    }
}

exibirIP();
 ?></p>

<p>Navegador: <?php echo $_SERVER['HTTP_USER_AGENT']; ?></p>

<p>Data: <?php echo date("D M j, Y,  G:i:s T "); ?></p>

<p>D&uacute;vidas: <a href='mailto:adilson@adilson.net.br'>adilson@adilson.net.br</a></p>


<p>Versão Alpine Linux</p>
