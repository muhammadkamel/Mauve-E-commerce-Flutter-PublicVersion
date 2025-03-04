import 'package:flutter/cupertino.dart';
import 'package:flutterecom/shared/network/local/hive/employee.dart';
import 'package:hive/hive.dart';

late BuildContext mainAppContext;

const String splashPath = '/';
const String loginPath = '/login';
const String registerPath = '/register';
const String homeLayoutPath = '/home_layout';
const String productDetailsPath = '/product_details';
const String cartPath = '/cart';
const String contactPath = '/contact';

const String userAddressPath = '/user_address';
const String chatPath = '/chat';
const String otpPath = '/otp';

//final navigatorKey = GlobalKey<NavigatorState>();

const String USER_COLLECTION = 'Users';
const String TOKEN_COLLECTION = 'Tokens';

const String OFFERS_COLLECTION = 'Offers';
const String OFFERS_OFFERLIST_COLLECTION = 'offerList';

const String CATEGORIES_COLLECTION = 'Categories';
const String PRODUCTS_COLLECTION = 'products';
const String RATES_COLLECTION = 'rates';
const String ORDERS_COLLECTION = 'Orders';
const String SHIPPER_ORDERS_COLLECTION = 'ShippingOrder';
const String INFO_COLLECTION = 'Info';
const String PROMOS_COLLECTION = 'Promos';
const String INVITAIONSCODES_COLLECTION = 'InvitationsCodes';
const String MESSAGES_COLLECTION = 'Messages';

const String CHAT_REF = "Chat";
const String KEY_ROOM_ID = "CHAT_ROOM_ID";
const String KEY_CHAT_USER = "CHAT_SENDER";
const String CAHT_DETAIL_REF = "ChatDetail";

const String GOOGLE_MAP_API_KEY = 'AIzaSyDO4rN4fQCdQSpsKLDvCs_Vbn6RoYkeEfU';

class Boxes {
  static Box<Employee> getEmployees() => Hive.box<Employee>('employee');
}

/*
Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
//  _checkInternetConnectionListener(),
authCubit.userModel.uId != ''
? Text('Hello ${authCubit.userModel.name} in Home Layout')
: const Text('Hello Anon in HOme Layout'),
ElevatedButton(
onPressed: () {
AuthCubit.get(context).signOut(context);
},
child: Text('LogOut'.tr())),
ElevatedButton(
onPressed: () {
EasyLocalization.of(context)!
    .setLocale(const Locale('ar', 'AR'))
    .then((_) {
// Phoenix.rebirth(context);
OneNotification.hardReloadRoot(context);
});
},
child: const Text('Arabic')),
ElevatedButton(
onPressed: () {
EasyLocalization.of(context)!
    .setLocale(const Locale('en', 'EN'))
    .then((_) {
// Phoenix.rebirth(context);
OneNotification.hardReloadRoot(context);
});
},
child: const Text('English')),
ElevatedButton(
onPressed: () {
Navigator.pushNamedAndRemoveUntil(
context, loginPath, (route) => false);
},
child: const Text('login')),
],
),
)*/


/*return Wrap(
children: productItem.addon!.map((e) => Padding(
padding: const EdgeInsets.all(4.0),
child: ChoiceChip(
selected: ProductDetailsCubit.get(context).isSelectedService(e),
selectedColor: Colors.red,
label: Text(e.name),
labelStyle: const TextStyle(color: Colors.white),
backgroundColor: Colors.teal,
onSelected: (isSelected) => ProductDetailsCubit.get(context).emitAddonChange(isSelected, e),
),
),
).toList(),
);*/

/*  return SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: productItem.addon!.map((ProductAddonModel e) => Wrap(
                              children: [
                                const SizedBox(width: 5.0,),
                                FilterChip(
                                  label:context.locale.toString() == 'en_EN'?  Text('${e.name} +${e.price}LE',style: Theme.of(context).textTheme.caption,) : Text('${e.name_ar} +${e.price}LE',style: Theme.of(context).textTheme.caption,),
                                  selected:ProductDetailsCubit.get(context).isSelectedService(e),
                                  onSelected: (bool isSelected) {
                                    ProductDetailsCubit.get(context).emitAddonChange(isSelected, e);
                                  },
                                ),
                              ],
                            ),).toList(),
                          ),
                        );*/






/*var rateCollection = FirebaseFirestore.instance
        .collection(CATEGORIES_COLLECTION)
        .doc(productItem.menu_id)
        .collection(PRODUCTS_COLLECTION)
        .doc(productItem.id)
        .collection(RATES_COLLECTION);
    if (hasLimit) {
      productRateLimitedList = [];
      rateCollection.orderBy('commentTime',descending: true).limit(3).get().then((value) {
        value.docs.forEach((element) {
          productRateLimitedList.add(ProductRateModel.fromJson(element.data()));
        });
        emit(ProductsRatesSuccessState());
      }).catchError((onError) {
        emit(ProductsRatesErrorState(onError.toString()));
      });
    }
    else{
      productRateList = [];
      rateCollection.orderBy('commentTime',descending: true).get().then((value) {
        value.docs.forEach((element) {
          productRateList.add(ProductRateModel.fromJson(element.data()));
        });
        emit(ProductsRatesSuccessState());
      }).catchError((onError) {
        emit(ProductsRatesErrorState(onError.toString()));
      });
    }*/



/*void getMoreProductItemRates({required ProductModel productItem}){
   FirebaseFirestore.instance
        .collection(CATEGORIES_COLLECTION)
        .doc(productItem.menu_id)
        .collection(PRODUCTS_COLLECTION)
        .doc(productItem.id)
        .collection(RATES_COLLECTION)
       .limit(3).get().then((value) {
     value.docs.forEach((element) {
       productRateList.add(ProductRateModel.fromJson(element.data()));
     });
     emit(ProductsRatesSuccessState());
   }).catchError((onError) {
     emit(ProductsRatesErrorState(onError.toString()));
   });
  }*/