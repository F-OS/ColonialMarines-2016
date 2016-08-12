//This file was auto-corrected by findeclaration.exe on 25.5.2012 20:42:31

#define DEBUG

#define PI 3.1415

#define R_IDEAL_GAS_EQUATION	8.31 //kPa*L/(K*mol)
#define ONE_ATMOSPHERE		101.325	//kPa
#define IDEAL_GAS_ENTROPY_CONSTANT 	1164	//(mol^3 * s^3) / (kg^3 * L). Equal to (4*pi/(avrogadro's number * planck's constant)^2)^(3/2) / (avrogadro's number * 1000 Liters per m^3).

//radiation constants
#define STEFAN_BOLTZMANN_CONSTANT		0.0000000567	//W/(m^2*K^4)
#define COSMIC_RADIATION_TEMPERATURE	3.15		//K
#define AVERAGE_SOLAR_RADIATION			200			//W/m^2. Kind of arbitrary. Really this should depend on the sun position much like solars.
#define RADIATOR_OPTIMUM_PRESSURE		110			//kPa at 20 C

#define CELL_VOLUME 2500	//liters in a cell
#define MOLES_CELLSTANDARD (ONE_ATMOSPHERE*CELL_VOLUME/(T20C*R_IDEAL_GAS_EQUATION))	//moles in a 2.5 m^3 cell at 101.325 Pa and 20 degC

#define O2STANDARD 0.21
#define N2STANDARD 0.79

#define MOLES_PHORON_VISIBLE 0.7 //Moles in a standard cell after which phoron is visible
#define MOLES_O2STANDARD MOLES_CELLSTANDARD*O2STANDARD	// O2 standard value (21%)
#define MOLES_N2STANDARD MOLES_CELLSTANDARD*N2STANDARD	// N2 standard value (79%)

#define MIN_TOXIN_DAMAGE 1	//This and MAX_TOXIN_DAMAGE are for when a mob breathes poisonous air
#define MAX_TOXIN_DAMAGE 10	//This and MIN_TOXIN_DAMAGE are for when a mob breathes poisonous air

#define BREATH_VOLUME 0.5	//liters in a normal breath
#define BREATH_MOLES (ONE_ATMOSPHERE * BREATH_VOLUME /(T20C*R_IDEAL_GAS_EQUATION))
#define BREATH_PERCENTAGE BREATH_VOLUME/CELL_VOLUME
	//Amount of air to take a from a tile
#define HUMAN_NEEDED_OXYGEN	MOLES_CELLSTANDARD*BREATH_PERCENTAGE*0.16
	//Amount of air needed before pass out/suffocation commences

#define SOUND_MINIMUM_PRESSURE 10

// Pressure limits.
#define HAZARD_HIGH_PRESSURE 550	//This determins at what pressure the ultra-high pressure red icon is displayed. (This one is set as a constant)
#define WARNING_HIGH_PRESSURE 325 	//This determins when the orange pressure icon is displayed (it is 0.7 * HAZARD_HIGH_PRESSURE)
#define WARNING_LOW_PRESSURE 50 	//This is when the gray low pressure icon is displayed. (it is 2.5 * HAZARD_LOW_PRESSURE)
#define HAZARD_LOW_PRESSURE 20		//This is when the black ultra-low pressure icon is displayed. (This one is set as a constant)

#define TEMPERATURE_DAMAGE_COEFFICIENT 1.5	//This is used in handle_temperature_damage() for humans, and in reagents that affect body temperature. Temperature damage is multiplied by this amount.
#define BODYTEMP_AUTORECOVERY_DIVISOR 20 //This is the divisor which handles how much of the temperature difference between the current body temperature and 310.15K (optimal temperature) humans auto-regenerate each tick. The higher the number, the slower the recovery. This is applied each tick, so long as the mob is alive.
#define BODYTEMP_AUTORECOVERY_MINIMUM 1 //Minimum amount of kelvin moved toward 310.15K per tick. So long as abs(310.15 - bodytemp) is more than 50.
#define BODYTEMP_COLD_DIVISOR 6 //Similar to the BODYTEMP_AUTORECOVERY_DIVISOR, but this is the divisor which is applied at the stage that follows autorecovery. This is the divisor which comes into play when the human's loc temperature is lower than their body temperature. Make it lower to lose bodytemp faster.
#define BODYTEMP_HEAT_DIVISOR 6 //Similar to the BODYTEMP_AUTORECOVERY_DIVISOR, but this is the divisor which is applied at the stage that follows autorecovery. This is the divisor which comes into play when the human's loc temperature is higher than their body temperature. Make it lower to gain bodytemp faster.
#define BODYTEMP_COOLING_MAX -30 //The maximum number of degrees that your body can cool in 1 tick, when in a cold area.
#define BODYTEMP_HEATING_MAX 30 //The maximum number of degrees that your body can heat up in 1 tick, when in a hot area.

#define BODYTEMP_HEAT_DAMAGE_LIMIT 360.15 // The limit the human body can take before it starts taking damage from heat.
#define BODYTEMP_COLD_DAMAGE_LIMIT 260.15 // The limit the human body can take before it starts taking damage from coldness.

#define SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE 	2.0 //what min_cold_protection_temperature is set to for space-helmet quality headwear. MUST NOT BE 0.
#define SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE 		2.0 //what min_cold_protection_temperature is set to for space-suit quality jumpsuits or suits. MUST NOT BE 0.
#define SPACE_SUIT_MAX_HEAT_PROTECTION_TEMPERATURE 		5000	//These need better heat protect, but not as good heat protect as firesuits.
#define FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE 		30000 //what max_heat_protection_temperature is set to for firesuit quality headwear. MUST NOT BE 0.
#define FIRE_HELMET_MAX_HEAT_PROTECTION_TEMPERATURE 	30000 //for fire helmet quality items (red and white hardhats)
#define HELMET_MIN_COLD_PROTECTION_TEMPERATURE 			250	//For normal helmets
#define HELMET_MAX_HEAT_PROTECTION_TEMPERATURE 			600	//For normal helmets
#define ARMOR_MIN_COLD_PROTECTION_TEMPERATURE 			250	//For armor
#define ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE 			600	//For armor

