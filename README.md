# 🎬 CencoMovies-SwiftUI (VIPER)

[![Swift Version](https://img.shields.io/badge/Swift-6.0-orange.svg?style=flat&logo=swift)](https://swift.org)
[![Platform](https://img.shields.io/badge/Platform-iOS%2017%2B-blue.svg?style=flat&logo=apple)](https://developer.apple.com/ios/)
[![Architecture](https://img.shields.io/badge/Architecture-VIPER-red.svg?style=flat)](https://en.wikipedia.org/wiki/VIPER)

> **"Una implementación profesional de una App de Películas utilizando SwiftUI y Clean Architecture (VIPER)."**

`CencoMoviesSWUI` es un proyecto desarrollado para demostrar cómo escalar aplicaciones en SwiftUI manteniendo 
un código desacoplado, testeable y organizado. 
Utiliza el patrón **VIPER** para separar la lógica de negocio, la navegación y la interfaz de usuario.

---

## 🏗️ Arquitectura: VIPER + SwiftUI

Este proyecto rompe el esquema tradicional de MVVM para implementar una estructura más robusta:

* **View:** Vistas declarativas que reaccionan a los cambios del Presenter.
* **Interactor:** Contiene la lógica de negocio pura y la interacción con los servicios de red.
* **Presenter:** El núcleo de la lógica de presentación; recibe datos del Interactor y prepara el estado de la Vista.
* **Entity:** Modelos de datos (`Movie`, `Genre`) que representan la información de la API.
* **Router:** Gestiona el flujo de navegación entre pantallas y el ensamblaje de módulos (Inyección de Dependencias).

---

## 🚀 Características
- **🎥 Movie Catalog:** Listado de películas populares con carga asíncrona de imágenes.
- **🔍 Search System:** Filtro de contenido integrado para búsqueda rápida.
- **🛠️ Async/Await:** Manejo de concurrencia moderno de Swift para peticiones de red.
- **🎨 UI Moderna:** Diseño basado en componentes reutilizables y soporte nativo para Light/Dark mode.
- **📦 Clean Networking:** Capa de servicios desacoplada usando `URLSession`.

---

## 📸 Screenshots

| Movie List | Detail View | Search |
| :---: | :---: | :---: |

---

## 🛠️ Requisitos Técnicos
- **Xcode 15.0+**
- **iOS 17.0+**
- **Swift 5.10+ / 6.0**

---

## 📖 Notas para Estudiantes
Si estás explorando cómo llevar tus habilidades de SwiftUI al siguiente nivel, este repo te servirá para entender:
1.  **Ensamblaje de Módulos:** Cómo el `Router` conecta todas las capas de VIPER.
2.  **Manejo de Estados:** Uso de `@Published` para comunicar el Presenter con la Vista sin acoplarlos.
3.  **Clean Code:** Cómo evitar el "Massive View" moviendo la lógica de navegación y red fuera de los archivos de SwiftUI.

---
