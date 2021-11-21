import Data.List

names = [("Ian", "Curtis"),
          ("Bernard","Sumner"),
          ("Peter", "Hook"),
          ("Stephen","Morris")]

defaultSort names = sort names


compareLastNames name1 name2 = if lastName1 > lastName2
                               then GT
                               else if lastName1 < lastName2
                                    then LT
                                    else EQ 
    where lastName1 = snd name1
          lastName2 = snd name2  

-- let names = [("Ian", "Curtis"), ("Bernard","Sumner"), ("Peter", "Hook"), ("Stephen","Morris")]
-- sortBy compareLastNames names
-- sortBy compareLastNamesv3 names

compareLastNamesv2 name1 name2 = if lastName1 > lastName2
                               then GT
                               else if lastName1 < lastName2
                                    then LT
                                    else if firstName1 > firstName2
                                         then GT
                                         else if firstName1 < firstName2
                                              then LT
                                              else EQ   

    where lastName1 = snd name1
          lastName2 = snd name2  
          firstName1 = fst name1
          firstName2 = fst name2

compareLastNamesv3 name1 name2 = if result == EQ
                                 then compare (fst name1) (fst name2)
                                 else result
     where result = compare (snd name1) (snd name2)