#define GLOVES_MIN_COLD_PROTECTION_TEMPERATURE 			200	//For some gloves (black and)
#define GLOVES_MAX_HEAT_PROTECTION_TEMPERATURE 			650	//For some gloves
#define SHOE_MIN_COLD_PROTECTION_TEMPERATURE 			200	//For gloves
#define SHOE_MAX_HEAT_PROTECTION_TEMPERATURE 			650	//For gloves

#define ICE_PLANET_MIN_COLD_PROTECTION_TEMPERATURE 		220 //For the ice planet map protection from the elements.

#define PRESSURE_DAMAGE_COEFFICIENT 4 //The amount of pressure damage someone takes is equal to (pressure / HAZARD_HIGH_PRESSURE)*PRESSURE_DAMAGE_COEFFICIENT, with the maximum of MAX_PRESSURE_DAMAGE
#define MAX_HIGH_PRESSURE_DAMAGE 4	//This used to be 20... I got this much random rage for some retarded decision by polymorph?! Polymorph now lies in a pool of blood with a katana jammed in his spleen. ~Errorage --PS: The katana did less than 20 damage to him :(
#define LOW_PRESSURE_DAMAGE 2 	//The amounb of damage someone takes when in a low pressure area (The pressure threshold is so low that it doesn't make sense to do any calculations, so it just applies this flat value).

// Doors!
#define DOOR_CRUSH_DAMAGE 10

// Factor of how fast mob nutrition decreases
#define HUNGER_FACTOR 0.05

// How many units of reagent are consumed per tick, by default.
#define REAGENTS_METABOLISM 0.2

// By defining the effect multiplier this way, it'll exactly adjust
// all effects according to how they originally were with the 0.4 metabolism
#define REAGENTS_EFFECT_MULTIPLIER REAGENTS_METABOLISM / 0.4


#define MINIMUM_AIR_RATIO_TO_SUSPEND 0.05
	//Minimum ratio of air that must move to/from a tile to suspend group processing
#define MINIMUM_AIR_TO_SUSPEND MOLES_CELLSTANDARD*MINIMUM_AIR_RATIO_TO_SUSPEND
	//Minimum amount of air that has to move before a group processing can be suspended

#define MINIMUM_MOLES_DELTA_TO_MOVE MOLES_CELLSTANDARD*MINIMUM_AIR_RATIO_TO_SUSPEND //Either this must be active
#define MINIMUM_TEMPERATURE_TO_MOVE	T20C+100 		  //or this (or both, obviously)

#define MINIMUM_TEMPERATURE_RATIO_TO_SUSPEND 0.012
#define MINIMUM_TEMPERATURE_DELTA_TO_SUSPEND 4
	//Minimum temperature difference before group processing is suspended
#define MINIMUM_TEMPERATURE_DELTA_TO_CONSIDER 0.5
	//Minimum temperature difference before the gas temperatures are just set to be equal

#define MINIMUM_TEMPERATURE_FOR_SUPERCONDUCTION		T20C+10
#define MINIMUM_TEMPERATURE_START_SUPERCONDUCTION	T20C+200

#define FLOOR_HEAT_TRANSFER_COEFFICIENT 0.4
#define WALL_HEAT_TRANSFER_COEFFICIENT 0.0
#define DOOR_HEAT_TRANSFER_COEFFICIENT 0.0
#define SPACE_HEAT_TRANSFER_COEFFICIENT 0.2 //a hack to partly simulate radiative heat
#define OPEN_HEAT_TRANSFER_COEFFICIENT 0.4
#define WINDOW_HEAT_TRANSFER_COEFFICIENT 0.1 //a hack for now
	//Must be between 0 and 1. Values closer to 1 equalize temperature faster
	//Should not exceed 0.4 else strange heat flow occur

/*
#define FIRE_MINIMUM_TEMPERATURE_TO_SPREAD	150+T0C
#define FIRE_MINIMUM_TEMPERATURE_TO_EXIST	100+T0C
#define FIRE_SPREAD_RADIOSITY_SCALE		0.85
#define FIRE_CARBON_ENERGY_RELEASED	  500000 //Amount of heat released per mole of burnt carbon into the tile
#define FIRE_PHORON_ENERGY_RELEASED	 3000000 //Amount of heat released per mole of burnt phoron into the tile
#define FIRE_GROWTH_RATE			40000 //For small fires

#define WATER_BOIL_TEMP 393 */

// Fire Damage
#define CARBON_LIFEFORM_FIRE_RESISTANCE 200+T0C
#define CARBON_LIFEFORM_FIRE_DAMAGE		4

//Phoron fire properties
#define PHORON_MINIMUM_BURN_TEMPERATURE		100+T0C
#define PHORON_FLASHPOINT 					246+T0C
#define PHORON_UPPER_TEMPERATURE			1370+T0C
#define PHORON_MINIMUM_OXYGEN_NEEDED		2
#define PHORON_MINIMUM_OXYGEN_PHORON_RATIO	20
#define PHORON_OXYGEN_FULLBURN				10

#define T0C 273.15					// 0degC
#define T20C 293.15					// 20degC
#define TCMB 2.7					// -270.3degC

//XGM gas flags
#define XGM_GAS_FUEL 1
#define XGM_GAS_OXIDIZER 2
#define XGM_GAS_CONTAMINANT 4

//Used to be used by FEA
//var/turf/space/Space_Tile = locate(/turf/space) // A space tile to reference when atmos wants to remove excess heat.

#define TANK_LEAK_PRESSURE		(30.*ONE_ATMOSPHERE)	// Tank starts leaking
#define TANK_RUPTURE_PRESSURE	(40.*ONE_ATMOSPHERE) // Tank spills all contents into atmosphere

#define TANK_FRAGMENT_PRESSURE	(50.*ONE_ATMOSPHERE) // Boom 3x3 base explosion
#define TANK_FRAGMENT_SCALE	    (10.*ONE_ATMOSPHERE) // +1 for each SCALE kPa aboe threshold
								// was 2 atm

