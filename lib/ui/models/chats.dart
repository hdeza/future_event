class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name,
    this.lastMessage,
    this.image,
    this.time,
    this.isActive,
  });
}

List chatsData = [
  Chat(
    name: "Tote King 🤘",
    lastMessage: "Por fin de crear tu...",
    image: "Assets/img2.jpg",
    time: "4m ago",
    isActive: true,
  ),
  Chat(
    name: "El Piezas 🦾",
    lastMessage: "Murcia Finest...",
    image: "Assets/img3.jpg",
    time: "10m ago",
    isActive: false,
  ),
  Chat(
    name: "Dirty Porko 👽",
    lastMessage: "Solo el Tiempo sabe...",
    image: "Assets/img4.jpg",
    time: "15m ago",
    isActive: false,
  ),
  Chat(
    name: "Diego Milito ⚽",
    lastMessage: "Hola que tal...",
    image: "Assets/img5.jpg",
    time: "18m ago",
    isActive: true,
  ),
  Chat(
    name: "Shotta 🕶",
    lastMessage: "Hola que tal...",
    image: "Assets/img6.jpg",
    time: "30m ago",
    isActive: false,
  ),
];
