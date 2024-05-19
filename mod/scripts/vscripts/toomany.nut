global function toomany_init

void function toomany_init() {
#if SERVER
         AddSpawnCallback("npc_titan", why )
#endif
}
#if SERVER
void function why( entity titan )
{
    entity soul = titan.GetTitanSoul()
    if ( IsValid( soul ) )
    {
     GivePassive( soul, ePassives.PAS_ENHANCED_TITAN_AI )
     GivePassive( soul, ePassives.PAS_AUTO_EJECT )
     GivePassive( soul, ePassives.PAS_MOBILITY_DASH_CAPACITY )
     GivePassive( soul, ePassives.PAS_HYPER_CORE )
     GivePassive( soul, ePassives.PAS_BUILD_UP_NUCLEAR_CORE )
     GivePassive( soul, ePassives.PAS_ANTI_RODEO)
    }
}

#endif 