��    Q      �              ,  a  -  M   �  �   �  (   s  `   �  K   �  �   I  
   �     �  )   	  S   /	  �   �	     _
     o
  �  x
  l     �   x     \  �   ]    0  >   @  F     &   �  0   �       (   >  (   g  !   �  )   �     �  �   �  l   �  �   �  @  |  \   �  o     �   �  )   x  (   �     �  ,   �       <   
  >   G  I   �  p   �     A  �   b  �   �  �   x  c   �  �  ]  2     +   B     n  <   u  �  �  �   H     �  �   �  �  y   �   O"  `   #  ;   l#  /   �#  �   �#  {  �$  X   C&  g   �&    '  N   $(  n   s(  �   �(  5   e)  �   �)  %   �*  �   �*  �   Y+  �   �+  �   �,  �  b-  �  +/  u   2    �2  [   �3  �   �3  |   �4  9  O5     �6     �6  3   �6  �   �6    �7     �8     �8  �  �8  �   W;  �  :<  �  >  f  �?  �  .A  s   �B  w   iC  H   �C  E   *D  4   pD  L   �D  B   �D  B   5E  J   xE  &   �E     �E    G  �   H    I  �   (K  �   �K  �  nL  D   N  A   aN     �N  E   �N     �N  �   O  t   �O  �   
P  �   �P  �  SQ  �   �R  �   �S    �T  �   �U    �V  o   �Y  h   EZ     �Z  k   �Z  �  "[    �]  &   �^  �   �^  �  �_  	  �c  �   �d  g   ce  R   �e  �  f     �g  �   �j  �   �k  �  Ql  �   n  �   �n  �   eo  Y   <p  �  �p  I   yr  P  �r  �   t  m  �t    Uv   ***IMPORTANT*** Certain commands in these instructions require root privileges while other commands do not. Pay close attention to this. If the instructions below state to issue a command without a “sudo” prefix, then you should *not* be root while issuing the command. Getting this incorrect will result in a failed build, or worse a broken system. **ZoneMinder will NOT run without completing the steps shown in the README!** A virtual package called zoneminder exists. This package contains no files and will pull in the zoneminder-httpd package for backwards compatibility. Add your user account to the group mock: Again, depending on what you want to do with those changes, you may want to commit your changes: All of ZoneMinder's dependencies are downloaded and installed automatically At this point, you can make changes to the source code. Depending on what you want to do with those changes, you generally want to create a new branch first: Background Background: Fedora Background: RHEL, Rocky Linux, and Clones Be advised that you need to start with a clean system before installing ZoneMinder. Before you begin, set up an rpmbuild environment by following `this guide <https://wiki.centos.org/HowTos/SetupRpmBuildEnvironment>`_ by the CentOS developers. These instructions apply to Rocky Linux and clones as well. Build from SRPM Contents Copy the newly built ZoneMinder RPMs to the desired system, enable RPM Fusion as described in `How to Install ZoneMinder`_, and then install the rpm by issuing the appropriate yum/dnf install command. Finish the installation by following the zoneminder setup instructions in the distro specific readme file, named README.{distroname}, which will be installed into the /usr/share/doc/zoneminder* folder. Cross platform capable. The build host does not have to be the same distro or release version as the target. Disable any other third party repos and uninstall any of ZoneMinder's third party dependencies, which might already be on the system, especially ffmpeg and vlc. Attempting to install dependencies yourself often causes problems. Each ZoneMinder rpm includes a README file under /usr/share/doc. You must follow all the steps in this README file, precisely, each and every time ZoneMinder is installed or upgraded. **Failure to do so is guaranteed to result in a non-functional system.** Fedora has a short life-cycle of just 6 months. Fedora 36 is the last release supporting armv7 architecture, and consequently Raspberry Pis earlier than the Raspberry Pi 2 v 1.2. F36 is end-of-life in May 2023. Finally, you may want to consider editing the rpmfusion repo file under /etc/yum.repos.d and placing an “exclude=zoneminder*” line into the config file.  This will prevent your system from overwriting your manually built RPM with the ZoneMinder RPM found in the repo. For this example, I'll use one of the source rpms from zmrepo: From the root of the local ZoneMinder git repo, execute the following: Get the Rtsp-Server submodule tarball: Get the cakephp-enum-behavior submodule tarball: Get the crud submodule tarball: How To Avoid Known Installation Problems How to Build Your Own ZoneMinder Package How to Create Your Own Source RPM How to Install Nightly Development Builds How to Install ZoneMinder If you are looking to do development or the available packages just don't suit you, then you can follow these steps to build your own ZoneMinder RPM. If you desire newer packages than what is available in RHEL or its clones, you should consider using Fedora. If you have previously cloned the ZoneMinder git repo and wish to update it to the most recent, then issue these commands instead: If you have previously installed ZoneMinder from-source, then your system is **NOT** clean. You must manually search for and delete all ZoneMinder related files first (look under /usr/local). Issuing a "make uninstall" helps, but it will not do this for you correctly. You **WILL** have problems if you ignore this step. In addition to `RPM Fusion <https://rpmfusion.org>`__, RHEL users must enable the EPEL repo: In addition, make sure RPM Fusion is enabled as described in the previous section `How to Install ZoneMinder`_. In the previous section we described how to rebuild an existing ZoneMinder SRPM. The instructions which follow show how to build the ZoneMinder git source tree into a source rpm, which can be used in the previous section to build an rpm. Install ZoneMinder for Apache web server: Install ZoneMinder for Nginx web server: Installation Make sure git and rpmdevtools are installed: Note Notice that the mock tool requires the following parameters: Now clone the ZoneMinder git repository from your home folder: Now comes the fun part. To build ZoneMinder, issue the following command: Now follow the previous instructions `Build from SRPM`_ which describe how to build that source rpm into an rpm. Once ZoneMinder has been installed, you **must** read the README file to complete the installation. Fedora users can find the README under /usr/share/doc/zoneminder-common. RHEL users can find the README under /usr/share/doc/zoneminder-common-x.xx where x.xx is the version of zoneminder. Once the additional repos are enabled, install ZoneMinder from the commandline. Choose the package that matches the desired web server. Once the build completes, you will be presented with a message stating where the newly built rpms can be found. It will look similar to this: Once you have made your changes, it is time to turn your work into a new tarball, but first we need to look in the rpm specfile: Once your build environment is set up, few steps are required to run the build again in the future. One can think of Fedora as RHEL Beta. This is, in fact, what it is. Fedora is primarily geared towards development and testing of newer, sometimes bleeding edge, packages. The ZoneMinder team uses this distro to determine the interoperability of ZoneMinder with the latest and greatest versions of packages like mysql, apache, systemd, and others. If a problem is detected, it will be addressed long before it makes it way into RHEL. RHEL 8 users must also enable the powertools repo: RHEL 9 users must also enable the crb repo: Redhat Replace "1.33.4" with the Version shown in the rpm specfile. Replacing any core package in these distributions with a newer package from a third party is expressly verboten. The ZoneMinder development team will not do this, and neither should you. If you have the perception that you've got to have a newer version of php, mysql, gnome, apache, etc. then, rather than upgrade these packages, you should instead consider using a different distribution such as Fedora. Scroll down until you see the Version field. Note the value, which will be in the format x.xx.x. Now create the tarball with the following command: Set Up Your Environment The ZoneMinder team will not provide support for systems which have had any core package replaced with a package from a third party. The feedback we get from those who use these development packages is extremely helpful. However, please understand these packages are intended for testing the latest master branch only. They are not intended to be used on any production system. There will be new bugs, and new features may not be documented. This is bleeding edge, and there might be breakage. Please keep that in mind when using this repo. We know from our user forum that this can't be stated enough. The following method documents how to build ZoneMinder into an RPM package, for Fedora, Redhat, Rocky Linux, and other compatible clones. This is exactly how the RPMS in zmrepo are built. The following notes are based on real problems which have occurred by those who came before you: The list of available Mock config files are available here: The method documented below was chosen because: These distributions are classified as enterprise operating systems and have a long operating lifetime of many years. By design, they will not have the latest and greatest versions of any package. Instead, stable packages are the emphasis. These instructions apply to all Redhat distros and their clones, including but not limited to: Fedora, RHEL, Rocky Linux, Alma Linux, and others. While the installation instructions are the same for each distro, the reason why one might use one distro over the other is different. A short description follows, which is intended to help you chose what distro best fits your needs. This step will create a source rpm and it will tell you where it was saved. For example: This will create a sub-folder called zoneminder, which will contain the latest development source code. To continue, you need a ZoneMinder SRPM. If you wish to rebuild a ZoneMinder release, then browse the `RPM Fusion site <https://rpmfusion.org/>`__. If instead you wish to rebuild the latest source rpm from our master branch then browse the `Zmrepo site <http://zmrepo.zoneminder.com/>`_. Troubleshooting becomes easier if we are all building ZoneMinder the same way. Unlike Debian/Ubuntu distros, it is not necessary, and not recommended, to install a LAMP stack ahead of time. Want to build ZoneMinder for Fedora, instead of RHEL, from the same host?  Once you download the Fedora SRPM, issue the following: With RPM Fusion enabled, issue the following command: You choose the config file based on the desired distro (e.g. el7, f29, f30) and basearch (e.g. x86, x86_64, arhmhfp). Notice that, when specifying the Mock config as a commandline parameter, you should leave off the ".cfg" filename extension. Your build environment is now set up. Zmrepo assumes you have installed the underlying distribution **using the official installation media for that distro**. Third party "Spins" may not work correctly. ZoneMinder development packages, which represent the most recent build from our master branch, are available from `zmrepo <https://www.zoneminder.com>`_. ZoneMinder is intended to be installed in an environment dedicated to ZoneMinder. While ZoneMinder will play well with many applications, some invariably will not. Asterisk is one such example. ZoneMinder releases are hosted at RPM Fusion. New users should navigate to the `RPM Fusion site <https://rpmfusion.org>`__ then follow the instructions to enable that repo. Project-Id-Version: ZoneMinder 
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
 ***ВАЖНО*** Некоторые команды в этих инструкциях требуют привилегий суперпользователя, в то время как другие команды их не требуют. Обратите на это особое внимание. Если в инструкциях ниже указано выдать команду без префикса ``sudo``, то вам не следует быть суперпользователем при выдаче этой команды. Неправильное выполнение этого может привести к неудачной сборке, а в худшем случае - к повреждению системы. **ZoneMinder не будет работать без выполнения шагов, описанных в README!** Существует виртуальный пакет под названием ZoneMinder. Этот пакет не содержит файлов и будет подтягивать упаковку ZoneMinder-httpd для обратной совместимости. Добавьте учетную запись пользователя в группу mock: Опять же, в зависимости от того, что вы хотите делать с этими изменениями, вам может потребоваться сохранить свои изменения: Все зависимости ZoneMinder загружаются и устанавливаются автоматически На данном этапе вы можете вносить изменения в исходный код. В зависимости от того, что вы хотите делать с этими изменениями, обычно вам следует сначала создать новую ветку: Бэкграунд Бэкграунд: Fedora Бэкграунд: RHEL, Rocky Linux и клоны Обратите внимание, что перед установкой ZoneMinder вам необходимо начать с чистой системы. Перед началом работы настройте среду rpmbuild, следуя руководству `CentOS developers <https://wiki.centos.org/HowTos/SetupRpmBuildEnvironment>`_. Эти инструкции применимы к Rocky Linux и его клонам. Сборка из RPM Содержимое Скопируйте только что построенные пакеты ZoneMinder на желаемую систему, активируйте RPM Fusion, как описано в `How to Install ZoneMinder`_, и затем установите rpm, выдав соответствующую команду yum/dnf install. Завершите установку, следуя инструкциям по настройке ZoneMinder в файле справки дистрибутива, название которого будет README.{distroname}, который будет установлен в папку /usr/share/doc/zoneminder*. Кросс-платформенная совместимость. Компьютер для сборки не должен быть той же версией дистрибутива или выпуска, что и цель. Отключить любые другие репозитории сторонних разработчиков и удалить любые зависимости ZoneMinder от сторонних разработчиков, которые уже могут быть установлены на системе, особенно ffmpeg и vlc. Попытка установить зависимости самостоятельно часто приводит к проблемам. Каждый пакет ZoneMinder включает файл README под /usr/share/doc. Вам необходимо выполнить все шаги этого файла README точно, каждый раз при установке или обновлении ZoneMinder. **Несоблюдение этого гарантированно приведет к неработоспособности системы.** Жизненный цикл Fedora составляет всего 6 месяцев. Fedora 36 - это последний выпуск, поддерживающий архитектуру armv7, и, следовательно, Raspberry Pis, выпущенные до Raspberry Pi 2 v 1.2. F36 снята с производства в мае 2023 года. Наконец, вы можете рассмотреть возможность редактирования файла репозитория rpmfusion под /etc/yum.repos.d и добавления строки "exclude=zoneminder*" в конфигурационный файл. Это предотвратит перезапись вашей вручную построенного RPM с RPM ZoneMinder, найденным в репозитории. Для этого примера я использую один из исходных rpm-файлов из zmrepo: Из корневой директории репозитория Git ZoneMinder выполните следующее: Получите архив с подмодулем Rtsp-сервера: Получите архив подмодуля cakephp-enum-behavior: Получите архив подмодуля CRUD: Как избежать известных проблем установки Как создать собственный пакет ZoneMinder Как создать собственный пакет Source RPM Как установить ночные сборки разработки Как установить ZoneMinder Если вы хотите заняться разработкой или имеющиеся пакеты просто не подходят вам, то вы можете следовать этим шагам для создания собственного пакета ZoneMinder RPM. Если вы хотите использовать пакеты, более новые, чем те, которые доступны в RHEL или его клонах, вам следует рассмотреть возможность использования Fedora. Если вы ранее клонировали репозиторий ZoneMinder с помощью git и хотите обновить его до последней версии, выполните следующие команды: Если вы ранее установили ZoneMinder из исходников, то ваша система **НЕ** чистая. Вам необходимо вручную искать и удалять все связанные с ZoneMinder файлы (посмотрите в /usr/local). Выполнение команды "make uninstall" помогает, но она не сделает это за вас правильно. У вас **БУДУТ** проблемы, если вы проигнорируете этот шаг. Кроме `RPM Fusion <https://rpmfusion.org>`__, пользователи RHEL должны включить репозиторий EPEL: Кроме того, убедитесь, что RPM Fusion включен так, как описано в предыдущем разделе `Как установить ZoneMinder`_. В предыдущем разделе мы описали, как пересобрать существующий пакет ZoneMinder SRPM. Следующие инструкции показывают, как построить исходный репозиторий Git ZoneMinder в источник RPM, который можно использовать в предыдущем разделе для создания RPM. Установите ZoneMinder для веб-сервера Apache: Установка ZoneMinder для веб-сервера Nginx: Установка Убедитесь, что установлены git и rpmdevtools: Заметка Обратите внимание, что инструмент-симулятор требует следующих параметров: Теперь клонируйте репозиторий Git ZoneMinder из вашей домашней папки: Теперь начинается веселая часть. Для создания ZoneMinder выполните следующую команду: Теперь следуйте предыдущим инструкциям `Build from SRPM`_, которые описывают, как собрать этот source RPM в RPM. После установки ZoneMinder вам необходимо прочитать файл README для завершения установки. Пользователи Fedora могут найти README в /usr/share/doc/zoneminder-common. Пользователи RHEL могут найти README в /usr/share/doc/zoneminder-common-x.xx, где x.xx - это версия ZoneMinder. После активации дополнительных репозиториев установите ZoneMinder из командной строки. Выберите пакет, соответствующий желаемому веб-серверу. После завершения сборки вам будет представлен сообщение, указывающее, где можно найти новые rpm-файлы. Оно будет выглядеть примерно так: После того как вы внесли изменения, пришло время преобразовать вашу работу в новый tarball, но сначала нам нужно взглянуть на файл спецификации rpm: После того как ваша среда для сборки будет настроена, потребуется выполнить несколько шагов, чтобы запустить сборку снова в будущем. Можно рассматривать Fedora как бета-версию RHEL. Это, по сути, то, чем она является. Fedora в первую очередь ориентирована на разработку и тестирование новых, иногда передовых пакетов. Команда ZoneMinder использует эту дистрибутивную версию для определения совместимости ZoneMinder с последними и лучшими версиями пакетов, таких как MySQL, Apache, systemd и других. Если обнаруживается проблема, она будет устранена задолго до того, как попадет в RHEL. Пользователям RHEL 8 также следует включить репозиторий powertools: Пользователям RHEL 9 также следует включить репозиторий crb: Red Hat Замените "1.33.4" на версию, указанную в файле спецификации rpm. Замена любого основного пакета в этих дистрибутивах на более новый пакет от третьей стороны строго запрещена. Команда разработчиков ZoneMinder этого не сделает, и вам тоже не следует. Если у вас сложилось впечатление, что вам нужна более новая версия PHP, MySQL, GNOME, Apache и т.д., то вместо обновления этих пакетов лучше рассмотреть использование другого дистрибутива, такого как Fedora. Прокрутите вниз до поля "Версия", обратите внимание на значение, которое будет в формате x.xx.x. Затем создайте архив с помощью следующей команды: Настройте свою среду Команда ZoneMinder не будет оказывать поддержку системам, в которых были заменены любые основные пакеты на пакеты от третьей стороны. Обратная связь, которую мы получаем от тех, кто использует эти пакеты разработки, чрезвычайно полезна. Однако, пожалуйста, поймите, что эти пакеты предназначены только для тестирования последней ветки мастер. Они не предназначены для использования на любой производственной системе. Будут новые ошибки, и новые функции могут не быть документированы. Это передний край, и может быть повреждение. Пожалуйста, учтите это, когда используете этот репозиторий. Мы знаем из нашего форума пользователей, что это нельзя сказать достаточно. Следующий метод описывает, как собрать ZoneMinder в пакет RPM для Fedora, Red Hat, Rocky Linux и других совместимых клонов. Это именно так, как строятся пакеты в zmrepo. Следующие заметки основаны на реальных проблемах, которые возникли у тех, кто пришел до вас: Список доступных файлов конфигурации Mock доступен здесь: Метод, описанный ниже, был выбран потому, что: Эти дистрибутивы классифицируются как корпоративные операционные системы и имеют долгий срок службы в несколько лет. По замыслу, они не будут иметь последних и лучших версий любого пакета. Вместо этого акцент делается на стабильных пакетах. Эти инструкции применяются ко всем дистрибутивам Red Hat и их клонам, включая, но не ограничиваясь: Fedora, RHEL, Rocky Linux, Alma Linux и другие. Хотя инструкции по установке одинаковы для каждого дистрибутива, причина, по которой один человек может использовать один дистрибутив вместо другого, различна. Краткое описание следует, которое предназначено для того, чтобы помочь вам выбрать, какой дистрибутив лучше всего соответствует вашим потребностям. Этот шаг создаст исходный RPM-файл и сообщит вам, где он был сохранен. Например: Это создаст подпапку с названием ZoneMinder, которая будет содержать последнюю версию исходного кода разработки. Для продолжения вам потребуется пакет ZoneMinder SRPM. Если вы хотите пересобрать выпуск ZoneMinder, то перейдите на сайт `RPM Fusion <https://rpmfusion.org/>`. Если же вы хотите пересобрать последний rpm-пакет от нашей мастер-ветки, то перейдите на сайт `Zmrepo <http://zmrepo.zoneminder.com/>`. Диагностика становится проще, если мы все строим ZoneMinder одним и тем же способом. В отличие от дистрибутивов Debian/Ubuntu, нет необходимости и не рекомендуется устанавливать стеки LAMP заранее. Хотите построить ZoneMinder для Fedora, а не для RHEL, на том же хосте? Как только вы загрузите пакет Fedora SRPM, выполните следующее: С RPM Fusion включенным, выполните следующую команду: Вы выбираете файл конфигурации, исходя из желаемой дистрибуции (например, el7, f29, f30) и базового архитектуры (например, x86, x86_64, armhfp). Обратите внимание, что, указывая конфигурацию Mock в качестве параметра командной строки, вы должны опустить расширение имени файла ".cfg". Ваша среда разработки теперь настроена. Zmrepo предполагает, что у вас установлена базовая распределение **с использованием официальных средств установки для этой дистрибуции**. "Spins" третьих сторон могут не работать корректно. Пакеты разработки ZoneMinder, представляющие последнюю сборку из нашей ветки мастеров, доступны с `zmrepo <https://www.zoneminder.com>`. ZoneMinder предназначен для установки в среде, специально выделенной для ZoneMinder. Хотя ZoneMinder будет хорошо работать со многими приложениями, некоторые из них неизбежно не будут. Asterisk - один из таких примеров. Выпуски ZoneMinder размещаются на RPM Fusion. Новые пользователи должны перейти на сайт `RPM Fusion <https://rpmfusion.org>`__ и следовать инструкциям по включению этого репозитория. 