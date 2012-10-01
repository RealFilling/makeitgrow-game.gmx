// Most field entities are identified by a number that fits into the "species"
//   bitfield in global.plants[,].  There are 2048 of these (0-2047), so there's
//   lots of room for expansion.  Before, the ranges abutted each other in the
//   sequence, which meant that if something was added to any range except
//   the first one, the others would have to be increased to "make room" for it.
//   This poses problems when we're trying to keep save games consistent between
//   versions, since species identifiers might change meaning between versions.
// To combat this, here is a new scheme for assigning species identifiers that
//   leaves lots of space between them for future expansion:

// Plants: 0-223
// Trees: 224-255
// Composts: 256-272
// Shadows: 506-511
// Buildings: 512-1024

// This leaves room for another couple hundred plant types, and lots more
//   buildings, while also allowing for another entity type to fit in either
//   between Composts and Shadows or after Buildings.
