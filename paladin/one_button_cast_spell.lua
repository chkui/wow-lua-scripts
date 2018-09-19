function GetSpellCooldown(spellName)
    local start, duration, enabled = 0, 2.0, 0
    return start, duration, enabled
end

function CastSpellByName(spellName)
    print(spellName)
end

function IsUsableSpell(spellName)
    return true, nil
end

function UnitHealth(_target)
    return 7000
end

function UnitHealthMax(_target)
    return 10000
end

function TargetUnit() end

function TargetLastEnemy() end

-- script
-- copy to UI Frame begin with /script
local _a_spell, _p_spell, _s, _t = { "1", "2", "3" }, { "1", "2", "3" }, "player", "target"

if UnitHealth(_s) / UnitHealthMax(_s) < 0.2
then
    TargetUnit(_s)
    for k, v in ipairs(_p_spell)
    do
        if IsUsableSpell(v)
        then
            CastSpellByName(v)
            break
        end
    end
    TargetLastEnemy()
end
for k, v in ipairs(_a_spell)
do
    if IsUsableSpell(v)
    then
        CastSpellByName(v)
        break
    end
end