//This was a define, but I changed it to a variable so it can be changed in-game.(kept the all-caps definition because... code...) -Errorage
var/MAX_EXPLOSION_RANGE = 14
//#define MAX_EXPLOSION_RANGE		14					// Defaults to 12 (was 8) -- TLE

#define HUMAN_STRIP_DELAY 40 //takes 40ds = 4s to strip someone.

#define ALIEN_SELECT_AFK_BUFFER 1 // How many minutes that a person can be AFK before not being allowed to be an alien.

#define NORMPIPERATE 30					//pipe-insulation rate divisor
#define HEATPIPERATE 8					//heat-exch pipe insulation

#define FLOWFRAC 0.99				// fraction of gas transfered per process

#define SHOES_SLOWDOWN -1.0			// How much shoes slow you down by default. Negative values speed you up

//ITEM INVENTORY SLOT BITMASKS
#define SLOT_OCLOTHING 1
#define SLOT_ICLOTHING 2
#define SLOT_GLOVES 4
#define SLOT_EYES 8
#define SLOT_EARS 16
#define SLOT_MASK 32
#define SLOT_HEAD 64
#define SLOT_FEET 128
#define SLOT_ID 256
#define SLOT_BELT 512
#define SLOT_BACK 1024
#define SLOT_POCKET 2048		//this is to allow items with a w_class of 3 or 4 to fit in pockets.
#define SLOT_DENYPOCKET 4096	//this is to deny items with a w_class of 2 or 1 to fit in pockets.
#define SLOT_TWOEARS 8192
#define SLOT_LEGS = 16384


//FLAGS BITMASK
/*
Cleaned these up a lot. Everything that applies to equipment is in flags_inv instead of
flags. So I had to manually go through and reset all of the flags. Regular item flags
should all be unique more or less. flags_inv can double up.
~N
*/

//turf-only flags
#define NOJAUNT		1

//PASS FLAGS
#define PASSTABLE	1
#define PASSGLASS	2
#define PASSGRILLE	4
#define PASSBLOB	8

//FLAGS
#define NOFLAGS					0		//Nothing.

//==========================================================================================
#define NODROP					1		// Cannot be dropped at all, only deleted.
#define NOINTERACT				2		// Despite being an item, you can't interact with it normally.
#define NOBLOODY				4		// Don't want a blood overlay on this one.
#define DELONDROP				8		// Deletes on drop instead of falling on the floor.
#define FPRINT					16		// takes a fingerprint
#define CONDUCT					32		// conducts electricity (metal etc.)
#define ON_BORDER				64		// item has priority to check when entering or leaving
//Reserved space for any general flags here.
//==========================================================================================
#define	NOREACT					1024	//Reagents dont' react inside this container.
#define OPENCONTAINER			2048	//is an open container for chemistry purposes
//==========================================================================================
#define NOBLUDGEON  			4096	// when an item has this it produces no "X has been hit by Y with Z" message with the default handler
#define NOSHIELD				8192		// weapon not affected by shield
#define TWOHANDED				16384		// The item is twohanded.
#define WIELDED					32768		// The item is wielded with both hands.
//==========================================================================================

//FLAGS_INV
//Bit flags for the flags_inv variable, which determine when a piece of clothing hides another. IE a helmet hiding glasses.
//It also determines a few other things now, and doesn't just apply to clothing. ~N
#define BLOCKPHORON 	65536		// Does not get contaminated by phoron.

//SUIT ONLY============================================================================================
#define HIDEGLOVES		1	//APPLIES ONLY TO THE EXTERIOR SUIT!!
#define HIDESUITSTORAGE	2	//APPLIES ONLY TO THE EXTERIOR SUIT!!
#define HIDEJUMPSUIT	4	//APPLIES ONLY TO THE EXTERIOR SUIT!!
#define HIDESHOES		8	//APPLIES ONLY TO THE EXTERIOR SUIT!!
//HIDELOWHAIR			16  //Can do this now.
#define HIDETAIL 		32	//APPLIES ONLY TO THE EXTERIOR SUIT!!
//COVERMOUTH			256 //Can potentially do this.
//SUIT ONLY============================================================================================

//HELMET AND MASK======================================================================================
#define HIDEMASK		1	//APPLIES ONLY TO HELMETS/MASKS!!
#define HIDEEARS		2	//APPLIES ONLY TO HELMETS/MASKS!! (ears means headsets and such)
#define HIDEEYES		4	//APPLIES ONLY TO HELMETS/MASKS!! (eyes means glasses)
#define HIDEFACE		8	//APPLIES ONLY TO HELMETS/MASKS!! Dictates whether we appear as unknown.
#define HIDELOWHAIR		16	// temporarily removes the user's facial hair overlay.
#define HIDETOPHAIR		32	// temporarily removes the user's hair overlay. Leaves facial hair.
#define HIDEALLHAIR		64	// temporarily removes the user's hair, facial and otherwise.
#define COVEREYES		128 // Covers the eyes/protects them.
#define COVERMOUTH		256 // Covers the mouth.
#define ALLOWINTERNALS	512	//mask allows internals
#define BLOCKGASEFFECT	1024 // blocks the effect that chemical clouds would have on a mob --glasses, mask and helmets
//HELMET AND MASK======================================================================================

//SUITS AND HELMETS====================================================================================
//To successfully stop taking all pressure damage you must have both a suit and head item with this flag.
#define BLOCKSHARPOBJ 	2048  //From /tg: prevents syringes, parapens and hypos if the external suit or helmet (if targeting head) has this flag. Example: space suits, biosuit, bombsuits, thick suits that cover your body.
#define NOPRESSUREDMAGE 4096 //This flag is used on the flags variable for SUIT and HEAD items which stop pressure damage.
//SUITS AND HELMETS====================================================================================

//SHOES ONLY===========================================================================================
#define NOSLIPPING		1	//prevents from slipping on wet floors, in space etc
//SHOES ONLY===========================================================================================

