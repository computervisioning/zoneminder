��    e      D              l  �   m  T   �  �   D  2   �  �     �   �     �	  �  �	  5  �  ?   �  9   $     ^     d  '   }  :   �  @   �  '   !  A  I    �  �  �  *  ;  V   f  �   �  X   ]  �  �  9  =  �   w  �   	     �     �     �  p   �     V     k     x     �     �  ^   �  �     �   �      �  #   �  &   �  5     �   7  �   
  �  �  �   =   �   ;!  �   �!  �   �"  �  �#  P  :%    �(  �  �*  �   R,  y   �,  �   M-  �   .  Q   /     _/  �   p/     0  
   0     )0     :0  	   F0     P0     c0     v0     �0     �0     �0     �0  	   �0     �0  -   �0     +1     <1     J1     `1     q1     �1     �1     �1     �1     �1     �1     �1     �1     2     "2     02     C2     ^2     j2     s2     �2     �2     �2  �  �2    z4  �   �5  K  46  j   �7  �  �7  �  �9  1   };  K  �;  �  �>  �   �@  �   )A     �A  ;   �A  ?   �A  �   8B  �   �B  Z   ]C    �C  �  �H  �  �J  #  �M  �   �O  �   [P  �   LQ  �  �Q  K  �U  &  �W  ^  �X  2   ^Z  2   �Z  #   �Z  �   �Z  "   �[  !   �[  0   \     ?\     L\  �   d\  �  ]  y  �^  >   *`  5   i`  Z   �`  g   �`  �  ba  N  "c  V  qd  �  �g     �i  �  �j  �  �l  '  jn    �q    �w  .  �{  �   �~  �   �  ^  ��  �  �  �   ��  #   >�  ~  b�  %   �     �     �     0�     E�     Z�  %   x�  )   ��     Ȇ  E   چ  ?    �     `�     s�  *   ��  N   ��  !   ��  %   �  8   D�     }�     ��     ��     ׈  '   �  )   �     :�  /   X�     ��  !   ��  6   ŉ     ��  +   �  <   ?�     |�     ��     ��  -   ��  =   �     &�   Access to local monitor settings. Only applies to Local (USB webcam) monitor types and is greyed out for all other monitor types. Activates the Cycle View Sidebar. Essentially this changes viewing mode to `Cycle`_. Activates the PTZ Control Sidebar if the monitor is configured to use Controls. See :doc:`cameracontrol` for more information about Camera Control. Add or remove columns for the Monitor Events list. Adjusts the playback speed for the monitor views using a slider. Playback speed can be adjusted between :guilabel:`0.10x` and :guilabel:`50.00x`. To pause the display, select :guilabel:`0.00x`. Allows manual control of the individual width and height of Monitor live view. Various useful sizes based on pixel units are available. Note that this only applies for viewing and does not change the monitor setting. Calendar Input for Date/Time Changes the display size of the monitor views using a slider when :guilabel:`SCALE` is clicked. Scale values of :guilabel:`0.10x` to :guilabel:`1.00x` are available. This is useful to either reduce or increase the relative size of the monitor views to fit better on the Montage Review view. Use the :guilabel:`FIT` button to automatically fit the monitor views to the Montage Review display. Note that the :guilabel:`FIT` button is only available after :guilabel:`SCALE` has been activated. Control functions are available to set the timeline span (:guilabel:`24 HOUR`, :guilabel:`8 HOUR`, :guilabel:`1 HOUR`, and :guilabel:`ALL EVENTS`) as well as pan and zoom (:guilabel:`< PAN`, :guilabel:`PAN >`, :guilabel:`IN +`, :guilabel:`OUT -`). Switch to monitor live-streaming view using :guilabel:`LIVE`. Currently displayed monitor live stream is highlighted in blue. Customized montage view settings can be edited and saved. Cycle Delete individual event. Display a list of frames for the event. Display event image stream by clicking on thumbnail image. Display event image stream by selecting either event Id or Name. Display frame with maximum alarm score. Displays basic monitor status: alarm state, viewing FPS, capturing FPS and analysis FPS. The status has three states: ``Idle``, ``Alarm`` or ``Alert`` depending on the function of the Monitor and its defined zones. ``Idle`` is the default state when no activity is detected in the defined zones, ``Alarm`` means there is an alarm in progress and ``Alert`` means that an alarm has recently ended. If another alarm is generated during this time it will be appended to the event. The Monitor Status is colour coded in black for ``Idle``, red for ``Alarm`` and amber for ``Alert``. Displays the currently selected event based on the timeline pointer. If there are no events within the timeline pointer, a **No Event** overlay is shown in the monitor view. In this case, the monitor view may display the final frame of previously played event. Displays the events available in the currently selected span. Events for each monitor are indicated by a distinct colour band. The timeline pointer indicated by yellow box indicates the currently displayed events in the monitor views. If there are no events within the timeline pointer, a **No Event** overlay is shown in the monitor view. In this case, the monitor view may display the final frame of previously viewed event. Displays the timeline span in terms of date and time. Default setting for the timeline is a one-hour span that ends with the current time. The start and end times for the span can be manually selected by clicking on the entry form. A calendar window will pop up to define the desired date and time. Download a file containing the monitor event list. Various file formats are available. Downloads the events shown in the timeline. A filename will be automatically generated. Select between ``tar`` and ``zip`` archive formats for the file export. Enable or disable overlay of currently defined zone regions on each monitor live stream. Enter Fullscreen monitor display mode. Note that the monitor live stream will not utilize the entire screen as the Pause, Play, Zoom and Exit Fullscreen icons will always be placed at bottom of screen. The monitor event list may also be placed at bottom of screen if Scale or Width/Height is not set to :guilabel:`Auto`. Press :kbd:`ESC` or the Exit Fullscreen icon to exit Fullscreen mode. If recorded events are available, they will be presented below the monitor images for both Monitor View and Cycle modes. This section will only introduce some of the features of the Monitor Events list. For a more in-depth description of Monitor Events, please see the :doc:`viewevents` section of the User Guide. Manually disable alarms for the monitor. Note that this is only for viewing and does not change the monitor settings related to alarm triggering. Manually triggers an alarm for the monitor. Useful for setup and debug of monitors and events. Click once to trigger the alarm. Second click ends the alarm. Methods for Viewing Monitors Monitor Cycle View Monitor Events Monitor Id: Click on any available monitor Id such as :guilabel:`3` in the example above to display a live feed. Monitor Montage View Monitor View Monitor View Events List Montage Montage Review Name: Click on any available monitor Name such as :guilabel:`Driveway` to display a live feed. Pause live view of monitor by clicking pause icon. Note that this only for viewing and does not change the monitor setting. Play will restart live view streaming of monitor after Pause has been activated. Pause the Cycle at the currently displayed monitor. Play icon re-starts the rotation of monitor views. Back and forward icons will immediately move to the previous or next monitor live stream. Refresh the Monitor Events list. Refresh the Monitor View interface. Return to previous web interface page. Select layout preset arrangement of monitor displays. Selection to display only :guilabel:`Archived` or :guilabel:`Unarchived` events using a pull-down menu. Default setting is :guilabel:`All` which will display both Archived and Unarchived events in the timeline. Selects length of display time for each monitor before changing to next monitor. Display time can be set between :guilabel:`5 seconds` and :guilabel:`5 minutes`. Sets the rate at which monitor live view image is updated. This is useful for reducing the update frequency in order to reduce CPU resources. Rates from :guilabel:`1 fps` to :guilabel:`20 fps` are available. The default :guilabel:`Unlimited` sets the display rate to the monitor's defined frame rate. Note that this only applies for viewing. This does not change the frame rate of the monitor itself. Sets the relative size of Monitor live view in the web interface. Scale factors from :guilabel:`1/8x` to :guilabel:`4x` are available. Note that the :guilabel:`Auto` scale will allow the Monitor live view to fill the screen when Fullscreen is activated. Several methods for viewing live streams from monitors are available in ZoneMinder. The common entry points for viewing monitors are highlighted in the Console as shown below. Shows the selected monitor live view. The view can be adjusted using the mouse as follows. Use left mouse button :kbd:`LMB` to zoom in, use :kbd:`CTRL-LMB` to zoom out and use :kbd:`SHIFT-LMB` to pan. The Console Filter is available in the Monitor view at the top of the display. However, the only relevant filter item while in Monitor View is Monitor which can be used to change the live view to another available monitor. The Cycle view is essentially the same as the `Monitor View`_ except that it sequences through a list of monitors. The example above has monitors ``3``, ``6`` and ``7`` selected for a Cycle view. The list of monitors to include in a Cycle view are selectable as well as the display time for each monitor. Please note that the functions and control icons remain the same as `Monitor View`_ except for the ones listed below. The Monitor View is useful for continuous viewing of a single monitor live stream. The currently displayed monitor can be changed by selecting a new one in the Monitor input field of the Console Filter. By default, if the Monitor View window is minimized or other windows are in front, the Monitor View will move to the foreground if the monitor enters Alarm state. This behaviour can be disabled with the **WEB_POPUP_ON_ALARM** option. Additionally, a sound can be played when the monitor enters Alarm state. This can be enabled with the **WEB_SOUND_ON_ALARM** and **WEB_ALARM_SOUND** options. A list of events will be shown below the monitor live stream if the monitor has recording enabled. Please refer to the :doc:`viewevents` section for information about viewing events as this part of the Monitor View will not be discussed in this section. The Montage Review view builds upon the `Montage`_ view by adding access to saved events. The example above has monitors ``3``, ``6`` and ``7`` selected for a Montage Review view. The Montage Review provides flexible methods for reviewing saved events. The primary method to set the timeline for reviewing events is to use the timeline icons to set the scope of the timeline. The secondary method is to use the calendar pop-up function from the Start Date/Time entry box to set specific dates and times for the scope of the timeline. The Montage view is similar to the `Monitor View`_ except that it displays several monitors simultaneously. The Console Filter is fully available and can be used to filter and select the monitors to be included in the Montage view. The example above has monitors ``3``, ``6`` and ``7`` selected for a Montage view. Please note that the functions and control icons remain the same as `Monitor View`_ except for the ones listed below. The `Cycle`_ monitor view displays a rotating view for each selected monitor. Click on :guilabel:`Cycle` to open the Cycle view. The `Monitor View`_ displays a live feed for a single selected monitor. There are several ways to enter the Monitor View. The `Montage Review`_ monitor view is similar to Montage view but provides access to viewing the available events captured by each monitor. Click on :guilabel:`Montage Review` to open the Montage Review view. The `Montage`_ monitor view displays several monitors simultaneously. The Montage view is highly configurable and is useful for applications where a continuous monitor view is needed. Click on :guilabel:`Montage` to open the Montage view. Thumbnail: Click on any available monitor thumbnail image to display a live feed. Viewing Monitors Zoom Out the monitor live view. This is only useful if the view has previously been zoomed in. Zoom Out will stop when the full image size has been reached. [A] Display Time [A] Layout [A] Monitor View [A] Refresh [A] Speed [B] Archive Status [B] Console Filter [B] Edit Layout [B] Event Columns [B] Pause/Play/Back/Forward [C] Download Event Information [C] Monitor [C] Scale [C] Show/Hide Zones [C] Start Date/Time >= and Start Date/Time <= [D] Delete Event [D] Scale/Fit [D] Timeline Controls [D] Width/Height [E] Display Event [E] Download Video [E] Rate [F] Display Frames [F] PTZ Controls Sidebar [F] Timeline [G] Cycle View Sidebar [G] Max. Score [G] Monitor Display [H] Force Alarm [H] Thumbnail [I] Disable Alarms [J] Local Monitor Settings [K] Refresh [L] Back [M] Monitor Status [N] Pause/Play [O] Zoom Out [P] Fullscreen Project-Id-Version: ZoneMinder 
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
 Доступ к настройкам локального монитора. Применяется только для типов локальных мониторов (веб-камер USB) и затемняется для всех других типов мониторов. Активирует боковую панель просмотра цикла. По сути, это изменяет режим просмотра на `Cycle`_. Активирует боковую панель управления PTZ, если монитор настроен на использование элементов управления. См. :doc:`cameracontrol` для получения дополнительной информации о управлении камерой. Добавить или удалить столбцы для списка событий Монитора. Настраивает скорость воспроизведения для отображения на мониторе с помощью ползунка. Скорость воспроизведения может быть установлена в диапазоне от :guilabel:`0.10x` до :guilabel:`50.00x`. Чтобы приостановить отображение, выберите :guilabel:`0.00x`. Позволяет вручную управлять индивидуальной шириной и высотой отображения монитора в режиме реального времени. Доступны различные полезные размеры на основе пиксельных единиц. Обратите внимание, что это применимо только для просмотра и не изменяет настройки монитора. Календарь для даты/времени Изменяет размер отображения мониторных видов с помощью ползунка при нажатии на :guilabel:`SCALE`. Доступны значения масштабирования :guilabel:`0.10x` до :guilabel:`1.00x`. Это полезно для уменьшения или увеличения относительного размера мониторных видов, чтобы они лучше подходили к просмотру Монтаж Обзора. Используйте кнопку :guilabel:`FIT`, чтобы автоматически подогнать мониторные виды под дисплей Монтаж Обзора. Примечание: кнопка :guilabel:`FIT` доступна только после активации :guilabel:`SCALE`. Функции управления доступны для установки временного диапазона (24 часа, 8 часов, 1 час и все события) а также панорамирования и масштабирования (< ПАН>, ПАН >, ВПЕРЕД +, НАЗАД -). Переключитесь на просмотр прямого эфира с помощью LIVE. На данный момент отображаемый монитор прямой трансляции выделен синим цветом. Настройка пользовательского вида монтажа может быть изменена и сохранена. Цикл Удалить индивидуальное событие. Вывести список кадров для события. Вывод потока изображений события при нажатии на миниатюру изображения. Вывод потока изображений события путем выбора либо идентификатора события, либо имени. Вывести раму с максимальным показателем тревоги. Отображает базовые параметры монитора: состояние тревоги, количество кадров в секунду при просмотре, количество кадров в секунду при захвате и анализ кадров в секунду. Состояние имеет три состояния: «Ожидание», «Тревога» или «Предупреждение» в зависимости от функции монитора и его определенных зон. «Ожидание» - это состояние по умолчанию, когда никакая активность не обнаружена в определенных зонах, «Тревога» означает, что идет тревога, а «Предупреждение» означает, что тревога только что закончилась. Если во время этого события будет сгенерирована еще одна тревога, она будет добавлена к событию. Состояние монитора цветное: черное для «Ожидания», красное для «Тревоги» и оранжевое для «Предупреждения». Отображает текущее событие, основанное на указателе временной шкалы. Если в пределах указателя временной шкалы нет событий, отображается **Нет события** в мониторе просмотра. В этом случае монитор просмотра может отображать последний кадр ранее проигранного события. Выводит доступные события в текущем выбранном интервале. События для каждого монитора обозначены цветной полосой. Указатель времени, отмеченный желтой рамкой, указывает на текущие события, отображаемые в мониторе. Если в пределах указателя времени нет событий, поверх монитора отображается надпись "Нет события". В этом случае монитор может отображать последний кадр ранее просмотренного события. Выводит временной диапазон в терминах даты и времени. По умолчанию для временного диапазона установлен один-часовой интервал, заканчивающийся текущим временем. Начало и конец интервала можно выбрать вручную, щелкнув по форме ввода. Появится окно календаря для определения желаемой даты и времени. Скачайте файл, содержащий список событий монитора. Доступны различные форматы файлов. Загружает события, показанные в временной шкале. Будет автоматически сгенерировано имя файла. Выберите формат архива ``tar`` или ``zip``. Включить или отключить отображение текущих определённых зон на каждом мониторе в прямом эфире. Перейти в полноэкранный режим монитора. Обратите внимание, что прямая трансляция монитора не будет использовать всю площадь экрана, так как значки Пауза, Воспроизведение, Увеличение и Выход из полноэкранного режима всегда будут располагаться в нижней части экрана. Список событий монитора также может быть расположен в нижней части экрана, если Масштаб или Ширина/Высота не установлены в :guilabel:`Авто`. Нажмите :kbd:`ESC` или значок Выход из полноэкранного режима, чтобы выйти из полноэкранного режима. Если доступны записанные события, они будут представлены ниже изображений монитора для обоих режимов Мониторного вида и Циклического режима. Этот раздел только познакомит вас с некоторыми функциями списка событий монитора. Для более подробного описания событий монитора см. раздел :doc:`viewevents` Руководства пользователя. Ручное отключение будильников для монитора. Обратите внимание, что это только для просмотра и не изменяет настройки монитора, связанные с триггером будильника. Ручное включение сигнала тревоги для монитора. Полезно при настройке и отладке мониторов и событий. Нажмите один раз, чтобы включить сигнал тревоги. Второй щелчок заканчивает сигнал тревоги. Методы просмотра мониторов Мониторинг цикла просмотра Мониторинг событий Монитор Id: Щелкните по любому доступному монитору Id, например: `guiLabel: `3` `в примере выше, чтобы отобразить прямую трансляцию. Монитор Монтаж Вид Монитор просмотра Просмотр событий монитора Сборка Обзор сборки Имя: Нажмите на любой доступный монитор, например: `Driveway`, чтобы отобразить прямую трансляцию. Пауза прямого просмотра монитора путем нажатия кнопки паузы. Обратите внимание, что это только для просмотра и не изменяет настройки монитора. Воспроизведение возобновит прямой просмотр потока монитора после активации паузы. Пауза в цикле на текущем отображаемом мониторе. Иконка воспроизведения возобновляет вращение мониторов. Иконки назад и вперед немедленно перемещаются к предыдущему или следующему живому потоку монитора. Обновите список событий монитора. Обновите интерфейс монитора. Вернуться на предыдущую веб-страницу интерфейса. Выберите предустановку расположения дисплеев монитора. Выбор для отображения только :guilabel:`Архивированные` или :guilabel:`Неархивированные` события с помощью выпадающего меню. По умолчанию установлено :guilabel:`Все`, что будет отображать как архивированные, так и неархивированные события в временной шкале. Выбирает длительность отображения времени для каждого монитора перед переходом к следующему монитору. Время отображения может быть установлено между :guilabel:`5 секунд` и :guilabel:`5 минут`. Устанавливает скорость обновления изображения в режиме живого просмотра монитора. Это полезно для снижения частоты обновления, чтобы снизить использование ресурсов ЦП. Доступны скорости от :guilabel:`1 кадр/с` до :guilabel:`20 кадров/с`. Значение по умолчанию :guilabel:`Неограниченное` устанавливает скорость отображения на мониторе в соответствии с его заданной частотой кадров. Обратите внимание, что это применимо только для просмотра. Это не изменяет частоту кадров монитора. Устанавливает относительный размер живого просмотра монитора в веб-интерфейсе. Доступны масштабирующие коэффициенты от :guilabel:`1/8x` до :guilabel:`4x`. Обратите внимание, что :guilabel:`Автоматический` масштаб позволит монитору заполнить экран при активации полноэкранного режима. Доступно несколько методов просмотра прямых трансляций с мониторов в ZoneMinder. Общие точки входа для просмотра мониторов отмечены в консоли, как показано ниже. Отображает живой вид выбранного монитора. Вид можно настроить с помощью мыши следующим образом. Используйте левую кнопку мыши :kbd:`LMB` для увеличения, используйте :kbd:`CTRL-LMB` для уменьшения масштаба и используйте :kbd:`SHIFT-LMB` для панорамирования. Фильтр консоли доступен в разделе "Монитор" в верхней части дисплея. Однако единственным релевантным элементом фильтра при просмотре "Монитор" является "Монитор", который можно использовать для изменения текущего живого просмотра на другой доступный монитор. Вид цикла практически такой же, как и у `Вида монитора`_, за исключением того, что он проходит через список мониторов. Пример выше имеет выбранными мониторы «3», «6» и «7» для вида цикла. Список мониторов, которые следует включить в вид цикла, а также время отображения каждого монитора, также можно выбрать. Пожалуйста, обратите внимание, что функции и значки управления остаются такими же, как и в «Виде монитора»_, за исключением указанных ниже. Монитор виджета полезен для непрерывного просмотра потока одного монитора в реальном времени. Текущий отображаемый монитор можно изменить, выбрав новый в поле ввода монитора консольного фильтра. По умолчанию, если окно виджета Монитор свернуто или другие окна находятся перед ним, виджет Монитор переместится на передний план, когда монитор войдет в состояние тревоги. Это поведение можно отключить с помощью опции **WEB_POPUP_ON_ALARM**. Кроме того, можно воспроизвести звук, когда монитор входит в состояние тревоги. Это можно сделать с помощью опций **WEB_SOUND_ON_ALARM** и **WEB_ALARM_SOUND**. Будет показана список событий под потоком живого мониторинга, если монитор имеет функцию записи включена. Пожалуйста, обратитесь к разделу :doc:`viewevents` для получения информации о просмотре событий, поскольку эта часть виджета Монитор не будет обсуждаться в этом разделе. Обзорная страница просмотра строится на основе `обзора`_ страницы, добавляя доступ к сохраненным событиям. Пример выше имеет мониторы "3", "6" и "7" выбранными для обзора просмотра. Обзорный просмотр предоставляет гибкие методы для обзора сохраненных событий. Основной метод для установки временной шкалы для обзора событий - это использование значков временной шкалы для определения области временной шкалы. Вторичный метод - использование всплывающего календаря из поля ввода "Начало даты/время" для установки конкретных дат и времени для области временной шкалы. Вид монтажа похож на `Вид монитора`_, за исключением того, что он отображает несколько мониторов одновременно. Фильтр консоли полностью доступен и может быть использован для фильтрации и выбора мониторов, которые будут включены в вид монтажа. Пример выше имеет выбранными мониторы "3", "6" и "7" для вида монтажа. Пожалуйста, обратите внимание, что функции и значки управления остаются такими же, как и в `Виде монитора`_, за исключением указанных ниже. Монитор вида "Цикл" отображает вращающийся вид для каждого выбранного монитора. Щелкните по :guilabel:`Cycle`, чтобы открыть вид "Цикл". "Монитор просмотра" _ отображает живую трансляцию для одного выбранного монитора. Есть несколько способов попасть в Монитор просмотра. Монитор вид "Обзор Монтажа" похож на вид Монтажа, но предоставляет доступ к просмотру событий, захваченных каждым монитором. Щелкните по :guilabel:`Обзор Монтажа`, чтобы открыть вид "Обзор Монтажа". Монтажный монитор вид отображает несколько мониторов одновременно. Монтажный вид очень настраиваемый и полезен для приложений, где требуется непрерывный монитор вид. Нажмите на :guilabel:`Montage`, чтобы открыть вид Монтаж. Миниатюра: Щелкните по любой доступной миниатюре монитора, чтобы отобразить живой поток. Просмотр мониторов Уменьшить масштаб отображения монитора в реальном времени. Это полезно только в том случае, если ранее изображение было увеличено. Уменьшение масштаба прекратится, когда будет достигнуто полное изображение. [A] Время отображения [A] Макет [A] Монитор вид [A] Обновить [A] Скорость [B] Статус архива [B] Консольный фильтр [B] Редактировать Макет [B] Event Columns [B] Пауза/Воспроизведение/Назад/Вперед [C] Загрузить информацию об событии [C] Монитор [C] Шкала [C] Показать/скрыть зоны [C] Дата начала/время >= и Дата начала/время <= [D] Удалить Событие [D] Масштаб/Подогнать [D] Управление временной шкалой [D] Ширина/Высота [E] Показ События [E] Скачать видео [E] Оценка [F] Отображение кадров [F] Панель управления PTZ [F] Шкала времени [G] Цикл Вид Боковой Панели [G] Макс. Оценка [G] Монитор Дисплей [H] Сигнализация о принуждении [H] Заголовок [I] Отключить будильники [J] Настройки локального монитора [K] Обновить [L] Back [M] Монитор Статус [N] Пауза/воспроизведение [O] Выход из полноэкранного режима [P] Полный экран 