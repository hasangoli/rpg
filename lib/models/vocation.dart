enum Vocation {
  raider(
    title: "Terminal Raider",
    description: "Adept in terminal commands to trigger traps.",
    image: "terminal_raider.jpg",
    weapon: "Terminal",
    ability: "Shell Shock",
  ),
  junkie(
    title: "Code Junkie",
    description: "Uses code to infiltrate enemy defenses.",
    image: "code_junkie.jpg",
    weapon: "React 99",
    ability: "Higher Order Overdrive",
  ),
  ninja(
    title: "UX Ninja",
    description: "Uses quick & stealthy visual attacks.",
    image: "ux_ninja.jpg",
    weapon: "Infused Stylus",
    ability: "Triple Stylus",
  ),
  wizard(
    title: "Algo Wizard",
    description: "Carries a staff to unleash algorithm magic.",
    image: "algo_wizard.jpg",
    weapon: "Crystal Staff",
    ability: "Algorithmic Daze",
  );

  const Vocation({
    required this.title,
    required this.description,
    required this.image,
    required this.weapon,
    required this.ability,
  });

  final String title;
  final String description;
  final String image;
  final String weapon;
  final String ability;
}
