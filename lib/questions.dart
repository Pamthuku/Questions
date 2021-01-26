class Questions {
  String _ques;
  bool _uAnswer;

  Questions({String ques, bool uAnswer}) {
    this._ques = ques;
    this._uAnswer = uAnswer;
  }
  String getquest() {
    return _ques;
  }

  bool getuAnswer() {
    return _uAnswer;
  }
}

class QA {
  int qNum = 0;
  List<Questions> questions = [
    new Questions(
        ques:
            '1. အချိန်ဆိုတာ...?\n\n 1 = ဘဝ၏တန်ဖိုး\n2 = ဘဝကိုမှီပြီးဖြစ်ပေါ်လာတဲ့ တကယ်မရှိတဲ့အရာတစ်ခု',
        uAnswer: false),
    new Questions(
        ques:
            '2. ပုခုံးနှစ်ဖက်ကြား ခေါင်းပေါက်တာချင်းတူရုံနဲ့ "လူချင်းအတူတူပဲ" လို့ ဆိုလို့ရနိုင်ပါသလား...?\n\n 1 = မရနိုင်ပါဘူး\n2 = အတူတူပါပဲ',
        uAnswer: false),
    new Questions(
        ques:
            '3. လူနဲ့တိရိစ္ဆာန်ကို မည်သည့်အရာနဲ့ ခွဲခြားပါသလဲ...?\n\n 1 = ကိုယ်ချင်းစာတရားနဲ့\n2 = မိုးကိုကျောခိုင်းတာ,မိုးကိုကျောမခိုင်းတာနဲ့ or ဦးနှောက်ပါတာ,မပါတာနဲ့',
        uAnswer: true),
    new Questions(
        ques:
            '4. ကိုယ်ချင်းစာတရားရှိရုံနဲ့ လူအစစ်ဖြစ်ပါပြီလား...?\n\n 1 = အဲ့လောက်ဆိုဖြစ်မယ်ထင်တယ်\n2 = လူအစစ်တော့ မဖြစ်သေးပါဘူး',
        uAnswer: true),
    new Questions(
        ques:
            '5. မည်သည့်အချိန်မှာ လူအစစ်ရယ်လို့ဖြစ်ပါသလဲ...?\n\n 1 = အမှန်နဲ့အမှား ကွဲပြားသွားတဲ့အချိန်ကစပြီး\n2 = လူစိတ်ပေါက်နေတဲ့အချိန်အခိုက်အတန့်မှာ',
        uAnswer: false),
    new Questions(
        ques:
            '6. အမောရဲ့ဟိုဘက်မှာ မည်သည့်အရာရှိပါသလဲ...?\n\n 1 = သေတာရှိတယ်\n2 = မမောတာရှိတယ်',
        uAnswer: true),
    new Questions(
        ques:
            '7. ယောကျ်ားတွေရဲ့ အလှတရားက မည်သည့်ဥစ္စာပါလဲ...? \n\n1 = ကာယဗလ or ပိုက်ဆံ \n2 = အရည်အချင်း',
        uAnswer: false),
    new Questions(
        ques: '8. မိန်းမတွေရဲ့အလှတရားဆိုတာ...?\n\n1 = ယဥ်ကျေးမှု \n2 = ရုပ်ရည်',
        uAnswer: false),
    new Questions(
        ques:
            'မေးခွန်းအားလုံး ဖြေဆို၍ပြီးပါပြီ၊ \n\nအဖြေမှန်\n?1 == 2 \n?2 == 1 \n?3 == 1 \n?4 == 2 \n?5 == 1 \n?6 == 2 \n?7 == 2 \n?8 == 1',
        uAnswer: true),
    new Questions(ques: null, uAnswer: null)
  ];
  void qnum() {
    if (qNum < questions.length) {
      qNum++;
    }
  }
}
