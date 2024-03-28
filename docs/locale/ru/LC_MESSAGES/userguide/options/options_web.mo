��          �               �  �   �  M   .     |  w   �      S    -  n  �   �    �  �  �  �  *
  _  �  �   1       �  4  �  �  7    �  �  �   e  r   �  �   m  V  f    �  �  �  �   �   �   �!     8"  �   R"  4  ,#  N  a%    �'     �)  F  �+  	  .  0  !1  &  R4  �  y:    X<  n  p>  U  �A  n  5E  �  �G  9  �J  �   �K  �  zL  �  7N    �T   HOME_CONTENT - The actual text that is shown on the top left corner. You can choose to leave it empty and put in a logo in a custom CSS as well. HOME_URL - the link to navigate to, when a user clicks on the top left title. Options - Web This screen lets you customize several aspects of the web interface of ZoneMinder. A partial screenshot is shown below: WEB_ALARM_SOUND - You can specify a sound file to play if an alarm occurs whilst you are watching a live monitor stream. So long as your browser understands the format it does not need to be any particular type. This file should be placed in the sounds directory defined earlier. WEB_COMPACT_MONTAGE - The montage view shows the output of all of your active monitors in one window. This include a small menu and status information for each one. This can increase the web traffic and make the window larger than may be desired. Setting this option on removes all this extraneous information and just displays the images. WEB_CONSOLE_BANNER - Allows the administrator to place an arbitrary text message near the top of the web console. This is useful for the developers to display a message which indicates the running instance of ZoneMinder is a development snapshot, but it can also be used for any other purpose as well. WEB_EVENTS_PER_PAGE - In the event list view you can either list all events or just a page at a time. This option controls how many events are listed per page in paged mode and how often to repeat the column headers in non-paged mode. WEB_EVENT_DISK_SPACE - Adds another column to the listing of events showing the disk space used by the event. This will impart a small overhead as it will call du on the event directory. In practice this overhead is fairly small but may be noticeable on IO-constrained systems. WEB_EVENT_SORT_FIELD - Events in lists can be initially ordered in any way you want. This option controls what field is used to sort them. You can modify this ordering from filters or by clicking on headings in the lists themselves. Bear in mind however that the 'Prev' and 'Next' links, when scrolling through events, relate to the ordering in the lists and so not always to time based ordering. WEB_EVENT_SORT_ORDER - Events in lists can be initially ordered in any way you want. This option controls what order (ascending or descending) is used to sort them. You can modify this ordering from filters or by clicking on headings in the lists themselves. Bear in mind however that the 'Prev' and 'Next' links, when scrolling through events, relate to the ordering in the lists and so not always to time based ordering. WEB_FILTER_SOURCE - This option only affects monitors with a source type of Ffmpeg, Libvlc, or WebSite. This setting controls what information is displayed in the Source column on the console. Selecting 'None' will not filter anything. The entire source string will be displayed, which may contain sensitive information. Selecting 'NoCredentials' will strip out usernames and passwords from the string. If there are any port numbers in the string and they are common (80, 554, etc) then those will be removed as well. Selecting 'Hostname' will filter out all information except for the hostname or ip address. When in doubt, stay with the default 'Hostname'. This feature uses the php function 'url_parts' to identify the various pieces of the url. If the url in question is unusual or not standard in some way, then filtering may not produce the desired results. WEB_ID_ON_CONSOLE - Some find it useful to have the monitor id always visible on the console. This option will add a column listing it. Note that if it is disabled, you can always hover over the monitor to see the id as well. WEB_LIST_THUMBS - Ordinarily the event lists just display text details of the events to save space and time. By switching this option on you can also display small thumbnails to help you identify events of interest. The size of these thumbnails is controlled by the following two options. WEB_LIST_THUMB_HEIGHT - This options controls the height of the thumbnail images that appear in the event lists. It should be fairly small to fit in with the rest of the table. If you prefer you can specify a width instead in the previous option but you should only use one of the width or height and the other option should be set to zero. If both width and height are specified then width will be used and height ignored. WEB_LIST_THUMB_WIDTH - This options controls the width of the thumbnail images that appear in the event lists. It should be fairly small to fit in with the rest of the table. If you prefer you can specify a height instead in the next option but you should only use one of the width or height and the other option should be set to zero. If both width and height are specified then width will be used and height ignored. WEB_POPUP_ON_ALARM - When viewing a live monitor stream you can specify whether you want the window to pop to the front if an alarm occurs when the window is minimised or behind another window. This is most useful if your monitors are over doors for example when they can pop up if someone comes to the doorway. WEB_RESIZE_CONSOLE - Traditionally the main ZoneMinder web console window has resized itself to shrink to a size small enough to list only the monitors that are actually present. This is intended to make the window more unobtrusize but may not be to everyones tastes, especially if opened in a tab in browsers which support this kind if layout. Switch this option off to have the console window size left to the users preference. WEB_SOUND_ON_ALARM - When viewing a live monitor stream you can specify whether you want the window to play a sound to alert you if an alarm occurs. WEB_TITLE - The actual text that is shown on the login screen. It is possible that it also appears in other areas. WEB_TITLE_PREFIX - If you have more than one installation of ZoneMinder it can be helpful to display different titles for each one. Changing this option allows you to customise the window titles to include further information to aid identification. WEB_USE_OBJECT_TAGS - There are two methods of including media content in web pages. The most common way is use the EMBED tag which is able to give some indication of the type of content. However this is not a standard part of HTML. The official method is to use OBJECT tags which are able to give more information allowing the correct media viewers etc to be loaded. However these are less widely supported and content may be specifically tailored to a particular platform or player. This option controls whether media content is enclosed in EMBED tags only or whether, where appropriate, it is additionally wrapped in OBJECT tags. Currently OBJECT tags are only used in a limited number of circumstances but they may become more widespread in the future. It is suggested that you leave this option on unless you encounter problems playing some content. WEB_XFRAME_WARN - When creating a Web Site monitor, if the target web site has X-Frame-Options set to sameorigin in the header, the site will not display in ZoneMinder. This is a design feature in most modern browsers. When this condition occurs, ZoneMinder will write a warning to the log file. To get around this, one can install a browser plugin or extension to ignore X-Frame headers, and then the page will display properly. Once the plugin or extension has ben installed, the end user may choose to turn this warning off Project-Id-Version: ZoneMinder 
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
 HOME_CONTENT - Текст, который отображается в верхнем левом углу. Вы можете оставить его пустым и добавить логотип с помощью пользовательского CSS. HOME_URL - ссылка для перехода, когда пользователь нажимает на заголовок в верхнем левом углу. Варианты - Веб Этот экран позволяет настроить несколько аспектов веб-интерфейса ZoneMinder. Ниже приведено частичное изображение экрана: WEB_ALARM_SOUND - Вы можете указать файл звуковой дорожки для воспроизведения при срабатывании будильника во время просмотра потокового видео в реальном времени. Пока ваш браузер понимает формат, он не должен быть какого-либо конкретного типа. Этот файл должен быть помещен в директорию звуков, определенную ранее. WEB_COMPACT_MONTAGE - Вид монтажа отображает вывод всех активных мониторов в одном окне. Это включает небольшое меню и информацию о статусе каждого из них. Это может увеличить веб-трафик и сделать окно больше, чем может быть желательно. Установка этого параметра отключает всю эту лишнюю информацию и просто отображает изображения. WEB_CONSOLE_BANNER - Позволяет администратору разместить произвольный текстовое сообщение в верхней части веб-консоли. Это полезно для разработчиков для отображения сообщения, указывающего, что текущий экземпляр ZoneMinder является тестовым образцом, но его также можно использовать для любых других целей. WEB_EVENTS_PER_PAGE - В режиме просмотра списка событий вы можете либо отобразить все события, либо только страницу за раз. Этот параметр контролирует количество событий, отображаемых на странице в режиме прокрутки, и как часто следует повторять заголовки столбцов в режиме без прокрутки. WEB_EVENT_DISK_SPACE - Добавляет еще одну колонку в список событий, показывающую используемое дисковое пространство событием. Это добавит небольшую нагрузку, так как будет вызывать команду du на директорию события. На практике эта нагрузка довольно мала, но может быть заметна на системах с ограниченной нагрузкой ввода-вывода. WEB_EVENT_SORT_FIELD - События в списках могут быть изначально отсортированы в любом порядке, в каком вы хотите. Этот параметр контролирует, какое поле используется для их сортировки. Вы можете изменить эту сортировку с помощью фильтров или щелкнув по заголовкам в самих списках. Однако следует помнить, что ссылки "Предыдущий" и "Следующий", при прокрутке событий, относятся к порядку в списках и поэтому не всегда к порядку по времени. WEB_EVENT_SORT_ORDER - События в списках могут быть изначально отсортированы в любом порядке, в каком вы хотите. Этот параметр контролирует, в каком порядке (по возрастанию или по убыванию) они сортируются. Вы можете изменить эту сортировку через фильтры или щелкнув по заголовкам в самих списках. Однако следует иметь в виду, что ссылки "Предыдущий" и "Следующий", при прокрутке событий, относятся к порядку в списках и поэтому не всегда к порядку по времени. WEB_FILTER_SOURCE - Этот параметр влияет только на мониторы с типом источника Ffmpeg, Libvlc или Веб-сайт. Этот параметр контролирует, какая информация отображается в столбце "Источник" на консоли. Выбрав "Ничего", вы ничего не отфильтруете. Будет отображаться весь строковый источник, который может содержать конфиденциальную информацию. Выбрав "Без учетных данных", вы удалите имена пользователей и пароли из строки. Если в строке есть любые портовые номера и они являются общими (80, 554, и т. д.), то они также будут удалены. Выбрав "Имя хоста", вы отфильтруете всю информацию, кроме имени хоста или IP-адреса. Когда возникают сомнения, лучше всего оставить по умолчанию "Имя хоста". Эта функция использует функцию PHP "url_parts" для идентификации различных частей URL. Если URL, о котором идет речь, необычен или нестандартен каким-либо образом, фильтрация может не дать желаемых результатов. WEB_ID_ON_CONSOLE - Некоторые считают полезным всегда иметь идентификатор монитора видимым в консоли. Эта опция добавит столбец, содержащий его. Обратите внимание, что если она отключена, вы всегда можете навести курсор мыши на монитор, чтобы увидеть его идентификатор. WEB_LIST_THUMBS - Обычно списки событий просто отображают текстовые детали событий для экономии места и времени. Переключив эту опцию, вы также можете отображать небольшие превью, которые помогут вам идентифицировать интересные события. Размер этих превью контролируется следующими двумя опциями. WEB_LIST_THUMB_HEIGHT - Этот параметр контролирует высоту миниатюр изображений, которые появляются в списках событий. Он должен быть достаточно маленьким, чтобы вписаться в остальную часть таблицы. Если вы предпочитаете, вы можете указать ширину вместо этого в предыдущем параметре, но вы должны использовать только один из ширины или высоты, а другой параметр должен быть установлен в ноль. Если оба значения ширины и высоты указаны, то ширина будет использоваться, а высота игнорируется. WEB_LIST_THUMB_WIDTH - Этот параметр контролирует ширину миниатюр изображений, которые появляются в списках событий. Он должен быть достаточно маленьким, чтобы вписаться в остальную часть таблицы. Если вы предпочитаете, вы можете указать высоту в следующем параметре, но вы должны использовать только один из ширины или высоты, а другой параметр должен быть установлен в ноль. Если оба параметра ширины и высоты указаны, то ширина будет использоваться, а высота игнорируется. WEB_POPUP_ON_ALARM - Когда вы просматриваете поток живого монитора, вы можете указать, хотите ли вы, чтобы окно всплывало на передний план, если срабатывает будильник, когда окно свернуто или находится за другим окном. Это наиболее полезно, если ваши мониторы расположены над дверями, например, когда они могут всплыть, если кто-то подходит к проходу. WEB_RESIZE_CONSOLE - Обычно главное окно консоли ZoneMinder уменьшается до размера, достаточного для отображения только мониторов, которые фактически присутствуют. Это предназначено для того, чтобы сделать окно менее навязчивым, но может не понравиться всем, особенно если оно открыто в вкладке браузера, поддерживающего этот тип макета. Отключите эту опцию, чтобы оставить размер окна окна на усмотрение пользователя. WEB_SOUND_ON_ALARM - При просмотре потока живого мониторинга вы можете указать, хотите ли вы, чтобы окно воспроизводило звук, чтобы предупредить вас, если сработает сигнал тревоги. WEB_TITLE - Текст, который отображается на экране входа. Возможно, он также появляется в других местах. WEB_TITLE_PREFIX - Если у вас более одной установки ZoneMinder, полезно отображать разные заголовки для каждой из них. Изменение этого параметра позволяет настроить заголовки окон для включения дополнительной информации, которая поможет в идентификации. WEB_USE_OBJECT_TAGS - Существует два способа включения медиаконтента на веб-страницах. Наиболее распространенным способом является использование тега EMBED, который позволяет дать некоторое представление о типе контента. Однако это не является стандартной частью HTML. Официальный метод - использование тегов OBJECT, которые позволяют предоставить больше информации, позволяя правильно загружать медиаплееры и т. д. Однако эти теги менее широко поддерживаются, и контент может быть специально адаптирован для конкретной платформы или плеера. Этот параметр контролирует, заключается ли медиаконтент только в теги EMBED или, где это уместно, дополнительно обертывается тегами OBJECT. В настоящее время теги OBJECT используются только в ограниченных обстоятельствах, но они могут стать более распространенными в будущем. Предлагается оставить этот параметр включенным, если вы не сталкиваетесь с проблемами при воспроизведении некоторого контента. WEB_XFRAME_WARN - При создании веб-монитора сайта, если целевой веб-сайт имеет опцию X-Frame-Options, установленную на sameorigin в заголовке, сайт не будет отображаться в ZoneMinder. Это является дизайнерской особенностью большинства современных браузеров. Когда это условие возникает, ZoneMinder записывает предупреждение в файл журнала. Чтобы обойти это, можно установить плагин или расширение для браузера, которое игнорирует заголовки X-Frame, и тогда страница будет отображаться правильно. После установки плагина или расширения пользователь может выбрать, отключить это предупреждение. 