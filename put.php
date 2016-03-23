<?php
/* PUT data comes in on the stdin stream */
$putdata = fopen("php://input", "r");
/*we need to sanatise the input when we get a chance, this is quick and  dirty programing*/
/* Open a file for writing */
$fp = fopen('in/'.$_SERVER['PATH_INFO'], "w");  
print_r(error_get_last());
/* Read the data 1 KB at a time
   and write to the file */
while ($data = fread($putdata, 1024))
  fwrite($fp, $data);

/* Close the streams */
fclose($fp);
fclose($putdata);
echo $_SERVER['PATH_INFO']
?>

