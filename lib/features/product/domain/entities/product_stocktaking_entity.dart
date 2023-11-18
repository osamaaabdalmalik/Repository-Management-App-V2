// TODO move to stocktaking
class ProductStocktaking {
  final double salesAmount, salesTotalPrice;
  final double purchasesAmount, purchaseTotalPrice;
  final double profit, expectedProfit;

  const ProductStocktaking({
    required this.salesAmount,
    required this.salesTotalPrice,
    required this.purchasesAmount,
    required this.purchaseTotalPrice,
    required this.profit,
    required this.expectedProfit,
  });
}
