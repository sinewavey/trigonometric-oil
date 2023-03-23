### Trigononometric Oil
is a light rework of the oil processing chain designed to include a few more byproducts and things to deal with.

No, it's not based on *actual* trigonometry, though some processes are a bit more mathematically complex.

# Disclaimer

This mod is still quite in development, but now in a state I can somewhat release and get some better feedback with regards to balancing numbers. 

*Given the above statements, it's !! **VERY LIKELY TO ALMOST CERTAIN** !! you will encounter issues with any content changing mods like SE/IR3, 248k, etc*
*While I have locally tested with Rate Calculator, Factory Planner, Editor Extensions, and so on and so on, I've likely missed some critical interactions. If in doubt, I probably broke it, sorry!*

If you would like to report a bug, offer suggestions on balancing, or contact me for whatever other reason, the best way would be on **Discord (sinewave#6423)**.

# Information

+ All forms of main crude processing return heavy oils, light gasoils, carbon dioxide, and asphalt (a solid waste)
   * Heavy Oil, Light Oil and Petroleum Gas have been changed to slightly different analogs
   * Light gasoils contain a dirty mix of sulfur compounds and other valuable hydrocarbons
   * Heavy oils and light gasoils are still similar in function to their original fluids; petroleum gas has been turned into ethylene, a flammable gas that can be used to make plastic
+ Carbon dioxide and other unwanted or unusable gasses may be vented or flared at the cost of extra pollution.
+ Light oil may also be used to make liquid fuel, used for power generation and smelting
+ The role of solid fuel has been moved to petroleum coke
    * Petroleum coking also releases carbon dioxide
    * Required for rocket fuel production alongside liquid fuel
+ Hydrogen sulfide and ethylene now both exist as a result from hydrocracking light gasoil
- However, both must be processed additionally to purify the resulting product further
    * Sulfur is now a two-step process. After hydrocracking, sulfur can be extracted from the hydrogen sulfide byproduct
    * Plastic is a three-step process. Ethylene must first be polymerized, and then molded into bars.
+ Also adds in a vacuum pressure fluid analog to reflect more modern processing techniques.

# Roadmap

* More uses for intermediates, such as napalm flamethrower ammunition
* Improved icon graphics, and custom graphics for the vacuum pump
* Pending balance: a focused asphalt recipe to avoid wasteful production of other oils
* Special pipes for acidic fluids (if possible in engine)
* Integrated and adjusted version of Wreckage Pollution
* ~~More integration-friendly with other mods~~ Addressed in 1.1.0 and 2.0.0, but always an effort. Contact me if something is broken please!
* ~~Asphalt pavement tiles, to aid with excess asphalt~~ Compatibiliy with Asphalt Paving has been added in 2.0.0
* Migrations

# Compatibility

Trigonometric Oil is compatible with:

* [AAI Industry](https://mods.factorio.com/mod/aai-industry)
* [Asphalt Paving](https://mods.factorio.com/mod/AsphaltPaving)
* [BZ Lead](https://mods.factorio.com/mod/bzlead)
* [Cargo Ships](https://mods.factorio.com/mod/cargo-ships)
* [Freight Forwarding](https://mods.factorio.com/mod/FreightForwarding)
* [Fracking](https://mods.factorio.com/mod/Fracking)
  * FF and Fracking *may not be compatible together, however*
* [Wreckage Pollution](https://mods.factorio.com/mod/wreckage-pollution) 

It is **not** compatible with:

* [BZ Gas](https://mods.factorio.com/mod/bzgas) 
  * Planned compatibility in the future
* Space Exploration, Angel's Petrochem, Bob's Intermediates, Krastorio 2, Industrial Revolution, pYmods, etc
  * These include their own changes to oil processing and many other addressed changes


### Attributions

* Krastor, Linver, and Raiguard for some modified [Krastorio 2](https://mods.factorio.com/mod/Krastorio2)† assets
* [GotLag](https://mods.factorio.com/user/GotLag) for their [Flare Stack mod](https://mods.factorio.com/mod/Flare%20Stack)‡ assets and code
* [Schorty](https://mods.factorio.com/user/Schorty) for their [Air Filtering mod](https://mods.factorio.com/mod/air-filtering)+ assets
* [Brevven](https://mods.factorio.com/user/brevven)‡ for some minor data utils to re-add productivity modules to recipes

I would be happy to re-code and rig sprites if they are not OK with this. Thank you to all parties for generously releasing assets to be used and modified!

Please consult the GNU LGPL v3†, MIT‡ and Beer-Ware+ licenses for more information.

In addition, thank you to: [Xorimuth](https://mods.factorio.com/user/Xorimuth) for actually *getting* me to make this, and others in the [Factorio discord](https://www.discord.gg/factorio) for suggestions and mod-making help! I couldn't do this without the amazing work Wube and co. has put in to their API and game documentation.
