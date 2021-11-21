ifEven myFunction x = if even x
                      then myFunction x
                      else x

inc n = n + 1
double n = n * 2
square n = n ^ 2

ifEvenInc n = ifEven inc n
ifEvenDouble n = ifEven double n
ifEvenSquare n = ifEven square n
ifEvenCub n = ifEven (\n -> n ^ 3) n

author = ("Samet", "Ileri")
-- fst author yields Samet
-- snd author yields Ileri


ifEvenv2 f x = if even x
               then f x
               else x
genIfXEven x = (\f -> ifEven f x)