scenario = "EEGetMouvement";
response_matching = simple_matching;
default_background_color = 255,255,255;
active_buttons =19;
button_codes = 1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19;

pulse_out = false;
pulse_value = 5;
pulse_width = 20; # if using parallel port


#-----------------Définition des variables--------------------------------------
begin;
#-----------------Chargement des sons--------------------------------

sound { wavefile { filename = "1000ms/audioMosquito24_0.wav";};} sCalib;

sound { wavefile { filename = "1000ms/audioMosquito0_m50.wav";};} stimPos;
sound { wavefile { filename = "1000ms/audioMosquito0_1.wav";};} stimNeg;

sound { wavefile { filename = "1000ms/audioMosquito0_m50.wav";};} stimPosGauche;
sound { wavefile { filename = "1000ms/audioMosquito0_1.wav";};} stimNegGauche;
sound { wavefile { filename = "1000ms/audioMosquito0_50.wav";};} stimPosDroite;
sound { wavefile { filename = "1000ms/audioMosquito0_m1.wav";};} stimNegDroite;
array{
sound { wavefile { filename = "1000ms/audioMosquito0_m5.wav";};} sound0_m5;
sound { wavefile { filename = "1000ms/audioMosquito3_m4.wav";};} sound3_m4;
sound { wavefile { filename = "1000ms/audioMosquito4_m2.wav";};} sound4_m2;
sound { wavefile { filename = "1000ms/audioMosquito5_0.wav";};} sound5_0;
sound { wavefile { filename = "1000ms/audioMosquito4_2.wav";};} sound4_2;
sound { wavefile { filename = "1000ms/audioMosquito3_4.wav";};} sound3_4;
sound { wavefile { filename = "1000ms/audioMosquito0_5.wav";};} sound0_5;
sound { wavefile { filename = "1000ms/audioMosquito0_m8.wav";};} sound0_m8;
sound { wavefile { filename = "1000ms/audioMosquito4_m7.wav";};} sound4_m7;
sound { wavefile { filename = "1000ms/audioMosquito7_m4.wav";};} sound7_m4;
sound { wavefile { filename = "1000ms/audioMosquito8_0.wav";};} sound8_0;
sound { wavefile { filename = "1000ms/audioMosquito7_4.wav";};} sound7_4;
sound { wavefile { filename = "1000ms/audioMosquito4_7.wav";};} sound4_7;
sound { wavefile { filename = "1000ms/audioMosquito0_8.wav";};} sound0_8;
sound { wavefile { filename = "1000ms/audioMosquito0_m14.wav";};} sound0_m14;
sound { wavefile { filename = "1000ms/audioMosquito7_m12.wav";};} sound7_m12;
sound { wavefile { filename = "1000ms/audioMosquito12_m7.wav";};} sound12_m7;
sound { wavefile { filename = "1000ms/audioMosquito14_0.wav";};} sound14_0;
sound { wavefile { filename = "1000ms/audioMosquito12_7.wav";};} sound12_7;
sound { wavefile { filename = "1000ms/audioMosquito7_12.wav";};} sound7_12;
sound { wavefile { filename = "1000ms/audioMosquito0_14.wav";};} sound0_14;
sound { wavefile { filename = "1000ms/audioMosquito0_m24.wav";};} sound0_m24;
sound { wavefile { filename = "1000ms/audioMosquito12_m21.wav";};} sound12_m21;
sound { wavefile { filename = "1000ms/audioMosquito21_m12.wav";};} sound21_m12;
sound { wavefile { filename = "1000ms/audioMosquito24_0.wav";};} sound24_0;
sound { wavefile { filename = "1000ms/audioMosquito21_12.wav";};} sound21_12;
sound { wavefile { filename = "1000ms/audioMosquito12_21.wav";};} sound12_21;
sound { wavefile { filename = "1000ms/audioMosquito0_24.wav";};} sound0_24;
sound { wavefile { filename = "1000ms/audioMosquito0_m41.wav";};} sound0_m41;
sound { wavefile { filename = "1000ms/audioMosquito21_m36.wav";};} sound21_m36;
sound { wavefile { filename = "1000ms/audioMosquito36_m20.wav";};} sound36_m20;
sound { wavefile { filename = "1000ms/audioMosquito41_0.wav";};} sound41_0;
sound { wavefile { filename = "1000ms/audioMosquito36_20.wav";};} sound36_20;
sound { wavefile { filename = "1000ms/audioMosquito21_36.wav";};} sound21_36;
sound { wavefile { filename = "1000ms/audioMosquito0_41.wav";};} sound0_41;
}sounds;
picture {box { height = 100; width = 100; color = 255,0,0; };x=0;y=0;}red;
picture {box { height = 100; width = 100; color = 0,255,0; };x=0;y=0;}green;
box { height = 1080; width = 1920; color = 255,0,0; }redbox;
box { height = 1080; width = 1920; color = 0,255,0; }greenbox;
box { height = 1080; width = 1920; color = 0,0,0; }blackbox;


picture{	
	display_index = 1;
	bitmap { 
		filename = "Preparation/Preparation1.png";
	}bp;
	x = 0 ; y = -300;
}picQuestion;

text {
	caption = "A quel point cette trajéctoire a été désagréable?\n 1 : Pas désagréable du tout - 9 : Très désagréable";
	font_size = 40;
	font_color = 0,0,0;
	text_align = align_center;
}ecranAnxiete;
picture {
    bitmap bp;
    x = 0; y = -300;
} default;

text {
	caption = "Voici les informations de la trajectoire suivante :";
	font_size = 40;
	font_color = 0,0,0;
	text_align = align_center;
} textPreTraj1;

text {
	caption = "Elle sera courte";
	font_size = 40;
	font_color = 0,0,0;
	text_align = align_center;
} textPreTrajLongueur;

text {
	caption = "Elle aura x% de chances de finir par vous piquer";
	font_size = 40;
	font_color = 0,0,0;
	text_align = align_center;
} textPreTrajObjectif;

#---------------Trials-------------
#Trials d'initialisation
trial{
	stimulus_event{
		picture{
			text{
				caption = "Choisissez la position cible :\n 1 : Gauche \n 2 : Droite";
				font_color = 0,0,0;
				font_size = 40;
			};
			x = 0 ; y = 0 ;
		};
		response_active = true;
		duration = response;
		deltat = 10;
	};
}trialInit;
trial{
	stimulus_event{
		picture{
			text{
				caption = "Quel est la main dominante du sujet :\n 1 : Gauche \n 2 : Droite";
				font_color = 0,0,0;
				font_size = 40;
			};
			x = 0 ; y = 0 ;
		};
		response_active = true;
		duration = response;
		deltat = 10;
	};
}trialMain;

#Trial d'explication de l'expérience
trial{
	picture{	bitmap { filename = "Preparation/Preparation1.png";};x = 0 ; y = 0;};
	time = 0;	
	duration = response;
	
	picture{bitmap { filename = "Preparation/InfoTraj.png";};x = 0 ; y = 0;};
	deltat = 0;
	duration = response;
	
	picture{bitmap { filename = "Preparation/InfoTraj2.png";};x = 0 ; y = 0;};
	deltat = 0;
	duration = response;
	
	picture{bitmap { filename = "Preparation/InstructionQuestion.png";};x = 0 ; y = 0;};
	deltat = 0;
	duration = response;
	
	picture{bitmap { filename = "Preparation/FinPreparation.png";};x = 0 ; y = 0;};
	deltat = 0;
	duration = response;
	
}trialPreparation;