//slots
#define slot_back 1
#define slot_wear_mask 2
#define slot_handcuffed 3
#define slot_l_hand 4
#define slot_r_hand 5
#define slot_belt 6
#define slot_wear_id 7
#define slot_l_ear 8
#define slot_glasses 9
#define slot_gloves 10
#define slot_head 11
#define slot_shoes 12
#define slot_wear_suit 13
#define slot_w_uniform 14
#define slot_l_store 15
#define slot_r_store 16
#define slot_s_store 17
#define slot_in_backpack 18
#define slot_legcuffed 19
#define slot_r_ear 20
#define slot_legs 21

// bitflags for clothing parts
#define HEAD			1
#define FACE			2
#define EYES			4
#define UPPER_TORSO		8
#define LOWER_TORSO		16
#define LEG_LEFT		32
#define LEG_RIGHT		64
#define LEGS			96
#define FOOT_LEFT		128
#define FOOT_RIGHT		256
#define FEET			384
#define ARM_LEFT		512
#define ARM_RIGHT		1024
#define ARMS			1536
#define HAND_LEFT		2048
#define HAND_RIGHT		4096
#define HANDS			6144
#define FULL_BODY		8191

// bitflags for the percentual amount of protection a piece of clothing which covers the body part offers.
// Used with human/proc/get_heat_protection() and human/proc/get_cold_protection()
// The values here should add up to 1.
// Hands and feet have 2.5%, arms and legs 7.5%, each of the torso parts has 15% and the head has 30%
#define THERMAL_PROTECTION_HEAD			0.3
#define THERMAL_PROTECTION_UPPER_TORSO	0.15
#define THERMAL_PROTECTION_LOWER_TORSO	0.15
#define THERMAL_PROTECTION_LEG_LEFT		0.075
#define THERMAL_PROTECTION_LEG_RIGHT	0.075
#define THERMAL_PROTECTION_FOOT_LEFT	0.025
#define THERMAL_PROTECTION_FOOT_RIGHT	0.025
#define THERMAL_PROTECTION_ARM_LEFT		0.075
#define THERMAL_PROTECTION_ARM_RIGHT	0.075
#define THERMAL_PROTECTION_HAND_LEFT	0.025
#define THERMAL_PROTECTION_HAND_RIGHT	0.025


//bitflags for mutations
	// Extra powers:
#define SHADOW			(1<<10)	// shadow teleportation (create in/out portals anywhere) (25%)
#define SCREAM			(1<<11)	// supersonic screaming (25%)
#define EXPLOSIVE		(1<<12)	// exploding on-demand (15%)
#define REGENERATION	(1<<13)	// superhuman regeneration (30%)
#define REPROCESSOR		(1<<14)	// eat anything (50%)
#define SHAPESHIFTING	(1<<15)	// take on the appearance of anything (40%)
#define PHASING			(1<<16)	// ability to phase through walls (40%)
#define SHIELD			(1<<17)	// shielding from all projectile attacks (30%)
#define SHOCKWAVE		(1<<18)	// attack a nearby tile and cause a massive shockwave, knocking most people on their asses (25%)
#define ELECTRICITY		(1<<19)	// ability to shoot electric attacks (15%)


// String identifiers for associative list lookup

// mob/var/list/mutations

#define STRUCDNASIZE 27
#define UNIDNASIZE 13

	// Generic mutations:
#define	TK				1
#define COLD_RESISTANCE	2
#define XRAY			3
#define HULK			4
#define CLUMSY			5
#define FAT				6
#define HUSK			7
#define NOCLONE			8


	// Extra powers:
#define LASER			9 	// harm intent - click anywhere to shoot lasers from eyes
#define HEAL			10 	// healing people with hands
#define SHADOW			11 	// shadow teleportation (create in/out portals anywhere) (25%)
#define SCREAM			12 	// supersonic screaming (25%)
#define EXPLOSIVE		13 	// exploding on-demand (15%)
#define REGENERATION	14 	// superhuman regeneration (30%)
#define REPROCESSOR		15 	// eat anything (50%)
#define SHAPESHIFTING	16 	// take on the appearance of anything (40%)
#define PHASING			17 	// ability to phase through walls (40%)
#define SHIELD			18 	// shielding from all projectile attacks (30%)
#define SHOCKWAVE		19 	// attack a nearby tile and cause a massive shockwave, knocking most people on their asses (25%)
#define ELECTRICITY		20 	// ability to shoot electric attacks (15%)

	//2spooky
#define SKELETON 29
#define PLANT 30

// Other Mutations:
#define mNobreath		100 	// no need to breathe
#define mRemote			101 	// remote viewing
#define mRegen			102 	// health regen
#define mRun			103 	// no slowdown
#define mRemotetalk		104 	// remote talking
#define mMorph			105 	// changing appearance
#define mBlend			106 	// nothing (seriously nothing)
#define mHallucination	107 	// hallucinations
#define mFingerprints	108 	// no fingerprints
#define mShock			109 	// insulated hands
#define mSmallsize		110 	// table climbing

//disabilities
#define NEARSIGHTED		1
#define EPILEPSY		2
#define COUGHING		4
#define TOURETTES		8
#define NERVOUS			16

//sdisabilities
#define BLIND			1
#define MUTE			2
#define DEAF			4

//mob/var/stat things
#define CONSCIOUS	0
#define UNCONSCIOUS	1
#define DEAD		2

// channel numbers for power
#define EQUIP	1
#define LIGHT	2
#define ENVIRON	3
#define TOTAL	4	//for total power used only

// bitflags for machine stat variable
#define BROKEN		1
#define NOPOWER		2
#define POWEROFF	4		// tbd
#define MAINT		8			// under maintaince
#define EMPED		16		// temporary broken by EMP pulse

//bitflags for door switches.
#define OPEN	1
#define IDSCAN	2
#define BOLTS	4
#define SHOCK	8
#define SAFE	16

#define ENGINE_EJECT_Z	3

