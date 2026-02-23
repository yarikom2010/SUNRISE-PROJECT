import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:ui';

void main() {
  runApp(const SunriseProjectApp());
}

// Класс для управления локализацией
class AppLocalizations {
  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'appTitle': 'SUNRISE PROJECT',
      'subtitle':
          'SCIENTIFIC AND ENGINEERING PROJECT CHANGING THE NATURE OF MOVEMENT',
      'home': 'HOME',
      'ships': 'FLEET',
      'stations': 'INFRASTRUCTURE',
      'technologies': 'TECHNOLOGIES',
      'roadmap': 'ROADMAP',
      'research': 'RESEARCH',

      // Экран 1. Главный
      'aboutProject': 'ABOUT THE PROJECT',
      'aboutProjectText':
          'SUNRISE is a scientific research and engineering project aimed at creating technologies that change the nature of movement.\n\n'
          'We are not building rockets in the classical sense. We are exploring the primary field — the fabric from which reality is woven. Our task is to learn to control it, to make travel in the atmosphere and space fast, cheap, and accessible to everyone.\n\n'
          'We believe the future is not in burning fuel, but in understanding how space is structured.',

      'philosophy': 'PHILOSOPHY',
      'philosophyText':
          '• Matter is secondary. An atom is not a particle, but a clot of energy in the primary field.\n'
          '• Gravity is a gradient. Attraction arises from the difference in field tension.\n'
          '• Control of reality is possible. If we understand the structure of the field, we can create zones with altered properties.\n\n'
          'SUNRISE is not just looking for new engines. We are looking for new physics.',

      'mission': 'MISSION',
      'missionText':
          'Make humanity a multiplanetary species without destroying the planet. Through understanding the field — to the stars.',

      // Экран 2. Технологии
      'technologyBase': 'TECHNOLOGIES',

      'hpe': 'HYBRID PLASMA ENGINE (HPE)',
      'hpePurpose': 'PURPOSE:',
      'hpePurposeText':
          'Flights in Earth\'s atmosphere, to orbit and to the Moon',
      'hpePrinciple': 'OPERATING PRINCIPLE:',
      'hpePrincipleText':
          'The engine uses plasma created with electricity and air (in the atmosphere) or hydrogen (in space). It operates almost silently, creates no shock waves, and does not pollute the environment.',
      'hpeSpecs': 'SPECIFICATIONS:',
      'hpeSpec1': '• Thrust: up to 2200 kN in vacuum',
      'hpeSpec2': '• Specific impulse: up to 850 seconds',
      'hpeSpec3': '• Modes: atmospheric, transitional, space',
      'hpeSpec4': '• Fuel in space: liquid hydrogen',
      'hpeSpec5': '• Full reusability, minimal maintenance',
      'hpeAdvantages': 'ADVANTAGES:',
      'hpeAdv1': '• Silent launch',
      'hpeAdv2': '• No harmful emissions',
      'hpeAdv3': '• Hovering and precision landing capability',
      'hpeAdv4': '• Cost efficiency: 100x cheaper than chemical rockets',

      'swe': 'SPACE WARPING ENGINE (SWE)',
      'swePurpose': 'PURPOSE:',
      'swePurposeText':
          'Overcoming interplanetary and interstellar distances through local space curvature',
      'swePrinciple': 'OPERATING PRINCIPLE:',
      'swePrincipleText':
          'Unlike classical engines, SWE does not push the ship, but changes the space metric around it. A region of compressed space is created in front and stretched space behind — the ship essentially "slides" along this gradient without experiencing overload.',
      'sweStatus': 'CURRENT STATUS:',
      'sweStatusText':
          'Fundamental research within The Field Initiative. Theoretical models, experiments to register field gradients.',
      'swePotential': 'POTENTIAL:',
      'swePotential1': '• Flight to Mars — hours instead of months',
      'swePotential2': '• Exit beyond the Solar System',
      'swePotential3': '• Complete absence of inertial overload for crew',

      // Экран 3. Разработка
      'development': 'DEVELOPMENT',

      'pme': 'PME (Passenger Economy Model)',
      'pmeDesc':
          'Flagship of the project. First step to a new era of movement.',
      'pmeConcept': 'CONCEPT:',
      'pmeConceptText':
          'A small spacecraft that does not need launch pads, magnetic accelerators, or complex infrastructure. PME takes off and lands by controlling the field beneath it.',
      'pmeTech': 'TECHNICAL DETAILS:',
      'pmeTech1': '• Engine: HPE',
      'pmeTech2': '• Crew: 1 pilot',
      'pmeTech3': '• Passengers: 7 people',
      'pmeTech4': '• Flight modes: atmosphere + space',
      'pmeTech5': '• Fuel for space flights: liquid hydrogen',
      'pmePurpose': 'PURPOSE:',
      'pmePurposeText':
          'Make travel on the planet and in near space fast, cheap, and accessible.',
      'pmeApplications': 'APPLICATIONS:',
      'pmeApp1': '• Air taxi between cities',
      'pmeApp2': '• Delivery vehicle to orbital stations',
      'pmeApp3': '• Excursion ship to the Moon',

