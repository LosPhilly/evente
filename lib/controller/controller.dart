import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import '../data/data_file.dart';
import '../modal/modal_card.dart';
import '../modal/modal_feature_event.dart';
import '../modal/modal_trending_event.dart';
import '../modal/model_country.dart';

class IntroController {
  PageController pageController = PageController();
  ValueNotifier<int> selectedPage = ValueNotifier(0);

  void change(int index) {
    selectedPage.value = index;
  }

  void dispose() {
    pageController.dispose();
  }
}

class LoginController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter email address.';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter password.';
    }
    return null;
  }

  void dispose() {
    emailController.dispose();
    passwordController.dispose();
  }
}

class ForgotController {
  TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> forgotFormKey = GlobalKey<FormState>();

  void dispose() {
    emailController.dispose();
  }
}

class ResetController {
  TextEditingController oldPassController = TextEditingController();
  TextEditingController newPassController = TextEditingController();
  TextEditingController confPassController = TextEditingController();
  final GlobalKey<FormState> resetFormKey = GlobalKey<FormState>();

  void dispose() {
    oldPassController.dispose();
    newPassController.dispose();
    confPassController.dispose();
  }
}

class SignUpController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController searchController = TextEditingController();

  ValueNotifier<String> image = ValueNotifier("flag.png");
  ValueNotifier<String> code = ValueNotifier("+1");
  ValueNotifier<bool> check = ValueNotifier(false);

  List<ModelCountry> newCountryLists = DataFile.countryList;

  void onItemChanged(String value) {
    newCountryLists = DataFile.countryList
        .where((string) =>
            string.name!.toLowerCase().contains(value.toLowerCase()))
        .toList();
  }

  void getImage(String value, String value1) {
    image.value = value;
    code.value = value1;
  }

  void onCheck() {
    check.value = !check.value;
  }

  String? fullNameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter full name.';
    }
    return null;
  }

  String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter email address.';
    }
    return null;
  }

  String? phoneValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter phone number.';
    }
    return null;
  }

  String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter password.';
    }
    return null;
  }

  void dispose() {
    nameController.dispose();
    emailController.dispose();
    phoneController.dispose();
    passwordController.dispose();
    searchController.dispose();
  }
}

class HomeController {
  ValueNotifier<int> index = ValueNotifier(0);

  void onChange(int value) {
    index.value = value;
  }
}

class FeatureEventController {
  TextEditingController searchController = TextEditingController();
  List<ModalFeatureEvent> newFeatureEventLists = DataFile.featureEventList;

  void onItemChanged(String value) {
    newFeatureEventLists = DataFile.featureEventList
        .where((string) =>
            string.name!.toLowerCase().contains(value.toLowerCase()))
        .toList();
  }

  void dispose() {
    searchController.dispose();
  }
}

class BuyTicketController {
  ValueNotifier<int> select = ValueNotifier(0);
  ValueNotifier<int> count = ValueNotifier(1);

  void countChange(int value) {
    count.value = value;
  }

  void onChange(int value) {
    select.value = value;
  }
}

class PaymentController {
  ValueNotifier<int> select = ValueNotifier(0);

  void onChange(int value) {
    select.value = value;
  }
}

class EditCardController {
  TextEditingController cardNameController = TextEditingController();
  TextEditingController cardNumberController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  void dispose() {
    cardNameController.dispose();
    cardNumberController.dispose();
    dateController.dispose();
    cvvController.dispose();
  }
}