//metal, glass, rod stacks
#define MAX_STACK_AMOUNT_METAL	50
#define MAX_STACK_AMOUNT_GLASS	50
#define MAX_STACK_AMOUNT_RODS	60

#define GAS_O2 	(1 << 0)
#define GAS_N2	(1 << 1)
#define GAS_PL	(1 << 2)
#define GAS_CO2	(1 << 3)
#define GAS_N2O	(1 << 4)


var/list/accessable_z_levels = list("1" = 10, "3" = 10, "4" = 10, "5" = 70)
//This list contains the z-level numbers which can be accessed via space travel and the percentile chances to get there.
//(Exceptions: extended, sandbox and nuke) -Errorage
//Was list("3" = 30, "4" = 70).
//Spacing should be a reliable method of getting rid of a body -- Urist.
//Go away Urist, I'm restoring this to the longer list. ~Errorage

#define IS_MODE_COMPILED(MODE) (ispath(text2path("/datum/game_mode/"+(MODE))))


var/list/global_mutations = list() // list of hidden mutation things

//Bluh shields

//DAMAGE CALCULATION DEFINES
/*
If you are wondering what point these values have,
they should also transfer over to various forms of combat.
Assuming those forms of combat will exist in the future, but
for right now they exist for shooting guns at things.
*/
#define CRITICAL_CHANCE_LOW		   4   //This is the lower boundry of a critical.
#define CRITICAL_CHANCE_HIGH	   9   //This is the upper boundry of a critical.
#define BASE_ARMOR_RESIST_LOW 	   1.3 //This is the initial multiple * after soaking damage.
#define BASE_ARMOR_RESIST_HIGH     1.7 //This is the derived multiple * after soaking damgage again.
#define XENO_ARMOR_RESIST_LOW 	   0.7 //Xenos use this as a lower boundary for soaking damage or adding more armor.
#define XENO_ARMOR_RESIST_HIGH     1.4 //Xenos use this as the upper boundary for deflecting damage on their second pass.

//Damage things	//TODO: merge these down to reduce on defines
//Way to waste perfectly good damagetype names (BRUTE) on this... If you were really worried about case sensitivity, you could have just used lowertext(damagetype) in the proc...
#define BRUTE		"brute"
#define BURN		"fire"
#define TOX			"tox"
#define OXY			"oxy"
#define CLONE		"clone"
#define HALLOSS		"halloss"

#define STUN		"stun"
#define WEAKEN		"weaken"
#define PARALYZE	"paralize"
#define IRRADIATE	"irradiate"
#define AGONY		"agony" // Added in PAIN!
#define STUTTER		"stutter"
#define EYE_BLUR	"eye_blur"
#define DROWSY		"drowsy"

//I hate adding defines like this but I'd much rather deal with bitflags than lists and string searches
#define BRUTELOSS 1
#define FIRELOSS 2
#define TOXLOSS 4
#define OXYLOSS 8

//Bitflags defining which status effects could be or are inflicted on a mob
#define CANSTUN		1
#define CANWEAKEN	2
#define CANPARALYSE	4
#define CANPUSH		8
#define LEAPING		16
#define PASSEMOTES	32      //Mob has a cortical borer or holders inside of it that need to see emotes.
#define GODMODE		4096
#define FAKEDEATH	8192	//Replaces stuff like changeling.changeling_fakedeath
#define DISFIGURED	16384	//I'll probably move this elsewhere if I ever get wround to writing a bitflag mob-damage system
#define XENO_HOST	32768	//Tracks whether we're gonna be a baby alien's mummy.

var/static/list/scarySounds = list('sound/weapons/thudswoosh.ogg','sound/weapons/Taser.ogg','sound/weapons/armbomb.ogg','sound/voice/hiss1.ogg','sound/voice/hiss2.ogg','sound/voice/hiss3.ogg','sound/voice/hiss4.ogg','sound/voice/hiss5.ogg','sound/voice/hiss6.ogg','sound/effects/Glassbr1.ogg','sound/effects/Glassbr2.ogg','sound/effects/Glassbr3.ogg','sound/items/Welder.ogg','sound/items/Welder2.ogg','sound/machines/airlock.ogg','sound/effects/clownstep1.ogg','sound/effects/clownstep2.ogg')

//Grab levels
#define GRAB_PASSIVE	1
#define GRAB_AGGRESSIVE	2
#define GRAB_NECK		3
#define GRAB_UPGRADING	4
#define GRAB_KILL		5

//Security levels
#define SEC_LEVEL_GREEN	0
#define SEC_LEVEL_BLUE	1
#define SEC_LEVEL_RED	2
#define SEC_LEVEL_DELTA	3

#define TRANSITIONEDGE	7 //Distance from edge to move to another z-level

var/list/liftable_structures = list(\

	/obj/machinery/autolathe, \
	/obj/machinery/constructable_frame, \
	/obj/machinery/portable_atmospherics/hydroponics, \
	/obj/machinery/computer, \
	/obj/machinery/optable, \
	/obj/structure/dispenser, \
	/obj/machinery/gibber, \
	/obj/machinery/microwave, \
	/obj/machinery/vending, \
	/obj/machinery/seed_extractor, \
	/obj/machinery/space_heater, \
	/obj/machinery/recharge_station, \
	/obj/machinery/flasher, \
	/obj/structure/stool, \
	/obj/structure/closet, \
	/obj/machinery/photocopier, \
	/obj/structure/filingcabinet, \
	/obj/structure/reagent_dispensers, \
	/obj/machinery/portable_atmospherics/canister)

//A set of constants used to determine which type of mute an admin wishes to apply:
//Please read and understand the muting/automuting stuff before changing these. MUTE_IC_AUTO etc = (MUTE_IC << 1)
//Therefore there needs to be a gap between the flags for the automute flags
#define MUTE_IC			1
#define MUTE_OOC		2
#define MUTE_PRAY		4
#define MUTE_ADMINHELP	8
#define MUTE_DEADCHAT	16
#define MUTE_ALL		31

//Number of identical messages required to get the spam-prevention automute thing to trigger warnings and automutes
#define SPAM_TRIGGER_WARNING 5
#define SPAM_TRIGGER_AUTOMUTE 10

