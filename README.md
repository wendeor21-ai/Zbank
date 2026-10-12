# 🏦 ZeBank - Bank Management System

![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-00000F?style=for-the-badge&logo=mysql&logoColor=white)
![Swing](https://img.shields.io/badge/GUI-Java%20Swing-blue?style=for-the-badge)

A desktop-based **Bank Management System** developed in **Java (Swing GUI)** and backed by a **MySQL** database. ZeBank allows bank staff to manage customers, accounts, deposits, withdrawals, fund transfers, balance checks, and transaction logs.

---

## ✨ Features

- **🔐 User Authentication:** Secure staff/admin login system.
- **👤 Customer Management:** Add new customers with auto-generated customer IDs, personal details, contact info, and branch assignment.
- **💳 Account Creation:** Open savings, checking, or fixed deposit accounts linked to customer IDs with initial deposits.
- **💵 Deposit Module:** Deposit funds into accounts with balance updates and transaction logging.
- **💸 Withdrawal Module:** Process cash withdrawals with automated balance verification and deduction.
- **🔄 Fund Transfer:** Transfer money between accounts with transaction records.
- **📊 Balance Inquiry:** Quickly look up customer account balances.
- **📜 Transaction History:** Review past deposits and withdrawals.

---

## 🛠️ Technology Stack

- **Language:** Java (JDK 8 or higher, tested on JDK 19)
- **GUI Framework:** Java Swing / AWT
- **Database:** MySQL
- **Database Driver:** MySQL Connector/J 8.1.0 (`mysql-connector-j-8.1.0.jar`)
- **IDE Support:** Apache NetBeans, IntelliJ IDEA, Eclipse, VS Code, or Command Line

---

## 📋 Prerequisites

Before running the project, make sure you have:
1. **Java JDK 8+** installed ([Download Java](https://www.oracle.com/java/technologies/downloads/))
2. **MySQL Server** (via [XAMPP](https://www.apachefriends.org/), [WampServer](https://www.wampserver.com/), or standalone MySQL)

---

## 🗄️ Database Setup

1. Start your **MySQL** server (e.g., click **Start** for MySQL in XAMPP Control Panel).
2. Open **phpMyAdmin** (`http://localhost/phpmyadmin`) or your MySQL CLI client.
3. Import or execute the provided [`schema.sql`](schema.sql) file:
   ```sql
   -- Or create the database and run the script:
   CREATE DATABASE IF NOT EXISTS zebank;
   USE zebank;
   ```
   *(All table definitions and seed data are included in [`schema.sql`](schema.sql)).*

### 🔑 Default Login Credentials
- **Username:** `admin`
- **Password:** `1234`

---

## 🚀 How to Run

### Method 1: Double-Click or Command Line (Quickest)

#### On Windows (PowerShell):
```powershell
.\run.bat
```

#### On Windows (Command Prompt `cmd`):
```cmd
run.bat
```

#### Manual Java Command:
```bash
# Compile (if needed)
javac -d "build/classes" -cp "src/mysql-connector-j-8.1.0.jar;build/classes" src/org/netbeans/lib/awtextra/*.java src/zebank/*.java

# Run
java -cp "build/classes;src/mysql-connector-j-8.1.0.jar" zebank.LoginPage
```

---

### Method 2: In Apache NetBeans IDE

1. Open **Apache NetBeans**.
2. Click **File > Open Project...** and select this directory (`zebank`).
3. If prompted about missing libraries, ensure `src/mysql-connector-j-8.1.0.jar` is added under **Libraries**.
4. Press <kbd>F6</kbd> or right-click the project and choose **Run**.

---

### Method 3: In IntelliJ IDEA / VS Code

1. Open the project folder in your IDE.
2. Mark the `src` folder as the **Sources Root**.
3. Add `src/mysql-connector-j-8.1.0.jar` as a project library / dependency.
4. Open `src/zebank/LoginPage.java` and click **Run**.

---

## 📂 Project Structure

```text
zebank/
├── nbproject/             # NetBeans project configuration
├── src/
│   ├── images/            # UI icons and graphics
│   ├── org/netbeans/lib/  # NetBeans absolute layout classes
│   ├── zebank/            # Application source code
│   │   ├── LoginPage.java         # Login screen (Main entry point)
│   │   ├── HomePage.java          # Main navigation dashboard
│   │   ├── Customer.java          # Customer registration
│   │   ├── Account.java           # Account opening
│   │   ├── Deposit.java           # Deposit transaction
│   │   ├── Withdraw.java          # Withdrawal transaction
│   │   ├── Transfer.java          # Fund transfer between accounts
│   │   ├── BalanceCheak.java      # Balance inquiry
│   │   ├── TransactionHistory.java# Past transaction records
│   │   └── CheakConnection.java   # Database connection test utility
│   └── mysql-connector-j-8.1.0.jar# MySQL JDBC Driver
├── build/                 # Compiled bytecode classes
├── schema.sql             # MySQL database schema & sample data
├── run.bat                # Windows launch script
├── .gitignore             # Git ignore rules
└── README.md              # Project documentation
```

---

## 🤝 Contributing

Contributions, issues, and feature requests are welcome! Feel free to check the [issues page](../../issues).

---

## 📄 License

This project is open source and available under the [MIT License](LICENSE).
