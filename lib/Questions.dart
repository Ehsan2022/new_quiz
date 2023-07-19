class Question {
  final int id, answer;
  final String question;
  final List<String> options;

  Question({required this.id, required this.question, required this.answer, required this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "فتحعلی شاه پسرش ……………………………. را به ولایت عهدی برگزیده بود، اما مرگ زودهنگام این شاهزاده لایق موجب شد مقام ولایت عهدی به محمد میرزا، برسد",
    "options": ['میرزا نوروز خان', 'احمد شاه ابدالی', 'عباس میرزا', 'احمد خان'],
    "answer_index":2 ,
  },
  {
    "id": 2,
    "question": "وزیر شایسته محمد شاه قاجار چه کسی بود؟",
    "options": ['فیروز شاه', 'راشد خان', 'نوروز علی', 'میرزا ابوالقاسم خان'],
    "answer_index": 3,
  },
  {
    "id": 3,
    "question": "لقب میرزا تقی خان فراهانی چه بود؟",
    "options": ['اکبر', 'روف', 'سخی', 'علیم'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question": "نام قدیم افغانستان چه بود؟",
    "options": ['آریانا', 'افغانستان', 'خراسان', 'هری'],
    "answer_index": 2,
  },
];
