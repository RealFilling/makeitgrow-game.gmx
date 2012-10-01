// Not intended to be executed -- this is just documentation.

// ***Plant values, explained***
//
// Bits:
// 0-2 (1, 2, 4): Growth stage (8 possibilities: 4 for growth, one for decay,
//                  three for special uses)
// 5-7 (8, 16, 32, 64, 128): Subtype (32 possibilities, useful for growth directions)
// 8+: Plant species

//    0 : No plant/special use
//  256 : "X" plant, red
//  512 : "Plus" plant, red
// 1024 : Even spread, blue
// 2048 : Plus cells, blue
// 4098 : Cross cells, green
// 8192 : Meandering, green
// and so on
// Compost, Trees and Buildings are (or will be) handled as a special kind of plant
// Note that the serialization function expects array values to not be greater than
//   32 bits, and somewhere beyond that point is the limit of GameMaker's variable
//   resolution, so try not to create huge numbers of new plant types.

//
// So, to get plant number:
//   AND (&) with 130816 (accomodates plants up to 65535, increase if more than this are added)
//   divide by 256 (bitshift right (>>) 8)
// To get from plant number to plant offset:
//   Multiply by 256 (bitshift left (<<) 8)
// To get subtype:
//   AND (&) by 248
//   divide by 8 (bitshift right (>>) 3)
// To offset for use in plant map:
//   multiply by 8 (bitshift left (<<) 3)
// To get growth stage:
//   AND (&) by 7
//
// The scripts getspecies(), getsubtype() and getgrowth() will perform
//   the necessary bit munging for you.  makeplant() will combine these elements
//   into a valid plant.





