# Dart OOP Assignment: Kigali Bus Card

**Name:** Your Full Name  
**Student ID:** Your student ID

## My numbers

- D = 37, L = 7 (example values - replace with your own)
- Starting balance = 1370 RWF
- Bus fare = 237 RWF
- Student discount = 17%

## Output of main.dart

The output below uses the example values above. Replace it after changing the values in `main.dart`.

```text
My numbers: D = 37, L = 7
Starting balance = 1370 RWF
Bus fare = 237 RWF
Student discount = 17%
Error: name too short
Owner: Your Full Name | Balance: 1370 RWF
Owner: Your Full Name | Balance: 1370 RWF
Error: top-up must be 500 to 50000 RWF
Topped up 2000 RWF
Paid 237 RWF
Paid 237 RWF
Owner: Your Full Name | Balance: 2896 RWF
Student discount: 40 RWF
Paid 197 RWF
Owner: Your Full Name | Balance: 1173 RWF
Student card: 17% off
```

## Part 1: Why no setter for balance?

If the balance had a setter, any code could change it to any number. The card should change its balance only when money is added or a fare is paid, so the rules stay in one place.

## Part 2: What does ~/ do?

`/` gives an answer with a decimal part. `~/` divides and keeps only the whole-number part. For example, `237 * 17 / 100` is `40.29`, while `237 * 17 ~/ 100` is `40`.

## Part 4: Bug table

| Bug | The line | Why it is wrong | My fix |
|---|---|---|---|
| 1 | `String _brand; int _battery;` | The fields do not have starting values. | I gave them empty-string and zero starting values. |
| 2 | The `SmartPhone` constructor | It does not build the `Phone` part of the object. | I added `: super(brand, battery)`. |
| 3 | `@override void restart()` | The parent class has no `restart` method to override. | I added `restart()` to `Phone`. |
| 4 | There is no setter for `battery`. | The program tries to change the battery, but only a getter exists. | I added a setter that accepts values from 0 to 100. |
| 5 | `print(p.battery());` | `battery` is a getter, so it is used without parentheses. | I wrote `print(p.battery);`. |
| Not a bug | `p.battery = 100;` | This line is correct when the setter is added. | No fix needed. |

The program prints `100` because the setter stores the new battery value, and the getter returns it.
## Part 5

**My prediction:** It prints `0` and then `5`. The negative value is ignored by the setter. `BigBag.add()` adds two items each time, so two calls add four, and then the setter adds one more.

**Real output:**

```text
0
5
```

**Was I right?** Yes. The output matches my prediction.

## Submission notes

After replacing the example values and your name with your own, run `main.dart` and update the output above. The assignment asks for a commit after each part; make those commits in your own Git repository.

