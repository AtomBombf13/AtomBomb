#define STARTING_PAYCHECKS 5

#define PAYCHECK_ASSISTANT 25
#define PAYCHECK_MINIMAL 75
#define PAYCHECK_EASY 125
#define PAYCHECK_MEDIUM 175
#define PAYCHECK_HARD 200
#define PAYCHECK_COMMAND 250

#define MAX_GRANT_CIV 2500
#define MAX_GRANT_ENG 3000
#define MAX_GRANT_SCI 5000
#define MAX_GRANT_SECMEDSRV 3000

#define ACCOUNT_CIV "CIV"
#define ACCOUNT_CIV_NAME "Civil Budget"
#define ACCOUNT_ENG "ENG"
#define ACCOUNT_ENG_NAME "Engineering Budget"
#define ACCOUNT_SCI "SCI"
#define ACCOUNT_SCI_NAME "Scientific Budget"
#define ACCOUNT_MED "MED"
#define ACCOUNT_MED_NAME "Medical Budget"
#define ACCOUNT_SRV "SRV"
#define ACCOUNT_SRV_NAME "Service Budget"
#define ACCOUNT_CAR "CAR"
#define ACCOUNT_CAR_NAME "Cargo Budget"
#define ACCOUNT_SEC "SEC"
#define ACCOUNT_SEC_NAME "Defense Budget"

#define NO_FREEBIES "commies go home"

//ID bank account support defines.
#define ID_NO_BANK_ACCOUNT		0
#define ID_FREE_BANK_ACCOUNT	1
#define ID_LOCKED_BANK_ACCOUNT	2

//Some price defines to help standarize the intended vending value of items. Do not bother adding too many examples.
//CB Change - Pull back cost range for items
#define PRICE_FREE				0    // Free items. like job vendors.
#define PRICE_CHEAP_AS_FREE		(5 * 250)    // -
#define PRICE_REALLY_CHEAP		(10 * 250)    // low end ammo.
#define PRICE_PRETTY_CHEAP		(15 * 250)   // -
#define PRICE_CHEAP				(20 * 250)  //  Normal ammo?
#define PRICE_ALMOST_CHEAP		(25 * 250)    // cosmetic clothing
#define PRICE_BELOW_NORMAL		(30 * 250)   // -
#define PRICE_NORMAL			(35 * 250)   // Useful clothing.
#define PRICE_ABOVE_NORMAL		(40 * 250)   // low end healing items
#define PRICE_ALMOST_EXPENSIVE	(55 * 250)   // Stimpaks, t3 machine parts.
#define PRICE_EXPENSIVE			(70 * 250)   // -
#define PRICE_ABOVE_EXPENSIVE	(85 * 250)  // Super Stimpaks, higher end weapons
#define PRICE_REALLY_EXPENSIVE	(100 * 250)  // -
#define PRICE_ULTRA_EXPENSIVE   (500 * 250)  // Better weapons.
#define PRICE_ALMOST_ONE_GRAND	(1000 * 250)  // PA, Super high end equipment.

//Specific items for specific price weighting.
//i.e. if such and such should be as expensive as a stimpak.
#define PRICE_STIMPAK          (50 * 250)  // Normal craftable Stimpak
#define PRICE_SUPER_STIM       (100 * 250) // Super Stimpak
