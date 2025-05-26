# String Calculator TDD Kata (Ruby)

This project is an implementation of the **String Calculator Kata** using **Test-Driven Development (TDD)** in **Ruby** with **RSpec**.

It demonstrates how a solution evolves step-by-step following TDD principles: writing one failing test, making it pass, and refactoring — committing after each step.

---

## 🚀 Features Implemented

- Returns 0 for an empty string
- Handles single number input
- Handles two comma-separated numbers
- Handles multiple comma-separated numbers
- Supports newline (`\n`) as delimiter
- Supports custom delimiters like `//;\n1;2`
- Throws exception on negative numbers (with list of all negatives)

---

## 🧪 Running the Code & Tests

### 1. Clone the Repository

```bash
git clone git@github.com:pbharadiya/string_calculator_kata.git
cd string_calculator_kata
```

### 2. Install Dependencies

Make sure you have Ruby and Bundler installed.

```bash
bundle install
```

### 3. Run the Tests

To run all RSpec tests with detailed descriptions:

```bash
bundle exec rspec
```

---

## 📝 Example Usage

```ruby
StringCalculator.add("1,2,3")       # => 6
StringCalculator.add("1\n2,4")      # => 7
StringCalculator.add("//;\n1;2")    # => 3
StringCalculator.add("1,-2,-3")     # => raises exception: "negative numbers not allowed: -2,-3"
```

---

## 📂 Structure

```
.
├── Gemfile
├── README.md
├── string_calculator.rb
├── spec
│   ├── string_calculator_spec.rb
│   └── spec_helper.rb
```

---

## 📸 Screenshots
Here’s a chronological view of the test evolution and execution during development:

1. ![Screenshot 2025-05-26 at 7 43 38 AM](https://github.com/user-attachments/assets/1e257b44-1c15-4994-84ed-b93e24226fc2)
2. ![Screenshot 2025-05-26 at 7 51 11 AM](https://github.com/user-attachments/assets/2efd44fb-eee8-43ff-a403-79276d0ae28a)
3. ![Screenshot 2025-05-26 at 7 54 39 AM](https://github.com/user-attachments/assets/1da25669-0ef3-4c00-8b81-1dbb1beb0436)
4. ![Screenshot 2025-05-26 at 7 58 36 AM](https://github.com/user-attachments/assets/bdb03687-7e36-476d-b03e-f5c5ff89ea3e)
5. ![Screenshot 2025-05-26 at 8 03 26 AM](https://github.com/user-attachments/assets/787a6f90-ac4c-40a1-91e9-b24359a91ddb)
6. ![Screenshot 2025-05-26 at 8 10 54 AM](https://github.com/user-attachments/assets/85301de1-996a-42a1-a424-9dd4f8f0c768)
7. ![Screenshot 2025-05-26 at 8 11 36 AM](https://github.com/user-attachments/assets/57c76527-7ef0-4254-87bd-840402e0722b)
8. ![Screenshot 2025-05-26 at 8 15 11 AM](https://github.com/user-attachments/assets/a69abed6-0260-4c1f-8c0c-3a460c56baf6)
9. ![Screenshot 2025-05-26 at 8 23 17 AM](https://github.com/user-attachments/assets/eacc3b75-ca94-45b9-b7b6-ac1404cd90b7)
10. ![Screenshot 2025-05-26 at 8 27 35 AM](https://github.com/user-attachments/assets/d04a880e-d041-48a7-a445-28ea987be31c)
11. ![Screenshot 2025-05-26 at 8 27 57 AM](https://github.com/user-attachments/assets/8a0d3181-8ce7-44e3-bce1-957c5edd2d47)
12. ![Screenshot 2025-05-26 at 8 31 32 AM](https://github.com/user-attachments/assets/86de6764-5a99-42eb-85fd-45eb107776b3)
13. ![Screenshot 2025-05-26 at 8 37 27 AM](https://github.com/user-attachments/assets/a48ff0f0-1285-479f-aaa0-3c660e001cac)
14. ![Screenshot 2025-05-26 at 8 48 37 AM](https://github.com/user-attachments/assets/8cecc1b4-0cbf-449b-973a-7f205eed1f50)
15. ![Screenshot 2025-05-26 at 8 51 07 AM](https://github.com/user-attachments/assets/1c40aab7-52b4-4c92-894f-785836545708)

---

## 🧑‍💻 Author

[@pbharadiya](https://github.com/pbharadiya)

---

## 📘 Disclaimer

_Parts of this README were drafted with the help of ChatGPT for better clarity and structure._