#Trial calibration
trial {
	stimulus_event{
		picture{
			bitmap { filename = "Preparation/EssaiTest.png";};
			x = 0; y = 0;
		};
		
		duration = 1500;
		time = 0;
	};
}trialCalibration;
#Trials de calibration de niveaux de son
trial{
	stimulus_event{
		picture{
			text{
				caption = "Nous allons calibrer l'experience en fonction de vos capacitées auditives\nConcentrez vous sur ce que vous entendez et suivez les instructions\nAppuyez sur [Entrée] pour commencer la calibration";
				font_color = 0,0,0;
				font_size = 40;
			}te;
			x = 0 ; y = 0 ;
		};
		response_active = true;
		duration = response;
		deltat = 10;
	};
}trialDebCalib;
trial{
	stimulus_event{
		picture{
			text{
				caption = "Appuyez sur [Entrée] pour passer à la suite";
				font_color = 0,0,0;
				font_size = 40;
			}tPrep;
			x = 0 ; y = 0 ;
		};
		response_active = true;
		duration = response;
		deltat = 10;
	};
}trialPrep;
trial{
	sound sCalib;
	time = 0;
	duration = 1000;
	picture{
		text{
			caption = "Appuyez sur [Entrée] dès que vous entendez un son";
			font_color = 0,0,0;
			font_size = 40;
		}t;
		x = 0; y = 0;
	};
	deltat=0;
}
trialCalib;

#Trial de debut de trajectoire
trial{
	picture{
		text textPreTraj1;
		x = 0 ; y = 100;
		text textPreTrajLongueur;
		x = 0 ; y = 0;
		bitmap{
			filename = "V70.png";
		}bpIncert;
		x = 0; y = -200;
		#text textPreTrajObjectif;
		#x = 0 ; y = -100;
	}tp;
	time = 0 ;
	duration = 2000;
}trialPreparationTrajectoire;

trial{
	stimulus_event{
		picture{
			text{
				caption = "Début de la trajectoire";
				font_color = 0,0,0;
				font_size = 40;
			};
			x = 0 ; y = 0 ;
		};
		duration = 1000;
	};
}trialDebutTrajectoire;

# Trial presentant un son de moustique
trial{
	picture picQuestion;
	code = "picQ";
	time = 0;
	duration = 500;
	
	stimulus_event{
		sound sound36_20;
		time = 500;
		duration = 1000;
	}s1;
	stimulus_event{
		picture{
			bitmap { filename = "moustique.jpg";};x = 0 ; y = 0;
			bitmap bp; x = 0 ; y = -300;
		};
		code = "picM";
		time = 500;
		duration = 1000;		
	};
}trialSon;

#Trial de pause entre sons
trial{
	picture picQuestion;
	stimulus_event{
		picture{
			text{
				caption = "";
				font_color = 0,0,0;
				font_size = 40;
			};
			x = 0 ; y = 0 ;
		};
		duration = 500;
	};
}trialPause;

#Trial posant la question lié au risque de piqûre
trial{
	picture picQuestion;
	duration = 500;
}trialQuestion;

#Trial portant le stimulus final (a modifier avec le stimulateur)
trial{
	picture {
         box blackbox;
			x = 0 ; y = 0 ;
   } pic2;    		
	stimulus_event{
		picture{
			text{
				caption = "Fin de trajectoires";
				font_color = 0,0,0;
				font_size = 40;
			}tF;
			x = 0 ; y = 0 ;
		};
		time=0;
		duration = 1000;
	}seFinal;
}trialStimulusFinal;

trial{
	picture {
         box blackbox;
			x = 0 ; y = 0 ;
   } picPiqure;    		
	stimulus_event{
		nothing{};
		port_code = 1;
		port = 1;
		time = 0;
		code = "stim 1";
	}sePiqure;
}trialPiqure;

trial{
	stimulus_event{
		picture {
			text ecranAnxiete;
			x = 0 ; y = 0 ;
		}pictureAnxiete;
		time = 0;
		response_active = true;
		duration = response;
	}seAnxiete;
}trialAnxiete;
#Trial de fin de trajectoire
trial{
	stimulus_event{
		picture{
			text{
				caption = "Fin de trajectoires";
				font_color = 0,0,0;
				font_size = 40;
			};
			x = 0 ; y = 0 ;
		};
		duration = 1000;
	};
}trialFinTrajectoire;

begin_pcl;

output_file ofile1 = new output_file;
string nameFile = logfile.subject()+"ReponseStimuli";
string nameFileTest = nameFile;
int cptname = 1;
loop until !file_exists(logfile_directory +nameFileTest+".txt") begin
	nameFileTest = nameFile+string(cptname);
	cptname=cptname+1;
end;
ofile1.open(nameFileTest+".txt" , true );

set_system_volume(1,1);
int count = response_manager.total_response_count( 12 );
bool preparation = false; 
bool essaiT = false;
bool presentation = false; 

#Calibration du niveau de son
if(preparation) then
	output_file ofileCalib = new output_file;
	ofileCalib.open("Calib"+ logfile.subject()+"ApprocheReponseStimuli.txt", true );

	trialDebCalib.present();
	sCalib.set_attenuation(0.5);
	double deltaAtt = 0.025;
	double att = 0.7;
	double attFinale = 0;
	int nombreRepetCalib = 3;
	int rep = 0;
	loop until rep == nombreRepetCalib
	begin
		att = 0.5;
		count = response_manager.total_response_count( 12 );
		#Produit un son de moustique de moins en moins atténué jusqu'a ce que l'utilisateur appuie sur Entree lorsqu'il entend le son
		loop bool endL = false until endL == true 
		begin
			att = att-deltaAtt;
			sCalib.set_attenuation(att);
			t.set_caption("Phase ascendante\nAppuyez sur [Entrée] dès que vous entendez un son",true);
			trialCalib.present();
			if(att <= 0 || count != response_manager.total_response_count( 12 ))then
				endL = true;
			end;
		end;
		double attApparition = att;
		attFinale = attFinale+att;
		ofileCalib.print("AttenuationApparition "+string(att)+"\n");
		trialPrep.present();
		#Produit un son de moustique de plus en plus atténué jusqu'à ce que l'utilisateur appuie sur Entree lorsqu'il entend le son
		sCalib.set_attenuation(0);
		att = 0;
		count = response_manager.total_response_count( 12 );
		loop bool endL = false until endL == true 
		begin
			att = att+deltaAtt;
			sCalib.set_attenuation(att);
			t.set_caption("Phase descendante\nAppuyez sur [Entrée] dès que vous n'entendez plus le son",true);
			trialCalib.present();
			if(att == 1 || count != response_manager.total_response_count( 12 ))then
				endL = true;
			end;
		end;
		double attDisparition = att;
		attFinale = attFinale+att;
		ofileCalib.print("AttenuationDisparition "+string(att)+"\n");
		trialPrep.present();
		rep = rep+1;
	end;
	#Rep


	attFinale = attFinale/((rep)*2);
	#Calcul atténuation finale
	#L'atténuation déterminé est la moyenne des deux attenuations détérminé par l'appuie de la touche [Entrée] par l'utilisateur auquel on soustrait 0.2
	ofileCalib.print("AttenuationFinale "+string(attFinale));
	deltaAtt = 0.3;
	attFinale = attFinale-deltaAtt;
	if((attFinale <=0))then
		attFinale = 0;
	end;
		
	loop int s = 1 until s > sounds.count()
	begin
		sounds[s].set_attenuation(attFinale);
		s=s+1;
	end;

	#te.set_caption(string(att)+"\nAppuyez sur [Entrée]",true);
	#trialDebCalib.present();
else 
	loop int s = 1 until s > sounds.count()
	begin
		sounds[s].set_attenuation(0);
		s=s+1;
	end;
end;