//Some constants for DB_Ban
#define BANTYPE_PERMA		1
#define BANTYPE_TEMP		2
#define BANTYPE_JOB_PERMA	3
#define BANTYPE_JOB_TEMP	4
#define BANTYPE_ANY_FULLBAN	5 //used to locate stuff to unban.

#define SEE_INVISIBLE_MINIMUM 5

#define SEE_INVISIBLE_OBSERVER_NOLIGHTING 15

#define INVISIBILITY_LIGHTING 20

#define SEE_INVISIBLE_LIVING 25

#define SEE_INVISIBLE_LEVEL_ONE 35	//Used by some stuff in code. It's really poorly organized.
#define INVISIBILITY_LEVEL_ONE 35	//Used by some stuff in code. It's really poorly organized.

#define SEE_INVISIBLE_LEVEL_TWO 45	//Used by some other stuff in code. It's really poorly organized.
#define INVISIBILITY_LEVEL_TWO 45	//Used by some other stuff in code. It's really poorly organized.

#define INVISIBILITY_OBSERVER 60
#define SEE_INVISIBLE_OBSERVER 60

#define INVISIBILITY_MAXIMUM 100

//Object specific defines
#define CANDLE_LUM 3 //For how bright candles are


//Some mob defines below
#define AI_CAMERA_LUMINOSITY 6

#define BORGMESON 1
#define BORGTHERM 2
#define BORGXRAY  4

//some arbitrary defines to be used by self-pruning global lists. (see master_controller)
#define PROCESS_KILL 26	//Used to trigger removal from a processing list


#define HOSTILE_STANCE_IDLE 1
#define HOSTILE_STANCE_ALERT 2
#define HOSTILE_STANCE_ATTACK 3
#define HOSTILE_STANCE_ATTACKING 4
#define HOSTILE_STANCE_TIRED 5

#define ROUNDSTART_LOGOUT_REPORT_TIME 6000 //Amount of time (in deciseconds) after the rounds starts, that the player disconnect report is issued.

//Damage things

#define CUT 		"cut"
#define BRUISE		"bruise"
#define BRUTE		"brute"
#define BURN		"fire"
#define TOX			"tox"
#define OXY			"oxy"
#define CLONE		"clone"
#define HALLOSS		"halloss"

#define STUN		"stun"
#define WEAKEN		"weaken"
#define PARALYZE	"paralize"
#define IRRADIATE	"irradiate"
#define STUTTER		"stutter"
#define SLUR 		"slur"
#define EYE_BLUR	"eye_blur"
#define DROWSY		"drowsy"

///////////////////ORGAN DEFINES///////////////////

#define ORGAN_CUT_AWAY 1
#define ORGAN_GAUZED 2
#define ORGAN_ATTACHABLE 4
#define ORGAN_BLEEDING 8
#define ORGAN_BROKEN 32
#define ORGAN_DESTROYED 64
#define ORGAN_ROBOT 128
#define ORGAN_SPLINTED 256
#define SALVED 512
#define ORGAN_DEAD 1024
#define ORGAN_MUTATED 2048

#define ROUNDSTART_LOGOUT_REPORT_TIME 6000 //Amount of time (in deciseconds) after the rounds starts, that the player disconnect report is issued.



//Please don't edit these values without speaking to Errorage first	~Carn
//Admin Permissions
#define R_BUILDMODE		1
#define R_ADMIN			2
#define R_BAN			4
#define R_FUN			8
#define R_SERVER		16
#define R_DEBUG			32
#define R_POSSESS		64
#define R_PERMISSIONS	128
#define R_STEALTH		256
#define R_REJUVINATE	512
#define R_VAREDIT		1024
#define R_SOUNDS		2048
#define R_SPAWN			4096
#define R_MOD			8192
#define R_MENTOR		16384
#define R_HOST			32768

#define R_MAXPERMISSION 32768 //This holds the maximum value for a permission. It is used in iteration, so keep it updated.

//Preference toggles
#define SOUND_ADMINHELP	1
#define SOUND_MIDI		2
#define SOUND_AMBIENCE	4
#define SOUND_LOBBY		8
#define CHAT_OOC		16
#define CHAT_DEAD		32
#define CHAT_GHOSTEARS	64
#define CHAT_GHOSTSIGHT	128
#define CHAT_PRAYER		256
#define CHAT_RADIO		512
#define CHAT_ATTACKLOGS	1024
#define CHAT_DEBUGLOGS	2048
#define CHAT_LOOC		4096
#define CHAT_GHOSTRADIO 8192
#define SHOW_TYPING 	16384
#define CHAT_FFATTACKLOGS 32768


#define TOGGLES_DEFAULT (SOUND_ADMINHELP|SOUND_MIDI|SOUND_AMBIENCE|SOUND_LOBBY|CHAT_OOC|CHAT_DEAD|CHAT_GHOSTEARS|CHAT_GHOSTSIGHT|CHAT_PRAYER|CHAT_RADIO|CHAT_ATTACKLOGS|CHAT_LOOC)

/*
#define BE_TRAITOR    1
#define BE_OPERATIVE  2
#define BE_CHANGELING 4
#define BE_WIZARD     8
#define BE_MALF       16
#define BE_REV        32
#define BE_ALIEN      64
#define BE_PAI        128
#define BE_CULTIST    256
#define BE_MONKEY     512
#define BE_NINJA      1024
#define BE_RAIDER     2048
#define BE_PLANT      4096
#define BE_MUTINEER   8192
#define BE_SURVIVOR	  16384

var/list/be_special_flags = list(
	"Traitor" = BE_TRAITOR,
	"Operative" = BE_OPERATIVE,
	"Changeling" = BE_CHANGELING,
	"Wizard" = BE_WIZARD,
	"Malf AI" = BE_MALF,
	"Revolutionary" = BE_REV,
	"Xenomorph" = BE_ALIEN,
	"pAI" = BE_PAI,
	"Cultist" = BE_CULTIST,
	"Monkey" = BE_MONKEY,
	"Ninja" = BE_NINJA,
	"Raider" = BE_RAIDER,
	"Diona" = BE_PLANT,
	"Mutineer" = BE_MUTINEER,
	"Survivor" = BE_SURVIVOR
	)
 */

