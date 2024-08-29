
class DValidators{
  static String? validateEmail(String? value){
    if(value == null||value.isEmpty){
      return 'Email is required';
    }
    final emailRegExp = RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9._]+\.[a-zA-z]{2,}$');
    if(!emailRegExp.hasMatch(value)){
      return 'Invalid Email Address';
    }
    return null;
  }

  static String? validatePassword(String? value){
    if(value == null|| value.isEmpty){
      return 'Password is required';
    }
    else if(value.length<6){
      return 'Password should be minimum 6 characters long';
    } else if(!value.contains(RegExp(r'A-Z'))){
      return 'Password must contain atleast one UpperCase letter';
    } else if(!value.contains(RegExp(r'0-9'))){
      return 'Password must contain atleast one digit';
    } else if(!value.contains(RegExp(r'[!@#$%^&*()<>,.?/_-{}|"]'))){
      return 'Password must contain atleast one special character';
    } else{
      return null;
    }
  }
  static String? validatePhoneNumber(String? value){
    if(value == null|| value.isEmpty) {
      return 'Phone number is required';
    }
    final phoneRegExp = RegExp(r'\d{10}$');
    if(!phoneRegExp.hasMatch(value)){
      return 'Invalid Phone number';
    } else{
      return null;
    }
  }
 
}