array <int> positions[35][2] = {{0,-5},{3,-4},{4,-2},{5,0},{4,2},{3,4},{0,5},{0,-8},{4,-7},{7,-4},{8,0},{7,4},{4,7},{0,8},{0,-14},{7,-12},{12,-7},{14,0},{12,7},{7,12},{0,14},{0,-24},{12,-21},{21,-12},{24,0},{21,12},{12,21},{0,24},{0,-41},{21,-36},{36,-20},{41,0},{36,20},{21,36},{0,41}};

array <int> trajectoiresN[80][12] ={{25,18,25,26,19,27,34,26,32,24,30,29},{25,33,26,34,27,34,35,28,20,14,7,-1},{25,17,25,26,34,27,35,28,20,13,6,-1},{25,33,26,32,31,23,29,-1,-1,-1,-1,-1},{25,32,24,23,30,31,25,26,32,24,23,29},{25,18,17,23,22,29,30,-1,-1,-1,-1,-1},{25,18,12,18,17,23,30,-1,-1,-1,-1,-1},{25,17,18,11,17,11,12,6,-1,-1,-1,-1},{25,31,24,16,23,15,22,16,24,18,19,13},{25,19,25,18,17,23,31,32,26,19,13,7},{25,17,18,12,19,27,26,18,11,19,12,6},{25,26,32,24,18,19,12,6,-1,-1,-1,-1},{25,18,19,25,24,32,24,32,26,19,13,7},{25,32,26,27,19,20,13,7,-1,-1,-1,-1},{25,31,32,31,32,24,25,31,32,24,23,29},{25,33,34,33,26,27,33,34,28,21,20,12},{25,17,24,32,26,33,25,24,18,12,6,-1},{25,26,34,28,27,20,14,13,19,18,24,30},{25,26,32,33,27,28,20,13,7,-1,-1,-1},{25,32,25,31,25,19,13,7,-1,-1,-1,-1},{25,31,32,31,25,26,20,13,19,12,13,6},{25,18,19,18,24,23,29,-1,-1,-1,-1,-1},{25,18,19,25,26,18,12,6,-1,-1,-1,-1},{25,18,10,17,23,31,30,-1,-1,-1,-1,-1},{25,18,10,18,10,16,23,22,29,-1,-1,-1},{25,33,26,33,25,33,25,31,24,31,30,-1},{25,24,25,19,18,24,30,-1,-1,-1,-1,-1},{25,26,33,32,26,33,25,31,30,-1,-1,-1},{25,24,18,17,25,18,19,26,32,25,19,13},{25,31,25,26,18,19,13,6,-1,-1,-1,-1},{25,33,34,26,34,27,19,18,12,18,12,6},{25,32,26,27,26,33,34,26,25,19,13,7},{25,18,12,20,14,7,13,12,18,17,23,29},{25,18,12,4,10,18,24,31,24,23,31,30},{25,31,24,32,31,23,29,-1,-1,-1,-1,-1},{25,17,11,19,25,24,30,-1,-1,-1,-1,-1},{25,26,19,25,17,25,19,13,7,-1,-1,-1},{25,31,24,16,17,11,3,9,16,22,29,-1},{25,32,33,25,32,25,31,23,30,-1,-1,-1},{25,24,16,15,9,1,2,10,16,23,29,-1},{25,24,31,25,19,13,7,-1,-1,-1,-1,-1},{25,17,18,24,18,25,17,23,29,-1,-1,-1},{25,32,25,33,25,32,26,25,19,25,24,30},{25,31,25,33,26,18,24,30,-1,-1,-1,-1},{25,32,25,19,12,18,17,23,29,-1,-1,-1},{25,17,11,4,3,10,16,17,24,30,-1,-1},{25,17,24,23,30,24,23,17,18,12,6,-1},{25,24,32,25,26,18,24,30,-1,-1,-1,-1},{25,24,25,18,12,19,20,19,20,13,7,-1},{25,32,25,31,25,19,13,7,-1,-1,-1,-1},{25,33,27,20,12,6,14,7,6,7,13,7},{25,26,32,25,33,27,19,25,24,30,29,-1},{25,17,23,24,17,23,29,-1,-1,-1,-1,-1},{25,24,25,32,24,31,30,-1,-1,-1,-1,-1},{25,32,26,32,24,30,31,24,30,-1,-1,-1},{25,26,25,26,34,27,26,32,33,26,20,13},{25,24,31,32,31,23,17,24,16,9,16,22},{25,17,16,10,17,16,9,17,11,19,13,7},{25,32,25,19,26,20,12,20,12,11,5,6},{25,17,24,23,17,18,12,6,-1,-1,-1,-1},{25,19,25,32,33,27,19,26,18,11,17,23},{25,26,33,32,25,26,20,13,7,-1,-1,-1},{25,17,11,19,25,19,11,12,20,14,7,-1},{25,17,10,2,3,11,5,6,-1,-1,-1,-1},{25,32,24,23,31,25,19,13,7,-1,-1,-1},{25,18,25,19,18,24,30,-1,-1,-1,-1,-1},{25,17,18,10,16,17,23,30,-1,-1,-1,-1},{25,26,32,31,25,19,13,7,-1,-1,-1,-1},{25,18,24,31,25,24,17,24,25,19,13,7},{25,17,10,17,16,23,29,-1,-1,-1,-1,-1},{25,19,11,17,25,18,24,18,19,13,7,-1},{25,24,18,26,25,19,26,18,24,25,18,12},{25,17,25,31,32,24,18,24,30,-1,-1,-1},{25,26,18,26,33,25,19,12,6,-1,-1,-1},{25,17,10,9,1,2,10,4,5,13,7,-1},{25,24,16,10,11,18,11,12,20,13,7,-1},{25,32,33,25,24,25,18,10,3,9,17,24},{25,24,16,15,8,15,23,29,-1,-1,-1,-1},{25,24,30,22,29,30,24,25,31,32,24,30},{25,24,30,23,15,16,22,23,29,-1,-1,-1}};
array <int> trajectoiresInv[80][12] ={{25,18,25,24,17,23,30,24,32,26,34,35},{25,31,24,30,23,30,29,22,16,8,1,-1},{25,19,25,24,30,23,29,22,16,9,2,-1},{25,31,24,32,33,27,35,-1,-1,-1,-1,-1},{25,32,26,27,34,33,25,24,32,26,27,35},{25,18,19,27,28,35,34,-1,-1,-1,-1,-1},{25,18,10,18,19,27,34,-1,-1,-1,-1,-1},{25,19,18,11,19,11,10,2,-1,-1,-1,-1},{25,33,26,20,27,21,28,20,26,18,17,9},{25,17,25,18,19,27,33,32,24,17,9,1},{25,19,18,10,17,23,24,18,11,17,10,2},{25,24,32,26,18,17,10,2,-1,-1,-1,-1},{25,18,17,25,26,32,26,32,24,17,9,1},{25,32,24,23,17,16,9,1,-1,-1,-1,-1},{25,33,32,33,32,26,25,33,32,26,27,35},{25,31,30,31,24,23,31,30,22,15,16,10},{25,19,26,32,24,31,25,26,18,10,2,-1},{25,24,30,22,23,16,8,9,17,18,26,34},{25,24,32,31,23,22,16,9,1,-1,-1,-1},{25,32,25,33,25,17,9,1,-1,-1,-1,-1},{25,33,32,33,25,24,16,9,17,10,9,2},{25,18,17,18,26,27,35,-1,-1,-1,-1,-1},{25,18,17,25,24,18,10,2,-1,-1,-1,-1},{25,18,12,19,27,33,34,-1,-1,-1,-1,-1},{25,18,12,18,12,20,27,28,35,-1,-1,-1},{25,31,24,31,25,31,25,33,26,33,34,-1},{25,26,25,17,18,26,34,-1,-1,-1,-1,-1},{25,24,31,32,24,31,25,33,34,-1,-1,-1},{25,26,18,19,25,18,17,24,32,25,17,9},{25,33,25,24,18,17,9,2,-1,-1,-1,-1},{25,31,30,24,30,23,17,18,10,18,10,2},{25,32,24,23,24,31,30,24,25,17,9,1},{25,18,10,16,8,1,9,10,18,19,27,35},{25,18,10,4,12,18,26,33,26,27,33,34},{25,33,26,32,33,27,35,-1,-1,-1,-1,-1},{25,19,11,17,25,26,34,-1,-1,-1,-1,-1},{25,24,17,25,19,25,17,9,1,-1,-1,-1},{25,33,26,20,19,11,5,13,20,28,35,-1},{25,32,31,25,32,25,33,27,34,-1,-1,-1},{25,26,20,21,13,7,6,12,20,27,35,-1},{25,26,33,25,17,9,1,-1,-1,-1,-1,-1},{25,19,18,26,18,25,19,27,35,-1,-1,-1},{25,32,25,31,25,32,24,25,17,25,26,34},{25,33,25,31,24,18,26,34,-1,-1,-1,-1},{25,32,25,17,10,18,19,27,35,-1,-1,-1},{25,19,11,4,5,12,20,19,26,34,-1,-1},{25,19,26,27,34,26,27,19,18,10,2,-1},{25,26,32,25,24,18,26,34,-1,-1,-1,-1},{25,26,25,18,10,17,16,17,16,9,1,-1},{25,32,25,33,25,17,9,1,-1,-1,-1,-1},{25,31,23,16,10,2,8,1,2,1,9,1},{25,24,32,25,31,23,17,25,26,34,35,-1},{25,19,27,26,19,27,35,-1,-1,-1,-1,-1},{25,26,25,32,26,33,34,-1,-1,-1,-1,-1},{25,32,24,32,26,34,33,26,34,-1,-1,-1},{25,24,25,24,30,23,24,32,31,24,16,9},{25,26,33,32,33,27,19,26,20,13,20,28},{25,19,20,12,19,20,13,19,11,17,9,1},{25,32,25,17,24,16,10,16,10,11,3,2},{25,19,26,27,19,18,10,2,-1,-1,-1,-1},{25,17,25,32,31,23,17,24,18,11,19,27},{25,24,31,32,25,24,16,9,1,-1,-1,-1},{25,19,11,17,25,17,11,10,16,8,1,-1},{25,19,12,6,5,11,3,2,-1,-1,-1,-1},{25,32,26,27,33,25,17,9,1,-1,-1,-1},{25,18,25,17,18,26,34,-1,-1,-1,-1,-1},{25,19,18,12,20,19,27,34,-1,-1,-1,-1},{25,24,32,33,25,17,9,1,-1,-1,-1,-1},{25,18,26,33,25,26,19,26,25,17,9,1},{25,19,12,19,20,27,35,-1,-1,-1,-1,-1},{25,17,11,19,25,18,26,18,17,9,1,-1},{25,26,18,24,25,17,24,18,26,25,18,10},{25,19,25,33,32,26,18,26,34,-1,-1,-1},{25,24,18,24,31,25,17,10,2,-1,-1,-1},{25,19,12,13,7,6,12,4,3,9,1,-1},{25,26,20,12,11,18,11,10,16,9,1,-1},{25,32,31,25,26,25,18,12,5,13,19,26},{25,26,20,21,14,21,27,35,-1,-1,-1,-1},{25,26,34,28,35,34,26,25,33,32,26,34},{25,26,34,27,21,20,28,27,35,-1,-1,-1}};
array <int> mouvementsN[80][11] ={{2,8,4,2,7,8,3,9,3,9,6},{7,2,7,2,8,4,2,3,1,2,-1},{3,7,4,7,2,7,2,3,2,2,-1},{7,2,9,6,3,9,-1,-1,-1,-1,-1},{8,3,6,8,4,1,4,9,3,6,9},{2,6,9,6,8,4,-1,-1,-1,-1,-1},{2,1,9,6,9,8,-1,-1,-1,-1,-1},{3,4,2,9,1,4,1,-1,-1,-1,-1},{9,2,3,8,3,8,1,7,1,4,1},{1,9,2,6,9,7,4,1,2,1,1},{3,4,1,8,7,6,3,2,7,2,1},{4,9,3,1,4,2,1,-1,-1,-1,-1},{2,4,9,6,7,3,7,1,2,1,1},{8,1,4,3,4,2,1,-1,-1,-1,-1},{9,4,6,4,3,4,9,4,3,6,9},{7,4,6,2,4,9,4,1,2,6,3},{3,8,7,1,8,3,6,1,1,1,-1},{4,7,1,6,2,1,6,9,6,9,9},{4,9,4,1,4,3,2,1,-1,-1,-1},{8,2,9,1,1,1,1,-1,-1,-1,-1},{9,4,6,1,4,1,2,9,2,4,2},{2,4,6,9,6,9,-1,-1,-1,-1,-1},{2,4,9,4,3,1,1,-1,-1,-1,-1},{2,3,8,9,7,6,-1,-1,-1,-1,-1},{2,3,7,3,9,8,6,8,-1,-1,-1},{7,2,8,3,7,3,9,2,8,6,-1},{6,4,1,6,9,9,-1,-1,-1,-1,-1},{4,8,6,1,8,3,9,6,-1,-1,-1},{6,1,6,7,2,4,8,9,2,1,1},{9,1,4,3,4,1,2,-1,-1,-1,-1},{7,4,3,7,2,3,6,1,9,1,1},{8,1,4,6,8,4,3,6,1,1,1},{2,1,7,1,2,9,6,9,6,9,9},{2,1,3,9,7,9,8,2,6,7,6},{9,2,7,6,3,9,-1,-1,-1,-1,-1},{3,1,7,9,6,9,-1,-1,-1,-1,-1},{4,2,9,3,7,1,1,1,-1,-1,-1},{9,2,3,4,1,3,9,8,9,8,-1},{8,4,3,8,2,9,3,8,-1,-1,-1},{6,3,6,1,3,4,7,9,8,9,-1},{6,8,1,1,1,1,-1,-1,-1,-1,-1},{3,4,9,1,8,3,9,9,-1,-1,-1},{8,2,7,3,8,1,6,1,9,6,9},{9,1,7,2,3,9,9,-1,-1,-1,-1},{8,2,1,2,9,6,9,9,-1,-1,-1},{3,1,2,6,8,9,4,8,9,-1,-1},{3,8,6,8,1,6,1,4,1,1,-1},{6,7,2,4,3,9,9,-1,-1,-1,-1},{6,4,2,1,8,4,6,4,2,1,-1},{8,2,9,1,1,1,1,-1,-1,-1,-1},{7,1,2,3,1,7,2,6,4,9,1},{4,9,2,7,1,3,9,6,9,6,-1},{3,9,4,2,9,9,-1,-1,-1,-1,-1},{6,4,8,3,8,6,-1,-1,-1,-1,-1},{8,1,9,3,9,4,2,9,-1,-1,-1},{4,6,4,7,2,6,9,4,2,1,2},{6,8,4,6,3,1,8,3,2,8,9},{3,6,1,8,6,2,7,1,7,1,1},{8,2,1,8,1,3,7,3,6,1,4},{3,8,6,1,4,1,1,-1,-1,-1,-1},{1,9,8,4,1,3,8,3,2,9,9},{4,8,6,2,4,1,2,1,-1,-1,-1},{3,1,7,9,1,3,4,7,1,2,-1},{3,2,3,4,7,1,4,-1,-1,-1,-1},{8,3,6,7,1,1,1,1,-1,-1,-1},{2,8,1,6,9,9,-1,-1,-1,-1,-1},{3,4,3,9,4,9,8,-1,-1,-1,-1},{4,9,6,1,1,1,1,-1,-1,-1,-1},{2,9,8,1,6,2,8,4,1,1,1},{3,2,8,6,8,9,-1,-1,-1,-1,-1},{1,3,9,7,2,9,1,4,1,1,-1},{6,1,7,6,1,8,3,9,4,2,1},{3,7,9,4,3,1,9,9,-1,-1,-1},{4,3,7,8,3,1,2,1,-1,-1,-1},{3,2,6,3,4,7,1,4,7,1,-1},{6,3,1,4,8,2,4,7,2,1,-1},{8,4,3,6,4,2,3,2,9,7,8},{6,3,6,2,8,7,9,-1,-1,-1,-1},{6,9,3,8,4,1,4,9,4,3,9},{6,9,2,3,4,9,4,9,-1,-1,-1}};
array <int> mouvementsInv[80][11] ={{2,8,6,2,9,8,1,7,1,7,4},{9,2,9,2,8,6,2,1,3,2,-1},{1,9,6,9,2,9,2,1,2,2,-1},{9,2,7,4,1,7,-1,-1,-1,-1,-1},{8,1,4,8,6,3,6,7,1,4,7},{2,4,7,4,8,6,-1,-1,-1,-1,-1},{2,3,7,4,7,8,-1,-1,-1,-1,-1},{1,6,2,7,3,6,3,-1,-1,-1,-1},{7,2,1,8,1,8,3,9,3,6,3},{3,7,2,4,7,9,6,3,2,3,3},{1,6,3,8,9,4,1,2,9,2,3},{6,7,1,3,6,2,3,-1,-1,-1,-1},{2,6,7,4,9,1,9,3,2,3,3},{8,3,6,1,6,2,3,-1,-1,-1,-1},{7,6,4,6,1,6,7,6,1,4,7},{9,6,4,2,6,7,6,3,2,4,1},{1,8,9,3,8,1,4,3,3,3,-1},{6,9,3,4,2,3,4,7,4,7,7},{6,7,6,3,6,1,2,3,-1,-1,-1},{8,2,7,3,3,3,3,-1,-1,-1,-1},{7,6,4,3,6,3,2,7,2,6,2},{2,6,4,7,4,7,-1,-1,-1,-1,-1},{2,6,7,6,1,3,3,-1,-1,-1,-1},{2,1,8,7,9,4,-1,-1,-1,-1,-1},{2,1,9,1,7,8,4,8,-1,-1,-1},{9,2,8,1,9,1,7,2,8,4,-1},{4,6,3,4,7,7,-1,-1,-1,-1,-1},{6,8,4,3,8,1,7,4,-1,-1,-1},{4,3,4,9,2,6,8,7,2,3,3},{7,3,6,1,6,3,2,-1,-1,-1,-1},{9,6,1,9,2,1,4,3,7,3,3},{8,3,6,4,8,6,1,4,3,3,3},{2,3,9,3,2,7,4,7,4,7,7},{2,3,1,7,9,7,8,2,4,9,4},{7,2,9,4,1,7,-1,-1,-1,-1,-1},{1,3,9,7,4,7,-1,-1,-1,-1,-1},{6,2,7,1,9,3,3,3,-1,-1,-1},{7,2,1,6,3,1,7,8,7,8,-1},{8,6,1,8,2,7,1,8,-1,-1,-1},{4,1,4,3,1,6,9,7,8,7,-1},{4,8,3,3,3,3,-1,-1,-1,-1,-1},{1,6,7,3,8,1,7,7,-1,-1,-1},{8,2,9,1,8,3,4,3,7,4,7},{7,3,9,2,1,7,7,-1,-1,-1,-1},{8,2,3,2,7,4,7,7,-1,-1,-1},{1,3,2,4,8,7,6,8,7,-1,-1},{1,8,4,8,3,4,3,6,3,3,-1},{4,9,2,6,1,7,7,-1,-1,-1,-1},{4,6,2,3,8,6,4,6,2,3,-1},{8,2,7,3,3,3,3,-1,-1,-1,-1},{9,3,2,1,3,9,2,4,6,7,3},{6,7,2,9,3,1,7,4,7,4,-1},{1,7,6,2,7,7,-1,-1,-1,-1,-1},{4,6,8,1,8,4,-1,-1,-1,-1,-1},{8,3,7,1,7,6,2,7,-1,-1,-1},{6,4,6,9,2,4,7,6,2,3,2},{4,8,6,4,1,3,8,1,2,8,7},{1,4,3,8,4,2,9,3,9,3,3},{8,2,3,8,3,1,9,1,4,3,6},{1,8,4,3,6,3,3,-1,-1,-1,-1},{3,7,8,6,3,1,8,1,2,7,7},{6,8,4,2,6,3,2,3,-1,-1,-1},{1,3,9,7,3,1,6,9,3,2,-1},{1,2,1,6,9,3,6,-1,-1,-1,-1},{8,1,4,9,3,3,3,3,-1,-1,-1},{2,8,3,4,7,7,-1,-1,-1,-1,-1},{1,6,1,7,6,7,8,-1,-1,-1,-1},{6,7,4,3,3,3,3,-1,-1,-1,-1},{2,7,8,3,4,2,8,6,3,3,3},{1,2,8,4,8,7,-1,-1,-1,-1,-1},{3,1,7,9,2,7,3,6,3,3,-1},{4,3,9,4,3,8,1,7,6,2,3},{1,9,7,6,1,3,7,7,-1,-1,-1},{6,1,9,8,1,3,2,3,-1,-1,-1},{1,2,4,1,6,9,3,6,9,3,-1},{4,1,3,6,8,2,6,9,2,3,-1},{8,6,1,4,6,2,1,2,7,9,8},{4,1,4,2,8,9,7,-1,-1,-1,-1},{4,7,1,8,6,3,6,7,6,1,7},{4,7,2,1,6,7,6,7,-1,-1,-1}};
array <int> pourcent[80]={70,90,90,90,70,90,90,90,90,90,90,70,90,70,70,90,90,70,90,70,70,70,90,70,70,90,70,90,70,70,70,70,90,70,90,70,70,70,70,90,90,70,90,70,90,90,70,70,70,90,70,70,90,90,90,90,70,70,70,90,90,70,90,90,70,90,90,90,70,90,90,90,70,70,70,70,90,90,70,70};
array <bool> indic[80][2] ={{true,true},{false,true},{false,true},{true,true},{true,false},{true,true},{true,true},{false,true},{false,true},{false,true},{false,true},{false,true},{false,true},{false,true},{true,true},{false,true},{false,true},{true,true},{false,false},{false,true},{false,false},{true,false},{false,true},{true,true},{true,true},{true,true},{true,true},{true,true},{false,true},{false,true},{false,true},{false,true},{true,true},{true,true},{true,true},{true,true},{false,false},{true,true},{true,false},{true,false},{false,true},{true,false},{true,true},{true,false},{true,true},{true,true},{false,true},{true,true},{false,true},{false,false},{false,true},{true,true},{true,true},{true,true},{true,true},{false,true},{true,false},{false,false},{false,false},{false,true},{true,false},{false,true},{false,true},{false,true},{false,false},{true,true},{true,true},{false,true},{false,true},{true,true},{false,true},{false,true},{true,true},{false,false},{false,true},{false,true},{true,true},{true,true},{true,true},{true,true}};

