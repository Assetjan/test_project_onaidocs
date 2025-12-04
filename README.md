# test_task_onaidocs

Тестовое задание на Flutter по мотивам Onaidocs.  
Приложение собирает в себе авторизацию, WebView-главную и модуль задач с локальным хранением, поиском и редактированием.

---

## Технологии

- Flutter 3 / Dart 3
- `flutter_bloc` + `freezed` (состояния/ивенты, immutable-модели)
- `go_router` для навигации
- `get_it` для DI
- `dio` + кастомный interceptor
- `hive` + `hive_flutter` для локального хранения
- `flutter_secure_storage` для токенов
- `flutter_gen_runner` для генерации доступа к ресурсам
- Шрифт Inter, своя цветовая схема и текстовые стили

---

## Архитектура

Проект в стиле feature-first:

- `lib/src/app` – точка входа приложения, flavors, `MainApp`
- `lib/src/core`
  - `theme/` – цвета, текстовые стили, темы
  - `router/` – роутинг (пути + конфиг `GoRouter`)
  - `widgets/` – общие переиспользуемые виджеты (`AppButton`, `AppTextField` и т.д.)
  - `service/injectable/` – DI через `get_it`
  - `service/storage/` – абстракция хранилища + реализация на `Hive` и `flutter_secure_storage`
  - `api/client/dio/` – настройка Dio и interceptor
- `lib/src/features/auth` – авторизация (страница + bloc + repo)
- `lib/src/features/tasks` – модуль задач (лист, детали, создание/редактирование, bloc, repo, datasources)
- `lib/gen/` – сгенерированный код `flutter_gen` (assets)

Вся бизнес-логика вынесена в BLoC/репозитории, страницы максимально «тонкие».

---

## Функциональность по ТЗ

### 1. Авторизация

Экран авторизации полностью соответствует макету:

- Поля:
  - Логин (обязательное поле)
  - Пароль (обязательное поле, минимум 4 символа)
- При валидных данных:
  - данные пробрасываются в `AuthBloc` (ивенты `emailChanged`, `passwordChanged`, `submitted`)
  - при успешной авторизации состояние `isAuthenticated = true`
  - происходит переход на главный экран: `context.go(RoutePaths.home)`

Валидация сделана на уровне формы, визуально оформлена под макет (Inter, цвета, скругления, иконка очистки поля, красная звёздочка у обязательных полей).

### 2. Главная страница (WebView)

Главный экран – это WebView:

- Загружается сайт Onaidocs (`https://onaidocs.kz/`)
- Есть индикатор загрузки:
  - пока страница грузится – показывается лоадер
  - после завершения загрузки лоадер исчезает

Таким образом, экран полностью покрывает требования «WebView + лоадер».

### 3. Список задач

Экран «Все задачи»:

- Заголовок «Список задач»
- Поле поиска по названию задачи
- Список карточек задач, оформленный под макет:
  - ID задачи (`TK-001-XXXXXX`)
  - часть описания
  - чип приоритета (цвет/текст зависят от `TaskPriority.low/medium/high`)
- Поиск работает в `TasksPageViewModel.filteredTasks`:
  - хранится `query`
  - задачи фильтруются по `title.toLowerCase().contains(query.toLowerCase())`

Хранилище задач – локальное (через `TasksRepository` и локальный datasource на базе `Hive`).

### 4. Просмотр задачи

Экран «Данные задачи»:

- Отображается:
  - Приоритет (строкой)
  - Наименование
  - Содержание
- Для длинного описания:
  - по умолчанию показывается сокращённый текст + «Развернуть» сразу после текста
  - по нажатию описание разворачивается полностью
- Внизу страницы:
  - кнопка «Редактировать»
  - при нажатии открывается экран редактирования задачи, передаётся текущая `TaskEntity`

Вернувшись с редактирования, данные в деталях задачи обновляются.

### 5. Создание / редактирование задачи

Экран создания/редактирования задачи совмещён (используется один `TaskEditPage`):

- Поля:
  - Приоритет – три чипа: «Низкий», «Средний», «Высокий»
  - Наименование – обязательное поле
  - Содержание – обязательное поле, минимум 100 символов
- Валидация:
  - наименование – не пустое
  - описание – не пустое и длина ≥ 100 символов
- ID задачи:
  - при создании генерируется через `Uuid`, приводится к виду `TK-001-XXXXXX`
- При сохранении:
  - создаётся/обновляется `TaskEntity` с нужными полями
  - отправляется ивент `TasksPageEvent.taskSaved(task)`
  - BLoC сохраняет задачу в репозиторий и перезагружает список задач

Для редактирования форма предзаполняется данными выбранной задачи.

---

## Flavors 

баннер debug в MaterialApp поставлен чтобы показать debug flavor

В приложении заведён enum:

```dart
enum AppFlavor { debug, prod }
```

<img width="354" height="767" alt="Simulator Screenshot - iPhone 16 - 2025-12-04 at 17 15 42" src="https://github.com/user-attachments/assets/61fbf729-6589-44f8-8dad-7fc92f966c40" />
<img width="354" height="767" alt="Simulator Screenshot - iPhone 16 - 2025-12-04 at 17 16 29" src="https://github.com/user-attachments/assets/187a1172-5241-4e17-a1aa-70be49f5d19e" />
<img width="354" height="767" alt="Simulator Screenshot - iPhone 16 - 2025-12-04 at 17 20 23" src="https://github.com/user-attachments/assets/cc7890f1-2fb6-4df4-a208-91fe4748cba1" />
<img width="354" height="767" alt="Simulator Screenshot - iPhone 16 - 2025-12-04 at 17 20 37" src="https://github.com/user-attachments/assets/b0f22b7b-ddf5-4b5b-9ee8-f7c730486481" />
<img width="354" height="767" alt="Simulator Screenshot - iPhone 16 - 2025-12-04 at 17 05 36" src="https://github.com/user-attachments/assets/fc57b6b7-00cd-4670-9ab6-ef9be1391478" />
<img width="354" height="767" alt="Simulator Screenshot - iPhone 16 - 2025-12-04 at 17 05 41" src="https://github.com/user-attachments/assets/da653b17-50d2-4464-9cd7-6e3356a175f3" />
<img width="354" height="767" alt="Simulator Screenshot - iPhone 16 - 2025-12-04 at 17 07 52" src="https://github.com/user-attachments/assets/845dca3a-94b4-4dc2-a62b-23f1b953e58b" />
<img width="354" height="767" alt="Simulator Screenshot - iPhone 16 - 2025-12-04 at 17 07 09" src="https://github.com/user-attachments/assets/4df5b6ab-b93a-4313-a1a0-081908175029" />
<img width="354" height="767" alt="Simulator Screenshot - iPhone 16 - 2025-12-04 at 17 07 16" src="https://github.com/user-attachments/assets/150075b5-9680-48f4-a835-a2d7da7c9d4f" />




