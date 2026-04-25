🎮 CubiBot - Juego estilo Crossy Road
🧩 Descripción

CubiBot es un juego 3D estilo voxel desarrollado en Godot Engine, inspirado en la mecánica de Crossy Road. El jugador controla un personaje que debe desplazarse por el escenario evitando NPCs mientras recolecta monedas para aumentar su puntuación.

🎮 Controles
W → Mover hacia adelante
S → Mover hacia atrás
A → Mover a la izquierda
D → Mover a la derecha
🟡 Coleccionables
Se agregaron objetos tipo monedas distribuidos en el escenario.
Al recoger una moneda:
Se incrementa el contador en pantalla.
El objeto desaparece.
Las monedas tienen rotación para dar un efecto visual dinámico.
🔢 Sistema de Puntuación
Se muestra en pantalla el contador de monedas recolectadas.
El contador inicia en 0 y aumenta durante la partida.
Al colisionar con un NPC:
El jugador vuelve al inicio.
El contador se reinicia.
💾 Almacenamiento de Datos (High Score)
Se implementó almacenamiento local utilizando archivos (user://save.txt).
Se guarda la puntuación más alta alcanzada por el jugador.
El High Score se muestra en pantalla y se actualiza automáticamente.
🌐 API Utilizada
API: Advice Slip
URL: https://api.adviceslip.com/advice
Funcionalidad:
Al iniciar el juego se obtiene un consejo aleatorio desde la API.
El consejo se muestra en pantalla.
Se utiliza como elemento dinámico dentro del juego.
🤖 NPCs
Los NPCs se mueven automáticamente en el escenario.
Al colisionar con el jugador:
Se activa el evento de “Game Over”.
Se evalúa y guarda el High Score.
🧱 Tecnologías Utilizadas
Godot Engine 4
GDScript
Blender (modelado voxel)
API REST (Advice Slip)
📸 Captura del Juego

(Incluir archivo screenshot.png en el repositorio)

📁 Estructura del Proyecto
Level.tscn → Escena principal
Player.tscn → Personaje jugable
NPC.tscn → Personajes enemigos
Collectible.tscn → Monedas
Scripts (.gd)
Modelos 3D (.glb)
🚀 Autor - Omar Lopez Maravilla

Proyecto desarrollado como práctica académica integrando modelado 3D, lógica de juego, UI, almacenamiento local y consumo de APIs.