array <string> conversionMvmIntStr[9] = {"Approche Gauche","Approche","Approche Droite","Gauche","Neutre","Droite","Eloignement Gauche","Eloignement","Eloignement Droite"};
array <int> trajectoires[80][12] ={{25,18,12,11,4,12,18,24,30,-1,-1,-1},{25,17,11,4,12,19,11,5,4,12,6,-1},{25,33,32,33,25,24,30,22,29,-1,-1,-1},{25,33,27,33,25,19,25,18,24,30,-1,-1},{25,33,25,33,26,32,24,30,24,18,12,6},{25,33,34,26,25,26,19,13,6,-1,-1,-1},{25,32,25,19,11,17,24,30,29,-1,-1,-1},{25,24,18,25,26,19,26,25,18,12,6,-1},{25,19,26,34,33,25,31,24,30,-1,-1,-1},{25,31,23,16,24,17,11,12,6,-1,-1,-1},{25,24,16,23,22,15,9,15,23,30,-1,-1},{25,24,18,25,24,30,31,25,19,13,7,-1},{25,18,26,25,26,25,17,24,30,24,23,29},{25,26,25,18,19,18,24,31,23,29,-1,-1},{25,18,17,25,17,16,23,31,30,29,-1,-1},{25,31,24,18,19,13,7,-1,-1,-1,-1,-1},{25,32,31,32,25,26,18,19,12,6,-1,-1},{25,32,26,18,19,12,6,-1,-1,-1,-1,-1},{25,33,34,26,33,26,20,13,7,-1,-1,-1},{25,19,26,34,35,34,26,25,31,30,-1,-1},{25,32,33,32,33,25,18,12,5,6,-1,-1},{25,31,32,26,19,13,7,-1,-1,-1,-1,-1},{25,19,18,25,26,34,33,25,31,30,29,-1},{25,19,25,32,25,19,13,7,-1,-1,-1,-1},{25,17,23,30,31,23,31,30,-1,-1,-1,-1},{25,18,19,11,17,18,12,6,-1,-1,-1,-1},{25,31,25,18,19,13,7,-1,-1,-1,-1,-1},{25,33,26,20,19,12,18,24,30,-1,-1,-1},{25,18,10,9,16,24,30,-1,-1,-1,-1,-1},{25,33,26,18,17,23,29,-1,-1,-1,-1,-1}};
array <int> mouvements[80][11] ={{2,1,6,2,7,9,9,9,-1,-1,-1},{3,1,2,7,8,3,1,6,7,1,-1},{7,6,4,3,6,9,3,8,-1,-1,-1},{7,1,9,3,1,9,2,9,9,-1,-1},{7,3,7,2,9,3,9,1,1,1,1},{7,4,3,6,4,2,1,2,-1,-1,-1},{8,2,1,3,9,8,9,6,-1,-1,-1},{6,1,8,4,2,8,6,2,1,1,-1},{1,8,7,6,3,9,2,9,-1,-1,-1},{9,3,2,7,2,1,4,1,-1,-1,-1},{6,3,8,6,2,1,9,7,8,-1,-1},{6,1,8,6,9,4,1,1,1,1,-1},{2,7,6,4,6,3,8,9,1,6,9},{4,6,2,4,6,9,8,3,9,-1,-1},{2,6,7,3,6,8,7,6,6,-1,-1},{9,2,1,4,1,1,-1,-1,-1,-1,-1},{8,6,4,2,4,3,4,2,1,-1,-1},{8,1,3,4,2,1,-1,-1,-1,-1,-1},{7,4,3,8,2,1,2,1,-1,-1,-1},{1,8,7,4,6,3,6,9,6,-1,-1},{8,4,6,4,3,2,1,2,4,-1,-1},{9,4,1,2,1,1,-1,-1,-1,-1,-1},{1,6,8,4,7,6,3,9,6,6,-1},{1,9,8,2,1,1,1,-1,-1,-1,-1},{3,9,8,4,3,7,6,-1,-1,-1,-1},{2,4,3,9,4,1,1,-1,-1,-1,-1},{9,1,2,4,1,1,-1,-1,-1,-1,-1},{7,2,1,6,2,9,9,9,-1,-1,-1},{2,3,6,8,7,9,-1,-1,-1,-1,-1},{7,2,3,6,9,9,-1,-1,-1,-1,-1}};