      'pmLong': 'PM LONG DISTANCE',
      'pmLongDesc': 'Technology for long distances.',
      'pmLongConcept': 'CONCEPT:',
      'pmLongConceptText':
          'A ship capable not just of flying in space, but of shortening distances through space management.',
      'pmLongTech': 'TECHNICAL DETAILS:',
      'pmLongTech1': '• Engines: HPE + SWE',
      'pmLongTech2': '• Modes: atmosphere + space + warping mode',
      'pmLongTech3': '• Crew: 2 pilots',
      'pmLongTech4': '• Passengers: up to 20 people',
      'pmLongPurpose': 'PURPOSE:',
      'pmLongPurposeText':
          'Interplanetary flights, exploration of distant frontiers',
      'pmLongFeature': 'FEATURE:',
      'pmLongFeatureText':
          'In normal mode uses HPE. For long-distance flights activates SWE, reducing travel time to several hours.',

      'cargoClass': 'CLASS C (CARGO)',
      'cargoDesc': 'New generation cargo logistics.',
      'cargoConcept': 'CONCEPT:',
      'cargoConceptText':
          'Piloted cargo spacecraft for delivering cargo to orbit, the Moon, and interplanetary points.',
      'cargoTech': 'TECHNICAL DETAILS:',
      'cargoTech1': '• Engines: HPE + SWE (full configuration)',
      'cargoTech2': '• Crew: 1 pilot',
      'cargoTech3': '• Passenger seat: 1 (for escort or co-pilot)',
      'cargoTech4': '• Payload capacity: to be specified',
      'cargoTech5': '• Modes: atmosphere + space + warping',
      'cargoPurpose': 'PURPOSE:',
      'cargoPurposeText':
          'Supply of orbital stations, lunar bases, delivery of equipment for scientific missions',

      'orbitalBar': 'ORBITAL REFUELING STATION — THE BAR',
      'orbitalBarDesc': 'The first station where technology meets comfort.',
      'orbitalBarConcept': 'CONCEPT:',
      'orbitalBarConceptText':
          'A station in Earth orbit designed for refueling spacecraft with hydrogen and charging batteries. But the main thing — you can spend time comfortably while the ship prepares for its next flight.',
      'orbitalBarStructure': 'STRUCTURE:',
      'orbitalBarStruct1': '• Refueling zone: non-rotating, technical part',
      'orbitalBarStruct2':
          '• Bar and hotel zone: rotates to create artificial gravity',
      'orbitalBarAmenities': 'AMENITIES:',
      'orbitalBarAmen1': '• Bar-restaurant with panoramic view of Earth',
      'orbitalBarAmen2': '• Small hotel with 10 rooms',
      'orbitalBarAmen3': '• Relaxation area for pilots and passengers',
      'orbitalBarAmen4': '• Observation deck',
      'orbitalBarPurpose': 'PURPOSE:',
      'orbitalBarPurposeText':
          'Make refueling in space not just a technical operation, but part of the journey.',

      'earthComplex': 'THE EARTH RESEARCH COMPLEX',
      'earthComplexDesc':
          'Symbol of a new era. Headquarters and scientific center of SUNRISE.',
      'earthComplexConcept': 'CONCEPT:',
      'earthComplexConceptText':
          'A giant building on Earth that hovers in the air by concentrating field energy in its lower part. No supports, no visible attachments — only controlled gravity.',
      'earthComplexTech': 'TECHNOLOGY:',
      'earthComplexTechText':
          'Uses principles discovered during primary field research. A huge amount of energy is focused under the complex, creating a repulsion zone sufficient to hold the entire structure in the air.',
      'earthComplexFunctions': 'FUNCTIONS:',
      'earthComplexFunc1': '• Main research center',
      'earthComplexFunc2': '• Laboratories for field experiments',
      'earthComplexFunc3': '• Administrative headquarters of SUNRISE',
      'earthComplexFunc4': '• Educational center for new engineers',
      'earthComplexFunc5': '• Symbol that field technologies are real',
      'earthComplexStatus': 'STATUS:',
      'earthComplexStatusText':
          'Design phase. Construction planned for the 2050s.',

      'roadmapTitle': 'ROADMAP',
      'phase0':
          'PHASE 0 (2025–2027): Theoretical field research, mathematical models',
      'phase1':
          'PHASE 1 (2028–2030): Laboratory experiments, HPE prototype creation',
      'phase2':
          'PHASE 2 (2031–2035): HPE atmospheric tests, first PME prototype flight',
      'phase3':
          'PHASE 3 (2036–2040): Commercial PME flights, start of SWE research',
      'phase4': 'PHASE 4 (2041–2045): PM Long Distance creation, SWE tests',
      'phase5':
          'PHASE 5 (2046–2050): Start of Earth Complex construction, orbital bar station launch',
      'phase6':
          'PHASE 6 (2050+): Full operation of all systems, interplanetary missions',

