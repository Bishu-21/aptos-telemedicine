# Aptos Telemedicine Prescription Authentication

This Move smart contract provides a simple mechanism for securely issuing and verifying digital prescriptions on the Aptos blockchain. It is built for telemedicine applications where authenticated doctor-patient interactions are essential.

---

## 🧠 Features

- **Issue Prescription**: Authorized doctors can issue a digital prescription to a patient, including medication and timestamp details.
- **Verify Prescription**: Any user can verify if a prescription exists from a specific doctor’s account.

---

## 📦 Package Info

```toml
[package]
name = "aptos-project"
version = "1.0.0"
authors = []

[addresses]
MyModule = "0xYOUR_ACCOUNT_ADDRESS"

[dependencies.AptosFramework]
git = "https://github.com/aptos-labs/aptos-framework.git"
rev = "mainnet"
subdir = "aptos-framework"