if (essaiT) then
	trialCalibration.present();
	loop int i = 1 until i > 5
	begin
		
		int countPos = response_manager.total_response_count( 10 );
		int countNeg = response_manager.total_response_count( 11 );
		int countn3 = response_manager.total_response_count( 13 );
		int countn2 = response_manager.total_response_count( 14 );
		int countn1 = response_manager.total_response_count( 15 );
		int countne = response_manager.total_response_count( 16 );
		int countp1 = response_manager.total_response_count( 17 );
		int countp2 = response_manager.total_response_count( 18 );
		int countp3 = response_manager.total_response_count( 19 );
		
		int cursorPos = 4;	
		int prevCursorPos = cursorPos;
		string cursorFName = "Question";
		bp.unload();
		bp.set_filename(cursorFName+string(cursorPos)+".jpg");
		bp.load();
		
		trialDebutTrajectoire.present();
		int valence = -1;
		int longueur = 0;
		bool v = indic[i][1];
		if(v == true) then
			valence = 1;
		else
			valence = 0;
		end;
		loop int k = 1 until k > trajectoires[i].count()
		begin
			k=k+1;
			longueur = k;
			if(k <= trajectoires[i].count())then
				if(trajectoires[i][k] == -1) then
					break;
				end;
			end;
		end;
		if(valence == 0)then
			pic2.set_part(1,redbox);
			picPiqure.set_part(1,redbox);
		else
			pic2.set_part(1,greenbox);		
			picPiqure.set_part(1,greenbox);
		end;
		
		#Trial de préparation a la trajectoire a suivre
		if(longueur < 10) then
			textPreTrajLongueur.set_caption("Elle sera courte",true);
		else
			textPreTrajLongueur.set_caption("Elle sera longue",true);
		end;
		string rrv="";
		bpIncert.unload();
		if(indic[i][2] == true) then
			if(valence == 0) then
				bpIncert.set_filename("R"+string(pourcent[i])+".png");
				rrv = "La trajectoire aura "+string(pourcent[i])+"% de chance de vous piquer";
			else
				bpIncert.set_filename("V"+string(pourcent[i])+".png");
				rrv = "La trajectoire aura "+string(pourcent[i])+"% de chance de ne pas vous piquer";
			end;
		else
			if(valence == 0) then
				bpIncert.set_filename("V"+string(pourcent[i])+".png");
				rrv = "La trajectoire aura "+string(pourcent[i])+"% de chance de ne pas vous piquer";
			else
				bpIncert.set_filename("R"+string(pourcent[i])+".png");
				rrv = "La trajectoire aura "+string(pourcent[i])+"% de chance de vous piquer";
			end;
		end;
		bpIncert.load();
		
		textPreTrajObjectif.set_caption(rrv,true);
		trialPreparationTrajectoire.present();
		int jend = -1;
		int positionx = 0;
		int positiony = 0;
		loop int j = 1 until j == trajectoires[i].count()
		begin
			if(response_manager.total_response_count( 11 ) > countNeg) then
				cursorPos = cursorPos+(response_manager.total_response_count( 11 ) - countNeg);
				countNeg = response_manager.total_response_count( 11 );
			end;
			if(response_manager.total_response_count( 10 ) > countPos) then
				cursorPos = cursorPos-(response_manager.total_response_count( 10 ) - countPos);
				countPos = response_manager.total_response_count( 10 );
			end;
			if(cursorPos < 1) then
				cursorPos = 1;
			end; 
			if (cursorPos > 7) then
				cursorPos = 7;
			end;
			if (countn3 != response_manager.total_response_count( 13 )) then
				countn3 = response_manager.total_response_count( 13 );
				cursorPos=1;
			end;
			if (countn2 != response_manager.total_response_count( 14 ))then
				countn2 = response_manager.total_response_count( 14 );
				cursorPos=2;
			end;
			if (countn1 != response_manager.total_response_count( 15 ))then
				countn1 = response_manager.total_response_count( 15 );
				cursorPos=3;
			end;
			if (countne != response_manager.total_response_count( 16 ))then
				countne = response_manager.total_response_count( 16 );
				cursorPos=4;
			end;
			if (countp1 != response_manager.total_response_count( 17 ))then
				countp1 = response_manager.total_response_count( 17 );
				cursorPos=5;
			end;
			if (countp2 != response_manager.total_response_count( 18 ))then
				countp2 = response_manager.total_response_count( 18 );
				cursorPos=6;
			end;
			if (countp3 != response_manager.total_response_count( 19 ))then
				countp3 = response_manager.total_response_count( 19 );
				cursorPos=7;
			end;
			if(prevCursorPos != cursorPos) then
				bp.unload();
				bp.set_filename(cursorFName+string(cursorPos)+".jpg");
				bp.load();
				prevCursorPos = cursorPos;
			end;
			
			if(trajectoires[i][j] != -1)then
				jend = trajectoires[i][j];
				positionx = positions[trajectoires[i][j]][1];
				positiony = positions[trajectoires[i][j]][2];
			end;
			
			sound sd1 = sounds[trajectoires[i][j]];
			s1.set_stimulus(sd1);
			trialSon.present();
			if(response_manager.total_response_count( 11 ) > countNeg) then
				cursorPos = cursorPos+(response_manager.total_response_count( 11 ) - countPos);
				countNeg = response_manager.total_response_count( 11 );
			end;
			if(response_manager.total_response_count( 10 ) > countPos) then
				cursorPos = cursorPos-(response_manager.total_response_count( 10 ) - countPos);
				countPos = response_manager.total_response_count( 10 );
			end;
			if(cursorPos < 1) then
				cursorPos = 1;
			end; 
			if (cursorPos > 7) then
				cursorPos = 7;
			end;
			if (countn3 != response_manager.total_response_count( 13 )) then
				countn3 = response_manager.total_response_count( 13 );
				cursorPos=1;
			end;
			if (countn2 != response_manager.total_response_count( 14 ))then
				countn2 = response_manager.total_response_count( 14 );
				cursorPos=2;
			end;
			if (countn1 != response_manager.total_response_count( 15 ))then
				countn1 = response_manager.total_response_count( 15 );
				cursorPos=3;
			end;
			if (countne != response_manager.total_response_count( 16 ))then
				countne = response_manager.total_response_count( 16 );
				cursorPos=4;
			end;
			if (countp1 != response_manager.total_response_count( 17 ))then
				countp1 = response_manager.total_response_count( 17 );
				cursorPos=5;
			end;
			if (countp2 != response_manager.total_response_count( 18 ))then
				countp2 = response_manager.total_response_count( 18 );
				cursorPos=6;
			end;
			if (countp3 != response_manager.total_response_count( 19 ))then
				countp3 = response_manager.total_response_count( 19 );
				cursorPos=7;
			end;
			if(prevCursorPos != cursorPos) then
				bp.unload();
				bp.set_filename(cursorFName+string(cursorPos)+".jpg");
				bp.load();
				prevCursorPos = cursorPos;
			end;
			
			
			j=j+1;
			if(response_manager.total_response_count( 11 ) > countNeg) then
				cursorPos = cursorPos+(response_manager.total_response_count( 11 ) - countNeg);
				countNeg = response_manager.total_response_count( 11 );
			end;
			if(response_manager.total_response_count( 10 ) > countPos) then
				cursorPos = cursorPos-(response_manager.total_response_count( 10 ) - countPos);
				countPos = response_manager.total_response_count( 10 );
			end;
			if(cursorPos < 1) then
				cursorPos = 1;
			end; 
			if (cursorPos > 7) then
				cursorPos = 7;
			end;
			if(prevCursorPos != cursorPos) then
				bp.unload();
				bp.set_filename(cursorFName+string(cursorPos)+".jpg");
				bp.load();
				prevCursorPos = cursorPos;
			end;
			
			if(j <= trajectoires[i].count())then
				if(trajectoires[i][j] == -1) then
					break;
				end;
			end;
			
		end;
		if(valence == 0) then
			seFinal.set_stimulus(stimNeg);
		else
			seFinal.set_stimulus(stimPos);
		end;
		if(valence == 0) then
			trialStimulusFinal.present();
		else
			output_port output = output_port_manager.get_port(1);
			output.send_code(1);
			trialStimulusFinal.present();
		end;
		
		trialAnxiete.present();
		int anxiete=response_manager.last_response();	
		i=i+1;
	end;
