# replace 'phpp' with 'php' in file 'wp-settings.php'

exec { 'automate-fix-wordpress':
  command => "sed -i 's/phpp/php/' /var/www/html/wp-settings.php",
  path    => "/usr/bin/:/bin/"
}