      'conclusion': 'CONCLUSION',
      'conclusionText':
          'SUNRISE is not just a project. It is an attempt to answer the main questions:\n'
          '• What is space?\n'
          '• Can it be controlled?\n'
          '• Where are the boundaries of human capabilities?\n\n'
          'We do not promise quick results. We promise an honest path — from theory to experiment, from experiment to technology, from technology to a new reality.\n\n'
          'Welcome to the future. It is closer than it seems.',
    },
    'ru': {
      'appTitle': 'ПРОЕКТ «РАССВЕТ»',
      'subtitle':
          'НАУЧНО-ИССЛЕДОВАТЕЛЬСКИЙ И ИНЖЕНЕРНЫЙ ПРОЕКТ, МЕНЯЮЩИЙ ПРИРОДУ ПЕРЕМЕЩЕНИЯ',
      'home': 'ГЛАВНАЯ',
      'ships': 'ФЛОТ',
      'stations': 'ИНФРАСТРУКТУРА',
      'technologies': 'ТЕХНОЛОГИИ',
      'roadmap': 'КАРТА ПУТИ',
      'research': 'ИССЛЕДОВАНИЯ',

      // Экран 1. Главный
      'aboutProject': 'О ПРОЕКТЕ',
      'aboutProjectText':
          'SUNRISE — это научно-исследовательский и инженерный проект, целью которого является создание технологий, меняющих природу перемещения.\n\n'
          'Мы не строим ракеты в классическом смысле. Мы исследуем первичное поле — основу, из которой соткана реальность. Наша задача — научиться управлять им, чтобы сделать путешествия в атмосфере и космосе быстрыми, дешёвыми и доступными для каждого.\n\n'
          'Мы верим, что будущее — не в сжигании топлива, а в понимании того, как устроено пространство.',

      'philosophy': 'ФИЛОСОФИЯ',
      'philosophyText':
          '• Материя вторична. Атом — это не частица, а сгусток энергии в первичном поле.\n'
          '• Гравитация — это градиент. Притяжение возникает из-за разницы напряжённости поля.\n'
          '• Управление реальностью возможно. Если мы поймём структуру поля, мы сможем создавать зоны с изменёнными свойствами.\n\n'
          'SUNRISE ищет не просто новые двигатели. Мы ищем новую физику.',

      'mission': 'МИССИЯ',
      'missionText':
          'Сделать человечество мультипланетным видом, не разрушая планету. Через понимание поля — к звёздам.',

      // Экран 2. Технологии
      'technologyBase': 'ТЕХНОЛОГИИ',

      'hpe': 'ГИБРИДНЫЙ ПЛАЗМЕННЫЙ ДВИГАТЕЛЬ (HPE)',
      'hpePurpose': 'НАЗНАЧЕНИЕ:',
      'hpePurposeText': 'Полёты в атмосфере Земли, на орбиту и к Луне',
      'hpePrinciple': 'ПРИНЦИП РАБОТЫ:',
      'hpePrincipleText':
          'Двигатель использует плазму, создаваемую с помощью электричества и воздуха (в атмосфере) или водорода (в космосе). Он работает практически бесшумно, не создаёт ударных волн и не загрязняет окружающую среду.',
      'hpeSpecs': 'ХАРАКТЕРИСТИКИ:',
      'hpeSpec1': '• Тяга: до 2200 кН в вакууме',
      'hpeSpec2': '• Удельный импульс: до 850 секунд',
      'hpeSpec3': '• Режимы: атмосферный, переходный, космический',
      'hpeSpec4': '• Топливо в космосе: жидкий водород',
      'hpeSpec5': '• Полная многоразовость, минимальное обслуживание',
      'hpeAdvantages': 'ПРЕИМУЩЕСТВА:',
      'hpeAdv1': '• Бесшумный запуск',
      'hpeAdv2': '• Отсутствие вредных выбросов',
      'hpeAdv3': '• Возможность зависания и точной посадки',
      'hpeAdv4':
          '• Экономичность: стоимость полёта в 100 раз ниже химических ракет',

      'swe': 'ДВИГАТЕЛЬ ИСКРИВЛЕНИЯ ПРОСТРАНСТВА (SWE)',
      'swePurpose': 'НАЗНАЧЕНИЕ:',
      'swePurposeText':
          'Преодоление межпланетных и межзвёздных расстояний путём локального искривления пространства',
      'swePrinciple': 'ПРИНЦИП РАБОТЫ:',
      'swePrincipleText':
          'В отличие от классических двигателей, SWE не толкает корабль, а изменяет метрику пространства вокруг него. Создаётся область сжатого пространства впереди и растянутого позади — корабль фактически "соскальзывает" по этому градиенту, не испытывая перегрузок.',
      'sweStatus': 'ТЕКУЩИЙ СТАТУС:',
      'sweStatusText':
          'Фундаментальные исследования в рамках The Field Initiative. Теоретические модели, эксперименты по регистрации градиентов поля.',
      'swePotential': 'ПОТЕНЦИАЛ:',
      'swePotential1': '• Полёт до Марса — часы вместо месяцев',
      'swePotential2': '• Выход за пределы Солнечной системы',
      'swePotential3': '• Полное отсутствие инерционных перегрузок для экипажа',

      // Экран 3. Разработка
      'development': 'РАЗРАБОТКА',

      'pme': 'КОСМОЛАЙНЕР PME (Passenger Economy Model)',
      'pmeDesc':
          'Визитная карточка проекта. Первый шаг к новой эре перемещений.',
      'pmeConcept': 'КОНЦЕПЦИЯ:',
      'pmeConceptText':
          'Небольшой космический корабль, которому не нужны взлётные площадки, магнитные ускорители и сложная инфраструктура. PME взлетает и садится за счёт управления полем под собой.',
      'pmeTech': 'ТЕХНИЧЕСКИЕ ДЕТАЛИ:',
      'pmeTech1': '• Двигатель: HPE',
      'pmeTech2': '• Экипаж: 1 пилот',
      'pmeTech3': '• Пассажиры: 7 человек',
      'pmeTech4': '• Режимы полёта: атмосфера + космос',
      'pmeTech5': '• Топливо для космических полётов: жидкий водород',
      'pmePurpose': 'НАЗНАЧЕНИЕ:',
      'pmePurposeText':
          'Сделать перемещение по планете и в ближнем космосе быстрым, дешёвым и доступным.',
      'pmeApplications': 'ПРИМЕНЕНИЕ:',
      'pmeApp1': '• Аэротакси между городами',
      'pmeApp2': '• Средство доставки на орбитальные станции',
      'pmeApp3': '• Экскурсионный корабль к Луне',

      'pmLong': 'КОСМОЛАЙНЕР PM LONG DISTANCE',
      'pmLongDesc': 'Технология для больших расстояний.',
      'pmLongConcept': 'КОНЦЕПЦИЯ:',
      'pmLongConceptText':
          'Корабль, способный не просто летать в космосе, а сокращать расстояния за счёт управления пространством.',
      'pmLongTech': 'ТЕХНИЧЕСКИЕ ДЕТАЛИ:',
      'pmLongTech1': '• Двигатели: HPE + SWE',
      'pmLongTech2': '• Режимы: атмосфера + космос + режим искривления',
      'pmLongTech3': '• Экипаж: 2 пилота',
      'pmLongTech4': '• Пассажиры: до 20 человек',
      'pmLongPurpose': 'НАЗНАЧЕНИЕ:',
      'pmLongPurposeText':
          'Межпланетные перелёты, исследование дальних рубежей',
      'pmLongFeature': 'ОСОБЕННОСТЬ:',
      'pmLongFeatureText':
          'В обычном режиме использует HPE. Для дальних перелётов активирует SWE, сокращая время в пути до нескольких часов.',

      'cargoClass': 'КОСМОЛАЙНЕР КЛАССА C (CARGO)',
      'cargoDesc': 'Грузовая логистика нового поколения.',
      'cargoConcept': 'КОНЦЕПЦИЯ:',
      'cargoConceptText':
          'Пилотируемый грузовой космолайнер для доставки грузов на орбиту, Луну и в точки межпланетного пространства.',
      'cargoTech': 'ТЕХНИЧЕСКИЕ ДЕТАЛИ:',
      'cargoTech1': '• Двигатели: HPE + SWE (полная комплектация)',
      'cargoTech2': '• Экипаж: 1 пилот',
      'cargoTech3':
          '• Пассажирское место: 1 (для сопровождающего или второго пилота)',
      'cargoTech4': '• Грузоподъёмность: уточняется',
      'cargoTech5': '• Режимы: атмосфера + космос + искривление',
      'cargoPurpose': 'НАЗНАЧЕНИЕ:',
      'cargoPurposeText':
          'Снабжение орбитальных станций, лунных баз, доставка оборудования для научных миссий',

      'orbitalBar': 'ОРБИТАЛЬНАЯ ЗАПРАВОЧНАЯ СТАНЦИЯ — БАР',
      'orbitalBarDesc':
          'Первая в мире станция, где технологии встречаются с комфортом.',
      'orbitalBarConcept': 'КОНЦЕПЦИЯ:',
      'orbitalBarConceptText':
          'Станция на орбите Земли, предназначенная для заправки космолайнеров водородом и зарядки аккумуляторов. Но главное — здесь можно провести время с комфортом, пока корабль готовится к следующему полёту.',
      'orbitalBarStructure': 'СТРУКТУРА:',
      'orbitalBarStruct1': '• Зона заправки: не вращается, техническая часть',
      'orbitalBarStruct2':
          '• Зона бара и отеля: вращается для создания искусственной гравитации',
      'orbitalBarAmenities': 'УДОБСТВА:',
      'orbitalBarAmen1': '• Бар-ресторан с панорамным видом на Землю',
      'orbitalBarAmen2': '• Небольшой отель на 10 номеров',
      'orbitalBarAmen3': '• Зона отдыха для пилотов и пассажиров',
      'orbitalBarAmen4': '• Обзорная площадка',
      'orbitalBarPurpose': 'НАЗНАЧЕНИЕ:',
      'orbitalBarPurposeText':
          'Сделать дозаправку в космосе не просто технической операцией, а частью путешествия.',

      'earthComplex': 'ЗЕМНОЙ ИССЛЕДОВАТЕЛЬСКИЙ КОМПЛЕКС',
      'earthComplexDesc':
          'Символ новой эры. Штаб-квартира и научный центр SUNRISE.',
      'earthComplexConcept': 'КОНЦЕПЦИЯ:',
      'earthComplexConceptText':
          'Гигантское здание на Земле, которое парит в воздухе за счёт концентрирования энергии поля в нижней части. Никаких опор, никаких видимых креплений — только управляемая гравитация.',
      'earthComplexTech': 'ТЕХНОЛОГИЯ:',
      'earthComplexTechText':
          'Использует принципы, открытые в ходе исследований первичного поля. Огромный объём энергии фокусируется под комплексом, создавая зону отталкивания, достаточную для удержания всей конструкции в воздухе.',
      'earthComplexFunctions': 'ФУНКЦИИ:',
      'earthComplexFunc1': '• Главный исследовательский центр',
      'earthComplexFunc2': '• Лаборатории для экспериментов с полем',
      'earthComplexFunc3': '• Административный штаб SUNRISE',
      'earthComplexFunc4': '• Образовательный центр для новых инженеров',
      'earthComplexFunc5': '• Символ того, что технологии поля — реальность',
      'earthComplexStatus': 'СТАТУС:',
      'earthComplexStatusText':
          'Проектирование. Строительство планируется на 2050-е годы.',

      'roadmapTitle': 'ДОРОЖНАЯ КАРТА',
      'phase0':
          'Фаза 0 (2025–2027): Теоретические исследования поля, математические модели',
      'phase1':
          'Фаза 1 (2028–2030): Лабораторные эксперименты, создание прототипа HPE',
      'phase2':
          'Фаза 2 (2031–2035): Испытания HPE в атмосфере, первый полёт прототипа PME',
      'phase3':
          'Фаза 3 (2036–2040): Коммерческие полёты PME, начало исследований SWE',
      'phase4': 'Фаза 4 (2041–2045): Создание PM Long Distance, испытания SWE',
      'phase5':
          'Фаза 5 (2046–2050): Начало строительства Земного комплекса, запуск орбитальной станции-бара',
      'phase6':
          'Фаза 6 (2050+): Полноценная эксплуатация всех систем, межпланетные миссии',

      'conclusion': 'ЗАКЛЮЧЕНИЕ',
      'conclusionText':
          'SUNRISE — это не просто проект. Это попытка ответить на главные вопросы:\n'
          '• Что такое пространство?\n'
          '• Можно ли им управлять?\n'
          '• Где границы человеческих возможностей?\n\n'
          'Мы не обещаем быстрых результатов. Мы обещаем честный путь — от теории к эксперименту, от эксперимента — к технологии, от технологии — к новой реальности.\n\n'
          'Добро пожаловать в будущее. Оно ближе, чем кажется.',
    },
  };

  static String translate(String key, String locale) {
    return _localizedValues[locale]?[key] ?? key;
  }
}

