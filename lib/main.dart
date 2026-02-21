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
          'FIRST INTEGRATED INTERPLANETARY TRANSPORT SYSTEM WITH FOCUS ON SPACE TOURISM',
      'home': 'HOME',
      'ships': 'FLEET',
      'stations': 'INFRASTRUCTURE',
      'technologies': 'TECHNOLOGIES',
      'roadmap': 'ROADMAP',
      'research': 'RESEARCH',

      'philosophy': 'PROJECT PHILOSOPHY',
      'philosophyText':
          '"SUNRISE" is not just a space program. This is — creation of a new space tourism industry '
          'and accessible exploration of the Solar System.\n\n'
          'We believe that the path to the stars should begin not with government programs, '
          'but with people\'s desire to see space with their own eyes. Therefore, we are building '
          'not just ships, but an entire ecosystem of space hospitality.',

      'threePillars': 'THREE PILLARS OF THE SYSTEM',
      'pillar1': 'SPACE FLEET',
      'pillar1Subtitle': 'Comfort and safety above all',
      'pillar2': 'ORBITAL MEGAPOLISES',
      'pillar2Subtitle': 'Space as a place to live and relax',
      'pillar3': 'TECHNOLOGY BASE',
      'pillar3Subtitle': 'Innovations for accessibility',

      'mainDriver': 'MAIN DRIVER: TOURISM AS FUEL FOR EXPANSION',
      'mainDriverText':
          '"First we show the beauty of space — then we use profits to explore it"',

      'spaceFleet': 'SUNRISE SPACE FLEET',
      'prometheus': 'PROMETHEUS',
      'prometheusType': 'SINGLE-STAGE REUSABLE LUXURY CLASS PASSENGER LINER',
      'prometheusDesc':
          'Regular tourist flights on the route Earth → "CAPITAL". '
          'Capacity: 10 people (8 tourists + 2 pilots/stewards).',

      'touristFeatures': 'TOURIST FEATURES:',
      'panoramicWindows':
          '🪟 Panoramic windows with smart glass (tinting/transparency)',
      'audioGuide': '🎧 Audio guide in 8 languages about the views',
      'spaceCuisine': '🍽️ Space cuisine from Michelin chefs',
      'autoPhoto':
          '📸 Automatic photo/video shooting of the flight for each tourist',

      'keyInnovations': 'KEY INNOVATIONS:',
      'maglev': 'Maglev Launch — smooth acceleration 0→500 km/h at only 2.5G',
      'hybridEngine':
          'Hybrid Plasma Engine 1st Class — silent operation, purple glow at night',
      'seamlessTransition':
          'Earth→Space seamless atmospheric/space mode transition',
      'precisionLanding':
          'Precision landing ±5 meters — docking directly with terminal',
      'ticketPrice': 'TICKET PRICE: \$250,000 for 3-day "Orbital Weekend" tour',

      'atlant': 'ATLANT',
      'atlantType': 'SINGLE-STAGE REUSABLE CARGO LINER',
      'atlantDesc':
          'Supply of orbital stations and lunar base. '
          'Payload capacity: 50 tons.',
      'unification': 'COMPLETE UNIFICATION WITH "PROMETHEUS":',
      'sameLaunch':
          'Same launch system — magnetic acceleration on same platforms',
      'sameShape': 'Same aerodynamic shape — teardrop hull for aesthetics',
      'sameEngines': 'Same 1st class engines — maintenance cost savings',
      'sameLanding': 'Same landing system — interchangeable parts',
      'specialFeature':
          'Can be temporarily converted into tourist liner for group tours (100+ people)',

      'zeus': 'ZEUS',
      'zeusType': 'INTERPLANETARY LINER WITH ARTIFICIAL GRAVITY',
      'zeusDesc':
          'Long-distance tourist cruises "CAPITAL" → Mars (7 months). '
          'Capacity: 30 tourists + 20 crew members.',
      'touristConcept': 'TOURIST CONCEPT: "Cruise through the Solar System"',

      'revolutionaryFeatures': 'REVOLUTIONARY FEATURES:',
      'rotatingModule':
          '🔄 Rotating module 50m diameter — artificial gravity 0.38G',
      'luxurySuites':
          '🏨 Luxury suites with space views — each room with panoramic window',
      'entertainment':
          '🎭 Entertainment: Space theater, observatory, gym with artificial gravity',
      'education':
          '🔬 Educational program: Astronaut lectures, scientific experiments for tourists',

      'uniqueLogistics': 'UNIQUE LOGISTICS:',
      'dockedPrometheus': '3 "Prometheus" ships constantly docked to "Zeus"',
      'shuttleFunctions':
          'They serve as:\n'
          '• Excursion shuttles (visiting other stations)\n'
          '• Spa modules (weightlessness for procedures)\n'
          '• Restaurants with views (rotating for panorama change)',
      'cruisePrice': 'CRUISE PRICE: \$10,000,000 for 2-month journey to Mars',

      'orbitalInfrastructure': 'ORBITAL INFRASTRUCTURE',
      'capital': 'CAPITAL — ORBITAL MEGAPOLIS',
      'capitalDesc': 'First space city-resort',
      'capitalLocation': 'Low Earth orbit, 400 km altitude',
      'capitalCapacity':
          'Capacity: 500 permanent residents + 2000 tourists simultaneously',

      'touristInfrastructure': 'TOURIST INFRASTRUCTURE:',
      'hotels': '🏨 HOTELS:',
      'zeroGSuites': '"Zero-G Suites" — weightlessness rooms',
      'gravityGardens':
          '"Gravity Gardens" — rooms in rotating modules with artificial gravity',
      'panoramaPods': '"Panorama Pods" — capsules with 360° Earth view',

      'restaurants': '🍽️ RESTAURANTS:',
      'orbitBistro': '"Orbit Bistro" — weightlessness + molecular cuisine',
      'sunriseCafe': '"Sunrise Cafe" — 16 sunrises per day',
      'auroraBar': '"Aurora Bar" — bar on the path of polar auroras',

      'entertainmentList': '🎪 ENTERTAINMENT:',
      'spaceWalks': 'Space walks (in next-generation spacesuits)',
      'zeroGSports': 'Sports in weightlessness (football, swimming)',
      'educationalTours': 'Educational tours "How the station works"',
      'spaceWeddings': 'Weddings/events in space',

      'stationEconomy': 'STATION ECONOMY:',
      'dailyTraffic': 'Daily traffic: 200-300 tourists',
      'averageBill':
          'Average bill: \$50,000 per person (hotel+entertainment+souvenirs)',
      'annualTurnover': 'Annual turnover: \$3-5 billion',

      'oasis': 'LUNAR BASE "OASIS"',
      'oasisType': 'EXCLUSIVE SPACE RESORT',
      'oasisLocation': 'Shackleton crater, lunar south pole',
      'oasisConcept':
          'CONCEPT: "The most remote and luxurious hotel in the Universe"',

      'uniqueOffers': 'UNIQUE OFFERS:',
      'lunarSafari': 'Lunar safaris on rovers to historical landing sites',
      'lunarGolf': 'Golf with Earth view (ball flies 6 times farther!)',
      'lunarSpa': 'Spa procedures with lunar dust (mineral-enriched)',
      'subsurfaceSuites':
          'Subsurface suites — radiation protection + unique atmosphere',
      'oasisPrice': 'COST: \$20,000,000 for one-week stay',

      'wasteland': 'MARTIAN STATION "WASTELAND"',
      'wastelandType': 'EXTREME TOURISM FOR ADVENTURE SEEKERS',
      'wastelandLocation': 'Hellas Planitia, Mars',
      'wastelandConcept':
          'CONCEPT: "Become the first tourist on another planet"',

      'programs': 'PROGRAMS:',
      'martianExplorer':
          '"Martian Explorer" — 30-day expedition with scientists',
      'photoSafari': '"Photo Safari" — search for best Martian landscape shots',
      'extremeSurvival': '"Extreme Survivalist" — life like first colonists',
      'wastelandPrice': 'COST: From \$50,000,000 for 3-month expedition',

      // =========== TECHNOLOGY BASE ===========
      'technologyBase': 'TECHNOLOGY BASE',
      'threeEngineClasses': 'THREE CLASSES OF ENGINES',

      // Class 1 Engine - Detailed
      'engineClass1': 'CLASS 1: HYBRID PLASMA ENGINE (HPE-1)',
      'engine1Desc':
          'REVOLUTIONARY DUAL-MODE PROPULSION FOR EARTH→SPACE TRANSPORT',

      'engineSpecs': 'TECHNICAL SPECIFICATIONS:',
      'thrustAtmospheric': '• Atmospheric thrust: 1,500 kN',
      'thrustVacuum': '• Vacuum thrust: 2,200 kN',
      'specificImpulse':
          '• Specific impulse: 450s (atmospheric), 850s (vacuum)',
      'thrustToWeight': '• Thrust-to-weight ratio: 85:1',
      'workingFluid':
          '• Working fluid: Air (atmospheric), Liquid Hydrogen (space)',
      'powerSource': '• Power source: Onboard fusion reactors (5MW each)',
      'operatingTemp': '• Operating temperature: Up to 3,500°C',
      'plasmaTemp': '• Plasma temperature: 10,000K (standard violet glow)',

      'operatingPrinciple': 'OPERATING PRINCIPLE:',
      'principle1': '1. Atmospheric Mode (0-40 km):',
      'principle1Detail':
          '   - Air-breathing plasma generation using atmospheric oxygen',
      'principle1Detail2': '   - Magnetic compression of ionized air',
      'principle1Detail3': '   - Efficiency: 95% energy conversion',
      'principle2': '2. Transition Mode (40-80 km):',
      'principle2Detail': '   - Gradual transition from air to hydrogen fuel',
      'principle2Detail2': '   - Mixed-flow plasma generation',
      'principle2Detail3': '   - Automatic altitude-based switching',
      'principle3': '3. Space Mode (80+ km):',
      'principle3Detail': '   - Pure hydrogen plasma with magnetic confinement',
      'principle3Detail2': '   - Optimized for vacuum efficiency',
      'principle3Detail3': '   - Continuous thrust adjustment from 0-100%',

      'keyTechnologies': 'KEY TECHNOLOGIES:',
      'tech1': '• Superconducting Magnetic Nozzle:',
      'tech1Detail': '  - Zero-expansion magnetic field for plasma direction',
      'tech1Detail2': '  - 99.7% energy transfer efficiency',
      'tech1Detail3': '  - Liquid helium cooling at 4K',
      'tech2': '• Adaptive Plasma Generator:',
      'tech2Detail': '  - Real-time adjustment of ionization parameters',
      'tech2Detail2': '  - Automatic mode switching based on altitude',
      'tech2Detail3': '  - Self-optimizing plasma confinement',
      'tech3': '• Ceramic-Matrix Composite (CMC) Liners:',
      'tech3Detail': '  - Withstand temperatures up to 3,500°C',
      'tech3Detail2': '  - 10,000+ thermal cycles without degradation',
      'tech3Detail3': '  - Self-healing micro-crack resistance',
      'tech4': '• Quantum Plasma Sensors:',
      'tech4Detail': '  - Real-time plasma density monitoring',
      'tech4Detail2': '  - Predictive failure detection',
      'tech4Detail3': '  - Nanosecond response time',

      'performanceAdvantages': 'PERFORMANCE ADVANTAGES:',
      'advantage1': '• SILENT OPERATION:',
      'advantage1Detail':
          '  - Acoustic signature reduced by 90% vs chemical rockets',
      'advantage1Detail2':
          '  - Cabin noise level <45 dB (comparable to luxury car)',
      'advantage1Detail3': '  - No sonic boom during ascent',
      'advantage2': '• SMOOTH ACCELERATION:',
      'advantage2Detail': '  - Continuous thrust without staging events',
      'advantage2Detail2':
          '  - Maximum acceleration limited to 2.5G for passenger comfort',
      'advantage2Detail3': '  - Vibration levels <0.01G in passenger cabin',
      'advantage3': '• INSTANT RESTART CAPABILITY:',
      'advantage3Detail':
          '  - Can be stopped and restarted any number of times',
      'advantage3Detail2': '  - Emergency abort capability to any altitude',
      'advantage3Detail3': '  - Cold start in <5 seconds',
      'advantage4': '• PRECISION CONTROL:',
      'advantage4Detail': '  - Thrust vectoring ±15° with magnetic steering',
      'advantage4Detail2': '  - Landing accuracy ±5 meters',
      'advantage4Detail3': '  - Hover capability for 30+ minutes',

      'maintenanceFeatures': 'MAINTENANCE FEATURES:',
      'maintenance1': '• Full reusability: 500+ flights without major overhaul',
      'maintenance2': '• Modular design: Engine swap in <4 hours',
      'maintenance3':
          '• Self-diagnostics: 5,000+ sensors for predictive maintenance',
      'maintenance4': '• Hot-swappable plasma generators',
      'maintenance5': '• Automated inspection drones',
      'maintenance6': '• Mean time between failures: 50,000 hours',

      'environmentalBenefits': 'ENVIRONMENTAL BENEFITS:',
      'env1': '• Zero greenhouse gas emissions',
      'env2': '• Exhaust: Superheated water vapor only',
      'env3': '• No toxic chemicals or particulates',
      'env4': '• Radiation levels below natural background',
      'env5': '• Ozone-friendly (no chlorine compounds)',
      'env6': '• Local air quality unaffected by launches',

      'safetySystems': 'SAFETY SYSTEMS:',
      'safety1': '• Triple-redundant plasma containment',
      'safety2': '• 12 independent shutdown systems',
      'safety3': '• Magnetic emergency venting',
      'safety4': '• Passive cooling during power loss',
      'safety5': '• Radiation shielding for crew compartments',
      'safety6': '• Fire suppression with inert gases',
      'safety7': '• Emergency landing anywhere on Earth',

      'aestheticFeatures': 'AESTHETIC FEATURES (FOR TOURISM):',
      'aesthetic1': '• Adjustable plasma color:',
      'aesthetic1Detail':
          '  - Standard: Deep violet (10,000K plasma temperature)',
      'aesthetic1Detail2': '  - Night launches: Cyan-blue for visual spectacle',
      'aesthetic1Detail3': '  - Special events: Programmable light shows',
      'aesthetic1Detail4': '  - Custom colors for private launches',
      'aesthetic2': '• Silent operation eliminates "rocket roar"',
      'aesthetic3': '• No smoke plumes - only shimmering heat haze',
      'aesthetic4': '• Smooth, graceful ascent trajectory',
      'aesthetic5': '• Visible from 500km during night launches',

      'economicBenefits': 'ECONOMIC BENEFITS:',
      'economic1':
          '• Fuel cost: \$5,000 per flight (vs \$500,000 for chemical)',
      'economic2': '• Maintenance: \$10,000 per flight cycle',
      'economic3': '• Engine lifespan: 100,000 flight hours',
      'economic4': '• Turnaround time: 2 hours between flights',
      'economic5': '• Training: 50% less than conventional pilots',
      'economic6': '• Insurance: 80% lower premiums',

      'applications': 'APPLICATIONS:',
      'app1': '• Primary propulsion for "Prometheus" passenger liner',
      'app2': '• Primary propulsion for "Atlant" cargo transport',
      'app3': '• Emergency backup for orbital stations',
      'app4': '• Future: Lunar shuttle variant (HPE-1L)',
      'app5': '• Atmospheric research platforms',
      'app6': '• Point-to-point Earth transport',

      'developmentTimeline': 'DEVELOPMENT TIMELINE:',
      'timeline1': '• 2023: Laboratory prototype (10kN thrust)',
      'timeline2': '• 2024: Flight-scale prototype (500kN)',
      'timeline3': '• 2025: Certification testing complete',
      'timeline4': '• 2026: First operational flight',
      'timeline5': '• 2027: Full production (12 engines/month)',
      'timeline6': '• 2028: Second generation (HPE-2) development',

      'comparisonTable': 'COMPARISON WITH EXISTING TECHNOLOGIES:',
      'comparison1': '• vs CHEMICAL ROCKETS:',
      'comparison1Detail': '  - 10x higher specific impulse',
      'comparison1Detail2': '  - 100x lower vibration',
      'comparison1Detail3': '  - Unlimited restart capability',
      'comparison1Detail4': '  - 99% lower fuel cost',
      'comparison2': '• vs ELECTRIC PROPULSION:',
      'comparison2Detail': '  - 1,000x higher thrust',
      'comparison2Detail2': '  - Atmospheric operation capability',
      'comparison2Detail3': '  - Instant throttle response',
      'comparison3': '• vs AIR-BREATHING ENGINES:',
      'comparison3Detail': '  - Works in vacuum',
      'comparison3Detail2': '  - No moving parts in hot section',
      'comparison3Detail3': '  - Higher altitude capability',
      'comparison4': '• vs NUCLEAR THERMAL:',
      'comparison4Detail': '  - No radioactive exhaust',
      'comparison4Detail2': '  - Immediately usable after flight',
      'comparison4Detail3': '  - Public acceptance for tourism',

      // Class 3 Engine
      'engineClass3':
          'CLASS 3: MAGNETOPLASMA NUCLEAR ELECTRIC PROPULSION (MPNEP)',
      'engine3Desc': 'HIGH-EFFICIENCY PROPULSION FOR INTERPLANETARY TRAVEL',

      'engine3Specs': 'TECHNICAL SPECIFICATIONS:',
      'engine3Thrust': '• Thrust: 50-500 N (adjustable)',
      'engine3Isp': '• Specific impulse: 10,000 seconds',
      'engine3Power': '• Power requirement: 10-100 MW',
      'engine3Efficiency': '• Efficiency: 65% electrical to thrust',
      'engine3Fuel': '• Fuel: Xenon/Argon plasma',
      'engine3Reactors': '• Reactors: 3 independent nuclear (200MW each)',

      'engine3Advantages': 'ADVANTAGES:',
      'engine3Adv1': '• Ultra-high efficiency for long journeys',
      'engine3Adv2': '• Continuous low-thrust acceleration',
      'engine3Adv3': '• Fuel consumption: 100g/hour at cruise',
      'engine3Adv4': '• Virtually unlimited delta-V',
      'engine3Adv5': '• Silent operation in space',
      'engine3Adv6': '• No vibration for scientific instruments',

      'engine3Safety': 'SAFETY FEATURES:',
      'engine3Safe1': '• Triple containment for nuclear material',
      'engine3Safe2': '• Automatic shutdown during anomalies',
      'engine3Safe3': '• Radiation shielding: 5m water equivalent',
      'engine3Safe4': '• Independent cooling loops',
      'engine3Safe5': '• Emergency jettison capability',

      'roadmapTitle': 'STRATEGIC ROADMAP',
      'phase1': 'PHASE 1: ORBIT TOURISM (2026-2040)',
      'phase1Items':
          'Construction of "CAPITAL" (first 4 modules)\n'
          'Regular "Prometheus" flights (3 times per day)\n'
          'Goal: 10,000 tourists per year, revenue \$2.5 billion',

      'phase2': 'PHASE 2: LUNAR TOURISM (2035-2045)',
      'phase2Items':
          'Opening of "OASIS" (first stage)\n'
          'Lunar cruises on "Zeus" (without landing)\n'
          'Goal: 500 lunar tourists per year, revenue \$10 billion',

      'phase3': 'PHASE 3: MARTIAN EXPEDITION (2045-2050)',
      'phase3Items':
          'First manned mission to Mars\n'
          'Opening of "WASTELAND" for tourists\n'
          'Goal: Become leader in interplanetary tourism',

      'businessModel': 'BUSINESS MODEL',
      'mainIncome': 'MAIN INCOME: TOURISM (90%)',
      'orbitalTourism': '🎫 ORBITAL TOURISM:',
      'orbitalWeekend':
          '• "Orbital Weekend": \$250,000 × 10,000 people/year = \$2.5B',
      'capitalStay': '• Stay on "CAPITAL": \$50,000/person × 5 days = \$5B',
      'entertainment': '• Entertainment/souvenirs: \$1.5B',

      'lunarTourism': '🌙 LUNAR TOURISM:',
      'lunarWeek': '• Week on Moon: \$20,000,000 × 500 people = \$10B',
      'lunarCruises': '• Lunar cruises: \$5,000,000 × 200 people = \$1B',

      'martianTourism': '🪐 MARTIAN TOURISM:',
      'martianExpedition':
          '• Mars expedition: \$50,000,000 × 100 people = \$5B',
      'totalRevenue': '📈 TOTAL: ~\$25 billion/year',

      'additionalIncome': 'ADDITIONAL INCOME (10%)',
      'labRental': '• 🛰️ Laboratory rental on stations',
      'satelliteLaunch': '• 🚀 Satellite launches from "Atlant"',
      'spaceEducation': '• 🎓 Space education (schools, universities)',
      'filmShooting': '• 🎬 Film shooting in space',
      'techLicensing': '• ⚡ Technology licensing (engines, life support)',
      'dataServices': '• 📡 Space-based data services',

      'uniqueFeatures': 'WHY "SUNRISE" IS UNIQUE',
      'feature1': '1. TOURISM AS DRIVER OF EXPANSION',
      'feature1Desc':
          'For the first time in history: space exploration is financed not by taxpayers, but by tourists',

      'feature2': '2. SPACE AS PLACE TO RELAX, NOT SURVIVE',
      'feature2Desc':
          'We create not "survival stations", but space resorts with 5* service level',

      'feature3': '3. COMPLETE VACATION CYCLE',
      'feature3Desc':
          'From quick orbital weekend (\$250k) to year-long interplanetary expedition (\$50M) — for every interest and budget level',

      'feature4': '4. SAFETY AS PRIORITY',
      'feature4Desc':
          'Every tourist is not a "test subject", but a guest. We guarantee safety at airline level (1 incident per 10 million flights)',

      'mission': 'OUR MISSION',
      'missionText':
          '"Make space accessible to everyone who dreams of seeing it, and use these funds for real scientific exploration of the Solar System."',
      'missionQuote':
          'WE DON\'T JUST SELL TICKETS TO SPACE.\nWE CREATE A FUTURE WHERE SPACE TOURISM IS AS NORMAL AS FLYING TO ANOTHER CITY.',

      // Research section - English version
      'researchTitle': 'SUNRISE: THE FIELD INITIATIVE',
      'researchSubtitle':
          'INVESTIGATION OF PRIMARY FIELDS AND THE NATURE OF REALITY',
      'aboutProject': 'ABOUT THE PROJECT',
      'aboutProjectText':
          'SUNRISE is known to the world as the first integrator of space tourism. Our ships ("Prometheus", "Zeus") and orbital stations ("Capital") are the pinnacle of engineering, operating on the principles of classical physics and plasma technologies.\n\n'
          'But there are questions that no textbook can answer. There is a horizon beyond which engineering ends and pure cognition begins.\n\n'
          'The Field Initiative is a closed research division of SUNRISE. Our goal: to understand the nature of primary energy (the field) from which reality is woven, and learn to control it directly.',

      'philosophyField': 'PHILOSOPHY: WHY ARE WE DOING THIS?',
      'philosophyFieldText':
          'Classical physics describes how atoms interact. We want to understand what an atom really is.\n\n'
          'Our approach is based on three theses:\n\n'
          '• Matter is secondary. An atom is not a particle, but a stable clot (excitation) in the primary field. What we call "emptiness" is actually an ocean of energy.\n\n'
          '• Gravity is a gradient. Attraction of bodies occurs not because of "force", but because of the difference in the field\'s intensity. To fall means to move where the field is denser.\n\n'
          '• Control of reality is possible. If we understand the structure of the field, we can create local zones with altered properties — for example, repulsion zones instead of attraction.\n\n'
          'We are not looking for "dark matter" or "new particles" in the sense that colliders search for them. We are looking for the fabric on which these particles exist.',

      'keyDirections': 'KEY RESEARCH DIRECTIONS (R&D)',
      'direction1': '1. FUNDAMENTAL FIELD PHYSICS',
      'direction1Text':
          'Rethinking the basics.\n\n'
          'We analyze experiments that official science avoids. Effects that do not fit into the Standard Model. The nature of quantum entanglement as a property of the field, not particles.\n\n'
          '• Analysis of Nikola Tesla\'s works (late patents).\n'
          '• Investigation of the Biefeld-Brown effect (interaction of electricity and gravity).\n'
          '• Nature of "zero-point fluctuations" of the quantum vacuum.',

      'direction2': '2. SPACE ENGINEERING (METRIC)',
      'direction2Text':
          'How to bend space without mass.\n\n'
          'Today we know that mass curves space. But mass is concentrated energy. Is it possible to curve space directly, concentrating field energy without creating a massive object?\n\n'
          '• Creation of laboratory setups to register local metric changes.\n'
          '• Experiments with rapidly alternating ultra-high frequency electromagnetic fields.\n'
          '• Search for "gravitational shadow" and gravity shielding.',

      'direction3': '3. LIFT TECHNOLOGIES (LEVITATION)',
      'direction3Text':
          'From fan — to field.\n\n'
          'Our plasma engines (HPE-1) are the pinnacle of jet technology development. But a jet engine pushes a ship by ejecting mass. We are looking for a way to push a ship by changing the state of the field around it.\n\n'
          '• Development of "gradient lifter" theory.\n'
          '• Creation of a prototype platform using field potential difference (not air pressure).\n'
          '• Investigation of superconductor properties combined with rapid rotation.',

      'theoreticalModel': 'THEORETICAL MODEL: "HOLOGRAPHIC FIELD"',
      'theoreticalModelText':
          'At the core of our working hypothesis is the concept of reality as a multidimensional hologram.\n\n'
          '• The manifested world (3D) is an interference pattern.\n'
          '• The primary field (base frequency) is the hologram carrier.\n'
          '• Mass and gravity are local frequency distortions.\n\n'
          'If this model is correct, then by changing the frequency characteristics of the field in a given area, we can locally alter the laws of physics in that area.',

      'roadmapField': 'PRACTICAL GOALS (FIELD INITIATIVE ROADMAP)',
      'phase0':
          'Phase 0 (2025-2027): Collection of experimental data. Analysis of anomalies. Creation of mathematical apparatus.',
      'phase1Field':
          'Phase 1 (2028-2032): Laboratory confirmation of field gradient existence. Creation of "zero-point" sensor.',
      'phase2Field':
          'Phase 2 (2033-2040): Construction of experimental testbed for creating local zone of altered gravity (levitation of 1g object).',
      'phase3Field':
          'Phase 3 (2041-2050): Integration of technology with SUNRISE fleet. First flight of a ship without using jet propulsion in the atmosphere.',

      'whoResearches': 'WHO IS RESEARCHING?',
      'whoResearchesText':
          'We are gathering a team that is not afraid to look beyond the horizon.\n\n'
          '• Theoretical physicists ready to rethink fundamentals.\n'
          '• Experimentalists with experience at CERN and private laboratories.\n'
          '• Engineers capable of building setups not found in textbooks.\n'
          '• Philosophers to ask the right questions.\n\n'
          'If you feel that there is something more beyond matter, and you want not just to believe, but to know — we are waiting for you.',

      'connection': 'CONNECTION WITH THE MAIN SUNRISE PROJECT',
      'connectionText':
          'The Field Initiative is not a diversion of resources from tourism. It is strategic investment in the future.\n\n'
          '• Success in Phase 2 (levitation) will allow creation of landing platforms without engines.\n'
          '• Success in Phase 3 (metric alteration) will shorten the flight to Mars from 7 months to 7 days.\n'
          '• Complete success of the program will give humanity what we never even dreamed of — control over gravity.',

      'conclusion': 'CONCLUSION',
      'conclusionText':
          'We stand on the threshold of new physics. SUNRISE is already building bridges to the stars using titanium and plasma. But the real revolution will occur when we understand that the stars and we ourselves are made of the same thing.\n\n'
          'The Field Initiative is our contribution to this understanding.\n\n'
          '"We don\'t just sell tickets to space. We create a future where space becomes as accessible as flying to another city. The Field Initiative is a step towards making this flight take not hours, but minutes."',
      'founder': '— SUNRISE Project Founder',
    },
    'ru': {
      'appTitle': 'ПРОЕКТ «РАССВЕТ»',
      'subtitle':
          'ПЕРВАЯ ИНТЕГРИРОВАННАЯ МЕЖПЛАНЕТНАЯ ТРАНСПОРТНАЯ СИСТЕМА С ФОКУСОМ НА КОСМИЧЕСКИЙ ТУРИЗМ',
      'home': 'ГЛАВНАЯ',
      'ships': 'ФЛОТ',
      'stations': 'ИНФРАСТРУКТУРА',
      'technologies': 'ТЕХНОЛОГИИ',
      'roadmap': 'КАРТА ПУТИ',
      'research': 'ИССЛЕДОВАНИЯ',

      'philosophy': 'ФИЛОСОФИЯ ПРОЕКТА',
      'philosophyText':
          '«РАССВЕТ» — это не просто космическая программа. Это — создание новой индустрии космического туризма '
          'и доступного освоения Солнечной системы.\n\n'
          'Мы верим, что путь к звёздам должен начинаться не с правительственных программ, '
          'а с желания людей увидеть космос своими глазами. Поэтому мы строим не просто корабли, '
          'а целую экосистему космического гостеприимства.',

      'threePillars': 'ТРИ СТОЛПА СИСТЕМЫ',
      'pillar1': 'КОСМИЧЕСКИЙ ФЛОТ',
      'pillar1Subtitle': 'Комфорт и безопасность превыше всего',
      'pillar2': 'ОРБИТАЛЬНЫЕ МЕГАПОЛИСЫ',
      'pillar2Subtitle': 'Космос как место жизни и отдыха',
      'pillar3': 'ТЕХНОЛОГИЧЕСКАЯ БАЗА',
      'pillar3Subtitle': 'Инновации для доступности',

      'mainDriver': 'ГЛАВНЫЙ ДРАЙВЕР: ТУРИЗМ КАК ТОПЛИВО ДЛЯ ЭКСПАНСИИ',
      'mainDriverText':
          '«Сначала покажем красоту космоса — потом используем прибыль для его изучения»',

      'spaceFleet': 'КОСМИЧЕСКИЙ ФЛОТ «РАССВЕТА»',
      'prometheus': 'ПРОМЕТЕЙ',
      'prometheusType':
          'ОДНОСТУПЕНЧАТЫЙ МНОГОРАЗОВЫЙ ПАССАЖИРСКИЙ ЛАЙНЕР КЛАССА «ЛЮКС»',
      'prometheusDesc':
          'Регулярные туристические рейсы Земля → «СТОЛИЦА». '
          'Вместимость: 10 человек (8 туристов + 2 пилота/стюарда).',

      'touristFeatures': 'ТУРИСТИЧЕСКИЕ ОСОБЕННОСТИ:',
      'panoramicWindows':
          '🪟 Панорамные иллюминаторы с умным стеклом (затемнение/прозрачность)',
      'audioGuide': '🎧 Аудиогид на 8 языках о видах из окна',
      'spaceCuisine': '🍽️ Космическая кухня от мишленовских поваров',
      'autoPhoto':
          '📸 Автоматическая фото/видеосъёмка полёта для каждого туриста',

      'keyInnovations': 'КЛЮЧЕВЫЕ ИННОВАЦИИ:',
      'maglev':
          'Магнитный старт (MAGLEV LAUNCH) — плавный разгон 0→500 км/ч при перегрузке всего 2.5G',
      'hybridEngine':
          'Гибридный плазменный двигатель 1-го класса — бесшумная работа, ночное фиолетовое свечение',
      'seamlessTransition': 'Бесшовный переход атмосферный/космический режим',
      'precisionLanding':
          'Точность посадки ±5 метров — стыковка прямо с терминалом',
      'ticketPrice':
          'СТОИМОСТЬ БИЛЕТА: \$250,000 за 3-дневный тур «Орбитальный уикенд»',

      'atlant': 'АТЛАНТ',
      'atlantType': 'ОДНОСТУПЕНЧАТЫЙ МНОГОРАЗОВЫЙ ГРУЗОВОЙ ЛАЙНЕР',
      'atlantDesc':
          'Снабжение орбитальных станций и лунной базы. '
          'Грузоподъёмность: 50 тонн полезной нагрузки.',
      'unification': 'ПОЛНАЯ УНИФИКАЦИЯ С «ПРОМЕТЕЕМ»:',
      'sameLaunch':
          'Та же стартовая система — магнитный разгон на тех же площадках',
      'sameShape':
          'Та же аэродинамическая форма — каплевидный корпус для эстетики',
      'sameEngines': 'Те же двигатели 1-го класса — экономия на обслуживании',
      'sameLanding': 'Та же система посадки — взаимозаменяемость запчастей',
      'specialFeature':
          'Может временно переоборудоваться в туристический лайнер для групповых туров (100+ человек)',

      'zeus': 'ЗЕВС',
      'zeusType': 'МЕЖПЛАНЕТНЫЙ ЛАЙНЕР С ИСКУССТВЕННОЙ ГРАВИТАЦИЕЙ',
      'zeusDesc':
          'Дальние туристические круизы «СТОЛИЦА» → Марс (2 месяца). '
          'Вместимость: 30 туристов + 20 членов экипажа.',
      'touristConcept': 'ТУРИСТИЧЕСКИЙ КОНЦЕПТ: «Круиз по Солнечной системе»',

      'revolutionaryFeatures': 'РЕВОЛЮЦИОННЫЕ ОСОБЕННОСТИ:',
      'rotatingModule':
          '🔄 Вращающийся модуль диаметром 50 метров — искусственная гравитация 0.38G',
      'luxurySuites':
          '🏨 Люксы с видом на космос — каждый номер с панорамным окном',
      'entertainment':
          '🎭 Развлечения: Космический театр, обсерватория, спортзал с искусственной гравитацией',
      'education':
          '🔬 Образовательная программа: Лекции астронавтов, научные эксперименты для туристов',

      'uniqueLogistics': 'УНИКАЛЬНАЯ ЛОГИСТИКА:',
      'dockedPrometheus':
          'К «Зевсу» постоянно пристыкованы 3 корабля «Прометей»',
      'shuttleFunctions':
          'Они служат как:\n'
          '• Экскурсионные челноки (посещение других станций)\n'
          '• Спа-модули (невесомость для процедур)\n'
          '• Рестораны с видом (вращающиеся для смены панорамы)',
      'cruisePrice':
          'СТОИМОСТЬ КРУИЗА: \$10,000,000 за 7-месячное путешествие к Марсу',

      'orbitalInfrastructure': 'ОРБИТАЛЬНАЯ ИНФРАСТРУКТУРА',
      'capital': 'СТОЛИЦА — ОРБИТАЛЬНЫЙ МЕГАПОЛИС',
      'capitalDesc': 'Первый космический город-курорт',
      'capitalLocation': 'Околоземная орбита, 400 км высота',
      'capitalCapacity':
          'Вместимость: 500 постоянных жителей + 2000 туристов одновременно',

      'touristInfrastructure': 'ТУРИСТИЧЕСКАЯ ИНФРАСТРУКТУРА:',
      'hotels': '🏨 ОТЕЛИ:',
      'zeroGSuites': '«Zero-G Suites» — номера в невесомости',
      'gravityGardens':
          '«Gravity Gardens» — номера во вращающихся модулях с искусственной гравитацией',
      'panoramaPods': '«Panorama Pods» — капсулы с 360° обзором Земли',

      'restaurants': '🍽️ РЕСТОРАНЫ:',
      'orbitBistro': '«Orbit Bistro» — невесомость + молекулярная кухня',
      'sunriseCafe': '«Sunrise Cafe» — 16 восходов в сутки',
      'auroraBar': '«Aurora Bar» — бар на пути полярных сияний',

      'entertainmentList': '🎪 РАЗВЛЕЧЕНИЯ:',
      'spaceWalks': 'Космические прогулки (в скафандрах нового поколения)',
      'zeroGSports': 'Спорт в невесомости (футбол, плавание)',
      'educationalTours': 'Образовательные туры «Как устроена станция»',
      'spaceWeddings': 'Свадьбы/мероприятия в космосе',

      'stationEconomy': 'ЭКОНОМИКА СТАНЦИИ:',
      'dailyTraffic': 'Ежедневный трафик: 200-300 туристов',
      'averageBill':
          'Средний чек: \$50,000 на человека (отель+развлечения+сувениры)',
      'annualTurnover': 'Годовой оборот: \$3-5 млрд',

      'oasis': 'ЛУННАЯ БАЗА «ОАЗИС»',
      'oasisType': 'ЭКСКЛЮЗИВНЫЙ КОСМИЧЕСКИЙ КУРОРТ',
      'oasisLocation': 'Кратер Шеклтона, южный полюс Луны',
      'oasisConcept':
          'КОНЦЕПЦИЯ: «Самый отдалённый и роскошный отель во Вселенной»',

      'uniqueOffers': 'УНИКАЛЬНЫЕ ПРЕДЛОЖЕНИЯ:',
      'lunarSafari': 'Лунные сафари на роверах по историческим местам посадок',
      'lunarGolf': 'Гольф с видом на Землю (мяч летит в 6 раз дальше!)',
      'lunarSpa': 'Спа-процедуры с лунной пылью (обогащённой минералами)',
      'subsurfaceSuites':
          'Подповерхностные люксы — защита от радиации + уникальная атмосфера',
      'oasisPrice': 'СТОИМОСТЬ: \$20,000,000 за недельное пребывание',

      'wasteland': 'МАРСИАНСКАЯ СТАНЦИЯ «ПУСТОШЬ»',
      'wastelandType': 'ЭКСТРЕМАЛЬНЫЙ ТУРИЗМ ДЛЯ ИСКАТЕЛЕЙ ПРИКЛЮЧЕНИЙ',
      'wastelandLocation': 'Равнина Эллада, Марс',
      'wastelandConcept':
          'КОНЦЕПЦИЯ: «Стань первым туристом на другой планете»',

      'programs': 'ПРОГРАММЫ:',
      'martianExplorer':
          '«Марсианский исследователь» — 30-дневная экспедиция с учёными',
      'photoSafari': '«Фотосафари» — поиск лучших кадров марсианских пейзажей',
      'extremeSurvival':
          '«Экстремальная выживальщик» — жизнь как у первых колонистов',
      'wastelandPrice': 'СТОИМОСТЬ: От \$50,000,000 за 3-месячную экспедицию',

      // =========== ТЕХНОЛОГИЧЕСКАЯ БАЗА ===========
      'technologyBase': 'ТЕХНОЛОГИЧЕСКАЯ БАЗА',
      'threeEngineClasses': 'ТРИ КЛАССА ДВИГАТЕЛЕЙ',

      // Двигатель 1 класса - Подробное описание
      'engineClass1': 'КЛАСС 1: ГИБРИДНЫЙ ПЛАЗМЕННЫЙ ДВИГАТЕЛЬ (HPE-1)',
      'engine1Desc':
          'РЕВОЛЮЦИОННАЯ ДВУХРЕЖИМНАЯ СИСТЕМА ДЛЯ ЗЕМЛЯ→КОСМОС ТРАНСПОРТА',

      'engineSpecs': 'ТЕХНИЧЕСКИЕ ХАРАКТЕРИСТИКИ:',
      'thrustAtmospheric': '• Тяга в атмосфере: 1,500 кН',
      'thrustVacuum': '• Тяга в вакууме: 2,200 кН',
      'specificImpulse': '• Удельный импульс: 450с (атмосфера), 850с (вакуум)',
      'thrustToWeight': '• Отношение тяги к весу: 85:1',
      'workingFluid':
          '• Рабочее тело: Воздух (атмосфера), Жидкий водород (космос)',
      'powerSource':
          '• Источник питания: Бортовые термоядерные реакторы (5 МВт каждый)',
      'operatingTemp': '• Рабочая температура: До 3,500°C',
      'plasmaTemp':
          '• Температура плазмы: 10,000K (стандартное фиолетовое свечение)',

      'operatingPrinciple': 'ПРИНЦИП РАБОТЫ:',
      'principle1': '1. Атмосферный режим (0-40 км):',
      'principle1Detail':
          '   - Воздушное плазменное горение с использованием атмосферного кислорода',
      'principle1Detail2': '   - Магнитное сжатие ионизированного воздуха',
      'principle1Detail3': '   - Эффективность: 95% преобразования энергии',
      'principle2': '2. Переходный режим (40-80 км):',
      'principle2Detail':
          '   - Постепенный переход с воздуха на водородное топливо',
      'principle2Detail2': '   - Смешанное плазменное горение',
      'principle2Detail3': '   - Автоматическое переключение по высоте',
      'principle3': '3. Космический режим (80+ км):',
      'principle3Detail':
          '   - Чистая водородная плазма с магнитным удержанием',
      'principle3Detail2': '   - Оптимизирован для работы в вакууме',
      'principle3Detail3': '   - Плавная регулировка тяги от 0-100%',

      'keyTechnologies': 'КЛЮЧЕВЫЕ ТЕХНОЛОГИИ:',
      'tech1': '• Сверхпроводящее магнитное сопло:',
      'tech1Detail':
          '  - Нулевое расширение магнитного поля для направления плазмы',
      'tech1Detail2': '  - Эффективность передачи энергии: 99,7%',
      'tech1Detail3': '  - Охлаждение жидким гелием при 4K',
      'tech2': '• Адаптивный плазменный генератор:',
      'tech2Detail': '  - Регулировка параметров ионизации в реальном времени',
      'tech2Detail2': '  - Автоматическое переключение режимов по высоте',
      'tech2Detail3': '  - Самооптимизирующееся плазменное удержание',
      'tech3': '• Керамические композитные вкладыши (CMC):',
      'tech3Detail': '  - Выдерживают температуры до 3,500°C',
      'tech3Detail2': '  - 10,000+ термических циклов без деградации',
      'tech3Detail3': '  - Самовосстановление микротрещин',
      'tech4': '• Квантовые плазменные сенсоры:',
      'tech4Detail': '  - Мониторинг плотности плазмы в реальном времени',
      'tech4Detail2': '  - Прогнозирование отказов',
      'tech4Detail3': '  - Время отклика: наносекунды',

      'performanceAdvantages': 'ПРЕИМУЩЕСТВА В РАБОТЕ:',
      'advantage1': '• БЕСШУМНАЯ РАБОТА:',
      'advantage1Detail':
          '  - Акустическая сигнатура снижена на 90% по сравнению с химическими ракетами',
      'advantage1Detail2':
          '  - Уровень шума в салоне <45 дБ (сравнимо с люксовым автомобилем)',
      'advantage1Detail3': '  - Отсутствие звукового удара при подъёме',
      'advantage2': '• ПЛАВНОЕ УСКОРЕНИЕ:',
      'advantage2Detail': '  - Непрерывная тяга без ступенчатых переходов',
      'advantage2Detail2':
          '  - Максимальное ускорение ограничено 2.5G для комфорта пассажиров',
      'advantage2Detail3': '  - Уровень вибраций <0.01G в пассажирском салоне',
      'advantage3': '• ВОЗМОЖНОСТЬ МГНОВЕННОГО ПЕРЕЗАПУСКА:',
      'advantage3Detail':
          '  - Может быть остановлен и перезапущен любое количество раз',
      'advantage3Detail2':
          '  - Возможность аварийного прерывания на любой высоте',
      'advantage3Detail3': '  - Холодный старт за <5 секунд',
      'advantage4': '• ТОЧНОЕ УПРАВЛЕНИЕ:',
      'advantage4Detail':
          '  - Векторирование тяги ±15° с магнитным управлением',
      'advantage4Detail2': '  - Точность посадки ±5 метров',
      'advantage4Detail3': '  - Возможность зависания на 30+ минут',

      'maintenanceFeatures': 'ОСОБЕННОСТИ ОБСЛУЖИВАНИЯ:',
      'maintenance1':
          '• Полная многоразовость: 500+ полётов без капитального ремонта',
      'maintenance2': '• Модульная конструкция: Замена двигателя за <4 часа',
      'maintenance3':
          '• Самодиагностика: 5,000+ датчиков для прогнозного обслуживания',
      'maintenance4': '• Горячая замена плазменных генераторов',
      'maintenance5': '• Автоматические дроны для инспекции',
      'maintenance6': '• Среднее время между отказами: 50,000 часов',

      'environmentalBenefits': 'ЭКОЛОГИЧЕСКИЕ ПРЕИМУЩЕСТВА:',
      'env1': '• Нулевые выбросы парниковых газов',
      'env2': '• Выхлоп: Только перегретый водяной пар',
      'env3': '• Отсутствие токсичных химикатов и твердых частиц',
      'env4': '• Уровень радиации ниже естественного фона',
      'env5': '• Безопасен для озонового слоя (нет хлорных соединений)',
      'env6': '• Местное качество воздуха не страдает от запусков',

      'safetySystems': 'СИСТЕМЫ БЕЗОПАСНОСТИ:',
      'safety1': '• Трехкратное резервирование плазменного удержания',
      'safety2': '• 12 независимых систем аварийного отключения',
      'safety3': '• Магнитный аварийный сброс',
      'safety4': '• Пассивное охлаждение при потере питания',
      'safety5': '• Радиационная защита для отсеков экипажа',
      'safety6': '• Пожарное тушение инертными газами',
      'safety7': '• Аварийная посадка в любой точке Земли',

      'aestheticFeatures': 'ЭСТЕТИЧЕСКИЕ ОСОБЕННОСТИ (ДЛЯ ТУРИЗМА):',
      'aesthetic1': '• Настраиваемый цвет плазмы:',
      'aesthetic1Detail':
          '  - Стандартный: Глубокий фиолетовый (температура плазмы 10,000K)',
      'aesthetic1Detail2':
          '  - Ночные запуски: Голубовато-синий для зрелищности',
      'aesthetic1Detail3':
          '  - Специальные мероприятия: Программируемые световые шоу',
      'aesthetic1Detail4': '  - Пользовательские цвета для частных запусков',
      'aesthetic2': '• Бесшумная работа устраняет "ракетный рев"',
      'aesthetic3': '• Отсутствие дымовых шлейфов - только мерцающая дымка',
      'aesthetic4': '• Плавная, грациозная траектория подъёма',
      'aesthetic5': '• Видимость с расстояния 500 км при ночных запусках',

      'economicBenefits': 'ЭКОНОМИЧЕСКИЕ ПРЕИМУЩЕСТВА:',
      'economic1':
          '• Стоимость топлива: \$5,000 за полёт (против \$500,000 у химических)',
      'economic2': '• Обслуживание: \$10,000 за цикл полёта',
      'economic3': '• Срок службы двигателя: 100,000 лётных часов',
      'economic4': '• Время подготовки к следующему полёту: 2 часа',
      'economic5': '• Обучение: На 50% меньше, чем для обычных пилотов',
      'economic6': '• Страховка: На 80% ниже премии',

      'applications': 'ПРИМЕНЕНИЕ:',
      'app1':
          '• Основная двигательная установка пассажирского лайнера «Прометей»',
      'app2': '• Основная двигательная установка грузового транспорта «Атлант»',
      'app3': '• Аварийное резервное питание орбитальных станций',
      'app4': '• В будущем: Лунный шаттл (модификация HPE-1L)',
      'app5': '• Атмосферные исследовательские платформы',
      'app6': '• Точечные перевозки по Земле',

      'developmentTimeline': 'СРОКИ РАЗРАБОТКИ:',
      'timeline1': '• 2023: Лабораторный прототип (тяга 10 кН)',
      'timeline2': '• 2024: Лётный прототип в масштабе (тяга 500 кН)',
      'timeline3': '• 2025: Завершены сертификационные испытания',
      'timeline4': '• 2026: Первый рабочий полёт',
      'timeline5': '• 2027: Полномасштабное производство (12 двигателей/месяц)',
      'timeline6': '• 2028: Разработка второго поколения (HPE-2)',

      'comparisonTable': 'СРАВНЕНИЕ С СУЩЕСТВУЮЩИМИ ТЕХНОЛОГИЯМИ:',
      'comparison1': '• vs ХИМИЧЕСКИЕ РАКЕТЫ:',
      'comparison1Detail': '  - В 10 раз выше удельный импульс',
      'comparison1Detail2': '  - В 100 раз меньше вибраций',
      'comparison1Detail3': '  - Неограниченная возможность перезапуска',
      'comparison1Detail4': '  - На 99% ниже стоимость топлива',
      'comparison2': '• vs ЭЛЕКТРИЧЕСКИЕ ДВИГАТЕЛИ:',
      'comparison2Detail': '  - В 1,000 раз выше тяга',
      'comparison2Detail2': '  - Возможность работы в атмосфере',
      'comparison2Detail3': '  - Мгновенная реакция на изменение тяги',
      'comparison3': '• vs ВОЗДУШНО-РЕАКТИВНЫЕ ДВИГАТЕЛИ:',
      'comparison3Detail': '  - Работает в вакууме',
      'comparison3Detail2': '  - Отсутствие движущихся частей в горячей зоне',
      'comparison3Detail3': '  - Большая высотность',
      'comparison4': '• vs ЯДЕРНЫЕ ТЕРМИЧЕСКИЕ:',
      'comparison4Detail': '  - Нет радиоактивного выхлопа',
      'comparison4Detail2': '  - Мгновенная готовность после полёта',
      'comparison4Detail3': '  - Общественное принятие для туризма',

      // Двигатель 3 класса
      'engineClass3':
          'КЛАСС 3: МАГНИТОПЛАЗМЕННЫЙ ЯДЕРНЫЙ ЭЛЕКТРОДВИГАТЕЛЬ (MPNEP)',
      'engine3Desc':
          'ВЫСОКОЭФФЕКТИВНАЯ ДВИГАТЕЛЬНАЯ УСТАНОВКА ДЛЯ МЕЖПЛАНЕТНЫХ ПЕРЕЛЁТОВ',

      'engine3Specs': 'ТЕХНИЧЕСКИЕ ХАРАКТЕРИСТИКИ:',
      'engine3Thrust': '• Тяга: 50-500 Н (регулируемая)',
      'engine3Isp': '• Удельный импульс: 10,000 секунд',
      'engine3Power': '• Потребляемая мощность: 10-100 МВт',
      'engine3Efficiency': '• Эффективность: 65% электрической в тяговую',
      'engine3Fuel': '• Топливо: Ксенон/Аргон плазма',
      'engine3Reactors': '• Реакторы: 3 независимых ядерных (200 МВт каждый)',

      'engine3Advantages': 'ПРЕИМУЩЕСТВА:',
      'engine3Adv1': '• Сверхвысокая эффективность для длительных перелётов',
      'engine3Adv2': '• Непрерывное низкоимпульсное ускорение',
      'engine3Adv3': '• Расход топлива: 100 г/час на крейсерской скорости',
      'engine3Adv4': '• Практически неограниченный дельта-V',
      'engine3Adv5': '• Бесшумная работа в космосе',
      'engine3Adv6': '• Отсутствие вибраций для научных приборов',

      'engine3Safety': 'СИСТЕМЫ БЕЗОПАСНОСТИ:',
      'engine3Safe1': '• Тройное удержание ядерного материала',
      'engine3Safe2': '• Автоматическое отключение при аномалиях',
      'engine3Safe3': '• Радиационная защита: 5м водного эквивалента',
      'engine3Safe4': '• Независимые контуры охлаждения',
      'engine3Safe5': '• Возможность аварийного сброса',

      'roadmapTitle': 'СТРАТЕГИЧЕСКАЯ ДОРОЖНАЯ КАРТА',
      'phase1': 'ФАЗА 1: ТУРИЗМ НА ОРБИТЕ (2026-2040)',
      'phase1Items':
          'Строительство «СТОЛИЦЫ» (первых 4 модулей)\n'
          'Регулярные рейсы «Прометея» (3 раза в день)\n'
          'Цель: 10,000 туристов в год, выручка \$2.5 млрд',

      'phase2': 'ФАЗА 2: ЛУННЫЙ ТУРИЗМ (2035-2045)',
      'phase2Items':
          'Открытие «ОАЗИСа» (первая очередь)\n'
          'Лунные круизы на «Зевсе» (без посадки)\n'
          'Цель: 500 лунных туристов в год, выручка \$10 млрд',

      'phase3': 'ФАЗА 3: МАРСИАНСКАЯ ЭКСПЕДИЦИЯ (2045-2050)',
      'phase3Items':
          'Первая пилотируемая миссия на Марс\n'
          'Открытие «ПУСТОШИ» для туристов\n'
          'Цель: Стать лидером межпланетного туризма',

      'businessModel': 'БИЗНЕС-МОДЕЛЬ',
      'mainIncome': 'ОСНОВНОЙ ДОХОД: ТУРИЗМ (90%)',
      'orbitalTourism': '🎫 ОРБИТАЛЬНЫЙ ТУРИЗМ:',
      'orbitalWeekend':
          '• «Орбитальный уикенд»: \$250,000 × 10,000 чел/год = \$2.5 млрд',
      'capitalStay':
          '• Проживание на «СТОЛИЦЕ»: \$50,000/чел × 5 дней = \$5 млрд',
      'entertainment': '• Развлечения/сувениры: \$1.5 млрд',

      'lunarTourism': '🌙 ЛУННЫЙ ТУРИЗМ:',
      'lunarWeek': '• Неделя на Луне: \$20,000,000 × 500 чел = \$10 млрд',
      'lunarCruises': '• Лунные круизы: \$5,000,000 × 200 чел = \$1 млрд',

      'martianTourism': '🪐 МАРСИАНСКИЙ ТУРИЗМ:',
      'martianExpedition':
          '• Экспедиция на Марс: \$50,000,000 × 100 чел = \$5 млрд',
      'totalRevenue': '📈 ИТОГО: ~\$25 млрд/год',

      'additionalIncome': 'ДОПОЛНИТЕЛЬНЫЕ ДОХОДЫ (10%)',
      'labRental': '• 🛰️ Аренда лабораторий на станциях',
      'satelliteLaunch': '• 🚀 Запуски спутников с «Атланта»',
      'spaceEducation': '• 🎓 Космическое образование (школы, университеты)',
      'filmShooting': '• 🎬 Съёмки фильмов в космосе',
      'techLicensing':
          '• ⚡ Лицензирование технологий (двигатели, системы жизнеобеспечения)',
      'dataServices': '• 📡 Космические услуги передачи данных',

      'uniqueFeatures': 'ПОЧЕМУ «РАССВЕТ» УНИКАЛЕН',
      'feature1': '1. ТУРИЗМ КАК ДРАЙВЕР ЭКСПАНСИИ',
      'feature1Desc':
          'Впервые в истории: освоение космоса финансируется не налогоплательщиками, а туристами',

      'feature2': '2. КОСМОС КАК МЕСТО ОТДЫХА, НЕ ВЫЖИВАНИЯ',
      'feature2Desc':
          'Мы создаём не «станции выживания», а космические курорты с уровнем сервиса 5*',

      'feature3': '3. ПОЛНЫЙ ЦИКЛ ОТДЫХА',
      'feature3Desc':
          'От быстрого орбитального уикенда (\$250k) до годовой межпланетной экспедиции (\$50M) — для каждого уровня интереса и бюджета',

      'feature4': '4. БЕЗОПАСНОСТЬ КАК ПРИОРИТЕТ',
      'feature4Desc':
          'Каждый турист — не «подопытный», а гость. Мы гарантируем безопасность на уровне авиалиний (1 инцидент на 10 млн полётов)',

      'mission': 'НАША МИССИЯ',
      'missionText':
          '«Сделать космос доступным для каждого, кто мечтает его увидеть, и использовать эти средства для настоящего научного освоения Солнечной системы.»',
      'missionQuote':
          'МЫ НЕ ПРОСТО ПРОДАЁМ БИЛЕТЫ В КОСМОС.\nМЫ СОЗДАЁМ БУДУЩЕЕ, ГДЕ КОСМИЧЕСКИЙ ТУРИЗМ — ТАКАЯ ЖЕ НОРМА, КАК ПОЛЁТ В ДРУГОЙ ГОРОД.',

      // Research section - Russian version
      'researchTitle': 'SUNRISE: THE FIELD INITIATIVE',
      'researchSubtitle': 'ИССЛЕДОВАНИЕ ПЕРВИЧНЫХ ПОЛЕЙ И ПРИРОДЫ РЕАЛЬНОСТИ',
      'aboutProject': 'О ПРОЕКТЕ',
      'aboutProjectText':
          'SUNRISE известен миру как первый интегратор космического туризма. Наши корабли («Прометей», «Зевс») и орбитальные станции («Столица») — это вершина инженерной мысли, работающая на принципах классической физики и плазменных технологий.\n\n'
          'Но есть вопросы, на которые не может ответить ни один учебник. Есть горизонт, за которым заканчивается инженерия и начинается чистое познание.\n\n'
          'The Field Initiative — это закрытое исследовательское подразделение SUNRISE. Наша цель: понять природу первичной энергии (поля), из которой соткана реальность, и научиться управлять ею напрямую.',

      'philosophyField': 'ФИЛОСОФИЯ: ПОЧЕМУ МЫ ЭТО ДЕЛАЕМ?',
      'philosophyFieldText':
          'Классическая физика описывает, как взаимодействуют атомы. Мы хотим понять, что такое атом на самом деле.\n\n'
          'Наш подход базируется на трех тезисах:\n\n'
          '• Материя вторична. Атом — это не частица, а устойчивый сгусток (возбуждение) в первичном поле. То, что мы называем «пустотой» — на самом деле океан энергии.\n\n'
          '• Гравитация — это градиент. Притяжение тел возникает не из-за «силы», а из-за разницы напряженности самого поля. Падать — значит перемещаться туда, где поле плотнее.\n\n'
          '• Управление реальностью возможно. Если мы поймем структуру поля, мы сможем создавать локальные зоны с измененными свойствами — например, зоны отталкивания вместо притяжения.\n\n'
          'Мы не ищем «темную материю» или «новые частицы» в том смысле, в котором их ищут коллайдеры. Мы ищем ткань, на которой эти частицы существуют.',

      'keyDirections': 'КЛЮЧЕВЫЕ НАПРАВЛЕНИЯ ИССЛЕДОВАНИЙ (R&D)',
      'direction1': '1. ФУНДАМЕНТАЛЬНАЯ ФИЗИКА ПОЛЯ',
      'direction1Text':
          'Переосмысление основ.\n\n'
          'Мы анализируем эксперименты, которые официальная наука обходит стороной. Эффекты, не вписывающиеся в Стандартную модель. Природу квантовой запутанности как свойства поля, а не частиц.\n\n'
          '• Анализ работ Николы Теслы (поздние патенты).\n'
          '• Исследование эффекта Байфельда-Брауна (взаимодействие электричества и гравитации).\n'
          '• Природа «нулевых колебаний» квантового вакуума.',

      'direction2': '2. ИНЖЕНЕРИЯ ПРОСТРАНСТВА (МЕТРИКА)',
      'direction2Text':
          'Как согнуть пространство без массы.\n\n'
          'Сегодня мы знаем, что масса искривляет пространство. Но масса — это концентрированная энергия. Можно ли искривлять пространство напрямую, концентрируя энергию поля без создания массивного объекта?\n\n'
          '• Создание лабораторных установок для регистрации локальных изменений метрики.\n'
          '• Эксперименты с быстропеременными электромагнитными полями сверхвысокой частоты.\n'
          '• Поиск «гравитационной тени» и экранирования гравитации.',

      'direction3': '3. ТЕХНОЛОГИИ ПОДЪЕМА (ЛЕВИТАЦИЯ)',
      'direction3Text':
          'От вентилятора — к полю.\n\n'
          'Наши плазменные двигатели (HPE-1) — это вершина развития реактивной техники. Но реактивный двигатель толкает корабль, выбрасывая массу. Мы ищем способ толкать корабль, меняя состояние поля вокруг него.\n\n'
          '• Разработка теории «градиентного подъемника».\n'
          '• Создание прототипа платформы, использующей разность потенциалов поля (а не давления воздуха).\n'
          '• Исследование свойств сверхпроводников в сочетании с быстрым вращением.',

      'theoreticalModel': 'ТЕОРЕТИЧЕСКАЯ МОДЕЛЬ: «ГОЛОГРАФИЧЕСКОЕ ПОЛЕ»',
      'theoreticalModelText':
          'В основе нашей рабочей гипотезы лежит представление о реальности как о многомерной голограмме.\n\n'
          '• Проявленный мир (3D) — это интерференционная картина.\n'
          '• Первичное поле (базовая частота) — это носитель голограммы.\n'
          '• Масса и гравитация — это локальные искажения частоты.\n\n'
          'Если эта модель верна, то, изменяя частотные характеристики поля в заданной области, мы можем изменять физические законы в этой области локально.',

      'roadmapField': 'ПРАКТИЧЕСКИЕ ЦЕЛИ (ДОРОЖНАЯ КАРТА FIELD INITIATIVE)',
      'phase0':
          'Фаза 0 (2025-2027): Сбор экспериментальных данных. Анализ аномалий. Создание математического аппарата.',
      'phase1Field':
          'Фаза 1 (2028-2032): Лабораторное подтверждение существования градиента поля. Создание датчика «нулевой точки».',
      'phase2Field':
          'Фаза 2 (2033-2040): Постройка экспериментального стенда для создания локальной зоны измененной гравитации (левитация 1г объекта).',
      'phase3Field':
          'Фаза 3 (2041-2050): Интеграция технологии с флотом SUNRISE. Первый полет корабля без использования реактивной тяги в атмосфере.',

      'whoResearches': 'КТО ИССЛЕДУЕТ?',
      'whoResearchesText':
          'Мы собираем команду, которая не боится смотреть за горизонт.\n\n'
          '• Физики-теоретики, готовые пересматривать основы.\n'
          '• Экспериментаторы с опытом работы в CERN и частных лабораториях.\n'
          '• Инженеры, способные построить установки, которых нет в учебниках.\n'
          '• Философы, чтобы задавать правильные вопросы.\n\n'
          'Если вы чувствуете, что за материей есть нечто большее, и хотите не просто верить, а знать — мы ждем вас.',

      'connection': 'СВЯЗЬ С ОСНОВНЫМ ПРОЕКТОМ SUNRISE',
      'connectionText':
          'The Field Initiative — это не отвлечение ресурсов от туризма. Это стратегические инвестиции в будущее.\n\n'
          '• Успех в Фазе 2 (левитация) позволит создавать посадочные платформы без двигателей.\n'
          '• Успех в Фазе 3 (изменение метрики) сократит полет к Марсу с 7 месяцев до 7 дней.\n'
          '• Полный успех программы даст человечеству то, о чем мы даже не мечтали — управление гравитацией.',

      'conclusion': 'ЗАКЛЮЧЕНИЕ',
      'conclusionText':
          'Мы стоим на пороге новой физики. SUNRISE уже строит мосты к звездам с помощью титана и плазмы. Но настоящая революция произойдет тогда, когда мы поймем, что звезды и мы сами сделаны из одного и того же.\n\n'
          'The Field Initiative — это наш вклад в это понимание.\n\n'
          '«Мы не просто продаем билеты в космос. Мы создаем будущее, где космос станет таким же доступным, как полет в другой город. The Field Initiative — это шаг к тому, чтобы этот полет занял не часы, а минуты».',
      'founder': '— Основатель проекта SUNRISE',
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
      FleetScreen(locale: widget.locale),
      InfrastructureScreen(locale: widget.locale),
      TechnologiesScreen(locale: widget.locale),
      RoadmapScreen(locale: widget.locale),
      ResearchScreen(locale: widget.locale),
    ];

    final List<Map<String, dynamic>> navItems = [
      {'icon': Icons.home, 'labelKey': 'home'},
      {'icon': Icons.rocket_launch, 'labelKey': 'ships'},
      {'icon': Icons.apartment, 'labelKey': 'stations'},
      {'icon': Icons.science, 'labelKey': 'technologies'},
      {'icon': Icons.map, 'labelKey': 'roadmap'},
      {'icon': Icons.explore, 'labelKey': 'research'},
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
        borderRadius: BorderRadius.circular(30), // Скругление как на референсе
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
                    Icons.rocket,
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
              title: AppLocalizations.translate('philosophy', locale),
              text: AppLocalizations.translate('philosophyText', locale),
              icon: Icons.psychology,
            ),

            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: Colors.white.withOpacity(0.2),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.translate('mainDriver', locale),
                    style: const TextStyle(
                      color: Color(0xFF00AAFF),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    AppLocalizations.translate('mainDriverText', locale),
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            Text(
              AppLocalizations.translate('threePillars', locale),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 12),

            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.9,
              ),
              itemCount: 3,
              itemBuilder: (context, index) {
                final List<Map<String, dynamic>> pillars = [
                  {
                    'title': AppLocalizations.translate('pillar1', locale),
                    'subtitle': AppLocalizations.translate(
                      'pillar1Subtitle',
                      locale,
                    ),
                    'icon': Icons.rocket_launch,
                  },
                  {
                    'title': AppLocalizations.translate('pillar2', locale),
                    'subtitle': AppLocalizations.translate(
                      'pillar2Subtitle',
                      locale,
                    ),
                    'icon': Icons.apartment,
                  },
                  {
                    'title': AppLocalizations.translate('pillar3', locale),
                    'subtitle': AppLocalizations.translate(
                      'pillar3Subtitle',
                      locale,
                    ),
                    'icon': Icons.engineering,
                  },
                ];

                final pillar = pillars[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Colors.white.withOpacity(0.2),
                      width: 1,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        pillar['icon'] as IconData,
                        color: const Color(0xFF00AAFF),
                        size: 32,
                      ),
                      const SizedBox(height: 12),
                      Text(
                        pillar['title'] as String,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        pillar['subtitle'] as String,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),

            const SizedBox(height: 40),

            _buildCard(
              title: AppLocalizations.translate('uniqueFeatures', locale),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFeatureItem(
                    AppLocalizations.translate('feature1', locale),
                    AppLocalizations.translate('feature1Desc', locale),
                  ),
                  const SizedBox(height: 12),
                  _buildFeatureItem(
                    AppLocalizations.translate('feature2', locale),
                    AppLocalizations.translate('feature2Desc', locale),
                  ),
                  const SizedBox(height: 12),
                  _buildFeatureItem(
                    AppLocalizations.translate('feature3', locale),
                    AppLocalizations.translate('feature3Desc', locale),
                  ),
                  const SizedBox(height: 12),
                  _buildFeatureItem(
                    AppLocalizations.translate('feature4', locale),
                    AppLocalizations.translate('feature4Desc', locale),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            _buildCard(
              title: AppLocalizations.translate('mission', locale),
              text: AppLocalizations.translate('missionText', locale),
              additionalText: AppLocalizations.translate(
                'missionQuote',
                locale,
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
    String? text,
    String? additionalText,
    IconData? icon,
    Widget? child,
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
                Icon(icon, color: Colors.white70, size: 18),
                const SizedBox(width: 8),
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
          if (text != null) ...[
            const SizedBox(height: 12),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white70,
                fontSize: 14,
                height: 1.5,
              ),
            ),
          ],
          if (additionalText != null) ...[
            const SizedBox(height: 12),
            Text(
              additionalText,
              style: const TextStyle(
                color: Color(0xFF00AAFF),
                fontSize: 13,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
          if (child != null) child,
        ],
      ),
    );
  }

  Widget _buildFeatureItem(String title, String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF00AAFF),
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          description,
          style: const TextStyle(color: Colors.white70, fontSize: 12),
        ),
      ],
    );
  }
}

