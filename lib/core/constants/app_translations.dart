import 'package:rms/core/constants/app_translation_keys.dart';
import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          AppTranslationKeys.noMoreCategories: 'There are no more Categories',
          AppTranslationKeys.noMoreOffers: 'There are no more Offers',
          AppTranslationKeys.noMoreOrders: 'There are no more Orders',
          AppTranslationKeys.noMoreProducts: 'There are no more Products',
          AppTranslationKeys.noMoreAds: 'There are no more Ads',
          AppTranslationKeys.noMoreStore: 'There are no more Store',
          AppTranslationKeys.noAnyStore: 'No any Store',
          AppTranslationKeys.noAnyAds: 'No any Ad',
          AppTranslationKeys.noAnyOrder: 'No any Order',
          AppTranslationKeys.titleDialogLogin: 'In order to continue, please log in',
          AppTranslationKeys.singIn: 'Sign In',
          AppTranslationKeys.email: 'Email',
          AppTranslationKeys.password: 'Password',
          AppTranslationKeys.enterPassword: 'Enter password',
          AppTranslationKeys.doYouHaveAnAccount: 'Do you have an account? ',
          AppTranslationKeys.forgetPassword: 'Forget Password',
          AppTranslationKeys.sendCode: 'Send Code',
          AppTranslationKeys.weSendVerifyCodeTo: 'We sent verify code to',
          AppTranslationKeys.verify: 'Verify',
          AppTranslationKeys.verifyCode: 'Verify code',
          AppTranslationKeys.verifyYourPhone: 'Verify Your Phone',
          AppTranslationKeys.resend: 'resend code',
          AppTranslationKeys.reset: 'Reset',
          AppTranslationKeys.skip: 'Skip',
          AppTranslationKeys.passwordNotMatch:
              'Password not match confirm password',
          AppTranslationKeys.passConfirmation: 'Password confirmation',
          AppTranslationKeys.enterPassConfirmation:
              'Enter password confirmation',
          AppTranslationKeys.customer: 'Customer',
          AppTranslationKeys.salon: 'Salon',
          AppTranslationKeys.company: 'Company',
          AppTranslationKeys.buyYourCosmetics:
              'Buy your cosmetics directly from the source',
          AppTranslationKeys.enjoyUniqueShopping:
              'Enjoy unique GardDescription shopping',
          AppTranslationKeys.getDirectService: 'Get direct service',
          AppTranslationKeys.buyYourCosmeticsSalon:
              'Experience luxury and pampering like never before at our salon.',
          AppTranslationKeys.enjoyUniqueShoppingSalon:
              'Indulge in top-notch beauty treatments and relaxation services.',
          AppTranslationKeys.getDirectServiceSalon:
              'Elevate your style and rejuvenate your spirit with us.',
          AppTranslationKeys.buyYourCosmeticsCompany:
              'Discover the future of cosmetics with us.',
          AppTranslationKeys.enjoyUniqueShoppingCompany:
              'We\'re committed to innovation, quality, and your beauty needs.',
          AppTranslationKeys.getDirectServiceCompany:
              'Join us to explore groundbreaking products and redefine your beauty routine.',
          AppTranslationKeys.next: 'next',
          AppTranslationKeys.add: 'Add',
          AppTranslationKeys.edit: 'Edit',
          AppTranslationKeys.save: 'Save',
          AppTranslationKeys.changePrice: 'Change Price',
          AppTranslationKeys.changeAdPrice: 'Change Ad Price',
          AppTranslationKeys.newPrice: 'New Price',
          AppTranslationKeys.enterNewPrice: 'Enter new price',
          AppTranslationKeys.signUp: 'Sign Up',
          AppTranslationKeys.yourInfo: 'Your Info',
          AppTranslationKeys.storeInfo: 'Store Info',
          AppTranslationKeys.firstName: 'First name',
          AppTranslationKeys.enterYourFirstName: 'Enter your first name',
          AppTranslationKeys.lastName: 'Last name',
          AppTranslationKeys.enterYourLastName: 'Enter your last name',
          AppTranslationKeys.enterYourBirthDate: 'click to chose your birthDate',
          AppTranslationKeys.storeName: 'Store Name',
          AppTranslationKeys.enterYourStoreName: 'Enter your store name',
          AppTranslationKeys.marketName: 'Market name',
          AppTranslationKeys.enterMarketName: 'Enter market name',
          AppTranslationKeys.cityName: 'City name',
          AppTranslationKeys.enterYourCityName: 'Enter your city name',
          AppTranslationKeys.description: 'Description',
          AppTranslationKeys.properties: 'Properties',
          AppTranslationKeys.enterTheDescription: 'Enter the description',
          AppTranslationKeys.enterTheProperties: 'Enter properties',
          AppTranslationKeys.selectStore: 'Select Store',
          AppTranslationKeys.category: 'Category',
          AppTranslationKeys.selectCategory: 'Select Category',
          AppTranslationKeys.subCategory: 'Sub Category',
          AppTranslationKeys.selectSubCategory: 'Select Sub Category',
          AppTranslationKeys.subCategories: 'Sub Categories',
          AppTranslationKeys.selectSubCategories: 'Select Sub Categories',
          AppTranslationKeys.image: 'Image',
          AppTranslationKeys.yourRequestStatus: 'Your Request Status',
          AppTranslationKeys.pleaseAwait:
              'Please allow some time to process your request, You can close the application while this process is finished',
          AppTranslationKeys.yourRequestAccepted: 'Your Request is accepted by admin successfully you can go to home page',
          AppTranslationKeys.waiting: 'Waiting...',
          AppTranslationKeys.goToHome: 'Go To Home',
          AppTranslationKeys.createAnotherStore: 'Create Another Store',
          AppTranslationKeys.address: 'address',
          AppTranslationKeys.birthDate: 'Birth date',
          AppTranslationKeys.gender: 'Gender',
          AppTranslationKeys.male: 'Male',
          AppTranslationKeys.female: 'Female',
          AppTranslationKeys.phoneNumber: 'Phone Number',
          AppTranslationKeys.enterYourPhoneNumber: 'Enter your phone number',
          AppTranslationKeys.storeLocation: 'Store Location',
          AppTranslationKeys.enterYourStoreLocation: 'Enter your Store Location',
          AppTranslationKeys.instagram: 'Instagram',
          AppTranslationKeys.twitter: 'Twitter',
          AppTranslationKeys.facebook: 'Facebook',
          AppTranslationKeys.telegram: 'Telegram',
          AppTranslationKeys.noAccount: 'No Account',
          AppTranslationKeys.changeLang: 'Change lang',
          AppTranslationKeys.resetPassword: 'Reset Password',
          AppTranslationKeys.about: 'About us',
          AppTranslationKeys.aboutContent:
              '''Nano Tech Company \nwe are a fast growing consumer products company and a leader in the field of manufacturing.\nimporting and exporting cosmetic products.\nThe company was established in 2014 in Erbil\nIraq, in cooperation with Brazil for the first time.\nSince then, it has worked to establish its own manufacturing, research and development centers in many countries of the world and has succeeded in marketing its products.\nNano Tech is a company specialized in the manufacture and development of consumer cosmetic products for external use. \nIt seeks to present its products in the best way, and to develop these products for the best quality. \nWhich helps them to provide the best to consumers''',
          AppTranslationKeys.support: 'Support',
          AppTranslationKeys.iAgreeOn: 'I agree',
          AppTranslationKeys.and: ' and ',
          AppTranslationKeys.privacyPolicies: 'privacy policies',
          AppTranslationKeys.tearmCondition: 'Tearms',
          AppTranslationKeys.policies: 'Policies',
          AppTranslationKeys.police1: 'Product Safety and Testing Policy:',
          AppTranslationKeys.police2: 'Ethical Use of Nanotechnology Policy:',
          AppTranslationKeys.police3: 'Transparency and Labeling Policy:',
          AppTranslationKeys.police4: 'Environmental Responsibility Policy:',
          AppTranslationKeys.police5: 'Consumer Education Policy:',
          AppTranslationKeys.policeContent1:
              'We prioritize the safety of our customers. All cosmetic products developed using nanotechnology will undergo rigorous testing to ensure their safety for human use. We will follow international regulatory guidelines and standards for nanomaterial safety assessments.',
          AppTranslationKeys.policeContent2:
              'Our company is committed to using nanotechnology in cosmetics in an ethical and responsible manner. We will not use nanomaterials that are known to have negative impacts on health or the environment. We will continuously monitor advancements in nanotechnology and adjust our practices accordingly.',
          AppTranslationKeys.policeContent3:
              'We will provide clear and accurate labeling for all cosmetic products that contain nanomaterials. This includes providing information about the nanomaterials used, their purpose, and any potential benefits or risks associated with their use.',
          AppTranslationKeys.policeContent4:
              'We will strive to minimize the environmental impact of our nanotechnology-based cosmetic products. This includes efforts to reduce waste, use sustainable packaging materials, and adhere to eco-friendly manufacturing processes.',
          AppTranslationKeys.policeContent5:
              'Our company believes in educating consumers about the benefits and safe use of nanotechnology in cosmetics. We will provide accessible information about nanotechnology, its applications in cosmetics, and any precautions customers should take when using our products.',
          AppTranslationKeys.logout: 'Logout',
          AppTranslationKeys.logoutFromApp: 'Logout From app',
          AppTranslationKeys.goals: 'Our Goals:',
          AppTranslationKeys.goalsContent:
              '''We at Nano Tech are interested in meeting the needs of consumers by providing the best products on a personal level by providing a diverse and comprehensive range of products that meet all consumer needs with high quality.\nOur goal is to ensure that we provide the best product in an ideal manner in all areas of our specialization.''',
          AppTranslationKeys.vision: 'Vision:',
          AppTranslationKeys.visionContent:
              'Nano Tech is one of the companies that contribute significantly to the development of all areas of its competence to reach the best in the world and always achieve the slogan of excellence.',
          AppTranslationKeys.alMutawasit: 'Al Mutawasit',
          AppTranslationKeys.home: 'Home',
          AppTranslationKeys.welcome: 'Welcome!',
          AppTranslationKeys.findProduct: 'Find Product',
          AppTranslationKeys.findCategory: 'Find Category',
          AppTranslationKeys.doNotHaveAnAccount: 'Don`t have an account?  ',
          AppTranslationKeys.ads: 'Ads',
          AppTranslationKeys.deliveries: 'Deliveries',
          AppTranslationKeys.seeAll: 'See all',
          AppTranslationKeys.all: 'All',
          AppTranslationKeys.requests: 'Requests',
          AppTranslationKeys.yourAds: 'your ads',
          AppTranslationKeys.yourStores: 'your stores',
          AppTranslationKeys.addRequests: 'adding requests',
          AppTranslationKeys.updateRequests: 'update requests',
          AppTranslationKeys.received: 'Received',
          AppTranslationKeys.delivered: 'Delivered',
          AppTranslationKeys.stores: 'Stores',
          AppTranslationKeys.store: 'Store',
          AppTranslationKeys.ad: 'Ad',
          AppTranslationKeys.adName: 'Ad Name',
          AppTranslationKeys.adPrice: 'Ad Price',
          AppTranslationKeys.adSpecialPrice: 'Ad Special Price',
          AppTranslationKeys.enterAdName: 'Enter ad name',
          AppTranslationKeys.enterAdPrice: 'Enter ad price',
          AppTranslationKeys.enterAdSpecialPrice: 'Enter ad special price',
          AppTranslationKeys.latestUsersOrders: 'Latest users orders',
          AppTranslationKeys.adsUsersRequests: 'Latest Ads Requests',
          AppTranslationKeys.products: 'Products',
          AppTranslationKeys.categories: 'Categories',
          AppTranslationKeys.rating: 'Rating',
          AppTranslationKeys.ratingProduct: 'Rating Product',
          AppTranslationKeys.di: 'D.I',
          AppTranslationKeys.myCart: 'My Cart',
          AppTranslationKeys.total: 'Total',
          AppTranslationKeys.amount: 'Amount',
          AppTranslationKeys.count: 'Count',
          AppTranslationKeys.order: 'Order',
          AppTranslationKeys.cartOrders: 'Cart orders',
          AppTranslationKeys.specialOrders: 'Special orders',
          AppTranslationKeys.requestProcessing: 'Request Processing',
          AppTranslationKeys.requestAccepted: 'Request Accepted',
          AppTranslationKeys.requestRejected: 'Request Rejected',
          AppTranslationKeys.requestProcessingMessage:
              'Your request is processing by admin  and need some time to accept it and enable',
          AppTranslationKeys.requestAcceptedMessage:
              'Your request is accepted by admin  and it now is enabled',
          AppTranslationKeys.view: 'View',
          AppTranslationKeys.close: 'Close',
          AppTranslationKeys.delete: 'Delete',
          AppTranslationKeys.warningDeleteStore:
              'Warning, if you do this action you can’t access to any info of store',
          AppTranslationKeys.warningDeleteAd:
              'Warning, if you do this action you can’t access to any info of Ad',
          AppTranslationKeys.enable: 'Enable',
          AppTranslationKeys.disable: 'Disable',
          AppTranslationKeys.warningEnableStore:
              'Warning, if you do this action the store will appear all customers',
          AppTranslationKeys.warningDisableStore:
              "Warning, if you do this action the store won't appear to anyone",
          AppTranslationKeys.warningEnableAd:
              'Warning, if you do this action the ad will appear all customers',
          AppTranslationKeys.warningDisableAd:
              "Warning, if you do this action the ad won't appear to anyone",
          AppTranslationKeys.confirm: 'Confirm',
          AppTranslationKeys.cancel: 'Cancel',
          AppTranslationKeys.addToCart: 'Add to cart',
          AppTranslationKeys.specialOrder: 'Special order',
          AppTranslationKeys.myOrders: 'My order',
          AppTranslationKeys.orderDetails: 'Order details',
          AppTranslationKeys.response: 'Response',
          AppTranslationKeys.notResponse: 'There isn\'t Response yet',
          AppTranslationKeys.notNote: 'There isn\'t Notes',
          AppTranslationKeys.orderManufacturing: 'Order Manufacturing',
          AppTranslationKeys.orderByName: 'Order by name',
          AppTranslationKeys.notes: 'Notes',
          AppTranslationKeys.newName: 'New name',
          AppTranslationKeys.processing: 'Processing',
          AppTranslationKeys.rejected: 'Rejected',
          AppTranslationKeys.done: 'Done',
          AppTranslationKeys.offers: 'Offers',
          AppTranslationKeys.profile: 'Profile',
          AppTranslationKeys.arabic: 'Arabic',
          AppTranslationKeys.english: 'English',
          AppTranslationKeys.tryAgain: 'Try Again',
          AppTranslationKeys.offline:
              'Can`t connect to the internet.\n Please check your network connection and try again later',
          AppTranslationKeys.emptyCache: 'No any stored date',
          AppTranslationKeys.dataIsLoadedSuccessfully:
              'Data is loaded successfully',
          AppTranslationKeys.deleteItemSuccessfully: 'Delete item successfully',
          AppTranslationKeys.addItemSuccessfully: 'Add item successfully',
          AppTranslationKeys.wrongData:
              'The data entered is incorrect. Please check and try again',
          AppTranslationKeys.unexpectedException:
              'Unexpected error. Please try again later',
          AppTranslationKeys.internalServerError:
              'Sorry, a server error occurred, the request cannot be executed at this time',
          AppTranslationKeys.notFound:
              'Sorry, the requested resource could not be found',
          AppTranslationKeys.forbidden:
              'Sorry, you must be logged in to access this resource',
          AppTranslationKeys.unauthorized:
              'Sorry, you do not have sufficient permissions to access this resource',
          AppTranslationKeys.badRequest:
              'Sorry, the request cannot be processed because it is invalid',
          AppTranslationKeys.success: 'It was done successfully',
          AppTranslationKeys.failure: 'The operation failed',
          AppTranslationKeys.emailIsRequired: 'Email is required',
          AppTranslationKeys.emailIsNotInvalid: 'The email is not valid',
          AppTranslationKeys.emailMustEndGmail:
              'The email must be end be @gmail.com',
          AppTranslationKeys.nameIsRequired: 'Name is required',
          AppTranslationKeys.imageIsRequired: 'Image is required',
          AppTranslationKeys.nameIsNotInvalid: 'The name is not valid',
          AppTranslationKeys.thisFieldIsRequired: 'This field is required',
          AppTranslationKeys.thisFieldIsNotNumber: "it isn't number",
          AppTranslationKeys.phoneNumberIsRequired: 'Phone number is required',
          AppTranslationKeys.thePhoneNumberShouldConsistOf9Digits:
              'The phone number should consist of 9 or 10 digits',
          AppTranslationKeys.phoneIsNotInvalid: 'The phone is not valid',
          AppTranslationKeys.phonePatternIsNotInvalid:
              'The phone number should be start with 09 or 9',
          AppTranslationKeys.passwordIsRequired: 'Password is required',
          AppTranslationKeys.itShouldBeAtLeast8CharactersLong:
              'It should be at least 8 characters long',
          AppTranslationKeys.passwordConfirmationIsRequired:
              'Password confirmation is required',
          AppTranslationKeys.thereIsNoMatch: 'There is no match',
        },
        'ar': {
          AppTranslationKeys.noMoreCategories: 'لا يوجد المزيد من التصنيفات',
          AppTranslationKeys.noMoreOffers: "لا يوجد المزيد من العروض",
          AppTranslationKeys.noMoreOrders: "لا يوجد المزيد من الطلبات",
          AppTranslationKeys.noMoreProducts: "لا يوجد المزيد من المنتجات",
          AppTranslationKeys.noMoreAds: "لا يوجد المزيد من الاعلانات",
          AppTranslationKeys.noMoreStore: "لا يوجد المزيد من المتاجر",
          AppTranslationKeys.noAnyStore: "لا يوجد أي متجر",
          AppTranslationKeys.noAnyAds: "لا يوجد أي إعلان",
          AppTranslationKeys.noAnyOrder: "لا يوجد أي طلب",
          AppTranslationKeys.titleDialogLogin: 'لكي تتمكن من المتابعة يرجى تسجيل الدخول',
          AppTranslationKeys.singIn: 'تسجيل دخول',
          AppTranslationKeys.email: 'بريد إلكتروني',
          AppTranslationKeys.password: 'كلمة المرور',
          AppTranslationKeys.enterPassword: 'ادخل كلمة المرور',
          AppTranslationKeys.doYouHaveAnAccount: ' هل لديك حساب؟',
          AppTranslationKeys.forgetPassword: 'نسيت كلمة المرور',
          AppTranslationKeys.sendCode: 'أرسل الرمز',
          AppTranslationKeys.weSendVerifyCodeTo: 'لقد أرسلنا رمز التحقق إلى',
          AppTranslationKeys.verify: 'تحقق',
          AppTranslationKeys.verifyCode: 'رمز التحقق',
          AppTranslationKeys.verifyYourPhone: 'التحقق من رقم هاتفك',
          AppTranslationKeys.resend: 'إعادة إرسال الرمز',
          AppTranslationKeys.reset: 'إعادة تعين',
          AppTranslationKeys.skip: 'تخطي',
          AppTranslationKeys.passwordNotMatch:
              'كلمة المرور غير مطابقة لتأكيد كلمة المرور',
          AppTranslationKeys.passConfirmation: 'تأكيد كلمة المرور',
          AppTranslationKeys.enterPassConfirmation: 'أدخل تأكيد كلمة المرور',
          AppTranslationKeys.customer: 'زبون',
          AppTranslationKeys.salon: 'صالون',
          AppTranslationKeys.company: 'شركة',
          AppTranslationKeys.buyYourCosmetics:
              'اشتري مستحضرات التجميل الخاصة بك مباشرة من المصدر',
          AppTranslationKeys.enjoyUniqueShopping:
              'استمتع بالتسوق الفريد من نوعه',
          AppTranslationKeys.getDirectService: 'احصل على خدمة مباشرة',
          AppTranslationKeys.buyYourCosmeticsSalon:
              'استمتع بالفخامة والتدليل كما لم يحدث من قبل في صالوننا.',
          AppTranslationKeys.enjoyUniqueShoppingSalon:
              'انغمس في علاجات التجميل وخدمات الاسترخاء من الدرجة الأولى.',
          AppTranslationKeys.getDirectServiceSalon:
              'ارتقي بأسلوبك وجدد روحك معنا.',
          AppTranslationKeys.buyYourCosmeticsCompany:
              'اكتشف مستقبل مستحضرات التجميل معنا.',
          AppTranslationKeys.enjoyUniqueShoppingCompany:
              'نحن ملتزمون بالابتكار والجودة واحتياجات جمالك.',
          AppTranslationKeys.getDirectServiceCompany:
              'انضم إلينا لاستكشاف المنتجات الرائدة وإعادة تعريف روتين جمالك.',
          AppTranslationKeys.next: 'التالي',
          AppTranslationKeys.add: 'إضافة',
          AppTranslationKeys.edit: 'تعديل',
          AppTranslationKeys.save: 'حفظ',
          AppTranslationKeys.changeAdPrice: 'تغير سعر إعلان',
          AppTranslationKeys.changePrice: 'تغير السعر',
          AppTranslationKeys.newPrice: 'السعر الجديد',
          AppTranslationKeys.enterNewPrice: 'أدخل السعر الجديد',
          AppTranslationKeys.signUp: 'إنشاء حساب',
          AppTranslationKeys.yourInfo: 'معلوماتك',
          AppTranslationKeys.storeInfo: 'معلومات المتجر',
          AppTranslationKeys.firstName: 'الاسم الأول',
          AppTranslationKeys.enterYourFirstName: 'أدخل اسمك الأول',
          AppTranslationKeys.lastName: 'اسم العائلة',
          AppTranslationKeys.enterYourLastName: 'أدخل اسم العائلة',
          AppTranslationKeys.enterYourBirthDate: 'اضغط لاختيار تاريخ ميلادك',
          AppTranslationKeys.storeName: 'اسم المتجر',
          AppTranslationKeys.enterYourStoreName: 'أدخل اسم المتجر',
          AppTranslationKeys.marketName: 'اسم السوق',
          AppTranslationKeys.enterMarketName: 'أدخل اسم السوق',
          AppTranslationKeys.cityName: 'اسم المدينة',
          AppTranslationKeys.enterYourCityName: 'أدخل اسم المدينة',
          AppTranslationKeys.description: 'الوصف',
          AppTranslationKeys.properties: 'الخصائص',
          AppTranslationKeys.enterTheDescription: 'أدخل الوصف',
          AppTranslationKeys.enterTheProperties: 'أدخل الخصائص',
          AppTranslationKeys.category: 'التصنيف',
          AppTranslationKeys.selectStore: 'اختر متجر',
          AppTranslationKeys.subCategory: 'التصنيف الفرعي',
          AppTranslationKeys.selectSubCategory: 'اختر التصنيف الفرعي',
          AppTranslationKeys.selectCategory: 'اختر تصنيف',
          AppTranslationKeys.subCategories: 'التصنيفات الفرعية',
          AppTranslationKeys.selectSubCategories: 'اختر التصنيفات الفرعية',
          AppTranslationKeys.image: 'الصورة',
          AppTranslationKeys.yourRequestStatus: 'حالة طلبك',
          AppTranslationKeys.pleaseAwait:
              'يرجى الانتظار بعض الوقت لمعالجة طلبك, يمكنك إغلاق التطبيق بينما تنتهي هذه العملية',
          AppTranslationKeys.yourRequestAccepted: 'تم قبول طلبك من قبل المشرف بنجاح يمكنك الانتقال الى الصفحة الرئيسية',
          AppTranslationKeys.waiting: 'قيد المعالجة',
          AppTranslationKeys.goToHome: 'انتقال إلى الشاشة الرئيسية',
          AppTranslationKeys.createAnotherStore: 'إنشاء متجر آخر',
          AppTranslationKeys.address: 'العنوان',
          AppTranslationKeys.birthDate: 'تاريخ الميلاد',
          AppTranslationKeys.gender: 'الجنس',
          AppTranslationKeys.male: 'ذكر',
          AppTranslationKeys.female: 'أنثى',
          AppTranslationKeys.phoneNumber: 'رقم الهاتف',
          AppTranslationKeys.enterYourPhoneNumber: 'أدخل رقم هاتفك',
          AppTranslationKeys.storeLocation: 'موقع المتجر',
          AppTranslationKeys.enterYourStoreLocation: 'أدخل عنوان متجرك',
          AppTranslationKeys.instagram: 'انستغرام',
          AppTranslationKeys.twitter: 'تويتر',
          AppTranslationKeys.facebook: 'فيسبوك',
          AppTranslationKeys.telegram: 'تلغرام',
          AppTranslationKeys.noAccount: 'لا يوجد حساب',
          AppTranslationKeys.changeLang: 'تغيير اللغة',
          AppTranslationKeys.resetPassword: 'إعادة تعيين كلمة المرور',
          AppTranslationKeys.about: 'حولنا',
          AppTranslationKeys.aboutContent:
              '''شركة نانو تك ،\nنحن شركة منتجات استهلاكية سريعة النمو ورائدة في مجال صناعة و استراد و تصدير منتجات التجميل .\nتأسست الشركة عام ٢٠١٤ في اربيل العراق بالتعاون مع البرازيل لاول مرة .\nمنذ ذلك الحين عملت على اقامة مراكز للتصنيع و البحث و التطوير الخاصة بها في الكثير من بلدان العالم و نجحت في تسويق منتجاتها .\nنانو تك هي شركة متخصصة في تصنيع و تطوير منتجات التجميل الاستهلاكية ذات الاستخدام الخارجي .\nتسعى لان تقدم منتجاتها بافضل صورة ، و تطوير تلك المنتجات لافضل جودة .\nمما يساعدها على تقديم الافضل للمستهلكين''',
          AppTranslationKeys.support: 'الدعم',
          AppTranslationKeys.iAgreeOn: 'أنا أوافق على',
          AppTranslationKeys.and: ' و ',
          AppTranslationKeys.privacyPolicies: 'سياسات الخصوصية',
          AppTranslationKeys.tearmCondition: 'الأحكام',
          AppTranslationKeys.policies: 'السياسات',
          AppTranslationKeys.police1: 'سياسة سلامة المنتج واختباره:',
          AppTranslationKeys.police2:
              'الاستخدام الأخلاقي لسياسة تكنولوجيا النانو:',
          AppTranslationKeys.police3: 'سياسة الشفافية ووضع العلامات:',
          AppTranslationKeys.police4: 'سياسة المسؤولية البيئية:',
          AppTranslationKeys.police5: 'سياسة تعليم المستهلك:',
          AppTranslationKeys.policeContent1:
              'نحن نعطي الأولوية لسلامة عملائنا. ستخضع جميع مستحضرات التجميل التي تم تطويرها باستخدام تقنية النانو لاختبارات صارمة لضمان سلامتها للاستخدام البشري. وسوف نتبع المبادئ التوجيهية والمعايير التنظيمية الدولية لتقييمات سلامة المواد النانوية.',
          AppTranslationKeys.policeContent2:
              'تلتزم شركتنا باستخدام تقنية النانو في مستحضرات التجميل بطريقة أخلاقية ومسؤولة. لن نستخدم المواد النانوية المعروفة بتأثيراتها السلبية على الصحة أو البيئة. وسوف نقوم باستمرار بمراقبة التطورات في مجال تكنولوجيا النانو وتعديل ممارساتنا وفقًا لذلك.',
          AppTranslationKeys.policeContent3:
              'سنوفر علامات واضحة ودقيقة لجميع مستحضرات التجميل التي تحتوي على مواد نانوية. ويتضمن ذلك تقديم معلومات حول المواد النانوية المستخدمة والغرض منها وأي فوائد أو مخاطر محتملة مرتبطة باستخدامها.',
          AppTranslationKeys.policeContent4:
              'سنسعى جاهدين لتقليل التأثير البيئي لمنتجاتنا التجميلية القائمة على تقنية النانو. ويشمل ذلك الجهود المبذولة لتقليل النفايات، واستخدام مواد التعبئة والتغليف المستدامة، والالتزام بعمليات التصنيع الصديقة للبيئة.',
          AppTranslationKeys.policeContent5:
              'تؤمن شركتنا بتثقيف المستهلكين حول فوائد تكنولوجيا النانو والاستخدام الآمن لها في مستحضرات التجميل. سنوفر معلومات يمكن الوصول إليها حول تقنية النانو وتطبيقاتها في مستحضرات التجميل وأي احتياطات يجب على العملاء اتخاذها عند استخدام منتجاتنا.',
          AppTranslationKeys.logout: 'تسجيل خروج',
          AppTranslationKeys.logoutFromApp: 'تسجيل خروج من التطبيق',
          AppTranslationKeys.goals: 'أهدافنا:',
          AppTranslationKeys.goalsContent:
              '''نحن في نانو تك نهتم بتلبية احتياجات المستهلكين بتوفير افضل المنتجات على الصعيد الشخصي من خلال توفير مجموعة متنوعة و شاملة من المنتجات التي تلبي جميع احتياجات المستهلك بجودة عالية.\nهدفنا هو ضمان تقديم افضل منتج بالشكل المثالي في جميع مجالات تخصصنا.''',
          AppTranslationKeys.vision: 'الرؤية:',
          AppTranslationKeys.visionContent:
              'شركة نانو تك من احد الشركات اللتي تساهم بشكل كبير في تطوير كافة مجالات اختصاصها للوصول الى الافضل عالمياً و احراز شعار التميز دائماً.',
          AppTranslationKeys.alMutawasit: 'المتوسط',
          AppTranslationKeys.home: 'الرئيسية',
          AppTranslationKeys.welcome: 'مرحباً!',
          AppTranslationKeys.findProduct: 'ابحث عن منتج',
          AppTranslationKeys.findCategory: 'ابحث عن تصنيف',
          AppTranslationKeys.doNotHaveAnAccount: 'ليس لديك حساب؟ ',
          AppTranslationKeys.ads: 'الإعلانات',
          AppTranslationKeys.deliveries: 'التوصيلات',
          AppTranslationKeys.seeAll: 'عرض الكل',
          AppTranslationKeys.all: 'الكل',
          AppTranslationKeys.requests: 'الطلبات',
          AppTranslationKeys.yourAds: 'إعلاناتك',
          AppTranslationKeys.yourStores: 'متاجرك',
          AppTranslationKeys.addRequests: 'طلبات الإضافة',
          AppTranslationKeys.updateRequests: 'طلبات التعديل',
          AppTranslationKeys.received: 'المستلمة',
          AppTranslationKeys.delivered: 'الموصلة',
          AppTranslationKeys.stores: 'المتاجر',
          AppTranslationKeys.store: 'متجر',
          AppTranslationKeys.ad: 'إعلان',
          AppTranslationKeys.adName: 'اسم الإعلان',
          AppTranslationKeys.adPrice: 'سعر الإعلان',
          AppTranslationKeys.adSpecialPrice: 'السعر الخاص للإعلان',
          AppTranslationKeys.enterAdName: 'أدخل اسم الإعلان',
          AppTranslationKeys.enterAdPrice: 'أدخل سعر الإعلان',
          AppTranslationKeys.enterAdSpecialPrice: 'أدخل السعر الخاص للإعلان',
          AppTranslationKeys.latestUsersOrders: 'آخر طلبات المستخدمين',
          AppTranslationKeys.adsUsersRequests: 'آخر طلبات الإعلانات',
          AppTranslationKeys.products: 'المنتجات',
          AppTranslationKeys.categories: 'التصنيفات',
          AppTranslationKeys.rating: 'تقييم',
          AppTranslationKeys.ratingProduct: 'تقييم منتج',
          AppTranslationKeys.di: 'د.ع',
          AppTranslationKeys.myCart: 'السلة',
          AppTranslationKeys.total: 'الإجمالي',
          AppTranslationKeys.amount: 'الكمية',
          AppTranslationKeys.count: 'العدد',
          AppTranslationKeys.order: 'اطلب',
          AppTranslationKeys.cartOrders: 'طلبات السلة',
          AppTranslationKeys.specialOrders: 'الطلبات الخاصة',
          AppTranslationKeys.requestProcessing: 'الطلب قيد المعالجة',
          AppTranslationKeys.requestAccepted: 'تم قبول الطلب',
          AppTranslationKeys.requestRejected: 'تم رفض الطلب',
          AppTranslationKeys.requestProcessingMessage:
              'تتم معالجة الطلب الخاص بك بواسطة المشرف ويحتاج إلى بعض الوقت لقبوله وتفعيله',
          AppTranslationKeys.requestAcceptedMessage:
              'تم قبول الطلب الخاص بك من قبل المشرف وهو مفغّل الآن',
          AppTranslationKeys.view: 'عرض',
          AppTranslationKeys.close: 'إغلاق',
          AppTranslationKeys.delete: 'حذف',
          AppTranslationKeys.warningDeleteStore:
              'تحذير، إذا قمت بهذا الإجراء، فلن تتمكن من الوصول إلى أي معلومات خاصة بالمتجر',
          AppTranslationKeys.warningDeleteAd:
              'تحذير، إذا قمت بهذا الإجراء، فلن تتمكن من الوصول إلى أي معلومات خاصة بالإعلان',
          AppTranslationKeys.enable: 'تفعيل',
          AppTranslationKeys.disable: 'إلغاء تفعيل',
          AppTranslationKeys.warningEnableStore:
              'تحذير، إذا قمت بهذا الإجراء سيظهر المتجر لجميع الزبائن',
          AppTranslationKeys.warningDisableStore:
              "تحذير، إذا قمت بهذا الإجراء فلن يظهر المتجر لأي زبون",
          AppTranslationKeys.warningEnableAd:
              'تحذير، إذا قمت بهذا الإجراء سيظهر الإعلان لجميع الزبائن',
          AppTranslationKeys.warningDisableAd:
              "تحذير، إذا قمت بهذا الإجراء فلن يظهر الإعلان لأي زبون",
          AppTranslationKeys.confirm: 'تأكيد',
          AppTranslationKeys.cancel: 'إلغاء',
          AppTranslationKeys.addToCart: 'إضافة للسلة',
          AppTranslationKeys.specialOrder: 'طلب خاص',
          AppTranslationKeys.myOrders: 'طلباتي',
          AppTranslationKeys.orderDetails: 'تفاصيل الطلب',
          AppTranslationKeys.response: 'الرد',
          AppTranslationKeys.notResponse: 'لا يوجد رد بعد',
          AppTranslationKeys.notNote: 'لا يوجد ملاحظات',
          AppTranslationKeys.orderManufacturing: 'طلب تصنيع',
          AppTranslationKeys.orderByName: 'طلب باسم',
          AppTranslationKeys.notes: 'ملاحظات',
          AppTranslationKeys.newName: 'الاسم الجديد',
          AppTranslationKeys.processing: 'قيد المعالجة',
          AppTranslationKeys.rejected: 'مرفوض',
          AppTranslationKeys.done: 'تم',
          AppTranslationKeys.offers: 'العروض',
          AppTranslationKeys.profile: 'الملف الشخص',
          AppTranslationKeys.arabic: 'العربية',
          AppTranslationKeys.english: 'الانجليزية',
          AppTranslationKeys.tryAgain: 'إعادة المحاولة',
          AppTranslationKeys.offline:
              'لا يمكن الاتصال بالإنترنت.\n يرجى التحقق من اتصالك بالشبكة وإعادة المحاولة لاحق',
          AppTranslationKeys.emptyCache: 'لا يوجد بيانات مخزنة حاليا',
          AppTranslationKeys.dataIsLoadedSuccessfully: 'تم جلب البيانات بنجاح',
          AppTranslationKeys.deleteItemSuccessfully: 'تم حذف العنصر بنجاح',
          AppTranslationKeys.addItemSuccessfully: 'تم اضافة العنصر بنجاح',
          AppTranslationKeys.wrongData:
              'البيانات المدخلة غير صحيحة. يرجى التحقق وإعادة المحاولة',
          AppTranslationKeys.unexpectedException:
              'خطأ غير متوقع. يرجى إعادة المحاولة لاحق',
          AppTranslationKeys.internalServerError:
              'عذراً، حدث خطأ في الخادم، لا يمكن تنفيذ الطلب الآن',
          AppTranslationKeys.notFound:
              'عذراً، لا يمكن العثور على المورد المطلوب',
          AppTranslationKeys.forbidden:
              'عذراً، يجب عليك تسجيل الدخول للوصول إلى هذا المورد',
          AppTranslationKeys.unauthorized:
              'عذراً، ليس لديك الصلاحيات الكافية للوصول إلى هذا المورد',
          AppTranslationKeys.badRequest:
              'عذراً، لا يمكن تنفيذ الطلب لأنه غير صالح',
          AppTranslationKeys.success: 'تم الأمر بنجاح',
          AppTranslationKeys.failure: 'فشلت العملية',
          AppTranslationKeys.emailIsRequired: 'البريد الإلكتروني مطلوب',
          AppTranslationKeys.emailIsNotInvalid: 'البريد الإلكتروني غير صالح',
          AppTranslationKeys.emailMustEndGmail:
              'البريد الإلكتروني يجب أن ينتهي بـ @gmail.com',
          AppTranslationKeys.nameIsRequired: 'الاسم مطلوب',
          AppTranslationKeys.imageIsRequired: 'الصورة مطلوبة',
          AppTranslationKeys.nameIsNotInvalid: 'الاسم غير صالح',
          AppTranslationKeys.thisFieldIsRequired: 'هذا الحقل مطلوب',
          AppTranslationKeys.thisFieldIsNotNumber: "ليس رقم",
          AppTranslationKeys.phoneNumberIsRequired: 'رقم الهاتف مطلوب',
          AppTranslationKeys.thePhoneNumberShouldConsistOf9Digits:
              'رقم الهاتف ينبغي أن يتألف من 9 او 10 خانات',
          AppTranslationKeys.phoneIsNotInvalid: 'رقم الهاتف غير صالح',
          AppTranslationKeys.phonePatternIsNotInvalid:
              'رقم الهاتف ينبغي أن يبدأ 09 أو 9',
          AppTranslationKeys.passwordIsRequired: 'كلمة المرور مطلوبة',
          AppTranslationKeys.itShouldBeAtLeast8CharactersLong:
              'ينبغي أن تتألف من 8 خانات على الأقل',
          AppTranslationKeys.passwordConfirmationIsRequired:
              'تأكيد كلمة المرور مطلوبة',
          AppTranslationKeys.thereIsNoMatch: 'لا يوجد تطابق',
        },
      };
}