#define BE_ALIEN      1
#define BE_PAI		  2
#define BE_SURVIVOR	  4
#define BE_RESPONDER  8
#define BE_PREDATOR   16

#define BE_REV        32
#define BE_TRAITOR    64
#define BE_OPERATIVE  128
#define BE_CULTIST    256
#define BE_MONKEY     512
#define BE_NINJA      1024
#define BE_RAIDER     2048
#define BE_PLANT      4096
#define BE_MUTINEER   8192
#define BE_CHANGELING 16384

#define BE_WO_ROLE 32768

var/list/be_special_flags = list(
	"Xenomorph" = BE_ALIEN,
	"pAI" = BE_PAI,
	"Survivor" = BE_SURVIVOR,
	"Responder" = BE_RESPONDER,
	"Predator" = BE_PREDATOR,
	"WO Role" = BE_WO_ROLE

/*
	"Malf AI" = BE_MALF,
	"Revolutionary" = BE_REV,
	"Traitor" = BE_TRAITOR,
	"Operative" = BE_OPERATIVE,
	"Cultist" = BE_CULTIST,
	"Monkey" = BE_MONKEY,
	"Ninja" = BE_NINJA,
	"Raider" = BE_RAIDER,
	"Diona" = BE_PLANT,
	"Mutineer" = BE_MUTINEER,
	"Changeling" = BE_CHANGELING*/
	)

#define AGE_MIN 17			//youngest a character can be
#define AGE_MAX 160			//oldest a character can be

//Languages!
#define LANGUAGE_HUMAN		1
#define LANGUAGE_ALIEN		2
#define LANGUAGE_DOG		4
#define LANGUAGE_CAT		8
#define LANGUAGE_BINARY		16
#define LANGUAGE_OTHER		32768

#define LANGUAGE_UNIVERSAL	65535

#define LEFT 1
#define RIGHT 2

// for secHUDs and medHUDs and variants. The number is the location of the image on the list hud_list of humans.
#define HEALTH_HUD		1 // a simple line rounding the mob's number health
#define STATUS_HUD		2 // alive, dead, diseased, etc.
#define ID_HUD			3 // the job asigned to your ID
#define WANTED_HUD		4 // wanted, released, parroled, security status
#define IMPLOYAL_HUD		5 // loyality implant
#define IMPCHEM_HUD		6 // chemical implant
#define IMPTRACK_HUD		7 // tracking implant
#define SPECIALROLE_HUD 	8 // AntagHUD image
#define STATUS_HUD_OOC		9 // STATUS_HUD without virus db check for someone being ill.

//Pulse levels, very simplified
#define PULSE_NONE		0	//so !M.pulse checks would be possible
#define PULSE_SLOW		1	//<60 bpm
#define PULSE_NORM		2	//60-90 bpm
#define PULSE_FAST		3	//90-120 bpm
#define PULSE_2FAST		4	//>120 bpm
#define PULSE_THREADY	5	//occurs during hypovolemic shock
//feel free to add shit to lists below
var/list/tachycardics = list("coffee", "inaprovaline", "hyperzine", "nitroglycerin", "thirteenloko", "nicotine")	//increase heart rate
var/list/bradycardics = list("neurotoxin", "cryoxadone", "clonexadone", "space_drugs", "stoxin")					//decrease heart rate
var/list/heartstopper = list("potassium_phorochloride", "zombie_powder") //this stops the heart
var/list/cheartstopper = list("potassium_chloride") //this stops the heart when overdose is met -- c = conditional

//proc/get_pulse methods
#define GETPULSE_HAND	0	//less accurate (hand)
#define GETPULSE_TOOL	1	//more accurate (med scanner, sleeper, etc)

var/list/RESTRICTED_CAMERA_NETWORKS = list( //Those networks can only be accessed by preexisting terminals. AIs and new terminals can't use them.
	"thunder",
	"ERT",
	"NUKE"
	)

//Species flags.
#define NO_BLOOD 1
#define NO_BREATHE 2
#define NO_SCAN 4
#define NO_PAIN 8
#define NO_SLIP 16
#define NO_POISON 32

#define HAS_SKIN_TONE 64
#define HAS_SKIN_COLOR 128
#define HAS_LIPS 256
#define HAS_UNDERWEAR 512
#define IS_PLANT 1024
#define IS_WHITELISTED 2048
#define IS_SYNTHETIC 4096

//Language flags.
#define WHITELISTED 1  		// Language is available if the speaker is whitelisted.
#define RESTRICTED 2   		// Language can only be accquired by spawning or an admin.
#define NONVERBAL 4    		// Language has a significant non-verbal component. Speech is garbled without line-of-sight
#define SIGNLANG 8     		// Language is completely non-verbal. Speech is displayed through emotes for those who can understand.
#define HIVEMIND 16         // Broadcast to all mobs with this language.

//Flags for zone sleeping
#define ZONE_ACTIVE 1
#define ZONE_SLEEPING 0

//some colors
#define COLOR_RED 		"#FF0000"
#define COLOR_GREEN 	"#00FF00"
#define COLOR_BLUE 		"#0000FF"
#define COLOR_CYAN 		"#00FFFF"
#define COLOR_PINK 		"#FF00FF"
#define COLOR_YELLOW 	"#FFFF00"
#define COLOR_ORANGE 	"#FF9900"
#define COLOR_WHITE 	"#FFFFFF"



/*
	Germs and infections
*/

#define GERM_LEVEL_AMBIENT		110		//maximum germ level you can reach by standing still
#define GERM_LEVEL_MOVE_CAP		200		//maximum germ level you can reach by running around

#define INFECTION_LEVEL_ONE		100
#define INFECTION_LEVEL_TWO		500
#define INFECTION_LEVEL_THREE	800

#define MIN_ANTIBIOTICS			0