end;
if(presentation) then
	trialPreparation.present();
end;




trialInit.present();
int positionCible=response_manager.last_response();	

if(positionCible == 1) then
	ofile1.print("Cible Gauche"+"\n");
	trajectoires = trajectoiresN;
	mouvements=mouvementsN;
	stimPos = stimPosGauche;
	stimNeg = stimNegGauche;
else
	ofile1.print("Cible Droite"+"\n");
	trajectoires = trajectoiresInv;
	mouvements=mouvementsInv;
	stimPos = stimPosDroite;
	stimNeg = stimNegDroite;
end;

trialMain.present();
int main=response_manager.last_response();	
string mainDominante = "";
if(main == 1)then
	mainDominante = "Gauche";
else
	mainDominante = "Droite";
end;
ofile1.print("Main "+mainDominante+"\n");

loop int i = 1 until i > trajectoires.count()
begin
	
	int countPos = response_manager.total_response_count( 10 );
	int countNeg = response_manager.total_response_count( 11 );
	int countn3 = response_manager.total_response_count( 13 );
	int countn2 = response_manager.total_response_count( 14 );
	int countn1 = response_manager.total_response_count( 15 );
	int countne = response_manager.total_response_count( 16 );
	int countp1 = response_manager.total_response_count( 17 );
	int countp2 = response_manager.total_response_count( 18 );
	int countp3 = response_manager.total_response_count( 19 );
	
	int cursorPos = 4;	
	int prevCursorPos = cursorPos;
	string cursorFName = "Question";
	bp.unload();
	bp.set_filename(cursorFName+string(cursorPos)+".jpg");
	bp.load();
	
	ofile1.print("Trajectoire "+string(i)+"\n");
	trialDebutTrajectoire.present();
	int valence = -1;
	int longueur = 0;
	bool v = indic[i][1];
	if(v == true) then
		valence = 1;
	else
		valence = 0;
	end;
	loop int k = 1 until k > trajectoires[i].count()
	begin
		k=k+1;
		longueur = k;
		if(k <= trajectoires[i].count())then
			if(trajectoires[i][k] == -1) then
				break;
			end;
		end;
	end;
	if(valence == 0)then
		ofile1.print("Valence Negatif\n");
		pic2.set_part(1,redbox);
		picPiqure.set_part(1,redbox);
	else
		ofile1.print("Valence Positif\n");
		pic2.set_part(1,greenbox);		
		picPiqure.set_part(1,greenbox);
	end;
	ofile1.print("Longueur "+string(longueur)+"\n");
	
	#Trial de préparation a la trajectoire a suivre
	if(longueur < 10) then
		textPreTrajLongueur.set_caption("Elle sera courte",true);
	else
		textPreTrajLongueur.set_caption("Elle sera longue",true);
	end;
	string rrv="";
	bpIncert.unload();
	if(indic[i][2] == true) then
		if(valence == 0) then
			bpIncert.set_filename("R"+string(pourcent[i])+".png");
			rrv = "La trajectoire aura "+string(pourcent[i])+"% de chance de vous piquer";
		else
			bpIncert.set_filename("V"+string(pourcent[i])+".png");
			rrv = "La trajectoire aura "+string(pourcent[i])+"% de chance de ne pas vous piquer";
		end;
	else
		if(valence == 0) then
			bpIncert.set_filename("V"+string(pourcent[i])+".png");
			rrv = "La trajectoire aura "+string(pourcent[i])+"% de chance de ne pas vous piquer";
		else
			bpIncert.set_filename("R"+string(pourcent[i])+".png");
			rrv = "La trajectoire aura "+string(pourcent[i])+"% de chance de vous piquer";
		end;
	end;
	bpIncert.load();
	
	ofile1.print("PreparationTraj "+string(pourcent[i])+" "+string(indic[i][2])+"\n"); 
	textPreTrajObjectif.set_caption(rrv,true);
	trialPreparationTrajectoire.present();
	int jend = -1;
	int positionx = 0;
	int positiony = 0;
	loop int j = 1 until j == trajectoires[i].count()
	begin
		ofile1.print("Son\n");
		ofile1.print("Numero "+string(j)+"\n");
		if(response_manager.total_response_count( 11 ) > countNeg) then
			cursorPos = cursorPos+(response_manager.total_response_count( 11 ) - countNeg);
			countNeg = response_manager.total_response_count( 11 );
		end;
		if(response_manager.total_response_count( 10 ) > countPos) then
			cursorPos = cursorPos-(response_manager.total_response_count( 10 ) - countPos);
			countPos = response_manager.total_response_count( 10 );
		end;
		if(cursorPos < 1) then
			cursorPos = 1;
		end; 
		if (cursorPos > 7) then
			cursorPos = 7;
		end;
		if (countn3 != response_manager.total_response_count( 13 )) then
			countn3 = response_manager.total_response_count( 13 );
			cursorPos=1;
		end;
		if (countn2 != response_manager.total_response_count( 14 ))then
			countn2 = response_manager.total_response_count( 14 );
			cursorPos=2;
		end;
		if (countn1 != response_manager.total_response_count( 15 ))then
			countn1 = response_manager.total_response_count( 15 );
			cursorPos=3;
		end;
		if (countne != response_manager.total_response_count( 16 ))then
			countne = response_manager.total_response_count( 16 );
			cursorPos=4;
		end;
		if (countp1 != response_manager.total_response_count( 17 ))then
			countp1 = response_manager.total_response_count( 17 );
			cursorPos=5;
		end;
		if (countp2 != response_manager.total_response_count( 18 ))then
			countp2 = response_manager.total_response_count( 18 );
			cursorPos=6;
		end;
		if (countp3 != response_manager.total_response_count( 19 ))then
			countp3 = response_manager.total_response_count( 19 );
			cursorPos=7;
		end;
		if(prevCursorPos != cursorPos) then
			bp.unload();
			bp.set_filename(cursorFName+string(cursorPos)+".jpg");
			bp.load();
			prevCursorPos = cursorPos;
		end;
		
		if(j != 1)then			
			#tPostSon.set_caption("Mouvement effectué :"+conversionMvmIntStr[mouvements[i][j-1]],true);
			ofile1.print("Mouvement "+conversionMvmIntStr[mouvements[i][j-1]]+"\n");
		end;
		if(trajectoires[i][j] != -1)then
			jend = trajectoires[i][j];
			positionx = positions[trajectoires[i][j]][1];
			positiony = positions[trajectoires[i][j]][2];
			ofile1.print("Position "+string(positionx)+"_"+string(positiony)+"\n");
		end;
		
		sound sd1 = sounds[trajectoires[i][j]];
		s1.set_stimulus(sd1);
		trialSon.present();
		if(response_manager.total_response_count( 11 ) > countNeg) then
			cursorPos = cursorPos+(response_manager.total_response_count( 11 ) - countNeg);
			countNeg = response_manager.total_response_count( 11 );
		end;
		if(response_manager.total_response_count( 10 ) > countPos) then
			cursorPos = cursorPos-(response_manager.total_response_count( 10 ) - countPos);
			countPos = response_manager.total_response_count( 10 );
		end;
		if(cursorPos < 1) then
			cursorPos = 1;
		end; 
		if (cursorPos > 7) then
			cursorPos = 7;
		end;
		if (countn3 != response_manager.total_response_count( 13 )) then
			countn3 = response_manager.total_response_count( 13 );
			cursorPos=1;
		end;
		if (countn2 != response_manager.total_response_count( 14 ))then
			countn2 = response_manager.total_response_count( 14 );
			cursorPos=2;
		end;
		if (countn1 != response_manager.total_response_count( 15 ))then
			countn1 = response_manager.total_response_count( 15 );
			cursorPos=3;
		end;
		if (countne != response_manager.total_response_count( 16 ))then
			countne = response_manager.total_response_count( 16 );
			cursorPos=4;
		end;
		if (countp1 != response_manager.total_response_count( 17 ))then
			countp1 = response_manager.total_response_count( 17 );
			cursorPos=5;
		end;
		if (countp2 != response_manager.total_response_count( 18 ))then
			countp2 = response_manager.total_response_count( 18 );
			cursorPos=6;
		end;
		if (countp3 != response_manager.total_response_count( 19 ))then
			countp3 = response_manager.total_response_count( 19 );
			cursorPos=7;
		end;
		if(prevCursorPos != cursorPos) then
			bp.unload();
			bp.set_filename(cursorFName+string(cursorPos)+".jpg");
			bp.load();
			prevCursorPos = cursorPos;
		end;
		
		#int reponse = -1;
		#if(j==1 || j == trajectoires[i].count() || (j < trajectoires[i].count() && trajectoires[i][j+1] == -1)) then
		#	trialPause.present();
		#else
		#	trialQuestion.present();
		#	ofile1.print("Reponse "+string(cursorPos)+"\n");
		#	stimulus_data last = stimulus_manager.last_stimulus_data();  
		#	ofile1.print("ReactionTime "+string(last.reaction_time())+"\n");
		#end;
		
		j=j+1;
		if(response_manager.total_response_count( 11 ) > countNeg) then
			cursorPos = cursorPos+(response_manager.total_response_count( 11 ) - countPos);
			countNeg = response_manager.total_response_count( 11 );
		end;
		if(response_manager.total_response_count( 10 ) > countPos) then
			cursorPos = cursorPos-(response_manager.total_response_count( 10 ) - countPos);
			countPos = response_manager.total_response_count( 10 );
		end;
		if(cursorPos < 1) then
			cursorPos = 1;
		end; 
		if (cursorPos > 7) then
			cursorPos = 7;
		end;
		if(prevCursorPos != cursorPos) then
			bp.unload();
			bp.set_filename(cursorFName+string(cursorPos)+".jpg");
			bp.load();
			prevCursorPos = cursorPos;
		end;
		
		if(j <= trajectoires[i].count())then
			if(trajectoires[i][j] == -1) then
				break;
			end;
		end;
		
	end;
	if(valence == 0) then
		#tF.set_caption("Stimuli négatif "+string(jend),true);
		seFinal.set_stimulus(stimNeg);
	else
		#tF.set_caption("Stimuli positif "+string(jend),true);
		seFinal.set_stimulus(stimPos);
	end;
	if(valence == 0)then	
		output_port output = output_port_manager.get_port(1);
		output.send_code(1);
	end;
	trialStimulusFinal.present();
	#trialFinTrajectoire.present();
	
	trialAnxiete.present();
	ofile1.print("Reponse "+string(cursorPos)+"\n");
	int anxiete=response_manager.last_response();	
	ofile1.print("Anxiete "+string(anxiete)+"\n");
	i=i+1;
	
	ofile1.print("Fin\n");
end;