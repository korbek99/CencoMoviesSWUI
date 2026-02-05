# 🎬 CencoMovies-SwiftUI (MVVM)

[![Swift Version](https://img.shields.io/badge/Swift-6.0-orange.svg?style=flat&logo=swift)](https://swift.org)
[![Platform](https://img.shields.io/badge/Platform-iOS%2017%2B-blue.svg?style=flat&logo=apple)](https://developer.apple.com/ios/)
[![Architecture](https://img.shields.io/badge/Architecture-MVVM-green.svg?style=flat)](https://en.wikipedia.org/wiki/Model–view–viewmodel)

> **"Ejemplo robusto de una App de Películas utilizando SwiftUI y el patrón de diseño MVVM."**

`CencoMoviesSWUI` es una aplicación desarrollada para demostrar el flujo de datos 
reactivo en SwiftUI. El proyecto se centra en la simplicidad, la eficiencia 
y el uso de las mejores prácticas para el consumo de APIs de cine, manteniendo una clara separación de responsabilidades.

---

## 🏗️ Arquitectura: MVVM

Este proyecto utiliza el patrón **Model-View-ViewModel**, el estándar recomendado para SwiftUI:

* **Model:** Estructuras de datos puras que representan la información de las películas (Entities).
* **View:** Vistas declarativas de SwiftUI que observan cambios en el estado del ViewModel.
* **ViewModel:** La capa lógica que gestiona las peticiones de red, el procesamiento de datos y expone el estado a la vista mediante `@Published`.

---

## 🚀 Características
- **🎥 Movie Catalog:** Listado de películas populares consumidas desde una API REST.
- **🔄 Async/Await:** Implementación de concurrencia moderna para peticiones asíncronas seguras y limpias.
- **🖼️ Image Loading:** Carga eficiente de posters y arte de las películas.
- **🎨 SwiftUI Native:** Uso de `NavigationStack`, `AsyncImage` y layouts adaptables.
- **📦 Clean Networking:** Capa de servicios desacoplada para facilitar el mantenimiento.

---

## 📸 Screenshots

| Home List | Movie Detail | Search UI |
| :---: | :---: | :---: |


---

## 📖 Para Estudiantes
Si estás aprendiendo SwiftUI, este repositorio es ideal para entender:
1.  **Data Binding:** Cómo conectar una View con un ViewModel usando `@StateObject` y `@ObservedObject`.
2.  **Codable:** Cómo transformar una respuesta JSON compleja en modelos de Swift de forma automática.
3.  **Modern Concurrency:** El uso de `task` y `await` para manejar llamadas a red sin bloquear la interfaz.

---
