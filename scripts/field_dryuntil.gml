var targetwater, currentwater;
targetwater = argument0;
currentwater = field_countwaterspaces();

while (currentwater > targetwater) {
  currentwater = field_removewater();
  }
