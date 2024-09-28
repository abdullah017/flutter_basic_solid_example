# SOLID To-Do App

![Flutter](https://img.shields.io/badge/Flutter-v3.10.5-blue)
![Dart](https://img.shields.io/badge/Dart-v2.19.6-blue)
![License](https://img.shields.io/badge/License-MIT-green)

## Table of Contents

- [English](#english)
  - [Introduction](#introduction)
  - [Features](#features)
  - [Technologies Used](#technologies-used)
  - [Project Structure](#project-structure)
  - [SOLID Principles](#solid-principles)
  - [Installation](#installation)

- [Türkçe](#türkçe)
  - [Giriş](#giriş)
  - [Özellikler](#özellikler)
  - [Kullanılan Teknolojiler](#kullanılan-teknolojiler)
  - [Proje Yapısı](#proje-yapısı)
  - [SOLID Prensipleri](#solid-prensipleri)
  - [Kurulum](#kurulum)


---

## English

### Introduction

Welcome to the **SOLID To-Do App**, a simple yet robust To-Do application built with Flutter and Dart. This project demonstrates the application of SOLID principles to create a modular, maintainable, and scalable codebase. It utilizes **sqflite** for local storage, ensuring that your tasks are securely stored on your device without the need for an internet connection.

### Features

- **Add To-Do Items:** Easily add new tasks to your to-do list.
- **View To-Do Items:** View all your tasks in a clean and organized list.
- **Update To-Do Status:** Mark tasks as completed or incomplete with a simple tap.
- **Delete To-Do Items:** Remove tasks that are no longer needed.
- **Local Storage:** All data is stored locally using SQLite for quick and reliable access.

### Technologies Used

- **Flutter:** UI toolkit for building natively compiled applications.
- **Dart:** Programming language optimized for Flutter.
- **sqflite:** SQLite plugin for Flutter for local storage.
- **uuid:** Generates unique identifiers for To-Do items.
- **Path Provider:** Helps in finding commonly used locations on the filesystem.

### Project Structure

The project is organized to follow SOLID principles, ensuring a clean separation of concerns and making the codebase easy to maintain and extend.

lib/ ├── main.dart ├── models/ │ └── todo_model.dart ├── services/ │ └── todo_service.dart ├── repositories/ │ ├── todo_repository.dart │ └── database_helper.dart ├── interfaces/ │ └── todo_repository_interface.dart └── widgets/ └── todo_list.dart

markdown
Kodu kopyala

#### Description of Directories and Files

- **main.dart:** Entry point of the Flutter application. Sets up the app and initializes necessary services.
- **models/**
  - `todo_model.dart`: Defines the `ToDo` data model with properties and methods for data conversion.
- **services/**
  - `todo_service.dart`: Contains business logic and interacts with the repository to perform CRUD operations.
- **repositories/**
  - `todo_repository.dart`: Implements the `ToDoRepositoryInterface` to handle database operations using sqflite.
  - `database_helper.dart`: Manages the SQLite database connection and table creation.
- **interfaces/**
  - `todo_repository_interface.dart`: Abstract class defining the contract for repository operations.
- **widgets/**
  - `todo_list.dart`: UI component that displays the list of To-Do items and handles user interactions.

### SOLID Principles

This project adheres to the **SOLID** principles, which are essential for creating maintainable and scalable software.

1. **Single Responsibility Principle (SRP)**
   - Each class has one responsibility. For example, `ToDoRepository` handles data access, while `ToDoService` manages business logic.

2. **Open/Closed Principle (OCP)**
   - Classes are open for extension but closed for modification. New features can be added by extending classes without altering existing code.

3. **Liskov Substitution Principle (LSP)**
   - Subclasses can replace their base classes without affecting the application's correctness. `ToDoRepository` implements the `ToDoRepositoryInterface`, ensuring interchangeability.

4. **Interface Segregation Principle (ISP)**
   - Interfaces are specific and not bloated with unnecessary methods. `ToDoRepositoryInterface` only includes essential CRUD operations.

5. **Dependency Inversion Principle (DIP)**
   - High-level modules depend on abstractions rather than concrete implementations. `ToDoService` depends on `ToDoRepositoryInterface`, not on `ToDoRepository`.

### Installation

#### Prerequisites

- **Flutter SDK:** Ensure you have Flutter installed. Follow the [official Flutter installation guide](https://flutter.dev/docs/get-started/install) if you haven't set it up yet.
- **Dart SDK:** Comes bundled with Flutter.
- **IDE:** Visual Studio Code, Android Studio, or any other preferred IDE.


## TÜRKÇE

### Giriş

Flutter ve Dart ile oluşturulmuş basit ama sağlam bir Yapılacaklar uygulaması olan **SOLID To-Do App**'e hoş geldiniz. Bu proje, modüler, sürdürülebilir ve ölçeklenebilir bir kod tabanı oluşturmak için SOLID ilkelerinin uygulanmasını göstermektedir. Yerel depolama için **sqflite** kullanır ve görevlerinizin internet bağlantısına ihtiyaç duymadan cihazınızda güvenli bir şekilde saklanmasını sağlar.

### Özellikler

- Yapılacaklar Öğeleri Ekleme:** Yapılacaklar listenize kolayca yeni görevler ekleyin.
- Yapılacaklar Öğelerini Görüntüle:** Tüm görevlerinizi temiz ve düzenli bir listede görüntüleyin.
- Yapılacaklar Durumunu Güncelle:** Basit bir dokunuşla görevleri tamamlandı veya tamamlanmadı olarak işaretleyin.
- Yapılacaklar Öğelerini Sil:** Artık ihtiyaç duyulmayan görevleri kaldırın.
- Yerel Depolama:** Tüm veriler hızlı ve güvenilir erişim için SQLite kullanılarak yerel olarak depolanır.

### Kullanılan Teknolojiler

- Flutter:** Yerel olarak derlenmiş uygulamalar oluşturmak için UI araç seti.
- **Dart:** Flutter için optimize edilmiş programlama dili.
- **sqflite:** Yerel depolama için Flutter için SQLite eklentisi.
- **uuid:** Yapılacaklar öğeleri için benzersiz tanımlayıcılar oluşturur.
- **Yol Sağlayıcı:** Dosya sisteminde yaygın olarak kullanılan konumları bulmaya yardımcı olur.

### Proje Yapısı

Proje SOLID ilkelerini takip edecek şekilde düzenlenmiştir, endişelerin temiz bir şekilde ayrılmasını sağlar ve kod tabanının bakımını ve genişletilmesini kolaylaştırır.

lib/ ├── main.dart ├── models/ │ └── todo_model.dart ├── services/ │ └── todo_service.dart ├── repositories/ │ ├── todo_repository. dart │ └── database_helper.dart ├── interfaces/ │ └── todo_repository_interface.dart └── widgets/ └── todo_list.dart

markdown
Kodu kopyala

#### Dizin ve Dosyaların Açıklaması

- main.dart:** Flutter uygulamasının giriş noktası. Uygulamayı kurar ve gerekli hizmetleri başlatır.
- **models/**
  - `todo_model.dart`: ToDo veri modelini veri dönüştürme özellikleri ve yöntemleri ile tanımlar.
- **services/**
  - `todo_service.dart`: İş mantığı içerir ve CRUD işlemlerini gerçekleştirmek için depo ile etkileşime girer.
- **repositories/**
  - `todo_repository.dart`: sqflite kullanarak veritabanı işlemlerini gerçekleştirmek için `ToDoRepositoryInterface`i uygular.
  - database_helper.dart`: SQLite veritabanı bağlantısını ve tablo oluşturmayı yönetir.
- arayüzler/**
  - `todo_repository_interface.dart`: Depo işlemleri için sözleşmeyi tanımlayan soyut sınıf.
- **widgets/**
  - `todo_list.dart`: Yapılacaklar listesini görüntüleyen ve kullanıcı etkileşimlerini yöneten UI bileşeni.

### SOLID İlkeleri

Bu proje, sürdürülebilir ve ölçeklenebilir yazılım oluşturmak için gerekli olan **SOLID** ilkelerine bağlıdır.

1. **Tek Sorumluluk İlkesi (SRP)**
   - Her sınıfın bir sorumluluğu vardır. Örneğin, `ToDoRepository` veri erişimini yönetirken, `ToDoService` iş mantığını yönetir.

2. **Açık/Kapalı Prensibi (OCP)**
   - Sınıflar genişletmeye açık ancak değiştirmeye kapalıdır. Mevcut kod değiştirilmeden sınıflar genişletilerek yeni özellikler eklenebilir.

3. **Liskov İkame İlkesi (LSP)**
   - Alt sınıflar, uygulamanın doğruluğunu etkilemeden temel sınıflarını değiştirebilir. ToDoRepository`, `ToDoRepositoryInterface`i uygulayarak birbirinin yerine kullanılabilirliği sağlar.

4. **Arayüz Ayrım İlkesi (ISP)**
   - Arayüzler spesifiktir ve gereksiz yöntemlerle şişirilmemiştir. ToDoRepositoryInterface` yalnızca temel CRUD işlemlerini içerir.

5. **Bağımlılık Tersine Çevirme İlkesi (DIP)**
   - Üst düzey modüller somut uygulamalardan ziyade soyutlamalara bağlıdır. ToDoService`, `ToDoRepositoryInterface`'e bağlıdır, `ToDoRepository`'ye değil.

### Kurulum

#### Ön Koşullar

- **Flutter SDK:** Flutter'ın kurulu olduğundan emin olun. Henüz kurmadıysanız [resmi Flutter kurulum kılavuzunu] (https://flutter.dev/docs/get-started/install) izleyin.
- **Dart SDK:** Flutter ile birlikte gelir.
- IDE:** Visual Studio Code, Android Studio veya tercih edilen başka bir IDE.