class FleetScreen extends StatelessWidget {
  final String locale;

  const FleetScreen({super.key, required this.locale});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(
            icon: Icons.rocket,
            title: AppLocalizations.translate('spaceFleet', locale),
            subtitle: AppLocalizations.translate('pillar1', locale),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: ListView(
              children: [
                _buildShipCard(
                  AppLocalizations.translate('prometheus', locale),
                  AppLocalizations.translate('prometheusType', locale),
                  AppLocalizations.translate('prometheusDesc', locale),
                  Icons.airline_seat_recline_normal,
                  ['👨‍✈️ Crew: 2', '👥 Passengers: 8', '🎟️ Ticket: \$250k'],
                  [
                    AppLocalizations.translate('touristFeatures', locale),
                    AppLocalizations.translate('panoramicWindows', locale),
                    AppLocalizations.translate('audioGuide', locale),
                    AppLocalizations.translate('spaceCuisine', locale),
                    AppLocalizations.translate('autoPhoto', locale),
                    '',
                    AppLocalizations.translate('keyInnovations', locale),
                    AppLocalizations.translate('maglev', locale),
                    AppLocalizations.translate('hybridEngine', locale),
                    AppLocalizations.translate('seamlessTransition', locale),
                    AppLocalizations.translate('precisionLanding', locale),
                    '',
                    AppLocalizations.translate('ticketPrice', locale),
                  ],
                ),
                const SizedBox(height: 16),
                _buildShipCard(
                  AppLocalizations.translate('atlant', locale),
                  AppLocalizations.translate('atlantType', locale),
                  AppLocalizations.translate('atlantDesc', locale),
                  Icons.local_shipping,
                  ['📦 Capacity: 50t', '🔄 Conversion: Group tours'],
                  [
                    AppLocalizations.translate('unification', locale),
                    AppLocalizations.translate('sameLaunch', locale),
                    AppLocalizations.translate('sameShape', locale),
                    AppLocalizations.translate('sameEngines', locale),
                    AppLocalizations.translate('sameLanding', locale),
                    '',
                    AppLocalizations.translate('specialFeature', locale),
                  ],
                ),
                const SizedBox(height: 16),
                _buildShipCard(
                  AppLocalizations.translate('zeus', locale),
                  AppLocalizations.translate('zeusType', locale),
                  AppLocalizations.translate('zeusDesc', locale),
                  Icons.public,
                  [
                    '👥 Tourists: 30',
                    '⏱️ Journey: 7 months',
                    '🎟️ Ticket: \$10M',
                  ],
                  [
                    AppLocalizations.translate('touristConcept', locale),
                    '',
                    AppLocalizations.translate('revolutionaryFeatures', locale),
                    AppLocalizations.translate('rotatingModule', locale),
                    AppLocalizations.translate('luxurySuites', locale),
                    AppLocalizations.translate('entertainment', locale),
                    AppLocalizations.translate('education', locale),
                    '',
                    AppLocalizations.translate('uniqueLogistics', locale),
                    AppLocalizations.translate('dockedPrometheus', locale),
                    AppLocalizations.translate('shuttleFunctions', locale),
                    '',
                    AppLocalizations.translate('cruisePrice', locale),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: const Color(0xFF00AAFF), size: 32),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
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
                subtitle,
                style: const TextStyle(color: Colors.white70, fontSize: 13),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildShipCard(
    String name,
    String type,
    String description,
    IconData icon,
    List<String> specs,
    List<String> features,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(icon, color: const Color(0xFF00AAFF), size: 24),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: Color(0xFF00AAFF),
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Text(
                        type,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 11,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              description,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                height: 1.5,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: specs.map((spec) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: Colors.white.withOpacity(0.2)),
                  ),
                  child: Text(
                    spec,
                    style: const TextStyle(
                      color: Color(0xFF00AAFF),
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            height: 1,
            color: Colors.white.withOpacity(0.2),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: features.map((feature) {
                final isHeader =
                    feature.contains(':') || !feature.contains('•');
                final isEmpty = feature.isEmpty;

                return Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: isEmpty
                      ? const SizedBox(height: 8)
                      : Text(
                          feature,
                          style: TextStyle(
                            color: isHeader
                                ? const Color(0xFF00AAFF)
                                : Colors.white70,
                            fontSize: isHeader ? 12 : 11,
                            fontWeight: isHeader
                                ? FontWeight.w700
                                : FontWeight.normal,
                          ),
                        ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class InfrastructureScreen extends StatelessWidget {
  final String locale;

  const InfrastructureScreen({super.key, required this.locale});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(
            icon: Icons.apartment,
            title: AppLocalizations.translate('orbitalInfrastructure', locale),
            subtitle: AppLocalizations.translate('pillar2', locale),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: ListView(
              children: [
                _buildStationCard(
                  AppLocalizations.translate('capital', locale),
                  AppLocalizations.translate('capitalDesc', locale),
                  Icons.location_city,
                  [
                    AppLocalizations.translate('capitalLocation', locale),
                    AppLocalizations.translate('capitalCapacity', locale),
                  ],
                  [
                    AppLocalizations.translate('touristInfrastructure', locale),
                    '',
                    AppLocalizations.translate('hotels', locale),
                    AppLocalizations.translate('zeroGSuites', locale),
                    AppLocalizations.translate('gravityGardens', locale),
                    AppLocalizations.translate('panoramaPods', locale),
                    '',
                    AppLocalizations.translate('restaurants', locale),
                    AppLocalizations.translate('orbitBistro', locale),
                    AppLocalizations.translate('sunriseCafe', locale),
                    AppLocalizations.translate('auroraBar', locale),
                    '',
                    AppLocalizations.translate('entertainmentList', locale),
                    AppLocalizations.translate('spaceWalks', locale),
                    AppLocalizations.translate('zeroGSports', locale),
                    AppLocalizations.translate('educationalTours', locale),
                    AppLocalizations.translate('spaceWeddings', locale),
                    '',
                    AppLocalizations.translate('stationEconomy', locale),
                    AppLocalizations.translate('dailyTraffic', locale),
                    AppLocalizations.translate('averageBill', locale),
                    AppLocalizations.translate('annualTurnover', locale),
                  ],
                ),
                const SizedBox(height: 16),
                _buildStationCard(
                  AppLocalizations.translate('oasis', locale),
                  AppLocalizations.translate('oasisType', locale),
                  Icons.terrain,
                  [
                    AppLocalizations.translate('oasisLocation', locale),
                    AppLocalizations.translate('oasisConcept', locale),
                  ],
                  [
                    AppLocalizations.translate('uniqueOffers', locale),
                    AppLocalizations.translate('lunarSafari', locale),
                    AppLocalizations.translate('lunarGolf', locale),
                    AppLocalizations.translate('lunarSpa', locale),
                    AppLocalizations.translate('subsurfaceSuites', locale),
                    '',
                    AppLocalizations.translate('oasisPrice', locale),
                  ],
                ),
                const SizedBox(height: 16),
                _buildStationCard(
                  AppLocalizations.translate('wasteland', locale),
                  AppLocalizations.translate('wastelandType', locale),
                  Icons.explore,
                  [
                    AppLocalizations.translate('wastelandLocation', locale),
                    AppLocalizations.translate('wastelandConcept', locale),
                  ],
                  [
                    AppLocalizations.translate('programs', locale),
                    AppLocalizations.translate('martianExplorer', locale),
                    AppLocalizations.translate('photoSafari', locale),
                    AppLocalizations.translate('extremeSurvival', locale),
                    '',
                    AppLocalizations.translate('wastelandPrice', locale),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: const Color(0xFF00AAFF), size: 32),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
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
                subtitle,
                style: const TextStyle(color: Colors.white70, fontSize: 13),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStationCard(
    String name,
    String description,
    IconData icon,
    List<String> quickInfo,
    List<String> details,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(icon, color: const Color(0xFF00AAFF), size: 24),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: Color(0xFF00AAFF),
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Text(
                        description,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Wrap(
              spacing: 8,
              runSpacing: 8,
              children: quickInfo.map((info) {
                return Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.05),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: Colors.white.withOpacity(0.2)),
                  ),
                  child: Text(
                    info,
                    style: const TextStyle(
                      color: Color(0xFF00AAFF),
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                );
              }).toList(),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16),
            height: 1,
            color: Colors.white.withOpacity(0.2),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: details.map((detail) {
                final isEmpty = detail.isEmpty;
                final isHeader =
                    detail.contains(':') || !detail.startsWith('•');

                return Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: isEmpty
                      ? const SizedBox(height: 8)
                      : Text(
                          detail,
                          style: TextStyle(
                            color: isHeader
                                ? const Color(0xFF00AAFF)
                                : Colors.white,
                            fontSize: isHeader ? 12 : 11,
                            fontWeight: isHeader
                                ? FontWeight.w700
                                : FontWeight.normal,
                          ),
                        ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 16),
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
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(
            icon: Icons.engineering,
            title: AppLocalizations.translate('technologyBase', locale),
            subtitle: AppLocalizations.translate('pillar3', locale),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: ListView(
              children: [
                _buildDetailedEngineCard(
                  AppLocalizations.translate('engineClass1', locale),
                  AppLocalizations.translate('engine1Desc', locale),
                  Icons.rocket,
                  [
                    _buildSection(
                      AppLocalizations.translate('engineSpecs', locale),
                      [
                        AppLocalizations.translate('thrustAtmospheric', locale),
                        AppLocalizations.translate('thrustVacuum', locale),
                        AppLocalizations.translate('specificImpulse', locale),
                        AppLocalizations.translate('thrustToWeight', locale),
                        AppLocalizations.translate('workingFluid', locale),
                      ],
                    ),
                    _buildSection(
                      AppLocalizations.translate('operatingPrinciple', locale),
                      [
                        AppLocalizations.translate('principle1', locale),
                        AppLocalizations.translate('principle1Detail', locale),
                        AppLocalizations.translate('principle1Detail2', locale),
                        AppLocalizations.translate('principle2', locale),
                        AppLocalizations.translate('principle2Detail', locale),
                        AppLocalizations.translate('principle2Detail2', locale),
                        AppLocalizations.translate('principle3', locale),
                        AppLocalizations.translate('principle3Detail', locale),
                        AppLocalizations.translate('principle3Detail2', locale),
                      ],
                    ),
                    _buildSection(
                      AppLocalizations.translate('keyTechnologies', locale),
                      [
                        AppLocalizations.translate('tech1', locale),
                        AppLocalizations.translate('tech1Detail', locale),
                        AppLocalizations.translate('tech1Detail2', locale),
                        AppLocalizations.translate('tech2', locale),
                        AppLocalizations.translate('tech2Detail', locale),
                        AppLocalizations.translate('tech2Detail2', locale),
                        AppLocalizations.translate('tech3', locale),
                        AppLocalizations.translate('tech3Detail', locale),
                        AppLocalizations.translate('tech3Detail2', locale),
                      ],
                    ),
                    _buildSection(
                      AppLocalizations.translate(
                        'performanceAdvantages',
                        locale,
                      ),
                      [
                        AppLocalizations.translate('advantage1', locale),
                        AppLocalizations.translate('advantage1Detail', locale),
                        AppLocalizations.translate('advantage1Detail2', locale),
                        AppLocalizations.translate('advantage2', locale),
                        AppLocalizations.translate('advantage2Detail', locale),
                        AppLocalizations.translate('advantage2Detail2', locale),
                        AppLocalizations.translate('advantage3', locale),
                        AppLocalizations.translate('advantage3Detail', locale),
                        AppLocalizations.translate('advantage3Detail2', locale),
                      ],
                    ),
                    _buildSection(
                      AppLocalizations.translate('aestheticFeatures', locale),
                      [
                        AppLocalizations.translate('aesthetic1', locale),
                        AppLocalizations.translate('aesthetic1Detail', locale),
                        AppLocalizations.translate('aesthetic1Detail2', locale),
                        AppLocalizations.translate('aesthetic1Detail3', locale),
                        AppLocalizations.translate('aesthetic2', locale),
                        AppLocalizations.translate('aesthetic3', locale),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                _buildTechCard(
                  AppLocalizations.translate('engineClass3', locale),
                  AppLocalizations.translate('engine3Desc', locale),
                  Icons.bolt,
                  [
                    'Ultra-high efficiency for long journeys',
                    'Continuous low-thrust acceleration',
                    'Fuel consumption: 100g/hour at cruise',
                    'Virtually unlimited delta-V',
                    'Silent operation in space',
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: const Color(0xFF00AAFF), size: 32),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
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
                subtitle,
                style: const TextStyle(color: Colors.white70, fontSize: 13),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDetailedEngineCard(
    String name,
    String description,
    IconData icon,
    List<Widget> sections,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(icon, color: const Color(0xFF00AAFF), size: 24),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                          color: Color(0xFF00AAFF),
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          letterSpacing: 0.5,
                        ),
                      ),
                      Text(
                        description,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'HYBRID PLASMA ENGINE - THE HEART OF SUNRISE TRANSPORT SYSTEM',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
          ),
          ...sections,
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildSection(String title, List<String> items) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.05),
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: const Color(0xFF00AAFF).withOpacity(0.3)),
          ),
          child: Text(
            title,
            style: const TextStyle(
              color: Color(0xFF00AAFF),
              fontSize: 14,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: items.map((item) {
              final isSubItem = item.startsWith('  ');
              final isIndented = item.startsWith('   ');

              return Padding(
                padding: EdgeInsets.only(
                  bottom: 4,
                  left: isIndented ? 24.0 : (isSubItem ? 12.0 : 0.0),
                ),
                child: Text(
                  item.trim(),
                  style: TextStyle(
                    color: isSubItem ? Colors.white70 : Colors.white,
                    fontSize: isSubItem ? 11 : 12,
                    fontWeight: isSubItem ? FontWeight.normal : FontWeight.w500,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  Widget _buildTechCard(
    String name,
    String description,
    IconData icon,
    List<String> details,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(icon, color: const Color(0xFF00AAFF), size: 24),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    name,
                    style: const TextStyle(
                      color: Color(0xFF00AAFF),
                      fontSize: 20,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              description,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 13,
                height: 1.5,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(16),
            height: 1,
            color: Colors.white.withOpacity(0.2),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: details.map((detail) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    '• $detail',
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

class RoadmapScreen extends StatelessWidget {
  final String locale;

  const RoadmapScreen({super.key, required this.locale});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 20, right: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildHeader(
            icon: Icons.timeline,
            title: AppLocalizations.translate('roadmapTitle', locale),
            subtitle: '2026-2040',
          ),
          const SizedBox(height: 30),
          Expanded(
            child: ListView(
              children: [
                _buildPhaseCard(
                  AppLocalizations.translate('phase1', locale),
                  AppLocalizations.translate('phase1Items', locale),
                  const Color(0xFF00AAFF),
                ),
                const SizedBox(height: 16),
                _buildPhaseCard(
                  AppLocalizations.translate('phase2', locale),
                  AppLocalizations.translate('phase2Items', locale),
                  const Color(0xFF00CC88),
                ),
                const SizedBox(height: 16),
                _buildPhaseCard(
                  AppLocalizations.translate('phase3', locale),
                  AppLocalizations.translate('phase3Items', locale),
                  const Color(0xFFFF8800),
                ),
                const SizedBox(height: 30),
                _buildBusinessModelCard(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: const Color(0xFF00AAFF), size: 32),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
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
                subtitle,
                style: const TextStyle(color: Colors.white70, fontSize: 13),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPhaseCard(String title, String items, Color color) {
    final itemList = items.split('\n');

    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: color.withOpacity(0.2),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 8,
                  height: 8,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: color,
                      fontSize: 18,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: itemList.map((item) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.arrow_right,
                        color: Colors.white70,
                        size: 16,
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          item,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBusinessModelCard() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white.withOpacity(0.2), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              AppLocalizations.translate('businessModel', locale),
              style: const TextStyle(
                color: Color(0xFF00AAFF),
                fontSize: 18,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.translate('mainIncome', locale),
                  style: const TextStyle(
                    color: Color(0xFF00AAFF),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 12),
                _buildRevenueItem(
                  AppLocalizations.translate('orbitalTourism', locale),
                  isHeader: true,
                ),
                _buildRevenueItem(
                  AppLocalizations.translate('orbitalWeekend', locale),
                ),
                _buildRevenueItem(
                  AppLocalizations.translate('capitalStay', locale),
                ),
                _buildRevenueItem(
                  AppLocalizations.translate('entertainment', locale),
                ),
                const SizedBox(height: 8),
                _buildRevenueItem(
                  AppLocalizations.translate('lunarTourism', locale),
                  isHeader: true,
                ),
                _buildRevenueItem(
                  AppLocalizations.translate('lunarWeek', locale),
                ),
                _buildRevenueItem(
                  AppLocalizations.translate('lunarCruises', locale),
                ),
                const SizedBox(height: 8),
                _buildRevenueItem(
                  AppLocalizations.translate('martianTourism', locale),
                  isHeader: true,
                ),
                _buildRevenueItem(
                  AppLocalizations.translate('martianExpedition', locale),
                ),
                _buildRevenueItem(
                  AppLocalizations.translate('totalRevenue', locale),
                  isTotal: true,
                ),
                const SizedBox(height: 16),
                Text(
                  AppLocalizations.translate('additionalIncome', locale),
                  style: const TextStyle(
                    color: Color(0xFF00AAFF),
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 8),
                _buildRevenueItem(
                  AppLocalizations.translate('labRental', locale),
                ),
                _buildRevenueItem(
                  AppLocalizations.translate('satelliteLaunch', locale),
                ),
                _buildRevenueItem(
                  AppLocalizations.translate('spaceEducation', locale),
                ),
                _buildRevenueItem(
                  AppLocalizations.translate('filmShooting', locale),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }

  Widget _buildRevenueItem(
    String text, {
    bool isHeader = false,
    bool isTotal = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        children: [
          if (!isHeader && !isTotal)
            const Icon(Icons.arrow_right, color: Colors.white70, size: 16),
          if (!isHeader && !isTotal) const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(
                color: isTotal
                    ? const Color(0xFF00FF88)
                    : isHeader
                    ? const Color(0xFF00AAFF)
                    : Colors.white,
                fontSize: isTotal ? 14 : 13,
                fontWeight: isTotal
                    ? FontWeight.w700
                    : (isHeader ? FontWeight.w600 : FontWeight.normal),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ResearchScreen extends StatelessWidget {
  final String locale;

  const ResearchScreen({super.key, required this.locale});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Заголовок
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(
                    Icons.explore,
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
                        AppLocalizations.translate('researchTitle', locale),
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
                        AppLocalizations.translate('researchSubtitle', locale),
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

            // О проекте
            _buildResearchCard(
              title: AppLocalizations.translate('aboutProject', locale),
              text: AppLocalizations.translate('aboutProjectText', locale),
              icon: Icons.info_outline,
            ),

            const SizedBox(height: 20),

            // Философия
            _buildResearchCard(
              title: AppLocalizations.translate('philosophyField', locale),
              text: AppLocalizations.translate('philosophyFieldText', locale),
              icon: Icons.psychology,
            ),

            const SizedBox(height: 20),

            // Ключевые направления
            _buildResearchCard(
              title: AppLocalizations.translate('keyDirections', locale),
              icon: Icons.science,
              isHeader: true,
            ),

            const SizedBox(height: 12),

            _buildDirectionCard(
              AppLocalizations.translate('direction1', locale),
              AppLocalizations.translate('direction1Text', locale),
            ),

            const SizedBox(height: 12),

            _buildDirectionCard(
              AppLocalizations.translate('direction2', locale),
              AppLocalizations.translate('direction2Text', locale),
            ),

            const SizedBox(height: 12),

            _buildDirectionCard(
              AppLocalizations.translate('direction3', locale),
              AppLocalizations.translate('direction3Text', locale),
            ),

            const SizedBox(height: 20),

            // Теоретическая модель
            _buildResearchCard(
              title: AppLocalizations.translate('theoreticalModel', locale),
              text: AppLocalizations.translate('theoreticalModelText', locale),
              icon: Icons.grain,
            ),

            const SizedBox(height: 20),

            // Дорожная карта
            _buildResearchCard(
              title: AppLocalizations.translate('roadmapField', locale),
              icon: Icons.timeline,
              isHeader: true,
            ),

            const SizedBox(height: 12),

            _buildPhaseItem(AppLocalizations.translate('phase0', locale), 0),

            _buildPhaseItem(
              AppLocalizations.translate('phase1Field', locale),
              1,
            ),

            _buildPhaseItem(
              AppLocalizations.translate('phase2Field', locale),
              2,
            ),

            _buildPhaseItem(
              AppLocalizations.translate('phase3Field', locale),
              3,
            ),

            const SizedBox(height: 20),

            // Кто исследует
            _buildResearchCard(
              title: AppLocalizations.translate('whoResearches', locale),
              text: AppLocalizations.translate('whoResearchesText', locale),
              icon: Icons.people,
            ),

            const SizedBox(height: 20),

            // Связь с основным проектом
            _buildResearchCard(
              title: AppLocalizations.translate('connection', locale),
              text: AppLocalizations.translate('connectionText', locale),
              icon: Icons.link,
            ),

            const SizedBox(height: 20),

            // Заключение
            _buildResearchCard(
              title: AppLocalizations.translate('conclusion', locale),
              text: AppLocalizations.translate('conclusionText', locale),
              icon: Icons.auto_awesome,
            ),

            const SizedBox(height: 12),

            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                AppLocalizations.translate('founder', locale),
                style: const TextStyle(
                  color: Color(0xFF00AAFF),
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildResearchCard({
    required String title,
    String? text,
    IconData? icon,
    bool isHeader = false,
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
          Row(
            children: [
              if (icon != null) ...[
                Icon(icon, color: const Color(0xFF00AAFF), size: 20),
                const SizedBox(width: 12),
              ],
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: isHeader ? Colors.white : const Color(0xFF00AAFF),
                    fontSize: isHeader ? 20 : 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
          if (text != null) ...[
            const SizedBox(height: 16),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
                height: 1.6,
              ),
            ),
          ],
        ],
      ),
    );
  }

  Widget _buildDirectionCard(String title, String text) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: const Color(0xFF00AAFF).withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Color(0xFF00AAFF),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPhaseItem(String text, int index) {
    final colors = [
      const Color(0xFF00AAFF),
      const Color(0xFF00CC88),
      const Color(0xFFFFAA00),
      const Color(0xFFFF5500),
    ];

    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: colors[index % colors.length].withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 2),
            width: 8,
            height: 8,
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
                height: 1.4,
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
