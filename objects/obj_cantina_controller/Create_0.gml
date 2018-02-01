/// @description Populate person cards
// Init packages
person = [];

//Important C variables: C.maleNames : C.femaleNames;

personNames = C.maleNames;

for (var j = 100; j<array_length_1d(C.maleNames)+array_length_1d(C.femaleNames); j++) {
	personNames[j] = C.femaleNames[j-100]
}

for (var i=0; i < 4; i++) {

	person[i] = instance_create_depth(-154+room_width*(i+1)*1.25/5,room_height*1/4,depth,obj_card);

	with person[i] {
		
		maleSprites = spr_portraitMale;
		femaleSprites = spr_portraitFemale;
		var n = irandom_range(0, array_length_1d(obj_cantina_controller.personNames)-1);
		name = obj_cantina_controller.personNames[n];
		
		if n < 100 {sex = "Male"; spr = maleSprites;}
		else {sex = "Female"; spr = femaleSprites;}
		image_index = irandom_range(0, sprite_get_number(spr));
		
		birthplace = C.birthplaces[irandom_range(0,1)];
		affiliation = C.affiliations[irandom_range(0,1)];
		special = C.specializations[irandom_range(0,array_length_1d(C.specializations)-1)];
		perk = C.perkNames[irandom_range(0,array_length_1d(C.perkNames)-1)];
		fault = C.faultNames[irandom_range(0,array_length_1d(C.faultNames)-1)];
		}
		
				//Take into consideration any doubles
	if i>0  {
		var c = obj_cantina_controller;
		while c.person[i].name == c.person[i-1].name {
			n = irandom_range(0, array_length_1d(c.personNames)-1);
			name = c.personNames[n];
		}
		while (c.person[i].image_index == c.person[i-1].image_index) and (c.person[i].sex == c.person[i-1].sex) {
			c.person[i].image_index = irandom_range(0, sprite_get_number(c.person[i].spr));
		}
		
		
	}
	
}

//Helpful Data

moneyStart = ITEMS[? "money"];

tb = instance_create_depth(32,room_height-128,depth,obj_textbox);
with tb {
	ctb_add_text("Welcome to the Cantina!");
	str = "";
}