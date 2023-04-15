#!/bin/bash
yum -y update
yum -y install httpd
myip=`curl http://169.254.169.254/latest/meta-data/local-ipv4`
sudo aws s3 cp s3://dev-group12-project/blackclover.jpeg /var/www/html/
sudo aws s3 cp s3://dev-group12-project/bluelock.jpeg /var/www/html/
sudo aws s3 cp s3://dev-group12-project/bleach.jpeg /var/www/html/
sudo aws s3 cp s3://dev-group12-project/onepiece.jpeg /var/www/html/
sudo aws s3 cp s3://dev-group12-project/naruto.jpeg /var/www/html/
sudo aws s3 cp s3://dev-group12-project/demonslayer.jpeg /var/www/html/



echo "
    <h1 align="center">
    
    Our private IP is $myip</h1>
    
    <h1>
    
    <table border="5" bordercolor="red" align="center">
    <tr>
        <th colspan="3">Group12</th> 
       
    </tr>
    <tr>
     <th colspan="3">Group members:Nirmal, Vedha, Ateeq, Charan</th> 
     </tr>
    </h1>
    <tr>
        <th>image1</th>
        <th>image2</th>
        <th>image3</th>
    </tr>
    <tr>
        <td><img src="blackclover.jpeg" alt="" border=3 height=200 width=300></img></th>
        <td><img src="bluelock.jpeg" alt="" border=3 height=200 width=300></img></th>
        <td><img src="bleach.jpeg" alt="" border=3 height=200 width=300></img></th>
    </tr>
     <tr>
        <th>image4</th>
        <th>image5</th>
        <th>image6</th>
    </tr>
    <tr>
        <td>><img src="onepiece.jpeg" alt="" border=3 height=200 width=300></img></th>
        <td><img src="naruto.jpeg" alt="" border=3 height=200 width=300></img></th>
        <td><img src="demonslayer.jpeg" alt="" border=3 height=200 width=300></img></th>
    </tr>
</table>">  /var/www/html/index.html

sudo systemctl start httpd
sudo systemctl enable httpd