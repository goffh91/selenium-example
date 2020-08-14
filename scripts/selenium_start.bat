php -r "if (!file_exists('selenium-server-standalone-3.4.0.jar')) copy('https://selenium-release.storage.googleapis.com/3.4/selenium-server-standalone-3.4.0.jar', 'selenium-server-standalone-3.4.0.jar');"
php -r "if (!file_exists('chromedriver.exe')) {copy('http://chromedriver.storage.googleapis.com/2.30/chromedriver_win32.zip', 'chromedriver_win32.zip');}"
php -r "if (!file_exists('chromedriver.exe')) {$zip = new ZipArchive(); $zip->open('chromedriver_win32.zip'); $zip->extractTo('.');}"
php -r "if (!file_exists('chromedriver.exe')) {unlink(getcwd().'/chromedriver_win32.zip');}"
java -Dwebdriver.chrome.driver=chromedriver.exe -jar selenium-server-standalone-3.4.0.jar