class SunriseProjectApp extends StatefulWidget {
  const SunriseProjectApp({super.key});

  @override
  _SunriseProjectAppState createState() => _SunriseProjectAppState();
}

class _SunriseProjectAppState extends State<SunriseProjectApp> {
  String _locale = 'en';

  void _changeLocale(String newLocale) {
    setState(() {
      _locale = newLocale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppLocalizations.translate('appTitle', _locale),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Arial',
        primaryColor: const Color(0xFFFF7E5F),
        scaffoldBackgroundColor: Colors.transparent,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: const Color(0xFF00AAFF),
        ),
      ),
      home: MainScreen(locale: _locale, onLocaleChanged: _changeLocale),
    );
  }
}

class MainScreen extends StatefulWidget {
  final String locale;
  final Function(String) onLocaleChanged;

  const MainScreen({
    super.key,
    required this.locale,
    required this.onLocaleChanged,
  });

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> screens = [
      HomeScreen(locale: widget.locale),
      TechnologiesScreen(locale: widget.locale),
      DevelopmentScreen(locale: widget.locale),
      RoadmapScreen(locale: widget.locale),
    ];

    final List<Map<String, dynamic>> navItems = [
      {'icon': Icons.home, 'labelKey': 'home'},
      {'icon': Icons.science, 'labelKey': 'technologies'},
      {'icon': Icons.construction, 'labelKey': 'development'},
      {'icon': Icons.timeline, 'labelKey': 'roadmap'},
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          // Градиент рассвета
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF2B1B3A),
                  Color(0xFF4A2F4D),
                  Color(0xFF7A4D5E),
                  Color(0xFFB8776B),
                  Color(0xFFE8A87C),
                  Color(0xFFFAD6A5),
                ],
                stops: [0.0, 0.2, 0.4, 0.6, 0.8, 1.0],
              ),
            ),
          ),
          // Полупрозрачный слой
          Container(color: Colors.black.withOpacity(0.3)),
          // Звезды
          const StarField(),
          // Основной контент
          IndexedStack(index: _currentIndex, children: screens),
          // Кнопки языка
          Positioned(top: 40, right: 20, child: _buildLanguageSwitcher()),
          // Навигационная панель
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: _buildBottomNavBar(navItems),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomNavBar(List<Map<String, dynamic>> navItems) {
    return Container(
      height: 70,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white.withOpacity(0.1), width: 0.5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: Colors.transparent,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(navItems.length, (index) {
                final item = navItems[index];
                final isActive = _currentIndex == index;

                return GestureDetector(
                  onTap: () => setState(() => _currentIndex = index),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        item['icon'] as IconData,
                        color: isActive
                            ? const Color(0xFF00AAFF)
                            : Colors.white.withOpacity(0.7),
                        size: 22,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        AppLocalizations.translate(
                          item['labelKey'] as String,
                          widget.locale,
                        ),
                        style: TextStyle(
                          color: isActive
                              ? const Color(0xFF00AAFF)
                              : Colors.white.withOpacity(0.7),
                          fontSize: 10,
                          fontWeight: isActive
                              ? FontWeight.w600
                              : FontWeight.w400,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageSwitcher() {
    return Container(
      height: 36,
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: Colors.white.withOpacity(0.1), width: 0.5),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: Container(
            color: Colors.transparent,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildLanguageButton('EN', 'en'),
                Container(
                  width: 1,
                  height: 20,
                  color: Colors.white.withOpacity(0.2),
                ),
                _buildLanguageButton('RU', 'ru'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageButton(String text, String localeCode) {
    final isActive = widget.locale == localeCode;
    return GestureDetector(
      onTap: () => widget.onLocaleChanged(localeCode),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Text(
          text,
          style: TextStyle(
            color: isActive
                ? const Color(0xFF00AAFF)
                : Colors.white.withOpacity(0.7),
            fontWeight: isActive ? FontWeight.w600 : FontWeight.w400,
            fontSize: 13,
            letterSpacing: 0.5,
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final String locale;

  const HomeScreen({super.key, required this.locale});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  child: const Icon(
                    Icons.wb_sunny,
                    color: Color(0xFF00AAFF),
                    size: 40,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.translate('appTitle', locale),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 2,
                          shadows: [
                            Shadow(
                              color: Colors.black38,
                              blurRadius: 10,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        AppLocalizations.translate('subtitle', locale),
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),

            _buildCard(
              title: AppLocalizations.translate('aboutProject', locale),
              text: AppLocalizations.translate('aboutProjectText', locale),
              icon: Icons.info_outline,
            ),

            const SizedBox(height: 30),

            _buildCard(
              title: AppLocalizations.translate('philosophy', locale),
              text: AppLocalizations.translate('philosophyText', locale),
              icon: Icons.psychology,
            ),

            const SizedBox(height: 30),

            _buildCard(
              title: AppLocalizations.translate('mission', locale),
              text: AppLocalizations.translate('missionText', locale),
              icon: Icons.flag,
            ),

            const SizedBox(height: 30),

            // Заключение
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xFF00AAFF).withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('🌅', style: TextStyle(fontSize: 24)),
                  const SizedBox(height: 12),
                  Text(
                    AppLocalizations.translate('conclusion', locale),
                    style: const TextStyle(
                      color: Color(0xFF00AAFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    AppLocalizations.translate('conclusionText', locale),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildCard({
    required String title,
    required String text,
    IconData? icon,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon != null)
            Row(
              children: [
                Icon(icon, color: const Color(0xFF00AAFF), size: 20),
                const SizedBox(width: 12),
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            )
          else
            Text(
              title,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          const SizedBox(height: 16),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
              height: 1.6,
            ),
          ),
        ],
      ),
    );
  }
}

class TechnologiesScreen extends StatelessWidget {
  final String locale;

  const TechnologiesScreen({super.key, required this.locale});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.science,
                    color: Color(0xFF00AAFF),
                    size: 32,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.translate('technologyBase', locale),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1,
                          shadows: [
                            Shadow(
                              color: Colors.black38,
                              blurRadius: 10,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        AppLocalizations.translate('technologies', locale),
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),

            // HPE Engine
            _buildTechCard(
              title: AppLocalizations.translate('hpe', locale),
              sections: [
                _buildTechSection(
                  AppLocalizations.translate('hpePurpose', locale),
                  AppLocalizations.translate('hpePurposeText', locale),
                ),
                _buildTechSection(
                  AppLocalizations.translate('hpePrinciple', locale),
                  AppLocalizations.translate('hpePrincipleText', locale),
                ),
                _buildTechSection(
                  AppLocalizations.translate('hpeSpecs', locale),
                  [
                    AppLocalizations.translate('hpeSpec1', locale),
                    AppLocalizations.translate('hpeSpec2', locale),
                    AppLocalizations.translate('hpeSpec3', locale),
                    AppLocalizations.translate('hpeSpec4', locale),
                    AppLocalizations.translate('hpeSpec5', locale),
                  ],
                ),
                _buildTechSection(
                  AppLocalizations.translate('hpeAdvantages', locale),
                  [
                    AppLocalizations.translate('hpeAdv1', locale),
                    AppLocalizations.translate('hpeAdv2', locale),
                    AppLocalizations.translate('hpeAdv3', locale),
                    AppLocalizations.translate('hpeAdv4', locale),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),

            // SWE Engine
            _buildTechCard(
              title: AppLocalizations.translate('swe', locale),
              sections: [
                _buildTechSection(
                  AppLocalizations.translate('swePurpose', locale),
                  AppLocalizations.translate('swePurposeText', locale),
                ),
                _buildTechSection(
                  AppLocalizations.translate('swePrinciple', locale),
                  AppLocalizations.translate('swePrincipleText', locale),
                ),
                _buildTechSection(
                  AppLocalizations.translate('sweStatus', locale),
                  AppLocalizations.translate('sweStatusText', locale),
                ),
                _buildTechSection(
                  AppLocalizations.translate('swePotential', locale),
                  [
                    AppLocalizations.translate('swePotential1', locale),
                    AppLocalizations.translate('swePotential2', locale),
                    AppLocalizations.translate('swePotential3', locale),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildTechCard({
    required String title,
    required List<Widget> sections,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF00AAFF),
              fontSize: 20,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 20),
          ...sections,
        ],
      ),
    );
  }

  Widget _buildTechSection(String title, dynamic content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        if (content is String)
          Text(
            content,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
              height: 1.5,
            ),
          )
        else if (content is List)
          ...content.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(
                item,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                  height: 1.4,
                ),
              ),
            ),
          ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class DevelopmentScreen extends StatelessWidget {
  final String locale;

  const DevelopmentScreen({super.key, required this.locale});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.construction,
                    color: Color(0xFF00AAFF),
                    size: 32,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.translate('development', locale),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1,
                          shadows: [
                            Shadow(
                              color: Colors.black38,
                              blurRadius: 10,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        AppLocalizations.translate('development', locale),
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),

            // PME
            _buildDevCard(
              title: AppLocalizations.translate('pme', locale),
              description: AppLocalizations.translate('pmeDesc', locale),
              sections: [
                _buildDevSection(
                  AppLocalizations.translate('pmeConcept', locale),
                  AppLocalizations.translate('pmeConceptText', locale),
                ),
                _buildDevSection(
                  AppLocalizations.translate('pmeTech', locale),
                  [
                    AppLocalizations.translate('pmeTech1', locale),
                    AppLocalizations.translate('pmeTech2', locale),
                    AppLocalizations.translate('pmeTech3', locale),
                    AppLocalizations.translate('pmeTech4', locale),
                    AppLocalizations.translate('pmeTech5', locale),
                  ],
                ),
                _buildDevSection(
                  AppLocalizations.translate('pmePurpose', locale),
                  AppLocalizations.translate('pmePurposeText', locale),
                ),
                _buildDevSection(
                  AppLocalizations.translate('pmeApplications', locale),
                  [
                    AppLocalizations.translate('pmeApp1', locale),
                    AppLocalizations.translate('pmeApp2', locale),
                    AppLocalizations.translate('pmeApp3', locale),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 30),

            // PM Long Distance
            _buildDevCard(
              title: AppLocalizations.translate('pmLong', locale),
              description: AppLocalizations.translate('pmLongDesc', locale),
              sections: [
                _buildDevSection(
                  AppLocalizations.translate('pmLongConcept', locale),
                  AppLocalizations.translate('pmLongConceptText', locale),
                ),
                _buildDevSection(
                  AppLocalizations.translate('pmLongTech', locale),
                  [
                    AppLocalizations.translate('pmLongTech1', locale),
                    AppLocalizations.translate('pmLongTech2', locale),
                    AppLocalizations.translate('pmLongTech3', locale),
                    AppLocalizations.translate('pmLongTech4', locale),
                  ],
                ),
                _buildDevSection(
                  AppLocalizations.translate('pmLongPurpose', locale),
                  AppLocalizations.translate('pmLongPurposeText', locale),
                ),
                _buildDevSection(
                  AppLocalizations.translate('pmLongFeature', locale),
                  AppLocalizations.translate('pmLongFeatureText', locale),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Class C Cargo
            _buildDevCard(
              title: AppLocalizations.translate('cargoClass', locale),
              description: AppLocalizations.translate('cargoDesc', locale),
              sections: [
                _buildDevSection(
                  AppLocalizations.translate('cargoConcept', locale),
                  AppLocalizations.translate('cargoConceptText', locale),
                ),
                _buildDevSection(
                  AppLocalizations.translate('cargoTech', locale),
                  [
                    AppLocalizations.translate('cargoTech1', locale),
                    AppLocalizations.translate('cargoTech2', locale),
                    AppLocalizations.translate('cargoTech3', locale),
                    AppLocalizations.translate('cargoTech4', locale),
                    AppLocalizations.translate('cargoTech5', locale),
                  ],
                ),
                _buildDevSection(
                  AppLocalizations.translate('cargoPurpose', locale),
                  AppLocalizations.translate('cargoPurposeText', locale),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Orbital Bar
            _buildDevCard(
              title: AppLocalizations.translate('orbitalBar', locale),
              description: AppLocalizations.translate('orbitalBarDesc', locale),
              sections: [
                _buildDevSection(
                  AppLocalizations.translate('orbitalBarConcept', locale),
                  AppLocalizations.translate('orbitalBarConceptText', locale),
                ),
                _buildDevSection(
                  AppLocalizations.translate('orbitalBarStructure', locale),
                  [
                    AppLocalizations.translate('orbitalBarStruct1', locale),
                    AppLocalizations.translate('orbitalBarStruct2', locale),
                  ],
                ),
                _buildDevSection(
                  AppLocalizations.translate('orbitalBarAmenities', locale),
                  [
                    AppLocalizations.translate('orbitalBarAmen1', locale),
                    AppLocalizations.translate('orbitalBarAmen2', locale),
                    AppLocalizations.translate('orbitalBarAmen3', locale),
                    AppLocalizations.translate('orbitalBarAmen4', locale),
                  ],
                ),
                _buildDevSection(
                  AppLocalizations.translate('orbitalBarPurpose', locale),
                  AppLocalizations.translate('orbitalBarPurposeText', locale),
                ),
              ],
            ),

            const SizedBox(height: 30),

            // Earth Research Complex
            _buildDevCard(
              title: AppLocalizations.translate('earthComplex', locale),
              description: AppLocalizations.translate(
                'earthComplexDesc',
                locale,
              ),
              sections: [
                _buildDevSection(
                  AppLocalizations.translate('earthComplexConcept', locale),
                  AppLocalizations.translate('earthComplexConceptText', locale),
                ),
                _buildDevSection(
                  AppLocalizations.translate('earthComplexTech', locale),
                  AppLocalizations.translate('earthComplexTechText', locale),
                ),
                _buildDevSection(
                  AppLocalizations.translate('earthComplexFunctions', locale),
                  [
                    AppLocalizations.translate('earthComplexFunc1', locale),
                    AppLocalizations.translate('earthComplexFunc2', locale),
                    AppLocalizations.translate('earthComplexFunc3', locale),
                    AppLocalizations.translate('earthComplexFunc4', locale),
                    AppLocalizations.translate('earthComplexFunc5', locale),
                  ],
                ),
                _buildDevSection(
                  AppLocalizations.translate('earthComplexStatus', locale),
                  AppLocalizations.translate('earthComplexStatusText', locale),
                ),
              ],
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildDevCard({
    required String title,
    required String description,
    required List<Widget> sections,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF00AAFF),
              fontSize: 20,
              fontWeight: FontWeight.w900,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            description,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 13,
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 20),
          ...sections,
        ],
      ),
    );
  }

  Widget _buildDevSection(String title, dynamic content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),
        if (content is String)
          Text(
            content,
            style: const TextStyle(
              color: Colors.white70,
              fontSize: 14,
              height: 1.5,
            ),
          )
        else if (content is List)
          ...content.map(
            (item) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: Text(
                item,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 13,
                  height: 1.4,
                ),
              ),
            ),
          ),
        const SizedBox(height: 16),
      ],
    );
  }
}

class RoadmapScreen extends StatelessWidget {
  final String locale;

  const RoadmapScreen({super.key, required this.locale});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.timeline,
                    color: Color(0xFF00AAFF),
                    size: 32,
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.translate('roadmapTitle', locale),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 1,
                          shadows: [
                            Shadow(
                              color: Colors.black38,
                              blurRadius: 10,
                              offset: Offset(2, 2),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        AppLocalizations.translate('roadmap', locale),
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),

            _buildPhaseItem(AppLocalizations.translate('phase0', locale), 0),
            const SizedBox(height: 12),
            _buildPhaseItem(AppLocalizations.translate('phase1', locale), 1),
            const SizedBox(height: 12),
            _buildPhaseItem(AppLocalizations.translate('phase2', locale), 2),
            const SizedBox(height: 12),
            _buildPhaseItem(AppLocalizations.translate('phase3', locale), 3),
            const SizedBox(height: 12),
            _buildPhaseItem(AppLocalizations.translate('phase4', locale), 4),
            const SizedBox(height: 12),
            _buildPhaseItem(AppLocalizations.translate('phase5', locale), 5),
            const SizedBox(height: 12),
            _buildPhaseItem(AppLocalizations.translate('phase6', locale), 6),

            const SizedBox(height: 30),

            // Заключение на экране карты пути
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: const Color(0xFF00AAFF).withOpacity(0.3),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.translate('conclusion', locale),
                    style: const TextStyle(
                      color: Color(0xFF00AAFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    AppLocalizations.translate('conclusionText', locale),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      height: 1.6,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildPhaseItem(String text, int index) {
    final colors = [
      const Color(0xFF00AAFF),
      const Color(0xFF00CC88),
      const Color(0xFFFFAA00),
      const Color(0xFFFF5500),
      const Color(0xFFAA00FF),
      const Color(0xFFFF0066),
      const Color(0xFF00FFFF),
    ];

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: colors[index % colors.length].withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 4),
            width: 12,
            height: 12,
            decoration: BoxDecoration(
              color: colors[index % colors.length],
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class StarField extends StatefulWidget {
  const StarField({super.key});

  @override
  _StarFieldState createState() => _StarFieldState();
}

class _StarFieldState extends State<StarField>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<Star> stars = [];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 15),
      vsync: this,
    )..repeat();

    stars = List.generate(150, (_) => Star());
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        for (var star in stars) {
          star.update();
        }

        return CustomPaint(
          painter: StarPainter(stars, _controller.value),
          size: Size.infinite,
        );
      },
    );
  }
}

class Star {
  double x = Random().nextDouble();
  double y = Random().nextDouble();
  double size = Random().nextDouble() * 2.0 + 0.5;
  double speed = Random().nextDouble() * 0.3 + 0.1;
  double twinkle = Random().nextDouble();

  void update() {
    x -= speed * 0.01;
    if (x < 0) {
      x = 1;
      y = Random().nextDouble();
    }
    twinkle = (twinkle + 0.01) % 1;
  }
}

class StarPainter extends CustomPainter {
  final List<Star> stars;
  final double time;

  StarPainter(this.stars, this.time);

  @override
  void paint(Canvas canvas, Size size) {
    for (var star in stars) {
      final alpha = (0.5 + 0.5 * sin(star.twinkle * 2 * pi)) * 255;
      final paint = Paint()
        ..color = Colors.white.withAlpha(alpha.toInt())
        ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 0.5);

      canvas.drawCircle(
        Offset(star.x * size.width, star.y * size.height),
        star.size,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
