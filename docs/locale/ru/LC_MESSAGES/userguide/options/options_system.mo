��    (      \              �  $   �    �  
  �  )  �    �	  �    �   �  e  t  	  �  ^   �  �  C  /    /  @  
  p    {  <  �  �   �    �  �  �   C  d"  �  �#  �   D%  �   /&     �&  �  �(  �  t*  �  #-     �.  R  �.  �  G1  �   "3  �   �3    �4  �  �5  P   ~8  �   �8    �9  F  �:  !   =  �  7=  1    ?    2?  �  @E  N  ,G     {M    |S  h  �V  �  �W  1  �\  �   �`  s  �a  g  �d  x  ]g  �  �i    �m  �  �q  D  fv    �w  ;  �y  g  �|  ?  b  �  ��    x�  N  ��    Ӊ  e  S�  �  ��  !   ��  �  Ö  �  O�  �  A�  �  ��  �  ��    ��  �   ��  �  c�  �  ?�  �  <�  P   �   A partial screenshot is shown below: AUDIT_CHECK_INTERVAL - The zmaudit daemon exists to check that the saved information in the database and on the filesystem match and are consistent with each other. If an error occurs or if you are using 'fast deletes' it may be that database records are deleted but files remain. In this case, and similar, zmaudit will remove redundant information to synchronise the two data stores. The default check interval of 900 seconds (15 minutes) is fine for most systems however if you have a very large number of events the process of scanning the database and filesystem may take a long time and impact performance. In this case you may prefer to make this interval much larger to reduce the impact on your system. This option determines how often these checks are performed. AUDIT_MIN_AGE - The zmaudit daemon exists to check that the saved information in the database and on the filesystem match and are consistent with each other. Event files or db records that are younger than this setting will not be deleted and a warning will be given AUTH_HASH_IPS - When ZoneMinder is running in hashed authenticated mode it can optionally include the requesting IP address in the resultant hash. This adds an extra level of security as only requests from that address may use that authentication key. However in some circumstances, such as access over mobile networks, the requesting address can change for each request which will cause most requests to fail. This option allows you to control whether IP addresses are included in the authentication hash on your system. If you experience intermittent problems with authentication, switching this option off may help. It is recommended you keep this off if you use mobile apps like zmNinja over mobile carrier networks - several APNs change the IP very frequently which may result in authentication failures. AUTH_HASH_LOGINS - The normal process for logging into ZoneMinder is via the login screen with username and password. In some circumstances it may be desirable to allow access directly to one or more pages, for instance from a third party application. If this option is enabled then adding an 'auth' parameter to any request will include a shortcut login bypassing the login screen, if not already logged in. As authentication hashes are time and, optionally, IP limited, this can allow short-term access to ZoneMinder screens from other web pages etc. In order to use this, the calling application will have to generate the authentication hash itself and ensure it is valid. If you use this option you should ensure that you have modified the ZM_AUTH_HASH_SECRET to something unique to your system. AUTH_HASH_SECRET - When ZoneMinder is running in hashed authenticated mode it is necessary to generate hashed strings containing encrypted sensitive information such as usernames and passwords. Although these strings are reasonably secure the addition of a random secret increases security substantially. Note that if you are using the new token based APIs, then this field is mandatory with ZM 1.34 and above. AUTH_HASH_TTL - Time before ZM auth will expire (does not apply to API tokens). The default has traditionally been 2 hours. A new hash will automatically be regenerated at half this value. AUTH_RELAY - When ZoneMinder is running in authenticated mode it can pass user details between the web pages and the back end processes. There are two methods for doing this. This first is to use a time limited hashed string which contains no direct username or password details, the second method is to pass the username and passwords around in plaintext. This method is not recommend except where you do not have the md5 libraries available on your system or you have a completely isolated system with no external access. You can also switch off authentication relaying if your system is isolated in other ways. AUTH_TYPE - ZoneMinder can use two methods to authenticate users when running in authenticated mode. The first is a builtin method where ZoneMinder provides facilities for users to log in and maintains track of their identity. The second method allows interworking with other methods such as http basic authentication which passes an independently authenticated 'remote' user via http. In this case ZoneMinder would use the supplied user without additional authentication provided such a user is configured in ZoneMinder. CASE_INSENSITIVE_USERNAMES - This option makes usernames case insensitive when authenticating. CHECK_FOR_UPDATES - To save checking manually for each new version ZoneMinder can check with the zoneminder.com website to determine the most recent release. These checks are infrequent, about once per week, and no personal or system information is transmitted other than your current version number. If you do not wish these checks to take place or your ZoneMinder system has no internet access you can switch these check off with this configuration variable. COOKIE_LIFETIME - This will affect how long a session will be valid for since the last request. Keeping this short helps prevent session hijacking. Keeping it long allows you to stay logged in longer without refreshing the view. We recommend you keep this to the default of ``3600`` if you are not sure. CSS_DEFAULT - ZoneMinder allows the use of many different web interfaces, and some skins allow the use of different set of CSS files to control the appearance. This option allows you to set the default set of css files used by the website. Users can change their css later, this merely sets the default. ENABLE_CSRF_MAGIC - CSRF stands for Cross-Site Request Forgery which, under specific circumstances, can allow an attacker to perform any task your ZoneMinder user account has permission to perform. To accomplish this, the attacker must write a very specific web page and get you to navigate to it, while you are logged into the ZoneMinder web console at the same time. Enabling ZM_ENABLE_CSRF_MAGIC will help mitigate these kinds of attacks. If you are using zmNinja and face access issues, you might try turning this off. FILTER_EXECUTE_INTERVAL - ZoneMinder allows you to save filters to the database which allow events that match certain criteria to be emailed, deleted or uploaded to a remote machine etc. The zmfilter daemon loads these and does the actual operation. This option determines how often the filters are executed on the saved event in the database. If you want a rapid response to new events this should be a smaller value, however this may increase the overall load on the system and affect performance of other elements. FILTER_RELOAD_DELAY - ZoneMinder allows you to save filters to the database which allow events that match certain criteria to be emailed, deleted or uploaded to a remote machine etc. The zmfilter daemon loads these and does the actual operation. This option determines how often in seconds the filters are reloaded from the database to get the latest versions or new filters. If you don't change filters very often this value can be set to a large value. As of 1.34.0 filters should be automatically reloaded when saving a filter so this setting should have little effect. If you are using zmNinja along with authentication, please make sure ``AUTH_HASH_LOGINS`` is enabled, ``OPT_USE_API`` is elabled, ``AUTH_RELAY`` is set to hashed, ``AUTH_HASH_IPS`` is off and a valid ``AUTH_HASHED_SECRET`` is specified. LANG_DEFAULT - ZoneMinder allows the web interface to use languages other than English if the appropriate language file has been created and is present. This option allows you to change the default language that is used from the shipped language, British English, to another language. MAX_RESTART_DELAY - The zmdc (zm daemon control) process controls when processeses are started or stopped and will attempt to restart any that fail. If a daemon fails frequently then a delay is introduced between each restart attempt. If the daemon stills fails then this delay is increased to prevent extra load being placed on the system by continual restarts. This option controls what this maximum delay is. OPT_CONTROL - ZoneMinder includes limited support for controllable cameras. A number of sample protocols are included and others can easily be added. If you wish to control your cameras via ZoneMinder then select this option otherwise if you only have static cameras or use other control methods then leave this option off. OPT_FAST_DELETE - Normally an event created as the result of an alarm consists of entries in one or more database tables plus the various files associated with it. When deleting events in the browser it can take a long time to remove all of this if youxr are trying to do a lot of events at once. **NOTE**: It is recommended that you keep this option OFF, unless you are running on an old or low-powered system. OPT_TRIGGERS - ZoneMinder can interact with external systems which prompt or cancel alarms. This is done via the zmtrigger.pl script. This option indicates whether you want to use these external triggers. Most people will say no here. OPT_USE_API - A global setting to enable/disable ZoneMinder APIs. If you are using mobile apps like zmNinja, this needs to be enabled OPT_USE_AUTH - ZoneMinder can run in two modes. The simplest is an entirely unauthenticated mode where anyone can access ZoneMinder and perform all tasks. This is most suitable for installations where the web server access is limited in other ways. The other mode enables user accounts with varying sets of permissions. Users must login or authenticate to access ZoneMinder and are limited by their defined permissions. Authenticated mode alone should not be relied up for securing Internet connected ZoneMinder. OPT_USE_EVENT_NOTIFICATION - zmeventnotification is a 3rd party event notification server that is used to get notifications for alarms detected by ZoneMinder in real time. zmNinja requires this server for push notifications to mobile phones. This option only enables the server if it is already installed. Please visit the `Event Notification Server project site <https://github.com/pliablepixels/zmeventserver>`__ for installation instructions. OPT_USE_GOOG_RECAPTCHA - This option allows you to include a google reCaptcha validation at login. This means in addition to providing a valid username and password, you will also have to pass the reCaptcha test. Please note that enabling this option results in the zoneminder login page reaching out to google servers for captcha validation. Also please note that enabling this option may break 3rd party clients if they rely on web based logins (Note that zmNinja now uses the API based token method and will not be affected if reCAPTCHA is enabled). If you enable this, you also need to specify your site and secret key (please refer to context help in the ZoneMinder system screen). OPT_USE_LEGACY_AUTH - Starting version 1.34.0, ZoneMinder uses a more secure Authentication mechanism using JWT tokens. Older versions used a less secure MD5 based auth hash. It is recommended you turn this off after you are sure you don't need it. If you are using a 3rd party app that relies on the older API auth mechanisms, you will have to update that app if you turn this off. Note that zmNinja 1.3.057 onwards supports the new token system. Options - System RUN_AUDIT - The zmaudit daemon exists to check that the saved information in the database and on the filesystem match and are consistent with each other. If an error occurs or if you are using 'fast deletes' it may be that database records are deleted but files remain. In this case, and similar, zmaudit will remove redundant information to synchronise the two data stores. This option controls whether zmaudit is run in the background and performs these checks and fixes continuously. It is recommended you keep this **OFF** in most systems and run it manually if needed after a system crash. SHM_KEY - ZoneMinder uses shared memory to speed up communication between modules. To identify the right area to use shared memory keys are used. This option controls what the base key is, each monitor will have it's Id or'ed with this to get the actual key used. You will not normally need to change this value unless it clashes with another instance of ZoneMinder on the same machine. Only the first four hex digits are used, the lower four will be masked out and ignored. SKIN_DEFAULT - ZoneMinder allows the use of many different web interfaces. This option allows you to set the default skin used by the website. Users can change their skin later, this merely sets the default. STATUS_UPDATE_INTERVAL - The zmstats daemon performs various db queries related to collecting system statistics that may take a long time in the background. This option decides how often this update is scheduled. SYSTEM_SHUTDOWN - this option puts a poweroff icon in the header of the ZM UI for users with System privilege accessi. This icon will allow the user to shutdown the full system via the ZM UI. The system will need to have sudo installed and the following added to /etc/sudoers: TELEMETRY_DATA - Enable collection of usage information of the local system and send it to the ZoneMinder development team. This data will be used to determine things like who and where our customers are, how big their systems are, the underlying hardware and operating system, etc. This is being done for the sole purpose of creating a better product for our target audience. This script is intended to be completely transparent to the end user, and can be disabled from the web console under Options. For more details on what information we collect, please refer to Zoneminder's privacy statement (available in the contextual help of TELEMETRY_DATA on your installation). This screen allows the admin to configure various core operations of the system. UPDATE_CHECK_PROXY - If you use a proxy to access the internet then ZoneMinder needs to know so it can access zoneminder.com to check for updates. If you do use a proxy enter the full proxy url here in the form of ``http://<proxy host>:<proxy port>/``. WATCH_CHECK_INTERVAL - The zmwatch daemon checks the image capture performance of the capture daemons to ensure that they have not locked up (rarely a sync error may occur which blocks indefinitely). This option determines how often the daemons are checked. WATCH_MAX_DELAY - The zmwatch daemon checks the image capture performance of the capture daemons to ensure that they have not locked up (rarely a sync error may occur which blocks indefinitely). This option determines the maximum delay to allow since the last captured frame. The daemon will be restarted if it has not captured any images after this period though the actual restart may take slightly longer in conjunction with the check interval value above.  Please note that some cameras can take up to 30 seconds to get a valid image, so this setting should be larger than that. to perform the shutdown or reboot Project-Id-Version: ZoneMinder 
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2024-03-26 18:37+0000
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: ru
Language-Team: ru <LL@li.org>
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2);
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.11.0
 Представлен снимок экрана: AUDIT_CHECK_INTERVAL - Демон zmaudit существует для проверки того, что информация, сохраненная в базе данных и на файловой системе, совпадают и согласованы друг с другом. Если возникает ошибка или если вы используете 'быстрые удаления', возможно, что записи в базе данных будут удалены, но файлы останутся. В этом случае, и аналогичном, zmaudit удалит избыточную информацию, чтобы синхронизировать два хранилища данных. По умолчанию интервал проверки составляет 900 секунд (15 минут), что хорошо для большинства систем, однако, если у вас очень большое количество событий, процесс сканирования базы данных и файловой системы может занять много времени и повлиять на производительность. В этом случае вы можете предпочесть сделать этот интервал намного больше, чтобы снизить нагрузку на вашу систему. Этот параметр определяет, как часто будут выполняться эти проверки. AUDIT_MIN_AGE - Демон zmaudit существует для проверки того, что информация, сохраненная в базе данных и на файловой системе, совпадают и согласованы друг с другом. Файлы событий или записи в базе данных, которые моложе этого значения, не будут удалены, и будет дано предупреждение AUTH_HASH_IPS - Когда ZoneMinder работает в режиме аутентификации по хешу, он может опционально включать IP-адрес запрашивающего в результирующий хеш. Это добавляет еще один уровень безопасности, так как только запросы от этого адреса могут использовать этот ключ аутентификации. Однако в некоторых обстоятельствах, таких как доступ через мобильные сети, IP-адрес запрашивающего может меняться для каждого запроса, что приведет к тому, что большинство запросов будут неудачными. Этот параметр позволяет вам контролировать, включены ли IP-адреса в хеш аутентификации на вашей системе. Если вы испытываете проблемы с аутентификацией, отключение этого параметра может помочь. Рекомендуется оставить его выключенным, если вы используете мобильные приложения, такие как zmNinja, через мобильные сети операторов связи - несколько APNs часто меняют IP-адрес, что может привести к неудачной аутентификации. AUTH_HASH_LOGINS - Обычный процесс входа в ZoneMinder осуществляется через экран входа с именем пользователя и паролем. В некоторых случаях может быть желательно предоставить прямой доступ к одной или нескольким страницам, например, из стороннего приложения. Если эта опция включена, добавление параметра 'auth' к любому запросу приведет к обходу экрана входа с помощью короткого входа, если пользователь уже не вошел в систему. Поскольку аутентификационные хэши ограничены временем и, опционально, IP-адресом, это может позволить временный доступ к страницам ZoneMinder с других веб-страниц и т. д. Для использования этой функции вызывающее приложение должно самостоятельно генерировать аутентификационный хэш и убедиться в его действительности. Если вы используете эту функцию, убедитесь, что вы изменили ZM_AUTH_HASH_SECRET на что-то уникальное для вашей системы. AUTH_HASH_SECRET - Когда ЗонаМинер работает в режиме аутентификации по хэшу, необходимо генерировать хэшированные строки, содержащие зашифрованную чувствительную информацию, такую как имена пользователей и пароли. Хотя эти строки относительно безопасны, добавление случайного секрета значительно повышает безопасность. Обратите внимание, что если вы используете новые API на основе токенов, то это поле обязательно для ZM 1.34 и выше. AUTH_HASH_TTL - Время до истечения срока авторизации ZM (не применимо к токенам API). Традиционно по умолчанию установлено 2 часа. Новый хэш будет автоматически сгенерирован в два раза меньше этого значения. AUTH_RELAY - Когда ZoneMinder работает в режиме аутентификации, он может передавать детали пользователя между веб-страницами и процессами бэкенда. Существует два способа сделать это. Первый - использовать хеш с ограниченным сроком действия, содержащий прямые данные о имени пользователя или пароле, второй метод - передавать имя пользователя и пароль в открытом виде. Этот метод не рекомендуется, за исключением случаев, когда у вас нет доступных библиотек md5 на вашей системе или у вас есть полностью изолированная система без внешнего доступа. Вы также можете отключить ретрансляцию аутентификации, если ваша система изолирована другими способами. AUTH_TYPE - ZoneMinder может использовать два метода аутентификации пользователей при работе в режиме аутентификации. Первый - это встроенный метод, при котором ZoneMinder предоставляет возможности для входа пользователей и отслеживает их идентификацию. Второй метод позволяет взаимодействовать с другими методами, такими как HTTP-аутентификация базового уровня, которая передает независимо аутентифицированного "удаленного" пользователя через HTTP. В этом случае ZoneMinder будет использовать предоставленного пользователя без дополнительной аутентификации, если такой пользователь настроен в ZoneMinder. !CASE_INSENSITIVE_USERNAMES - Этот параметр делает имена пользователей нечувствительными к регистру при аутентификации. ПРОВЕРКА НА ОБНОВЛЕНИЯ - Чтобы не проверять вручную каждую новую версию ZoneMinder, он может проверить веб-сайт ZoneMinder.com, чтобы определить самую последнюю версию. Эти проверки происходят редко, примерно раз в неделю, и не передается никакая личная или системная информация, кроме вашего текущего номера версии. Если вы не хотите, чтобы эти проверки происходили или у вашей системы ZoneMinder нет доступа в интернет, вы можете отключить эти проверки с помощью этого конфигурационного параметра. COOKIE_LIFETIME - Это повлияет на то, как долго сессия будет действительна с момента последнего запроса. Удержание этого коротким помогает предотвратить захват сессии. Удержание его длинным позволяет оставаться авторизованным дольше без обновления представления. Мы рекомендуем вам держать это на уровне по умолчанию "3600", если вы не уверены. CSS_DEFAULT - ЗонаМинер позволяет использовать множество различных веб-интерфейсов, а некоторые темы позволяют использовать разные наборы файлов CSS для управления внешним видом. Этот параметр позволяет установить стандартный набор файлов CSS, используемых веб-сайтом. Пользователи могут изменить свой CSS позже, это просто устанавливает по умолчанию. ENABLE_CSRF_MAGIC - CSRF расшифровывается как "Кросс-сайтовая подделка запроса", которая, при определенных обстоятельствах, может позволить злоумышленнику выполнить любую задачу, на которую у вашего аккаунта ZoneMinder есть разрешение. Для этого злоумышленник должен создать очень специфическую веб-страницу и заставить вас перейти по ней, одновременно находясь в веб-консоли ZoneMinder. Включение ZM_ENABLE_CSRF_MAGIC поможет минимизировать подобные атаки. Если вы используете zmNinja и сталкиваетесь с проблемами доступа, возможно, стоит попробовать отключить эту функцию. FILTER_EXECUTE_INTERVAL - ZoneMinder позволяет сохранять фильтры в базу данных, которые позволяют событиям, соответствующим определенным критериям, отправлять электронную почту, удалять или загружать на удаленную машину и т. д. Демон zmfilter загружает эти фильтры и выполняет фактическую операцию. Этот параметр определяет, как часто фильтры выполняются для сохраненного события в базе данных. Если вы хотите быстро реагировать на новые события, это должно быть меньшее значение, однако это может увеличить общую нагрузку на систему и повлиять на производительность других элементов. FILTER_RELOAD_DELAY - Зонд Зоны позволяет сохранять фильтры в базу данных, которые позволяют событиям, соответствующим определенным критериям, отправлять электронную почту, удалять или загружать на удаленную машину и т. д. Демон zmfilter загружает эти фильтры и выполняет фактическую операцию. Этот параметр определяет, как часто в секундах фильтры загружаются из базы данных для получения последних версий или новых фильтров. Если вы редко меняете фильтры, это значение может быть установлено на большое значение. С версии 1.34.0 фильтры должны автоматически загружаться при сохранении фильтра, поэтому этот параметр должен иметь незначительное влияние. Если вы используете zmNinja с аутентификацией, убедитесь, что "AUTH_HASH_LOGINS" включен, "OPT_USE_API" включено, "AUTH_RELAY" установлено в "hashed", "AUTH_HASH_IPS" отключено и указан действительный "AUTH_HASHED_SECRET". LANG_DEFAULT - Зонемер позволяет веб-интерфейсу использовать языки, отличные от английского, если соответствующий файл языка был создан и присутствует. Эта опция позволяет изменить язык по умолчанию, используемый из языка, входящего в комплект поставки, британского английского, на другой язык. MAX_RESTART_DELAY - Процесс zmdc (z-демон управления) контролирует запуск или остановку процессов и попытается перезапустить любой, который терпит неудачу. Если демон часто терпит неудачу, то вводится задержка между каждой попыткой перезапуска. Если демон все еще терпит неудачу, то эта задержка увеличивается, чтобы предотвратить дополнительную нагрузку на систему из-за постоянных перезапусков. Этот параметр контролирует, какое максимальное время задержки. OPT_CONTROL - ЗонаМинер включает ограниченную поддержку управляемых камер. Включены несколько примеров протоколов, и другие могут легко быть добавлены. Если вы хотите управлять своими камерами через ЗонаМинер, выберите этот вариант, а если у вас только статические камеры или вы используете другие методы управления, оставьте этот вариант. OPT_FAST_DELETE - Обычно событие, создаваемое в результате срабатывания сигнала, состоит из записей в одной или нескольких таблицах базы данных, а также различных файлов, связанных с ним. При удалении событий в браузере может потребоваться много времени для удаления всего этого, если вы пытаетесь удалить сразу много событий. **ОТМЕТКА**: рекомендуется оставить эту опцию выключенной, за исключением случаев, когда вы работаете на старой или маломощной системе. OPT_TRIGGERS - ZoneMinder может взаимодействовать с внешними системами, которые вызывают или отменяют сигналы тревоги. Это делается с помощью скрипта zmtrigger.pl. Этот параметр указывает, хотите ли вы использовать эти внешние триггеры. Большинство людей скажут нет здесь. OPT_USE_API - глобальная настройка для включения/выключения API ZoneMinder. Если вы используете мобильные приложения, такие как zmNinja, это должно быть включено OPT_USE_AUTH - ZoneMinder может работать в двух режимах. Самый простой - это полностью неавторизованный режим, когда любой может получить доступ к ZoneMinder и выполнить все задачи. Это наиболее подходит для установок, где доступ к веб-серверу ограничен другими способами. Другой режим позволяет создавать учетные записи пользователей с различными наборами разрешений. Пользователи должны войти в систему или аутентифицироваться, чтобы получить доступ к ZoneMinder, и их возможности ограничены их определенными разрешениями. Режим аутентификации не следует полагаться только для защиты подключенного к Интернету ZoneMinder. OPT_USE_EVENT_NOTIFICATION - zmeventnotification - это сервер уведомлений о событиях третьего лица, который используется для получения уведомлений о срабатывании сигналов тревоги, обнаруженных ZoneMinder в реальном времени. zmNinja требует наличия этого сервера для отправки уведомлений на мобильные телефоны. Этот параметр позволяет включить сервер только в том случае, если он уже установлен. Пожалуйста, посетите сайт проекта `Сервер уведомлений о событиях <https://github.com/pliablepixels/zmeventserver>`__ для инструкций по установке. OPT_USE_GOOG_RECAPTCHA - Этот параметр позволяет включить проверку google reCaptcha при входе в систему. Это означает, что, помимо предоставления действительного имени пользователя и пароля, вам также придется пройти тест reCaptcha. Пожалуйста, обратите внимание, что включение этого параметра приводит к тому, что страница входа в zoneminder обращается к серверам google для проверки captcha. Также обратите внимание, что включение этого параметра может нарушить работу третьих сторон, если они полагаются на веб-логины (обратите внимание, что zmNinja теперь использует метод API на основе токенов и не будет затронут, если reCAPTCHA будет включена). Если вы включите это, вам также необходимо указать свой сайт и ключ секретности (пожалуйста, обратитесь к помощи контекста на экране системы ZoneMinder). OPT_USE_LEGACY_AUTH - Начиная с версии 1.34.0, ZoneMinder использует более безопасную систему аутентификации с использованием токенов JWT. В более ранних версиях использовался менее безопасный хеш на основе MD5 для аутентификации. Рекомендуется отключить эту опцию после того, как вы будете уверены, что она вам не нужна. Если вы используете стороннее приложение, которое полагается на старые механизмы аутентификации API, вам придется обновить это приложение, если вы отключите эту опцию. Примечание: начиная с версии zmNinja 1.3.057, поддерживается новая система токенов. Варианты - Система RUN_AUDIT - Демон zmaudit существует для проверки того, что информация, сохраненная в базе данных и на файловой системе, совпадают и согласованы друг с другом. Если возникает ошибка или если вы используете 'быстрые удаления', возможно, записи в базе данных будут удалены, но файлы останутся. В этом случае, и аналогичном, zmaudit удалит избыточную информацию, чтобы синхронизировать два хранилища данных. Этот параметр контролирует, запускается ли zmaudit в фоновом режиме и выполняет эти проверки и исправления непрерывно. Рекомендуется, чтобы вы оставили этот **OFF** в большинстве систем и запускали его вручную, если это необходимо, после сбоя системы. SHM_KEY - ZoneMinder использует общую память для ускорения обмена данными между модулями. Для определения правильной области используются ключи общей памяти. Этот параметр контролирует, какой базовый ключ используется, каждый монитор будет иметь свой идентификатор или объединенный с этим для получения фактического ключа, используемого. Вы обычно не будете менять это значение, если оно конфликтует с другой копией ZoneMinder на том же компьютере. Используются только первые четыре шестнадцатеричных цифры, нижние четыре будут маскироваться и игнорироваться. SKIN_DEFAULT - ZoneMinder позволяет использовать множество различных веб-интерфейсов. Этот параметр позволяет установить по умолчанию тему, используемую веб-сайтом. Пользователи могут изменить свою тему позже, это просто устанавливает по умолчанию. STATUS_UPDATE_INTERVAL - Демон zmstats выполняет различные запросы к базе данных, связанные с сбором системных статистических данных, которые могут занять много времени в фоновом режиме. Этот параметр определяет, как часто планируется это обновление. SYSTEM_SHUTDOWN - этот параметр добавляет иконку "Выключение питания" в заголовок интерфейса ZM для пользователей с системными привилегиями. Эта иконка позволит пользователю выключить систему через интерфейс ZM. Системе потребуется наличие пакета sudo и добавление следующего в /etc/sudoers: ТЕЛЕМЕТРИЯ_ДАННЫЕ - Включить сбор информации о использовании локальной системы и отправку ее в команду разработчиков ZoneMinder. Эта информация будет использоваться для определения таких вещей, как кто и где наши клиенты, насколько велики их системы, аппаратное и программное обеспечение, и т.д. Это делается исключительно для создания лучшего продукта для нашей целевой аудитории. Этот скрипт предназначен для полной прозрачности для конечного пользователя и может быть отключен через веб-консоль под опциями. Для получения более подробной информации о том, какую информацию мы собираем, пожалуйста, обратитесь к заявлению о конфиденциальности ZoneMinder (доступно в контекстной помощи TELEMETRY_DATA на вашей установке). Этот экран позволяет администратору конфигурировать различные основные операции системы. UPDATE_CHECK_PROXY - Если вы используете прокси для доступа в интернет, ZoneMinder должен знать об этом, чтобы иметь возможность проверить наличие обновлений на zoneminder.com. Если вы все же используете прокси, введите полный URL-адрес прокси в виде ``http://<хост прокси>:<порт прокси>``. WATCH_CHECK_INTERVAL - Демон zmwatch проверяет производительность захвата изображений у дескрипторов захвата, чтобы убедиться, что они не застряли (редко может возникнуть синхронизация ошибки, которая блокирует навсегда). Этот параметр определяет, как часто будут проверяться дескрипторы. WATCH_MAX_DELAY - Демон zmwatch проверяет производительность захвата изображений у демонов захвата, чтобы убедиться, что они не застряли (редко может возникнуть синхронизация ошибки, которая блокирует навсегда). Этот параметр определяет максимальную задержку, разрешенную с момента последнего захваченного кадра. Демон будет перезапущен, если он не захватил ни одного изображения после этого периода, хотя фактический перезапуск может занять немного больше времени в сочетании с значением интервала проверки выше. Пожалуйста, обратите внимание, что некоторые камеры могут занимать до 30 секунд для получения действительного изображения, поэтому это значение должно быть больше этого. для выполнения отключения или перезагрузки 