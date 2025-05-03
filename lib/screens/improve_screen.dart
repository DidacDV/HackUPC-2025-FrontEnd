import 'package:flutter/cupertino.dart';
import 'package:revolut_hackupc/widgets/ImprovementDetailsCard.dart';
import 'package:revolut_hackupc/widgets/ImprovementList.dart';
import '../models/improvement.dart';
import '../models/improvement_categories.dart';

class ImproveScreen extends StatefulWidget {
  const ImproveScreen({super.key});

  @override
  _ImproveScreenState createState() => _ImproveScreenState();
}

class _ImproveScreenState extends State<ImproveScreen> {
  // Define the PageController here
  final PageController _categoryController = PageController();
  Improvement? _currentVisibleImprovement;
  final List<Improvement> _allImprovements = const [
    Improvement(
      category: ImprovementCategory.compras,
      title: "Presupuesto Mensual",
      description: "Crea un presupuesto para rastrear tus gastos.",
    ),
    Improvement(
      category: ImprovementCategory.compras,
      title: "Estrategia de Ahorro",
      description: "Configura transferencias automáticas a tu cuenta de ahorros.",
    ),
    Improvement(
      category: ImprovementCategory.compras,
      title: "Reducción de Deuda",
      description: "Prioriza pagar deudas con alto interés.",
    ),
    Improvement(
      category: ImprovementCategory.salud,
      title: "Alimentación Saludable",
      description: "Incorpora más verduras en tu dieta diaria.",
    ),
    Improvement(
      category: ImprovementCategory.salud,
      title: "Rutina de Ejercicio",
      description: "Intenta hacer 30 minutos de actividad al día.",
    ),
    Improvement(
      category: ImprovementCategory.salud, // Fitness mapped to salud
      title: "Entrenamiento Cardiovascular",
      description: "Prueba a correr durante 20 minutos.",
    ),
    Improvement(
      category: ImprovementCategory.salud, // Fitness mapped to salud
      title: "Entrenamiento de Fuerza",
      description: "Haz ejercicios con peso corporal 3 veces por semana.",
    ),
    Improvement(
      category: ImprovementCategory.entretenimiento,
      title: "Aprende una Nueva Habilidad",
      description: "Realiza un curso online sobre algo que te interese.",
    ),
    Improvement(
      category: ImprovementCategory.entretenimiento,
      title: "Lee un Libro",
      description: "Dedica 30 minutos a leer cada día.",
    ),
    Improvement(
      category: ImprovementCategory.alimentacion, // New category
      title: "Planifica tus Comidas",
      description: "Prepara tus comidas con antelación para comer más sano y ahorrar.",
    ),
    Improvement(
      category: ImprovementCategory.alimentacion, // New category
      title: "Reduce el Desperdicio",
      description: "Aprovecha al máximo los alimentos que compras.",
    ),
    Improvement(
      category: ImprovementCategory.transporte, // New category
      title: "Usa Transporte Público",
      description: "Considera el transporte público para ahorrar en gasolina y parking.",
    ),
    Improvement(
      category: ImprovementCategory.transporte, // New category
      title: "Comparte Coche",
      description: "Organiza viajes compartidos para reducir costes.",
    ),
  ];


  @override
  void initState() {
    super.initState();
    if (_allImprovements.isNotEmpty) {
      _currentVisibleImprovement = _allImprovements.first;
    }
    _categoryController.addListener(_onCategoryPageChanged);
  }

  @override
  void dispose() {
    _categoryController.removeListener(_onCategoryPageChanged);
    _categoryController.dispose();
    super.dispose();
  }

  void _onCategoryPageChanged() {

  }

  void _onImprovementPageChanged(Improvement improvement) {
    setState(() {
      _currentVisibleImprovement = improvement;
    });
  }

  void _onImprovementCategoryChanged(int index){
    setState(() {
      final currentCategory = ImprovementCategory.values[index % ImprovementCategory.values.length];

      final categoryImprovements = _allImprovements
          .where((imp) => imp.category == currentCategory)
          .toList();
      _currentVisibleImprovement = categoryImprovements.first;
    });
  }

  @override
  Widget build(BuildContext context) {

    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.black,
      navigationBar: const CupertinoNavigationBar(
        enableBackgroundFilterBlur: false,
      ),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Improve",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: CupertinoColors.white,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Identify financial problems with AI",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.normal,
                  color: CupertinoColors.systemGrey,
                ),
              ),
              const SizedBox(height: 20),

              SizedBox(
                height: 350,
                child: PageView.builder(
                  controller: _categoryController,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: _onImprovementCategoryChanged,
                  itemCount: 5,
                  itemBuilder: (context, categoryIndex) {
                    final currentCategory = ImprovementCategory.values[categoryIndex % ImprovementCategory.values.length];

                    final categoryImprovements = _allImprovements
                        .where((imp) => imp.category == currentCategory)
                        .toList();

                    return ImprovementList(
                      key: ValueKey(currentCategory),
                      category: currentCategory,
                      improvements: categoryImprovements,
                      onPageChanged: _onImprovementPageChanged,
                    );
                  }
                )
              ),

              _currentVisibleImprovement == null
                  ? const Center(
                child: Text(
                  'Selecciona una mejora para ver los detalles',
                  style: TextStyle(color: CupertinoColors.systemGrey),
                ),
              )
                  :ImprovementDetailsCard(placeholder1: _currentVisibleImprovement!.title, placeholder2: 'HOLAAAAA',),
            ],
          ),
        ),
      ),
    );
  }
}
