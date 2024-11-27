# Documentación de la Aplicación

## Descripción General de la Aplicación

La aplicación permite a los usuarios interactuar con un mapa de **Google Maps**, ver su nombre y correo electrónico de usuario, y simular configuraciones dentro de la app. La app está estructurada con un **TabView** que contiene tres pantallas:

1. **Pantalla de Mapa**: Muestra un mapa interactivo utilizando la API de Google Maps.
2. **Pantalla de Información del Usuario**: Muestra el nombre y correo electrónico del usuario.
3. **Pantalla de Configuración**: Simula un conjunto de configuraciones, donde el usuario puede interactuar con botones de ejemplo (sin funcionalidad real).

La app fue desarrollada utilizando **SwiftUI** y la integración de **Google Maps** fue realizada con **Swift Package Manager (SPM)**.

---

## Requisitos del Sistema

- **Xcode**: Requiere Xcode 13.0 o superior.
- **iOS Version**: Compatible con iOS 15.0 o superior.
- **Dependencias**:
  - **Google Maps SDK for iOS**: Integrado a través de **Swift Package Manager (SPM)**.
  - **CoreLocation**: Usado para obtener las coordenadas del usuario en el mapa.

---

## Pasos para Correr el Proyecto

### 1. Clonar el Proyecto
Clona el proyecto desde el repositorio correspondiente en tu máquina local:
git clone https://github.com/msaldeveloper/mapsChallenge.git

### 2. Abrir el Proyecto en Xcode
Abre el proyecto en Xcode usando el archivo `.xcodeproj` o `.xcworkspace` (si usas CocoaPods o SPM).

### 3. Configurar la API Key de Google Maps
Para que el mapa se muestre correctamente, necesitas configurar la clave de la API de Google Maps:

1. Ve a la [Google Cloud Console](https://console.cloud.google.com/).
2. Crea un nuevo proyecto o selecciona uno existente.
3. Habilita la API de **Maps SDK for iOS**.
4. Genera una **API Key**.
5. En el archivo `AppDelegate.swift`, agrega la siguiente línea en el método `didFinishLaunchingWithOptions`:

   ```swift
   class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        GMSServices.provideAPIKey("api-key")
        return true
    }
}
6. presiona cmd + R para correr la app

## Flujo de la Aplicación

### 1. Pantalla de Mapa
- Se muestra un mapa interactivo de **Google Maps** con un marcador en las coordenadas predeterminadas (Ciudad de México en este caso).

### 2. Pantalla de Información del Usuario
- Muestra el nombre y el correo electrónico del usuario.

**Credenciales de login:**
- **Email**: test@test.com
- **Contraseña**: 1234

### 3. Pantalla de Configuración
- Simula configuraciones dentro de la app. Esta pantalla contiene botones que no realizan ninguna acción más allá de imprimir un mensaje en la consola.

---

## Funcionalidades

- **Pantalla del Mapa**: Muestra un mapa interactivo con un marcador en las coordenadas de la Ciudad de México.
- **Pantalla del Usuario**: Muestra el nombre y el email del usuario.
- **Pantalla de Configuración**: Presenta botones que simulan distintas configuraciones de la app (por ejemplo, **Configuración de cuenta**, **Notificaciones**, etc.).

    


