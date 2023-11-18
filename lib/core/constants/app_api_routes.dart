
abstract class AppApiRoutes {

  static const String baseUrl = "10.0.2.2:8000"; // For Emulator

  // Registration
  // Auth
  static const String register = "/auth/register";
  static const String login = "/auth/login";
  static const String refreshToken = "/auth/login";
  static const String loginWithToken = "/auth/login_with_token";
  static const String logout = "/auth/logout";
  static const String updateProfile = "/auth/add_info";

  // Repository
  static const String createRepository = "/repository/add_repository";
  static const String joinToRepository = "/repository/join_repository";
  static const String updateRepository = "/repository/update_repository";
  static const String deleteRepository = "/repository/delete_repository";
  static const String getRepositories = "/repository/get_repository";
  static const String getRepositoriesForUser = "/repository/get_repositories_for_user";
  static const String getUsersForRepositories = "/repository/get_user_for_repository";

  // Home Page
  // Categories
  static const String getCategories = "/category/get_all_categories";
  static const String getCategory = "/category/get_category";
  static const String createCategory = "/category/add_category";
  static const String updateCategory = "/category/update_category";
  static const String deleteCategory = "/category/delete_category";
  static const String getCategoryRegisters = "/category/get_category_register";
  static const String deleteCategoryRegister = "/category/delete_category_register";

  // Products
  static const String getProducts = "/product/get_all_products";
  static const String getProduct = "/product/get_product";
  static const String createProduct = "/product/add_product";
  static const String updateProduct = "/product/update_product";
  static const String deleteProduct = "/product/delete_product";
  static const String getProductRegisters = "/product/get_product_register";
  static const String deleteProductRegister = "/product/delete_product_register";

  // Clients
  static const String getClients = "/client/get_all_clients";
  static const String getClient = "/client/get_client";
  static const String createClient = "/client/add_client";
  static const String updateClient = "/client/update_client";
  static const String deleteClient = "/client/delete_client";
  static const String meetDebtClient = "/client/meet_debt";
  static const String addClientToArchives = "/client/add_to_archives_clients";
  static const String removeClientFromArchives = "/client/remove_to_archives_clients";
  static const String getArchivesClients = "/client/get_archives_clients";
  static const String getArchiveClient = "/client/get_archive_client";
  static const String getClientRegisters = "/client/get_client_register";
  static const String deleteClientRegister = "/client/delete_client_register";

  // Suppliers
  static const String getSuppliers = "/supplier/get_all_suppliers";
  static const String getSupplier = "/supplier/get_supplier";
  static const String createSupplier = "/supplier/add_supplier";
  static const String updateSupplier = "/supplier/update_supplier";
  static const String deleteSupplier = "/supplier/delete_supplier";
  static const String meetDebtSupplier = "/supplier/meet_debt";
  static const String createSupplierToArchives = "/supplier/add_to_archives_suppliers";
  static const String removeSupplierFromArchives = "/supplier/remove_to_archives_suppliers";
  static const String getArchivesSuppliers = "/supplier/get_archives_suppliers";
  static const String getArchiveSupplier = "/supplier/get_archive_supplier";
  static const String getSupplierRegisters = "/supplier/get_supplier_register";
  static const String deleteSupplierRegister = "/supplier/delete_supplier_register";

  // Expenses
  static const String getExpenses = "/expense/get_all_expenses";
  static const String createExpense = "/expense/add_expense";
  static const String updateExpense = "/expense/update_expense";
  static const String deleteExpense = "/expense/delete_expense";
  static const String meetDebtExpense = "/expense/meet_debt_expense";
  static const String getExpenseRegisters = "/expense/get_expense_register";
  static const String deleteExpenseRegister = "/expense/delete_expense_register";

  // Money box Registers
  static const String getPushOrPullRegisters = "/register/get_push_or_pull_registers";
  static const String addOrRemoveCash = "/register/add_or_remove_cash";
  static const String updateRegister = "/register/update_register";
  static const String deleteRegister = "/register/delete_register";
  static const String getTotalBox = "/register/get_box";
  static const String getRegisterRegisters = "/register/get_register_registers";
  static const String deleteRegisterRegister = "/register/delete_register_register";


  // Purchases Invoice
  static const String getPurchasesInvoices = "/purchase_invoice/get_all_purchases_invoices";
  static const String getPurchasesInvoice = "/purchase_invoice/get_purchase_invoice";
  static const String createPurchasesInvoice = "/purchase_invoice/add_purchase_invoice";
  static const String updatePurchasesInvoice = "/purchase_invoice/update_purchase_invoice";
  static const String deletePurchasesInvoice = "/purchase_invoice/delete_purchase_invoice";
  static const String meetDebtPurchasesInvoice = "/purchase_invoice/meet_debt_purchase_invoice";

  static const String getPurchasesInvoicesBetween = "/purchase_invoice/get_purchases_invoices_between_tow_date";
  static const String getPurchasesInvoicesArchive = "/purchase_invoice/get_archives_purchases_invoices";
  static const String getPurchasesInvoiceArchive = "/purchase_invoice/get_archive_purchases_invoice";
  static const String addPurchasesInvoiceToArchive = "/purchase_invoice/add_to_archives_purchase_invoice";
  static const String removePurchasesInvoiceFromArchive = "/purchase_invoice/remove_to_archives_purchase_invoice";
  static const String getProductsSomeDetails = "/purchase_invoice/get_products_invoice";
  static const String getPurchasesInvoiceRegisters = "/purchase_invoice/get_purchase_invoice_register";
  static const String deletePurchasesInvoiceRegister = "/purchase_invoice/delete_purchase_invoice_register";


  // Sales Invoice
  static const String getSalesInvoices = "/sales_invoice/get_all_sales_invoices";
  static const String getSalesInvoice = "/sales_invoice/get_sales_invoice";
  static const String createSalesInvoice = "/sales_invoice/add_sales_invoice";
  static const String updateSalesInvoice = "/sales_invoice/update_sales_invoice";
  static const String deleteSalesInvoice = "/sales_invoice/delete_sales_invoice";
  static const String meetDebtSalesInvoice = "/sales_invoice/meet_debt_sales_invoice";

  static const String getSalesInvoicesBetween = "/sales_invoice/get_sales_invoices_between_tow_date";
  static const String getSalesInvoicesArchive = "/sales_invoice/get_archives_sales_invoices";
  static const String getSalesInvoiceArchive = "/sales_invoice/get_archive_sales_invoice";
  static const String addSalesInvoiceToArchive = "/sales_invoice/add_to_archives_sales_invoice";
  static const String removeSalesInvoiceFromArchive = "/sales_invoice/remove_to_archives_sales_invoice";
  static const String getSalesInvoiceRegisters = "/sales_invoice/get_sales_invoice_register";
  static const String deleteSalesInvoiceRegister = "/sales_invoice/delete_sales_invoice_register";


  // Stocktaking Page
  static const String getCategoriesNames = "/stocktaking/get_categories";
  static const String getProductsNames = "/stocktaking/get_products";
  static const String getClientNames = "/stocktaking/get_clients";
  static const String getSuppliersNames = "/stocktaking/get_suppliers";
  static const String stocktakingAll = "/stocktaking/all";
  static const String stocktakingCategory = "/stocktaking/category";
  static const String stocktakingProduct = "/stocktaking/product";
  static const String stocktakingClient = "/stocktaking/client";
  static const String stocktakingSupplier = "/stocktaking/supplier";

  // Monitoring Page
  static const String getMonitoring = "/monitoring/get";

}
