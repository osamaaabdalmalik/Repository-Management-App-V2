// TODO move to stocktaking
class CategoryStocktaking {
  final double salesAmount, salesTotalPrice;
  final double purchasesAmount, purchaseTotalPrice;
  final double profit, expectedProfit;

  const CategoryStocktaking({
    required this.salesAmount,
    required this.salesTotalPrice,
    required this.purchasesAmount,
    required this.purchaseTotalPrice,
    required this.profit,
    required this.expectedProfit,
  });
}
