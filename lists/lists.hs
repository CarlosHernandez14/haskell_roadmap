
-- List of tuples of 2 elem where the first elem is a letter of the alphabet and the second elem is a pair number beetween 50 - 500
-- Aschending order
-- Example: [('a', 50), ('a', 52), ... ('z', 500)]

let list = [(x, y) | x <- ['a'..'z'], y <- [50, 52..500]]