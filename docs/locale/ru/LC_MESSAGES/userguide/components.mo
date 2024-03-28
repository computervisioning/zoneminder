��    Q      �              ,  3  -  �   a  0   %  �   V  t  �  �   _
     �
     �
               0     I     g     �     �     �     �     �          !     (     0     ?     G     X     l     x     �     �     �     �     �     �     �     �     �       @     �   \  �   �     m  
   v  ;  �  S   �  �     ,  �  �  �     �     �     �     �  �  �  f  �  C   �    A  �   Y  �  M  !  �  �  �  E   �       �   (!  1  �!  �   #  ?  �#    �%  �   �&  �   �'  <   6(  N   s(  �   �(  �   �)  C   K*  �   �*  �  <+  �  )-  �   /  0  �/  �  3  E  �4  �  +6  �  �7  �  �;  ;   {=  1  �=  �  �>  ;  �A     �B     C     C     ,C     CC     \C     zC     �C     �C     �C     �C     �C     D     4D     ;D     CD     RD     ZD     kD     ~D     �D     �D     �D     �D     �D     �D     �D     �D     E     E      E  k   -E  
  �E    �F     �G     �G    �G  �   �I  `  xJ  -  �K  6  N  ,   >R     kR     oR     tR    �R  �  �W  f   TZ  �  �Z  �  �\  j  �^  M  �a  �  ?f  �   j    �j  T  �l  ]  n  �   _p  t  _q  �  �u    �w    �x     �y  �   yz  �  ;{  +  }  l   ?~  f  �~    �  R  3�  �  ��  @  '�  �  h�  �  �   'action' is 'on', 'off', 'cancel' or ‘show’ where 'on' forces an alarm condition on, 'off' forces an alarm condition off and 'cancel' negates the previous 'on' or 'off'. The ‘show’ action merely updates some auxiliary text which can optionally be displayed in the images captured by the monitor. Ordinarily you would use 'on' and 'cancel', 'off' would tend to be used to suppress motion based events. Additionally 'on' and 'off' can take an additional time offset, e.g. on+20 which automatically 'cancel's the previous action after that number of seconds. 'cause' is a 32 char max string indicating the reason for, or source of the alarm e.g. 'Relay 1 open'. This is saved in the ‘Cause’ field of the event. Ignored for 'off' or 'cancel' messages. 'id' is the id number or name of the ZM monitor. 'score' is the score given to the alarm, usually to indicate it's importance. For 'on' triggers it should be non-zero, otherwise it should be zero. 'showtext' is up to 32 characters of text that can be displayed in the timestamp that is added to images. The ‘show’ action is designed to update this text without affecting alarms but the text is updated, if present, for any of the actions. This is designed to allow external input to appear on the images captured, for instance temperature or personnel identity etc. 'text' is a 256 char max additional info field, which is saved in the ‘Description’ field of an event. Ignored for 'off' or 'cancel' messages. **Classic** **Flat** **ZoneMinder.pm** **ZoneMinder/Base.pm** **ZoneMinder/Config.pm** **ZoneMinder/ConfigAdmin.pm** **ZoneMinder/Control/\*.pm** **ZoneMinder/Database.pm** **ZoneMinder/Debug.pm** **ZoneMinder/Event.pm** **ZoneMinder/Filter.pm** **ZoneMinder/SharedMem.pm** **ZoneMinder/Trigger/\*.pm** **zm** **zma** **zmaudit.pl** **zmc** **zmcamtool.pl** **zmcontrol-\*.pl** **zmdc.pl** **zmeventnotification.pl** **zmfilter.pl** **zmpkg.pl** **zms** **zmtrack.pl** **zmtrigger.pl** **zmu** **zmupdate.pl** **zmvideo.pl** **zmwatch.pl** **zmx10.pl** A brief description of each of the principle components follows. An updated version of Classic skin, retaining the same layout with a more modern style. Originally a skin this is now just a CSS style. As well as this there are the web PHP files in the web directory. Currently these consist of a single skin with Classic and Flat styles. Binaries Components Currently this script is responsible for checking whether a new version of ZoneMinder is available and other miscellaneous actions related to upgrades and migrations. It is also intended to be a ‘one stop shop’ for any upgrades and will execute everything necessary to update your installation to a new version. Depicted below is a high level diagram of the ZoneMinder system with key components Finally some perl scripts in the scripts directory. These scripts all have some configuration at the top of the files which should be viewed and amended if necessary and are as follows. Finally, there are also a number of ZoneMinder perl modules included. These are used by the scripts above, but can also be used by your own or 3rd party scripts. Full documentation for most modules is available in ‘pod’ form via ‘perldoc’ but the general purpose of each module is as follows. Note that multiple messages can be sent at once and should be LF or CRLF delimited. This script is not necessarily intended to be a solution in itself, but is intended to be used as ‘glue’ to help ZoneMinder interface with other systems. It will almost certainly require some customisation before you can make any use of it. If all you want to do is generate alarms from external sources then using the ZoneMinder::SharedMem perl module is likely to be easier. Original ZoneMinder skin PHP Perl System Overview These are a set of example scripts which can be used to control Pan/Tilt/Zoom class cameras. Each script converts a set of standard parameters used for camera control into the actual protocol commands sent to the camera. If you are using a camera control protocol that is not in the shipped list then you will have to create a similar script though it can be created entirely separately from ZoneMinder and does not need to named as these scripts are. Although the scripts are used to action commands originated from the web interface they can also be used directly or from other programs or scripts, for instance to implement periodic scanning to different presets. These modules contain definitions of trigger channels and connections used by the zmtrigger.pl script. Although they can be used ‘as is’, they are really intended as examples that can be customised or specialised for different interfaces. Contributed modules for new channels or connections will be welcomed and included in future versions of ZoneMinder. These modules contain implementations of the various PTZ protocols. This is a general ZoneMinder container module. It includes the Base.pm, Config.pm Debug.pm, Database.pm, and SharedMem.pm modules described below. It also exports all of their symbols by default. If you use the other modules directly you have request which symbol tags to import. This is a simple script purely designed to keep an eye on the capture daemons and restart them if they lockup. It has been known for sync problems in the video drivers to cause this so this script makes sure that nothing important gets missed. This is an optional 3rd party real time event notification server that also provides push notifications for zmNinja as well as machine learning powered object/face-detection. Please see `Event Notification Server Documentation <https://zmeventnotification.readthedocs.io/en/latest/index.html>`__ for more details (Note that the machine learning components are optional, and are developed in Python3) This is an optional script that can be used to initiate and monitor X10 Home Automation style events and interface with an alarm system either by the generation of X10 signals on ZoneMinder events or by initiating ZoneMinder monitoring and capture on receipt of X10 signals from elsewhere, for instance the triggering of an X10 PIR. For example I have several cameras that don’t do motion detection until I arm my alarm system whereupon they switch to active mode when an X10 signal is generated by the alarm system and received by ZoneMinder. This is an optional script that is a more generic solution to external triggering of alarms. It can handle external connections via either internet socket, unix socket or file/device interfaces. You can either use it ‘as is’ if you can interface with the existing format, or override connections and channels to customise it to your needs. The format of triggers used by zmtrigger.pl is as follows "<id>|<action>|<score>|<cause>|<text>|<showtext>" where This is the (optional) ZoneMinder init script, see below for details. This is the ZoneMinder Analysis daemon. This is the component that goes through the captured frames and checks them for motion which might generate an alarm or event. It generally keeps up with the Capture daemon but if very busy may skip some frames to prevent it falling behind. This is the ZoneMinder Capture daemon. This binary's job is to sit on a video device and suck frames off it as fast as possible, this should  run at more or less constant speed. This is the ZoneMinder Daemon Control script. This is used by the web interface and the zmpkg.pl script to control and maintain the execution of the capture and analysis daemons, amongst others. You should not need to run this script yourself, although you can use it to start/top individual ZM processes. This is the ZoneMinder Package Control script. This is used by the web interface and service scripts to control the execution of the system as a whole. This is the ZoneMinder Streaming server. The web interface connects with this to get real-time or historical streamed images. It runs only when a live monitor stream or event stream is actually being viewed and dies when the event finishes or the associate web page is closed. If you find you have several zms processes running when nothing is being viewed then it is likely you need a patch for apache (see the Troubleshooting section). A non-parsed header version of zms, called nph-zms, is also installed and may be used instead depending on your web server configuration. This is the ZoneMinder Utility. It's basically a handy command line interface to several useful functions. It’s not really meant to be used by anyone except the web page (there's only limited 'help' in it so far) but can be if necessary, especially for debugging video problems. This is the base ZoneMinder perl module. It contains only simple data such as version information. It is included by all other ZoneMinder perl modules This module contains database access definitions and functions. Currently not a lot is in this module but it is included as a placeholder for future development. This module contains functions to load, execute etc filters. This module contains functions to load, manipulate, delete, copy, move events. This module contains standard shared memory access functions. These can be used to access the current state of monitors etc as well as issuing commands to the monitors to switch things on and off. This module effectively provides a ZoneMinder API. This module contains the defined Debug and Error functions etc, that are used by scripts to produce diagnostic information in a standard format. This module imports the ZoneMinder configuration from the database. This module is a specialised module that contains the definition, and other information, about the various configuration options. It is not intended for use by 3rd parties. This optional script is new for the upcoming 1.27 release of ZoneMinder. It is intended to make it easy to do the following: bring in new ptz controls and camera presets, convert existing monitors into presets, and export custom ptz controls and presets. For the initial release, this script is not integrated into the UI and must be called from the command line.  Type ''zmcamtool.pl --help'' from the command line to get an explanation of the different arguments one can pass to the script. This script controls the execution of saved filters and will be started and stopped by the web interface based on whether there are filters that have been defined to be autonomous(background). This script is also responsible for the automatic uploading of events to a 3rd party server.  Prior to 1.32 there was one zmfilter.pl process.  In 1.32 onwards we start a zmfilter.pl process for each background filter so that the processing time of one filter doesn't delay the processing of another filter. This script is used from the web interface to generate video files in various formats in a common way. You can also use it from the command line in certain circumstances but this is not usually necessary. This script is used to check the consistency of the event file system and database. It can delete orphaned events, i.e. ones that appear in one location and not the other as well as checking that all the various event related tables are in line. It can be run interactively or in batch mode either from the command line or a cron job or similar. In the zmconfig.pl there is an option to specify fast event deletes where the web interface only deletes the event entry from the database itself. If this is set then it is this script that tidies up the rest.  We do not recommend fast event deletion and we do not recommend having zmaudit.pl run in the background.  It is a very ram cpu and disk io intensive program, constantly scanning every event.  Please run it manually or from a cron job on weekends or something. This script is used to manage the experimental motion tracking feature. It is responsible for detecting that an alarm is taking place and moving the camera to point to the alarmed location, and then subsequently returning it to a defined standby location. As well as moving the camera it also controls when motion detection is suspended and restored so that the action of the camera tracking does not trigger endless further alarms which are not justified. ZoneMinder is not a single monolithic application but is formed from several components. These components primarily include executable compiled binaries which do the main video processing work, perl scripts which usually perform helper and/or external interface tasks and php web scripts which are used for the web interface. Project-Id-Version: ZoneMinder 
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
 'action' может быть 'on', 'off', 'cancel' или 'show', где 'on' вызывает состояние тревоги, 'off' отменяет состояние тревоги, а 'cancel' отменяет предыдущие состояния 'on' или 'off'. Действие 'show' просто обновляет некоторые вспомогательные тексты, которые могут отображаться в изображениях, захваченных монитором. Обычно вы используете 'on' и 'cancel', 'off' обычно используется для подавления событий, основанных на движении. Кроме того, 'on' и 'off' могут принимать дополнительную временную задержку, например, on+20, которая автоматически отменяет предыдущее действие через это количество секунд. "Потому что" - это строка максимум 32 символа, указывающая причину или источник сигнала тревоги, например, "Открытый реле 1". Это сохраняется в поле "Причина" события. Не учитывается для сообщений "выключить" или "отменить". 'id' - это номер или имя монитора ZM. 'score' - это оценка, присваиваемая сигналу тревоги, обычно для указания его важности. Для триггеров "включено" она должна быть ненулевой, иначе она должна быть равна нулю. "showtext" может содержать до 32 символов текста, который можно отобразить в метке времени, добавляемой к изображениям. Действие "show" предназначено для обновления этого текста без влияния на сигналы тревоги, но текст обновляется, если он присутствует, для любого из действий. Это позволяет внешним данным появляться на изображениях, например, температура или персональная идентификация и т.д. 'текст' является полем дополнительной информации максимальной длиной 256 символов, которое сохраняется в поле 'Описание' события. Игнорируется для сообщений 'off' или 'отмена'. **Классический** **Плоский** **ZoneMinder.pm** **ZoneMinder/Base.pm** **ZoneMinder/Config.pm** **ZoneMinder/ConfigAdmin.pm** **ZoneMinder/Control/\*.pm** **ZoneMinder/Database.pm** **ZoneMinder/Debug.pm** **ZoneMinder/Event.pm** **ZoneMinder/Filter.pm** **ZoneMinder/SharedMem.pm** **ZoneMinder/Trigger/\*.pm** **zm** **zma** **zmaudit.pl** **zmc** **zmcamtool.pl** **zmcontrol-*.pl** **zmdc.pl** **zmeventnotification.pl** **zmfilter.pl** **zmpkg.pl** **zms** **zmtrack.pl** **zmtrigger.pl** **zmu** **zmupdate.pl** **zmvideo.pl** **zmwatch.pl** **zmx10.pl** Краткое описание каждого из основных компонентов следует. Обновленная версия классической кожи, сохраняющая тот же макет с более современным стилем. Изначально это была кожа, а теперь это просто стиль CSS. Кроме того, в веб-каталоге находятся файлы PHP для веб-сайта. В настоящее время они состоят из одного шаблона с классическим и плоским стилями. Бинарные файлы Компоненты В настоящее время этот скрипт отвечает за проверку наличия новой версии ZoneMinder и другие случайные действия, связанные с обновлениями и миграциями. Он также предназначен быть "одним окном" для любых обновлений и выполнит все необходимое для обновления вашей установки до новой версии. Ниже изображена высокоуровневая диаграмма системы ZoneMinder с ключевыми компонентами Наконец, некоторые скрипты на языке Perl в директории /scripts. Эти скрипты содержат некоторую конфигурацию в начале файлов, которую следует просмотреть и при необходимости изменить. Они следующие. Наконец, также включено несколько модулей ZoneMinder на языке Perl. Эти модули используются скриптами выше, но также могут использоваться вашими собственными или сторонними скриптами. Полная документация для большинства модулей доступна в форме «pod» через «perldoc», но общее назначение каждого модуля следующее. Обратите внимание, что несколько сообщений могут быть отправлены одновременно и должны быть разделены символами новой строки или CRLF. Этот скрипт не обязательно предназначен для самостоятельного решения проблемы, но предназначен для использования в качестве "клея", чтобы помочь ZoneMinder взаимодействовать с другими системами. Он, скорее всего, потребует некоторой настройки, прежде чем вы сможете извлечь из него какую-либо пользу. Если все, что вам нужно сделать, это сгенерировать сигналы тревоги из внешних источников, использование модуля ZoneMinder::SharedMem на языке Perl, вероятно, будет проще. Оригинальная тема ZoneMinder PHP Perl Системный обзор Это набор примерных скриптов, которые можно использовать для управления камерами Pan/Tilt/Zoom класса. Каждый скрипт преобразует набор стандартных параметров, используемых для управления камерой, в фактические команды протокола, отправляемые камере. Если вы используете протокол управления камерой, который не указан в списке, вам придется создать аналогичный скрипт, хотя его можно создать полностью отдельно от ZoneMinder и он не обязательно должен называться так же, как эти скрипты. Хотя эти скрипты используются для выполнения команд, исходящих из веб-интерфейса, их также можно использовать напрямую или из других программ или скриптов, например, для периодического сканирования к разным предустановкам. Эти модули содержат определения триггерных каналов и соединений, используемых скриптом zmtrigger.pl. Хотя их можно использовать ‘как есть’, они на самом деле предназначены в качестве примеров, которые могут быть адаптированы или специализированы для разных интерфейсов. Предложенные модули для новых каналов или соединений будут приветствоваться и включены в будущие версии ZoneMinder. Эти модули содержат реализации различных протоколов PTZ. Это общий модуль контейнера ZoneMinder. Он включает в себя модули Base.pm, Config.pm, Debug.pm, Database.pm и SharedMem.pm, описанные ниже. Он также экспортирует все их символы по умолчанию. Если вы используете другие модули напрямую, вам придется запросить, какие символы тегов импорта следует импортировать. Это простой скрипт, который просто следит за демонами захвата и перезапускает их, если они зависают. Было известно, что проблемы синхронизации видеодрайверов могут вызывать это, поэтому этот скрипт гарантирует, что ничего важного не будет пропущено. Это опциональный сервер реального времени для уведомлений о событиях от сторонних разработчиков, который также предоставляет push-уведомления для ZmNinja и использует машинное обучение для обнаружения объектов и лиц. Пожалуйста, ознакомьтесь с документацией по серверу уведомлений о событиях `<https://zmeventnotification.readthedocs.io/en/latest/index.html>`__ для получения дополнительной информации (обратите внимание, что компоненты машинного обучения являются необязательными и разрабатываются на Python3) Это необязательный скрипт, который можно использовать для инициирования и мониторинга событий домашней автоматизации X10 и взаимодействия с системой сигнализации либо путем генерации сигналов X10 на события ZoneMinder, либо путем запуска мониторинга ZoneMinder и захвата при получении сигналов X10 из других источников, например, при срабатывании ИК-датчика. Например, у меня есть несколько камер, которые не начинают обнаруживать движение, пока я не активирую свою систему сигнализации, после чего они переходят в режим активного наблюдения при генерации сигнала X10 системой сигнализации и его получении ZoneMinder. Это необязательный скрипт, который представляет собой более общий вариант для внешнего запуска сигналов тревоги. Он может обрабатывать внешние подключения через интернет-сокет, сокет UNIX или интерфейсы файлов/устройств. Вы можете либо использовать его "как есть", если вы можете взаимодействовать с существующим форматом, либо переопределить соединения и каналы, чтобы адаптировать его к вашим потребностям. Формат триггеров, используемых zmtrigger.pl, следующий: "<идентификатор>|<действие>|<оценка>|<причина>|<текст>|<показать текст>" где Это (необязательная) начальная скрипт ZoneMinder, см. ниже для подробностей. Это анализатор дескриптора зоны. Это компонент, который просматривает захваченные кадры и проверяет их на наличие движения, которое может вызвать сигнал тревоги или событие. Он обычно идет в ногу с дескриптором захвата, но если очень занят, может пропустить некоторые кадры, чтобы не отставать. Это дескриптор захвата ZoneMinder. Задача этого двоичного файла - сидеть на видеоустройстве и как можно быстрее вытягивать кадры из него, что должно работать примерно с постоянной скоростью. Это скрипт управления демоном ZoneMinder. Этот скрипт используется веб-интерфейсом и скриптом zmpkg.pl для управления и поддержания выполнения демонов захвата и анализа, а также других демонов. Вам, вероятно, не придется запускать этот скрипт самостоятельно, но вы можете использовать его для запуска/остановки отдельных процессов ZoneMinder. Это скрипт управления пакетом ZoneMinder. Этот скрипт используется веб-интерфейсом и скриптами службы для управления выполнением всей системы. Это сервер потокового вещания ZoneMinder. Веб-интерфейс подключается к нему для получения изображений в реальном времени или исторических потоков. Он работает только тогда, когда просматривается живой мониторный поток или поток событий, и умирает, когда событие заканчивается или закрывается связанная веб-страница. Если вы обнаружите, что у вас запущено несколько процессов zms, когда ничего не просматривается, вероятно, вам потребуется патч для Apache (см. раздел "Трудности"). Также установлена необработанная версия zms, называемая nph-zms, которая может использоваться вместо нее в зависимости от конфигурации вашего веб-сервера. Это утилита ZoneMinder. По сути, это удобный командный интерфейс к нескольким полезным функциям. Она не предназначена для использования кем-либо, кроме веб-страницы (пока что в ней ограниченная помощь), но может быть использована, если необходимо, особенно для отладки проблем с видео. Это базовый модуль ZoneMinder на языке Perl. Он содержит только простую информацию, такую как версия. Он включен во все другие модули ZoneMinder на языке Perl Этот модуль содержит определения доступа к базе данных и функции. В настоящее время в этом модуле немного, но он включен как заготовка для будущего развития. Этот модуль содержит функции для загрузки, выполнения и т.д. фильтров. Этот модуль содержит функции для загрузки, манипулирования, удаления, копирования и перемещения событий. Этот модуль содержит стандартные функции доступа к общей памяти. Эти функции можно использовать для доступа к текущему состоянию мониторов и т.д., а также для выдачи команд мониторам для включения и выключения. Этот модуль фактически предоставляет API ZoneMinder. Этот модуль содержит определенные функции отладки и ошибки и т.д., которые используются скриптами для генерации диагностической информации в стандартном формате. Этот модуль импортирует конфигурацию ZoneMinder из базы данных. Этот модуль является специализированным модулем, который содержит определение и другую информацию о различных параметрах конфигурации. Он не предназначен для использования третьими сторонами. Этот необязательный скрипт является новым для предстоящего выпуска 1.27 ZoneMinder. Он предназначен для того, чтобы сделать простым следующее: добавить новые функции управления панорамированием и настройками камеры, преобразовать существующие мониторы в настройки, и экспортировать пользовательские функции управления панорамированием и настройки. Для первоначального выпуска этот скрипт не интегрирован в интерфейс и должен вызываться из командной строки.  Тип 'zmcamtool.pl --help' из командной строки, чтобы получить объяснение различных аргументов, которые можно передать скрипту. Этот скрипт контролирует выполнение сохраненных фильтров и запускается и останавливается через веб-интерфейс в зависимости от того, были ли определены фильтры для автономной работы (фоновой). Этот скрипт также отвечает за автоматическую загрузку событий на сервер 3-й стороны. До версии 1.32 был один процесс zmfilter.pl. С версии 1.32 мы запускаем процесс zmfilter.pl для каждого фонового фильтра, чтобы время обработки одного фильтра не задерживало обработку другого фильтра. Этот скрипт используется через веб-интерфейс для генерации видеофайлов в различных форматах стандартным образом. Вы также можете использовать его с командной строки в определенных обстоятельствах, но это обычно не требуется. Этот скрипт используется для проверки согласованности файловой системы событий и базы данных. Он может удалять события-сироты, то есть те, которые присутствуют в одном месте, но отсутствуют в другом, а также проверять, что все различные таблицы событий находятся в порядке. Его можно запустить в интерактивном или пакетном режиме либо из командной строки, либо через cron-задание или аналогичное. В zmconfig.pl есть опция, позволяющая указать быстрое удаление событий, при котором веб-интерфейс удаляет только запись об событии из базы данных. Если эта опция установлена, то именно этот скрипт приводит остальную часть в порядок. Мы не рекомендуем быстрое удаление событий и не рекомендуем запускать zmaudit.pl в фоновом режиме. Это очень ресурсоемкая программа, постоянно сканирующая каждое событие. Пожалуйста, запустите его вручную или через cron-задание в выходные дни или что-то еще. Этот скрипт используется для управления функцией экспериментального отслеживания движения. Он отвечает за обнаружение того, что происходит срабатывание сигнала тревоги, и перемещение камеры к месту срабатывания тревоги, а затем последующее возвращение ее в определенную позицию ожидания. Кроме того, он также контролирует, когда обнаружение движения приостанавливается и возобновляется, так что действие отслеживания камерой не вызывает бесконечных дальнейших ложных тревог, которые не оправданы. ZoneMinder не является единым монолитным приложением, а состоит из нескольких компонентов. Эти компоненты в основном включают исполняемые скомпилированные бинарные файлы, которые выполняют основную обработку видео, скрипты на языке Perl, которые обычно выполняют вспомогательные и/или внешние интерфейсные задачи, и скрипты на языке PHP, используемые для веб-интерфейса. 