/*
	Shuttles
*/

// these define the time taken for the shuttle to get to SS13
// and the time before it leaves again
#define SHUTTLE_PREPTIME 				600	// 10 minutes = 600 seconds - after this time, the shuttle departs centcom and cannot be recalled
#define SHUTTLE_LEAVETIME 				180	// 3 minutes = 180 seconds - the duration for which the shuttle will wait at the station after arriving
#define SHUTTLE_TRANSIT_DURATION		600	// 10 minutes = 600 seconds - how long it takes for the shuttle to get to the station
#define SHUTTLE_TRANSIT_DURATION_RETURN 100	// 100 seconds

//Shuttle moving status
#define SHUTTLE_IDLE		0
#define SHUTTLE_WARMUP		1
#define SHUTTLE_INTRANSIT	2

//Ferry shuttle processing status
#define IDLE_STATE		0
#define WAIT_LAUNCH		1
#define FORCE_LAUNCH	2
#define WAIT_ARRIVE		3
#define WAIT_FINISH		4

//computer3 error codes, move lower in the file when it passes dev -Sayu
 #define PROG_CRASH      1  // Generic crash
 #define MISSING_PERIPHERAL  2  // Missing hardware
 #define BUSTED_ASS_COMPUTER  4  // Self-perpetuating error.  BAC will continue to crash forever.
 #define MISSING_PROGRAM    8  // Some files try to automatically launch a program.  This is that failing.
 #define FILE_DRM      16  // Some files want to not be copied/moved.  This is them complaining that you tried.
 #define NETWORK_FAILURE  32

//Some on_mob_life() procs check for alien races.
#define IS_DIONA 1
#define IS_VOX 2
#define IS_SKRELL 3
#define IS_UNATHI 4
#define IS_XENOS 5

#define MAX_GEAR_COST 5 //Used in chargen for loadout limit.


/*
	Atmos Machinery
*/
#define MAX_SIPHON_FLOWRATE		2500	//L/s	This can be used to balance how fast a room is siphoned. Anything higher than CELL_VOLUME has no effect.
#define MAX_SCRUBBER_FLOWRATE	200		//L/s	Max flow rate when scrubbing from a turf.

//These balance how easy or hard it is to create huge pressure gradients with pumps and filters. Lower values means it takes longer to create large pressures differences.
//Has no effect on pumping gasses from high pressure to low, only from low to high. Must be between 0 and 1.
#define ATMOS_PUMP_EFFICIENCY	2.5
#define ATMOS_FILTER_EFFICIENCY	2.5

//will not bother pumping or filtering if the gas source as fewer than this amount of moles, to help with performance.
#define MINUMUM_MOLES_TO_PUMP	0.01
#define MINUMUM_MOLES_TO_FILTER	0.1

//The flow rate/effectiveness of various atmos devices is limited by their internal volume, so for many atmos devices these will control maximum flow rates in L/s
#define ATMOS_DEFAULT_VOLUME_PUMP	200	//L
#define ATMOS_DEFAULT_VOLUME_FILTER	200	//L
#define ATMOS_DEFAULT_VOLUME_MIXER	200	//L
#define ATMOS_DEFAULT_VOLUME_PIPE	70	//L

var/list/hit_appends = list("-OOF", "-ACK", "-UGH", "-HRNK", "-HURGH", "-GLORF")

// Reagent metabolism defines.
#define FOOD_METABOLISM 0.4
#define ALCOHOL_METABOLISM 0.1

/*
Trash Authority Directives
Defines for when we need to give commands to the trash authority in how to handle trash.
These are used with cdel (clean delete). For example, cdel(atom, TA_REVIVE_ME) would tell the TA to throw the atom into the recycler.
*/
#define TA_TRASH_ME		1 //Trash it.
#define TA_REVIVE_ME	2 //Not killing this one, instead adding it to the recycler. Call this on bullets, for example.
#define TA_PURGE_ME		3 //Purge it, but later. Not different from adding it to queue regularly as the trash authority will incinerate it when possible.
#define TA_PURGE_ME_NOW	4 //Purge it immediately. Generally don't want to use this.
#define TA_IGNORE_ME	5 //Ignore this atom, don't do anything with it. In case the atom will die on its own or something.
					 	  //Shouldn't usually use this as garbage collection is far better.

//Ammo defines for gun/projectile related things.
#define AMMO_REGULAR 		0 //Just as a reminder.
#define AMMO_EXPLOSIVE 		1
#define AMMO_XENO_ACID 		2
#define AMMO_XENO_TOX		4
#define AMMO_ENERGY 		8
#define AMMO_ROCKET			16
#define AMMO_SNIPER			32
#define AMMO_INCENDIARY		64
#define AMMO_SKIPS_HUMANS	128
#define AMMO_SKIPS_ALIENS 	256
#define AMMO_IS_SILENCED 	512 //Unused right now.
#define AMMO_NO_SCATTER 	1024
#define AMMO_IGNORE_ARMOR	2048
#define AMMO_IGNORE_RESIST	4096

//Gun defines for gun related thing. More in the projectile folder.
#define GUN_CAN_POINTBLANK		1
#define GUN_TRIGGER_SAFETY		2
#define GUN_UNUSUAL_DESIGN		4
#define GUN_SILENCED			8
#define GUN_AUTOMATIC			16
#define GUN_INTERNAL_MAG		32 //Unused right now.
#define GUN_AUTO_EJECTOR		64
#define GUN_AMMO_COUNTER		128
#define GUN_BURST_ON			256
#define GUN_BURST_FIRING		512
#define GUN_FLASHLIGHT_ON		1024
#define GUN_ON_MERCS			2048 //Unused right now.
#define GUN_ON_RUSSIANS			4096 //Unused right now.
#define GUN_WY_RESTRICTED		8192

//Gun attachable related flags.
#define ATTACH_PASSIVE		1
#define ATTACH_REMOVABLE	2
#define ATTACH_CONTINUOUS	4
#define ATTACH_ACTIVATION	8
#define ATTACH_PROJECTILE	16