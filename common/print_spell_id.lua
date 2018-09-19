for id = 0, 200
do
    name, rank = GetSpellInfo(id,"spell")
    m=format("Spell %d: %s %s",id,name,rank)
    print(m)
end