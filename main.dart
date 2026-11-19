class BusCard {
  String _owner = '';
  int _balance = 0;

  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  String get owner {
    return _owner;
  }

  int get balance {
    return _balance;
  }

  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  void topUp(int amount) {
    if (amount < 500 || amount > 50000) {
      print('Error: top-up must be 500 to 50000 RWF');
    } else {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    }
  }

  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}

class StudentCard extends BusCard {
  int _discount = 0;

  StudentCard(String owner, int balance, int discount) : super(owner, balance) {
    _discount = discount;
  }

  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
  }

  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;
    print('Student discount: $off RWF');
    super.pay(fare - off);
  }
}

void main() {
  // Replace these example values with your own numbers from your student ID.
  int d = 37;
  int l = 7;
  String myName = 'Your Full Name';

  if (d == 0) {
    d = 50;
  }

  int startingBalance = 1000 + (d * 10);
  int busFare = 200 + d;
  int studentDiscount = 10 + l;

  print('My numbers: D = $d, L = $l');
  print('Starting balance = $startingBalance RWF');
  print('Bus fare = $busFare RWF');
  print('Student discount = $studentDiscount%');

  BusCard card = BusCard(myName, startingBalance);
  card.owner = 'Al';
  card.showInfo();

  card.owner = myName;
  card.showInfo();

  card.topUp(100);
  card.topUp(2000);

  card.pay(busFare);
  card.pay(busFare);
  card.showInfo();

  StudentCard studentCard = StudentCard(myName, startingBalance, studentDiscount);
  studentCard.pay(busFare);
  studentCard.showInfo();
}
