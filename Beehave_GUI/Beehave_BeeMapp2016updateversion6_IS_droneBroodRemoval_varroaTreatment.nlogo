__includes [] ; This line is only there to speed up the interpretation process. If the line is not there checking the code takes two or three times longer.

breed [ hives hive ]
breed [ eggCohorts eggCohort]
breed [ larvaeCohorts larvaeCohort]
breed [ pupaeCohorts pupaeCohort]
breed [ IHbeeCohorts IHbeeCohort]  ; in-hive bee
breed [ droneEggCohorts droneEggCohort]
breed [ droneLarvaeCohorts droneLarvaeCohort]
breed [ dronePupaeCohorts dronePupaeCohort]
breed [ droneCohorts droneCohort]
breed [ foragerSquadrons foragerSquadron ]
   ; small group of foragers, groupsize: SQUADRON_SIZE
breed [ miteOrganisers miteOrganiser ]
   ; keep track of mites in brood cells
breed [ flowerPatches flowerPatch]
breed [ Signs Sign ]
   ; signs to inform the user

globals [
  ABANDON_POLLEN_PATCH_PROB_PER_S
  AFF
  AFF_BASE
  AllDaysAllPatchesList
  BugAlarm
  ColonyDied
  ColonyTripDurationSum
  ColonyTripForagersSum
  CROPVOLUME
  CumulativeHoneyConsumption
  DailyForagingPeriod
  DailyHoneyConsumption
  DailyMiteFall
  DailyPollenConsumption_g
  Day
  DeathsAdultWorkers_t
  DeathsForagingToday
  DecentHoneyEnergyStore
  DRONE_EGGLAYING_START
  DRONE_EGGLAYING_STOP
  DRONE_EMERGING_AGE
  DRONE_HATCHING_AGE
  DRONE_LIFESPAN
  DRONE_PUPATION_AGE
  DRONE_EGGS_PROPORTION
  EMERGING_AGE
  EmptyFlightsToday
  ENERGY_HONEY_per_g
  ENERGY_SUCROSE
  ExcessBrood
  FIND_DANCED_PATCH_PROB
  FLIGHT_VELOCITY
  FLIGHTCOSTS_PER_m
  FORAGER_NURSING_CONTRIBUTION
  FORAGING_STOP_PROB
  ForagingRounds
  ForagingSpontaneousProb
  HarvestedHoney_kg
  HATCHING_AGE
  HONEY_STORE_INIT
  HoneyEnergyStore
  HoneyEnergyStoreYesterday
  HoPoMo_seasont
  IdealPollenStore_g
  InhivebeesDiedToday
  INVADING_DRONE_CELLS_AGE
  INVADING_WORKER_CELLS_AGE
  InvadingMitesDroneCellsReal
    ; actual number of mites invading the cells, might be
    ; lower than theor. number, if brood cells are crowded with mites
  InvadingMitesDroneCellsTheo
    ; theoretical number of mites invading the cells
  InvadingMitesWorkerCellsReal
  InvadingMitesWorkerCellsTheo
  LIFESPAN
  LostBroodToday
    ; brood that die due to lack of nursing or lack of pollen today
  LostBroodTotal  ; .. and summed up
  MAX_AFF
  MAX_BROOD_NURSE_RATIO
  MAX_DANCE_CIRCUITS
  MAX_EGG_LAYING
  MAX_HONEY_ENERGY_STORE
  MAX_INVADED_MITES_DRONECELL
  MAX_INVADED_MITES_WORKERCELL
  MAX_PROPORTION_POLLEN_FORAGERS
  MAX_TOTAL_KM
  MIN_AFF
  MIN_IDEAL_POLLEN_STORE
  MITE_FALL_DRONECELL
  MITE_FALL_WORKERCELL
  MITE_MORTALITY_BROODPERIOD
  MITE_MORTALITY_WINTER
  MORTALITY_DRONE_EGGS
  MORTALITY_DRONE_LARVAE
  MORTALITY_DRONE_PUPAE
  MORTALITY_DRONES
  MORTALITY_DRONES_INFECTED_AS_PUPAE
  MORTALITY_EGGS
  MORTALITY_FOR_PER_SEC
  MORTALITY_INHIVE
  MORTALITY_INHIVE_INFECTED_AS_ADULT
  MORTALITY_INHIVE_INFECTED_AS_PUPA
  MORTALITY_LARVAE
  MORTALITY_PUPAE
  N_FLOWERPATCHES
  N_GENERIC_PLOTS
  NectarFlightsToday
  NewDroneEggs
  NewDroneLarvae
  NewDronePupae
  NewDrones
  NewDrones_healthy
  NewForagerSquadronsHealthy
  NewForagerSquadronsInfectedAsAdults
  NewForagerSquadronsInfectedAsPupae
  NewIHbees
  NewIHbees_healthy
  NewReleasedMitesToday
    ; all (healthy and infected) mites released from cells (mothers+offspring)
    ; on current day (calculated after MiteFall!)
  NewWorkerEggs
  NewWorkerLarvae
  NewWorkerPupae
  PATCHCOLOR
  PhoreticMites   ; all phoretic mites, healthy and infected
  PhoreticMitesHealthyRate
  POLLEN_DANCE_FOLLOWERS
  POLLEN_STORE_INIT
  PollenFlightsToday
  POLLENLOAD
  PollenStore_g
  PollenStore_g_Yesterday
  POST_SWARMING_PERIOD
  PRE_SWARMING_PERIOD
  ProbPollenCollection
  PropNewToAllPhorMites
  PROTEIN_STORE_NURSES_d
  ProteinFactorNurses
  Pupae_W&D_KilledByVirusToday
    ; number of drone + worker pupae that were killed by the virus today
  PUPATION_AGE
  Queenage
  RecruitedFlightsToday
  SaveInvadedMODroneLarvaeToPupae
  SaveInvadedMOWorkerLarvaeToPupae
  SaveWhoDroneLarvaeToPupae
  SaveWhoWorkerLarvaeToPupae
  SEARCH_LENGTH_M
  SearchingFlightsToday
  SEASON_START             ; defines beginning of foraging period
  SEASON_STOP              ; end of foraging period ;; I.S.: comment after this point should be deleted "& latest end of drone production"
  SimpleDancing
  STEPWIDTH
  STEPWIDTHdrones
  SumLifeSpanAdultWorkers_t
  SummedForagerSquadronsOverTime
  SwarmingDate
  TIME_UNLOADING
  TIME_UNLOADING_POLLEN
  TodaysAllPatchesList
  TodaysSinglePatchList
  TotalBeesAdded
    ; beekeeper can add bees in autumn, these are added up as long
    ; as simulation runs
  TotalDroneEggs
  TotalDroneLarvae
  TotalDronePupae
  TotalDrones
  TotalEggs
  TotalEventsToday         ; sum of todays "xxxFlightsToday"
  TotalForagers
  TotalFPdetectionProb
  TotalHoneyFed_kg
    ; if "beekeeper" has to feed the colony, fed honey is added up as long
    ; as simulation runs
  TotalHoneyHarvested_kg
  TotalIHbees
  TotalLarvae
  TotalMites
  TotalPollenAdded
    ; beekeeper can add pollen in spring, which is added up as long
    ; as simulation runs
  TotalPupae
  TotalWeightBees_kg ; weight of all bees (brood, adults, drones..)
  TotalWorkerAndDroneBrood
  VIRUS_KILLS_PUPA_PROB
  VIRUS_TRANSMISSION_RATE_MITE_TO_PUPA
    ; probability for an infected invaded mite to infect the bee pupa
  VIRUS_TRANSMISSION_RATE_PUPA_TO_MITES
    ; probability for an infected bee pupa to infect healthy invaded mites
  WEIGHT_WORKER_g



     AllBeeMappCorrectionsList   ;   ***NEW FOR BEEHAVE_BEEMAPP2015***
     AssessmentNumber            ;   ***NEW FOR BEEHAVE_BEEMAPP2015***
     WeatherDataList             ;   ***NEW FOR BEEHAVE_BEEMAPP2015***

  ;***************
  ;; Added by I.S.
  ;***************

  current_seed ; To report the current seed in the Behaviour-Space experiments.
  BugMessage ; To report a bug message and write it into a file.

  allMitesInMO ; Counter for all mites in brood cells (healthy + infected).
  mitesInfectedInMO ; Counter for all infected mites in brood cells.

  ; For NewEggsProc.
  ;cellsDroneBroodFrame ; Parameter for the number of total cells on a drone brood frame (estimated, parameter comprises both sides of the brood frame).
  ;maxDroneFrameEgglayingDuration ; Maximum duration (days) of a drone egglaying event.
  droneFrameEgglayingDuration ; Duration of last drone egglaying event.
  currentNumDroneEggs ; Counter for how many drone eggs have been laid so far in the current drone egglaying event.
  countDroneEgglayingDays ; Counter of duration of current drone egglaying event.

  ;workerEggsProportionOnDroneEgglayingDays; Background worker egg laying to avoid a siginficant drop in worker strength.
  ;droneEggsProportionNoDroneEgglayingDay; Background drone egg proportion.
  ;droneEggsProportionNoDBR; In drone egg season: proporiton of x% drone eggs per day of the total egg number on this day.

  countTotalWorkerEggs ; Counter for total worker eggs layed in one year.
  countTotalDroneEggs ; Counter for total drone eggs layed in one year.

  ; For DroneBroodRemoval.
  current_dronePupaeRemain ; To store the number of drone pupae removed in the cohort.
  countRemovalDay ; Counter for the number of removal days realised so far.
  removal_days ; List to save the removal days.
  drone_egglaying_times ; List to save the drone egglaying start days.
  days_between_removals ; List to save the days between each drone egglaying start day and corresponding removal day.
  countMitesRemoved; Counter for mites removed.

  ; For mite procedure:
  ;these three parameters were local before, now they are global.
  totalInfectedWorkers
  totalHealthyWorkers
  factorWorkers

  infectedBees ; To count infected bees.


  ;***************
  ;; ADDITION END.
  ;***************

]

turtles-own ; all cohorts below have these variables too
[
  age
  ploidy
  number
  numberDied
  invadedByMiteOrganiserID
]

pupaeCohorts-own
[
  number_infectedAsPupa
  number_healthy
]

dronePupaeCohorts-own
[
  number_infectedAsPupa
  number_healthy
]

IHbeeCohorts-own
[
  number_infectedAsPupa
  number_infectedAsAdult
  number_healthy
  ]

droneCohorts-own
[
  number_infectedAsPupa
  number_healthy
]

foragerSquadrons-own
[
  activity
  activityList
  knownNectarPatch
  knownPollenPatch
  pollenForager
  cropEnergyLoad
  collectedPollen
  mileometer
  km_today
  infectionState
]

flowerPatches-own
[
  patchType
  distanceToColony
  xcorMap
  ycorMap
  oldPatchID
  size_sqm
  quantityMyl
  amountPollen_g
  nectarConcFlowerPatch
  detectionProbability
  flightCostsNectar
  flightCostsPollen
  EEF
  danceCircuits
  danceFollowersNectar
  summedVisitors
  nectarVisitsToday
  pollenVisitsToday
  tripDuration
  tripDurationPollen
  mortalityRisk
  mortalityRiskPollen
  handlingTimeNectar
  handlingTimePollen
]

miteOrganisers-own
[
  workerCellListCondensed
  droneCellListCondensed
  cohortInvadedMitesSum
  invadedMitesHealthyRate
  invadedDroneCohortID
  invadedWorkerCohortID
]


; =========== BUTTONS =========================================================
; *****************************************************************************

to Setup ; BUTTON!
  clear-all

  set N_INITIAL_BEES round N_INITIAL_BEES
  set N_INITIAL_MITES_HEALTHY round N_INITIAL_MITES_HEALTHY
  set N_INITIAL_MITES_INFECTED round N_INITIAL_MITES_INFECTED
  reset-ticks
  if ReadInfile = true [ ReadFileProc ]
  ParameterizationProc
  ifelse ReadInfile = false
    [ CreateFlowerPatchesProc ]
       ; IF: flower patches are defined by input fields in GUI
    [ Create_Read-in_FlowerPatchesProc ]
       ; ELSE: or read in from a text file
  if ReadBeeMappFile = true ;                      ***NEW FOR BEEHAVE_BEEMAPP2015***
   [ ReadBeeMappFileProc ]
  CreateImagesProc
  if (Experiment = "Experiment A") or (Experiment = "Experiment B")
    [
      user-message "Please make sure experimental colony conditions are defined in Setup and GoTreatmentProc"
      ;(INSERT INITIAL CONDITIONS FOR EXPERIMENTAL COLONIES HERE)
      GoTreatmentProc
    ]

  ;; Added by I.S.
  ; If the drone brood removal days should be used to calculate the drone egglaying times:
  ; -> update the values displayed on the GUI.
  if useDBRdaysAsDroneEgglayingTime = true
  [
    if RemovalDay1 != -10 [set droneEgglayingTime2 RemovalDay1 + 1]
    ifelse RemovalDay2 != -10 [set droneEgglayingTime3 RemovalDay2 + 1][set droneEgglayingTime2 -10]
    ifelse RemovalDay3 != -10 [set droneEgglayingTime4 RemovalDay3 + 1][set droneEgglayingTime3 -10]
    ifelse RemovalDay4 != -10 [set droneEgglayingTime5 RemovalDay4 + 1][set droneEgglayingTime4 -10]
    if RemovalDay5 = -10 [set droneEgglayingTime5 -10]
  ]
  ;; Addition END.


end

; ********************************************************************************************************************************************************************************

to CreateOutputFileProc
  ; BUTTON!  writes data in file, copied from:
  ; Netlogo: Library: Code Examples: Output_Example.nlogo

  set WriteFile true
  let filename "Output.txt"
  if is-string? filename  ; to make sure filename is a string
  [
    if file-exists? filename   ; if the file already exists, it is deleted
    [
      file-delete filename
    ]
    file-open filename
    WriteToFileProc  ; record the initial turtle data
  ]
end

; ********************************************************************************************************************************************************************************

to StartProc
  ; called by Day/Month/Year/x days and RUN Button

  if BugAlarm = true
  [
    ask patches
    [
      set pcolor red
    ]
    user-message ("BUG ALARM!! (Start Proc)")  stop
      ; programm is stopped, if an "assertion" is violated, background becomes red
  ]

  if (stopDead = true) and (ColonyDied = true) [ stop ]
    ; programm is stopped, if colony is dead and stopDead switch is "On"

  ;; Added by I.S.
  ; USED for BEHAVIOUR SPACE EXPERIMENT varroa_DWV_contEggs_noDBR_formicANDoxalicAcid.
  ; Add stop conditions for unwanted parameter combinations for the varroa treatment in behaviour space experiments.
  if (formicAcidVarroaTreatment = true and formicAcidTreatmentDay2-1 != -10)
  [
    if ( (formicAcidTreatmentDuration2 <= formicAcidTreatmentDuration1) ; Treatment works better on first usage -> longer duration needed for the second treatment.
      or (formicAcidEfficiencyBroodcells2 >= formicAcidEfficiencyBroodcells1) ; Treatment works better on first usage -> lesser efficiencies for the second treatment.
      or (formicAcidEfficiencyPhoretic2 >= formicAcidEfficiencyPhoretic1) ; -"-
      or (formicAcidEfficiencyBroodcells2 >= formicAcidEfficiencyPhoretic2) ; formic acid is more efficient on phoretic mites than on the mites in cells.
    )
    [
      user-message ("Check parameter values for formic acid treatment: efficiences greater for phoretic mites than in broodcells, better efficiencies for 1st treatment, longer duration for 2nd treatment.")
      stop
    ]
  ]

  if formicAcidVarroaTreatment = true
  [
    if formicAcidEfficiencyBroodcells1 >= formicAcidEfficiencyPhoretic1 ; formic acid is more efficient on phoretic mites than on the mites in cells.
    [
      user-message ("Check parameter values for formic acid treatment: efficiences greater for phoretic mites than in broodcells.")
      stop
    ]
  ]
  ;; Addition END.

  Go ; <<<<<<<<<<<<<<<<<<<<<<<<<<

  if WriteFile = true [ WriteToFileProc ]
    ; results are recorded in Output
    ; file after each timestep

end ; StartProc






;================================================================================================================================================================================
to ParameterizationProc

;  begin ***NEW FOR BEEHAVE_BEEMAPP2015***
 set WeatherDataList []
 if Weather = "Weather File"
 [
   ifelse file-exists? WeatherFile
   [
   file-open WeatherFile
   while [not file-at-end?]
   [
      set WeatherDataList lput read-from-string(file-read-line) WeatherDataList
   ]
   file-close
   ]
   [ user-message "No such weather input file available!" ]
 ]
;  end ***NEW FOR BEEHAVE_BEEMAPP2015***


; BROOD CARE:
  set FORAGER_NURSING_CONTRIBUTION  0.2
  set MAX_BROOD_NURSE_RATIO  3
    ; 3  (3: Free & Racey 1968) (Becher et al. 2010: 2.65)
    ; # brood that can be raised by a single "nurse" bee ("nurse": IH-bee and
    ; to some degree also foragers!, see FORAGER_NURSING_CONTRIBUTION)

; COLONY:
  set ColonyDied  FALSE
  set DRONE_EGGS_PROPORTION  0.04
    ; 0.04  Wilkinson&Smith 2002 (from Allen 1963, 1965)

  set MIN_IDEAL_POLLEN_STORE  250
    ; 250  [g] min. amount of pollen that a colony tries to store

  set POLLEN_STORE_INIT  100
    ; 100 [g] pollen present on 1st day of simulation

  set PRE_SWARMING_PERIOD  3
    ;  HoPoMo: 3d, see also Winston p. 184

  set PROTEIN_STORE_NURSES_d  7
    ;  7 [d] Crailsheim 1990

  set ProteinFactorNurses  1
    ; 0..1, is daily calculated in PollenConsumptionProc, reflects protein
    ; content of brood food

  set Queenage  230       ;  queen emerged mid of May

  set WEIGHT_WORKER_g  0.1
    ; 0.125  0.1 or 0.11 or 0.125
    ; (0.1: HoPoMo 0.11: ; Martin 1998: 1kg adults = 9000 bees)
    ; (0.125: Calis et al. 1999) higher weight => less mites!

; DEVELOPMENT:
  set AFF_BASE  21       ; like BEEPOP
  set MIN_AFF 7  ; Robinson 1992: 7d; see also: Winston 1987, p. 92/93
    ; models: Amdam & Omholt 2003, Beshers et al 2001: 7d
  set MAX_AFF 50
    ; within range given in Winston 1987, p. 92/93
  set DRONE_EGGLAYING_START 105 ;; CHANGED by I.S. day 105 = 15th April, before: 115.
    ;  115: 25.April (Allen 1963: late April ..late August)
  set DRONE_EGGLAYING_STOP 182 ;; CHANGED by I.S. day 182 = 1st July, before: 240.
    ; 240  240: 28.August (Allen 1963: late April ..late August)
  set DRONE_HATCHING_AGE  3     ; Jay 1963, Hrassnig, Crailsheim 2005
  set DRONE_PUPATION_AGE  10    ; i.e. capping of the cell; Fukuda, Ohtani 1977
  set DRONE_EMERGING_AGE  24
  set HATCHING_AGE  3           ;  Winston p. 50
  set PUPATION_AGE  9    ; i.e. capping of the cell
  set EMERGING_AGE  21
  set MAX_EGG_LAYING 1600         ; 1600  max. # eggs laid per day

; ENVIRONMENT
  set SEASON_START  80 ; season: 1st January - 31st December, i.e. ;; Changed by I.S. to reduce foraging.
  set SEASON_STOP  290  ; foraging potentially possible throughout the year (weather depending) ;; Changed by I.S. to reduce foraging.
  set ABANDON_POLLEN_PATCH_PROB_PER_S  0.00002

; FORAGING
  set CROPVOLUME  50
    ; 50   [microlitres] (~50mg nectar) Winston (1987), Nuñez (1966, 1970), Schmid-Hempel et al. (1985)
  set FIND_DANCED_PATCH_PROB  0.5; (0.5 = ca. average of reported values):
    ; Seeley 1983: recruits required 4.8 dance-guided search trips to find target patch = 0.21
    ; Judd 1995: of 63 dance followers, 16 were successful, 16/63 = 0.25
    ; Biesmeijer, deVries 2001: review: 0.95 (Oettingen-Spielberg 1949), 0.73 (Lindauer 1952)

  set FLIGHT_VELOCITY  6.5
    ; 6.57084    [m/s] derived from Seeley 1994, mean velocity
    ; during foraging flight see also Ribbands p127: 12.5-14.9mph (*1.609=20.1-24.0 km/h =
    ; 5.58-6.66m/s)

  set FLIGHTCOSTS_PER_m 0.000006   ;
    ; [kJ/m] Flightcosts per m (Goller, Esch 1990: 0.000006531 kJ/m,  (assuming speed of 6.5m/s:
    ; flight costs: 0.0424W - compare with Schmid-Hempel et al. 1985: 0.0334W => 0.000005138 )

  set FORAGING_STOP_PROB  0.3

  set MAX_DANCE_CIRCUITS  117                   ;  (117) (Seeley, Towne 1992)
  set MAX_PROPORTION_POLLEN_FORAGERS  0.8       ;  (0.8: Lindauer 1952)
  set POLLEN_DANCE_FOLLOWERS  2     ; 2: number of bees, following a pollen dancer
  set POLLENLOAD  0.015
    ; [g] 0.015g average weight of 2 pollen pellets, HoPoMo: 15 mg: "On average,
    ; one pollen foraging flight results in 15mg of collected pollen (Seeley, 1995)"

  set ProbPollenCollection  0
    ; probability to collect pollen instead of nectar  calculated in ForagingRoundProc

  set SEARCH_LENGTH_M 17 * 60 * FLIGHT_VELOCITY  ; 17*60*6.5 = 6630m
    ; [m] distance (= 17 min!), a unsuccesful forager flies on average
    ; Seeley 1983: search trip: 17min (+-11)

  set SimpleDancing FALSE
    ; (false) if true: fixed nectar dancing TH and fixed number of dance followers

  set TIME_UNLOADING  116
    ; (116) [s] time, a nectar forager needs to become unloaded  derived from Seeley 1994

  set TIME_UNLOADING_POLLEN  210
    ; (210s = 3.5 min) [s]  Ribbands p.131: 3.5 minutes (Park 1922,1928b)

  set TotalFPdetectionProb  -1
    ; correct value is set in "Foraging_searchingProc" but only when searching takes places

; MORTALITY
  set DRONE_LIFESPAN  37
   ; Fukuda Ohtani 1977; life span drones:  summer: 14d, autumn: 32-42d
  set LIFESPAN  290
    ; [d] 290d (max. life span of worker; Sakagami, Fukuda 1968)

  set MAX_TOTAL_KM  800
    ; [ km ]  800, as mortality acts only at end of time step! 838km: max. flight
    ; performance in a foragers life (Neukirch 1982)

  set MORTALITY_DRONE_EGGS 0.064     ;  Fukuda Ohati 1977:
  set MORTALITY_DRONE_LARVAE 0.044   ;  100 eggs, 82 unsealed brood, 60 sealed brood and 56 adults
  set MORTALITY_DRONE_PUPAE  0.005
  set MORTALITY_DRONES  0.05        ; Fukuda Ohati 1977: "summer", av. lifespan: 14d
  set MORTALITY_EGGS  0.03           ;  HoPoMo p. 230: 0.03
  set MORTALITY_LARVAE  0.01       ;  HoPoMo p. 230: 0.01
  set MORTALITY_PUPAE  0.001       ;  HoPoMo p. 230: 0.001
  set MORTALITY_FOR_PER_SEC  0.00001
    ; derived from Visscher&Dukas 1997 (Mort 0.036 per hour foraging)

  set MORTALITY_INHIVE  0.004;
    ; 0.0038: derived from Martin 2001 (healthy winter
    ; based on 50% mortality) (HoPoMo: MORTALITYbase: 0.01) p. 230


; PHYSICS
  set ENERGY_HONEY_per_g  12.78
    ; [kJ/g] (= [J/mg])    Wikipedia: http://www.nal.usda.gov/fnic/foodcomp/search/

  set ENERGY_SUCROSE  0.00582       ; 0.00582 [kJ/micromol]   342.3 g/mol

; PROGRAM
  set STEPWIDTH  50       ;  for graphic
  set STEPWIDTHdrones  5       ;  for graphic
  set BugAlarm  FALSE       ;
  set N_GENERIC_PLOTS 8

; VARROA
  set MITE_FALL_DRONECELL  0.2
    ;  0.2 (20%) Martin 1998  proportion of those mites emerging from
    ; worker cells, which fall from the comb and are hence considered to die.

  set MITE_FALL_WORKERCELL  0.3
    ;  0.3 (30%) Martin 1998  proportion of those mites emerging from drone
    ; cells, which fall from the comb and are hence considered to die.

  set MITE_MORTALITY_BROODPERIOD  0.006
    ; Martin 1998: 0.006;  (0.006: Fries et al 1994, Tab. 6) daily mortality of phoretic
    ; mites during brood period

  set MITE_MORTALITY_WINTER  0.002
    ; Martin 1998: 0.002;   Fries et al 1994: 0.004 (Tab. 6)
  set NewReleasedMitesToday  0
    ;  all (healthy and infected) mites released from cells (mothers+offspring)
    ; on current day (calculated after MiteFall!)

; AUXILIARY VARIABLES
  set DecentHoneyEnergyStore  N_INITIAL_BEES * 1.5 * ENERGY_HONEY_per_g
    ; re-set in every foraging round (ForagingRoundProc )

  set HONEY_STORE_INIT  0.5 * MAX_HONEY_STORE_kg * 1000
    ;  [g]   (1g Honey = 124.80kJ)

  set HoneyEnergyStore  (HONEY_STORE_INIT * ENERGY_HONEY_per_g)       ;  [kJ]
  set IdealPollenStore_g  POLLEN_STORE_INIT
    ; [g] is calculated daily in PollenConsumptionProc

  set MAX_HONEY_ENERGY_STORE  MAX_HONEY_STORE_kg * ENERGY_HONEY_per_g * 1000 ; [kJ]
  set PollenStore_g  POLLEN_STORE_INIT       ;  [g]
  set NewForagerSquadronsHealthy (N_INITIAL_BEES / SQUADRON_SIZE)
    ; foragers in time step 1 are all healthy

  set TotalForagers  NewForagerSquadronsHealthy * SQUADRON_SIZE
    ;  has to be set here to calculate egg laying on the 1st time step

  set Aff  AFF_BASE
  set INVADING_DRONE_CELLS_AGE  DRONE_PUPATION_AGE - 2
    ; 2d before capping, Boot et al. 1992 (Exp. & Appl. Acarol. 16:295-301)

  set INVADING_WORKER_CELLS_AGE  PUPATION_AGE - 1
    ; 1d before capping, Boot et al. 1992 (Exp. & Appl. Acarol. 16:295-301)

  set PhoreticMites  N_INITIAL_MITES_HEALTHY + N_INITIAL_MITES_INFECTED
  set TotalMites  PhoreticMites
  set PATCHCOLOR 38 ; colour of the background
  ask patches [ set pcolor PATCHCOLOR ]
  if (N_INITIAL_MITES_HEALTHY + N_INITIAL_MITES_INFECTED) > 0
  [
    set PhoreticMitesHealthyRate N_INITIAL_MITES_HEALTHY
        / (N_INITIAL_MITES_HEALTHY + N_INITIAL_MITES_INFECTED)
  ]
  if RAND_SEED != 0
  [
    random-seed RAND_SEED
    set current_seed RAND_SEED ;; Added by I.S.
  ]
    ; if RAND_SEED set to 0, random numbers will differ in every run

  ;*************
  ; Added by I.S.
  ; Draw random seed and report in behaviour space experiments to be able to debug & reproduce errors.
  if RAND_SEED = 0
  [
    set current_seed new-seed
    random-seed current_seed
  ]
  ;*************

  ; MITE REPRODUCTION MODELS:
  if MiteReproductionModel = "Fuchs&Langenbach"
  [
    set MAX_INVADED_MITES_DRONECELL 16
      ; 16 (Fuchs&Langenbach 1989) defines length of workercell, dronecell list
      ; of MiteOrganisers

    set MAX_INVADED_MITES_WORKERCELL 8
      ; (Fuchs&Langenbach 1989)
      ; defines length of workercell, dronecell list of MiteOrganisers
  ]

  if MiteReproductionModel = "Martin"
  [
    set MAX_INVADED_MITES_DRONECELL 4
      ; defines length of workercell, dronecell list of MiteOrganisers
    set MAX_INVADED_MITES_WORKERCELL 4
      ; defines length of workercell, dronecell list of MiteOrganisers
  ]

  if MiteReproductionModel = "Test"
  [
    set MAX_INVADED_MITES_DRONECELL 5
    set MAX_INVADED_MITES_WORKERCELL 5
  ]

  if MiteReproductionModel = "Martin+0"
  [
    set MAX_INVADED_MITES_DRONECELL 5
    set MAX_INVADED_MITES_WORKERCELL 5
  ]

  if MiteReproductionModel = "No Mite Reproduction"
  [
    set MAX_INVADED_MITES_DRONECELL 5
    set MAX_INVADED_MITES_WORKERCELL 5
  ]

  ; VIRUS TYPES;
  if Virus = "DWV"
  [
    set VIRUS_TRANSMISSION_RATE_MITE_TO_PUPA 0.89  ; 0.89
    set VIRUS_TRANSMISSION_RATE_PUPA_TO_MITES 1   ; 1: Martin 2001
    set VIRUS_KILLS_PUPA_PROB 0.2   ; DWV: 0.2 (Martin 2001)
    set MORTALITY_INHIVE_INFECTED_AS_PUPA 0.012; (0.0119)
      ; if pupa was infected but survived
      ; based on Martin 2001 Survivorship curve (infected, winter)
      ; calculated at: 50% mortality(=58d);

    set MORTALITY_INHIVE_INFECTED_AS_ADULT MORTALITY_INHIVE
      ;  Martin 2001: DWV infected adults become carriers with unaffected survivorship

    set MORTALITY_DRONES_INFECTED_AS_PUPAE MORTALITY_INHIVE_INFECTED_AS_PUPA * (MORTALITY_DRONES / MORTALITY_INHIVE)
      ; NO data on drone mortality! Use same increase in mortality as for workers
  ]

  if Virus = "APV"
  [
    set VIRUS_TRANSMISSION_RATE_MITE_TO_PUPA 1
    set VIRUS_TRANSMISSION_RATE_PUPA_TO_MITES 0
      ; 0: Martin 2001 (0, as the pupae dies! - so this value doesn't matter at all!)

    set VIRUS_KILLS_PUPA_PROB 1   ; APV: 1 (Martin 2001)
    set MORTALITY_INHIVE_INFECTED_AS_PUPA 1
      ; doesn't matter, as APV infected pupae die before emergence!

    set MORTALITY_INHIVE_INFECTED_AS_ADULT 0.2
     ; (0.2: Sumpter & Martin 2004)

    set MORTALITY_DRONES_INFECTED_AS_PUPAE MORTALITY_INHIVE_INFECTED_AS_PUPA * (MORTALITY_DRONES / MORTALITY_INHIVE)
      ; NO data on drone mortality! Use same increase in mortality as for workers
  ]

  if Virus = "benignDWV" ; like DWV but does not harm the infected bees
  [
    set VIRUS_TRANSMISSION_RATE_MITE_TO_PUPA 0.89     ; 1
    set VIRUS_TRANSMISSION_RATE_PUPA_TO_MITES 1
      ; 0: Martin 2001 (0, as the pupae dies!)
    set VIRUS_KILLS_PUPA_PROB 0  ; (benign!)
    set MORTALITY_INHIVE_INFECTED_AS_PUPA MORTALITY_INHIVE ; (benign!)
    set MORTALITY_INHIVE_INFECTED_AS_ADULT MORTALITY_INHIVE
    set MORTALITY_DRONES_INFECTED_AS_PUPAE MORTALITY_INHIVE_INFECTED_AS_PUPA
      ; NO data on drone mortality! Use worker mortality!
  ]

  if Virus = "modifiedAPV"
  [
    set VIRUS_TRANSMISSION_RATE_MITE_TO_PUPA 1     ; 1
    set VIRUS_TRANSMISSION_RATE_PUPA_TO_MITES 1   ;
    set VIRUS_KILLS_PUPA_PROB 1  ; APV: 1 (Martin 2001)
    set MORTALITY_INHIVE_INFECTED_AS_PUPA 1
      ; doesn't matter, as APV infected pupae die before emergence!

    set MORTALITY_INHIVE_INFECTED_AS_ADULT 0.2
      ; (0.2: Sumpter & Martin 2004)

    set MORTALITY_DRONES_INFECTED_AS_PUPAE MORTALITY_INHIVE_INFECTED_AS_PUPA
    ; NO data on drone mortality! Use worker mortality!
  ]

  if Virus = "TestVirus"
  [
    set VIRUS_TRANSMISSION_RATE_MITE_TO_PUPA 1  ; 0.89
    set VIRUS_TRANSMISSION_RATE_PUPA_TO_MITES 1   ; 1: Martin 2001
    set VIRUS_KILLS_PUPA_PROB 0   ; DWV: 0.2 (Martin 2001)
    set MORTALITY_INHIVE_INFECTED_AS_PUPA 0.012; (0.0119)
      ; if pupae was infected but survived; based on Martin 2001 Survivorship
      ; curve (infected, winter) calculated at 50% mortality = 58d age

    set MORTALITY_INHIVE_INFECTED_AS_ADULT MORTALITY_INHIVE
      ;  Martin 2001: DWV infected adults become carriers with unaffected survivorship

    set MORTALITY_DRONES_INFECTED_AS_PUPAE MORTALITY_INHIVE_INFECTED_AS_PUPA
      ; NO data on drone mortality! Use worker mortality!
  ]



  ;***************
  ;; Added by I.S.
  ;***************

  if (DroneBroodRemoval = true or ReadBeeMappFile = true)
  [
    ; In case of useDBRdaysAsDroneEgglayingTime = true: use drone brood removal days for calculating the following drone egglaying start day.
    ; -10 is used for a parameter not used.
    if (useDBRdaysAsDroneEgglayingTime = true)
    [
      if RemovalDay1 != -10 [set droneEgglayingTime2 RemovalDay1 + 1]
      ifelse RemovalDay2 != -10 [set droneEgglayingTime3 RemovalDay2 + 1][set droneEgglayingTime2 -10]
      ifelse RemovalDay3 != -10 [set droneEgglayingTime4 RemovalDay3 + 1][set droneEgglayingTime3 -10]
      ifelse RemovalDay4 != -10 [set droneEgglayingTime5 RemovalDay4 + 1][set droneEgglayingTime4 -10]
      if RemovalDay5 = -10 [set droneEgglayingTime5 -10]
    ]

    ; Check if the drone egglaying start days are within the drone egglaying period.
    if ( (droneEgglayingTime2 != -10 and (droneEgglayingTime2 < DRONE_EGGLAYING_START or droneEgglayingTime2 > DRONE_EGGLAYING_STOP))
      or (droneEgglayingTime3 != -10 and (droneEgglayingTime3 < DRONE_EGGLAYING_START or droneEgglayingTime3 > DRONE_EGGLAYING_STOP))
      or (droneEgglayingTime4 != -10 and (droneEgglayingTime4 < DRONE_EGGLAYING_START or droneEgglayingTime4 > DRONE_EGGLAYING_STOP))
      or (droneEgglayingTime5 != -10 and (droneEgglayingTime5 < DRONE_EGGLAYING_START or droneEgglayingTime5 > DRONE_EGGLAYING_STOP)) )
    [
      set BugAlarm true
      set BugMessage "BUG Alarm: drone egglaying times are not within the drone egglaying period."
      user-message BugMessage
    ]

    ; Check if the removal days are within the drone egglaying period (+ the drone emerging age of 24 days).
    if ( (RemovalDay1 != -10 and (RemovalDay1 < DRONE_EGGLAYING_START or RemovalDay1 > (DRONE_EGGLAYING_STOP + DRONE_EMERGING_AGE) ))
      or (RemovalDay2 != -10 and (RemovalDay2 < DRONE_EGGLAYING_START or RemovalDay2 > (DRONE_EGGLAYING_STOP + DRONE_EMERGING_AGE)))
      or (RemovalDay3 != -10 and (RemovalDay3 < DRONE_EGGLAYING_START or RemovalDay3 > (DRONE_EGGLAYING_STOP + DRONE_EMERGING_AGE)))
      or (RemovalDay4 != -10 and (RemovalDay4 < DRONE_EGGLAYING_START or RemovalDay4 > (DRONE_EGGLAYING_STOP + DRONE_EMERGING_AGE)))
      or (RemovalDay5 != -10 and (RemovalDay5 < DRONE_EGGLAYING_START or RemovalDay5 > (DRONE_EGGLAYING_STOP + DRONE_EMERGING_AGE))) )
    [
      set BugAlarm true
      set BugMessage "BUG Alarm: drone brood removal days are not within the drone egglaying period (+ drone emerging age)."
      user-message BugMessage
    ]

    ; Check that the egglaying times and removal days are without gaps, i.e. if only three removal days should happen
    ;RemovalDay4 & RemovalDay5 are set to -10, and not e.g. RemovalDay1 & RemovalDay3.
    if ( (RemovalDay1 = -10 and (RemovalDay2 > -10 or RemovalDay3 > -10 or RemovalDay4 > -10 or RemovalDay5 > -10))
      or (RemovalDay2 = -10 and (RemovalDay3 > -10 or RemovalDay4 > -10 or RemovalDay5 > -10))
      or (RemovalDay3 = -10 and (RemovalDay4 > -10 or RemovalDay5 > -10))
      or (RemovalDay4 = -10 and RemovalDay5 > -10) )
    [
      set BugAlarm true
      set BugMessage "BUG Alarm: check that the removal days are without gaps, i.e. -10 not followed by actual removal days."
      user-message BugMessage
    ]
    if ( (droneEgglayingTime2 = -10 and (droneEgglayingTime3 > -10 or droneEgglayingTime4 > -10 or droneEgglayingTime5 > -10))
      or (droneEgglayingTime3 = -10 and (droneEgglayingTime4 > -10 or droneEgglayingTime5 > -10))
      or (droneEgglayingTime4 = -10 and droneEgglayingTime5 > -10) )
    [
      set BugAlarm true
      set BugMessage "BUG Alarm: check that the egglaying times are without gaps, i.e. -10 not followed by actual egglaying times."
      user-message BugMessage
    ]

    ; Check that a removal is preceded by drone egglaying event to make sure drone brood on the drone egglaying frame can be removed.
    if ( (DRONE_EGGLAYING_START > RemovalDay1 and RemovalDay1 != -10)
     or (droneEgglayingTime2 > RemovalDay2 and RemovalDay2 != -10)
     or (droneEgglayingTime3 > RemovalDay3 and RemovalDay3 != -10)
     or (droneEgglayingTime4 > RemovalDay4 and RemovalDay4 != -10)
     or (droneEgglayingTime5 > RemovalDay5 and RemovalDay5 != -10)
     or (droneEgglayingTime2 = -10 and RemovalDay2 != -10)
     or (droneEgglayingTime3 = -10 and RemovalDay3 != -10)
     or (droneEgglayingTime4 = -10 and RemovalDay4 != -10)
     or (droneEgglayingTime5 = -10 and RemovalDay5 != -10) )
    [
      set BugAlarm true
      set BugMessage "BUG Alarm: check that a removal event is preceded by a drone egglaying event."
      user-message BugMessage
    ]

    ; In case a drone egglaying time is not followed by a removal day: user-message if that is intended.
    if ( (DRONE_EGGLAYING_START > -10 and RemovalDay1 = -10)
     or (droneEgglayingTime2 > -10 and RemovalDay2 = -10)
     or (droneEgglayingTime3 > -10 and RemovalDay3 = -10)
     or (droneEgglayingTime4 > -10 and RemovalDay4 = -10)
     or (droneEgglayingTime5 > -10 and RemovalDay5 = -10) )
    [
      ifelse (RemovalDay1 = -10 and RemovalDay2 = -10 and RemovalDay3 = -10 and RemovalDay4 = -10 and RemovalDay5 = -10) ;except if all removal days are -10 -> pulsed egglaying without removal.
      []
      [
       user-message "A drone egglaying time is not followed by a removal day - intended?"
      ]
    ]

    set removal_days (list RemovalDay1 RemovalDay2 RemovalDay3 RemovalDay4 RemovalDay5) ; Save the removal days in a list.
    set drone_egglaying_times (list DRONE_EGGLAYING_START droneEgglayingTime2 droneEgglayingTime3 droneEgglayingTime4 droneEgglayingTime5) ; Save the drone egglaying times in a list.
    set days_between_removals (map - removal_days drone_egglaying_times) ; Calculate the time between egg laying & removal days.
    set days_between_removals remove 0 days_between_removals ; Remove 0s (arising from -10 - (-10) if this drone egglaying time and corresponding removal day is not used.

    ; Check correct ordering, i.e. droneEgglayingTime2 < droneEgglayingTime3 and so on.
    let drone_egglaying_times_temp remove -10 drone_egglaying_times ; Remove the -10 from the list to allow correct sorting.
    let drone_egglaying_times_ordered sort drone_egglaying_times_temp
    if drone_egglaying_times_temp != drone_egglaying_times_ordered
    [
      set BugAlarm true
      set BugMessage "BUG Alarm: check that the values of the drone egglaying times are ordered according to their parameter name; if useDBRdaysAsDroneEgglayingTime = true: check also order of drone brood removal days."
      user-message BugMessage
    ]

    ; Check correct ordering, i.e. RemovalDay1 < RemovalDay2 and so on.
    let removal_days_temp remove -10 removal_days ; Remove the -10 from the list to allow correct sorting.
    let removal_days_ordered sort removal_days_temp
    if removal_days_temp != removal_days_ordered
    [
      set BugAlarm true
      set BugMessage "BUG Alarm: check that the values of the drone brood removal days are ordered according to their parameter name."
      user-message BugMessage
    ]
  ]

  set countRemovalDay 0 ; Counter for the removal days during the year.
  ;set cellsDroneBroodFrame 3000 ; Assumption: x cells per drone brood frame -> x/2 per side.
  ;set maxDroneFrameEgglayingDuration 5 ; Maximum days of one drone egglaying event.

  set currentNumDroneEggs 0
  set countDroneEgglayingDays 0

  set countTotalWorkerEggs 0
  set countTotalDroneEggs 0

  ; Check that the days for the varroa treatment are in the correct months.
  if (formicAcidVarroaTreatment = true and ((formicAcidTreatmentDay1-1 != -10 and (formicAcidTreatmentDay1-1 <= 182 or formicAcidTreatmentDay1-1 >= 273 )) or  (formicAcidTreatmentDay2-1 != -10 and (formicAcidTreatmentDay2-1 <= 182 or formicAcidTreatmentDay2-1 >= 273 ))) )
  [
    set BugAlarm true
    set BugMessage "BUG Alarm: treatment day for formic acid treatment is not in July/August/September!"
    user-message BugMessage
  ]

  if (oxalicAcidVarroaTreatment = true and (oxalicAcidTreatmentDay-1 != -10 and (oxalicAcidTreatmentDay-1 <= 305 or oxalicAcidTreatmentDay-1 >= 365 )))
  [
    set BugAlarm true
    set BugMessage "BUG Alarm: treatment day for oxalic acid treatment is not in November/December!"
    user-message BugMessage
  ]

  set factorWorkers 0.56 ; Boot et al. 1995

  ;***************
  ;; ADDITION END.
  ;***************


end;

; ********************************************************************************************************************************************************************************

to CreateImagesProc
  ; "signs" are symbols in the NetLogo "World" which are used to visualize structure
  ; and dynamics of the colony/varroa model

  create-hives 1
  [
    ifelse ReadInfile = true ;
      ; true: hive placed on the left side, else: in the centre
      [ setxy -1 4.5 ]
      [ setxy 16 4.5 ]
    set size 7 set shape "beehiveDeepHive" set color brown
  ]

  create-Signs 1
  [
    setxy 16 -15
    set shape "skull"
    set size 15
    set color black
    hide-turtle
  ] ;

  create-Signs 1
  [
    setxy 40 3
    set shape "sun"
    set size 7
    set color yellow
    hide-turtle
  ] ;

  create-Signs 1
  [
    setxy 37 2
    set shape "cloud"
    set size 7
    set color grey
    hide-turtle
  ]

  create-Signs 1
  [
    setxy 38 -10
    set shape "beelarva_x2"
    set size 8
    set color white
    facexy xcor + 1 ycor + 1 ; (turned by 45deg)
    hide-turtle
  ]

  create-Signs 1
  [
    setxy 31 3
    set shape "arrow"
    set size 4
    set color green
    facexy xcor + 1 ycor
    set label (HoneyEnergyStore - HoneyEnergyStoreYesterday)
           / ( ENERGY_HONEY_per_g * 1000 )
  ]

  create-Signs 1
  [
    setxy 26 3
    set shape "arrowpollen"
    set size 4
    set color green
    facexy xcor - 1 ycor
    set label (PollenStore_g - PollenStore_g_Yesterday)
  ]

  create-Signs 1
    ; sign for suppressed foraging i.e. if foraging prob. is set
    ; to 0 although weather is suitable for foraging
  [
    setxy 36 -4
    set shape "exclamation"
    set size 3
    set color orange
    hide-turtle
  ]

  create-Signs 1
  [
    setxy 38 -18
    set shape "pete"
    set size 6
    set color white
    set label-color black
    hide-turtle
  ]

  create-Signs 1
  [
    setxy 38 -25
    set shape "honeyjar"
    set size 6
    set color white
    hide-turtle
  ]

  create-Signs 1
  [
    setxy 38 -25
    set shape "ambrosia"
    set size 6
    set color white
    hide-turtle
  ]
  create-Signs 1
  [
    setxy 42.5 -25
    set shape "pollengrain"
    set size 7
    set color yellow
    hide-turtle
  ]
  create-Signs 1
  [
    setxy 38 -31
    set shape "varroamite03"
    set size 6
    set color 33
    set heading 0
    hide-turtle
  ]
  create-Signs 1
  [
    setxy 38 -31.2
    set shape "x"
    set size 6
    set color red
    hide-turtle
  ]
  create-Signs 1
  [
    setxy 38 -33
    set shape "colonies_merged"
    set size 6
    set color brown
    set heading 45
    hide-turtle
  ]
  create-Signs 1
  [
    setxy 38 -40
    set shape "queen"
    set size 8
    set color 33
    set heading 0
    hide-turtle
    ]
  create-Signs 1 ; ***NEW FOR BEEHAVE_BEEMAPP2015***
  [
    setxy 38 -40
    set shape "queenx"
    set size 8
    set color 33
    set heading 0
    hide-turtle
    ]
end

; ********************************************************************************************************************************************************************************

to Go
  tick
  DailyUpdateProc
  SeasonProc_HoPoMo
  ; Egg laying & development:
  WorkerEggsDevProc
  DroneEggsDevProc
  NewEggsProc
  if Swarming != "No swarming" [ SwarmingProc ]
  WorkerEggLayingProc
  DroneEggLayingProc
  WorkerLarvaeDevProc
  DroneLarvaeDevProc
  NewWorkerLarvaeProc
  NewDroneLarvaeProc
  WorkerPupaeDevProc
  DronePupaeDevProc
  NewWorkerPupaeProc
  NewDronePupaeProc
  WorkerIHbeesDevProc
  DronesDevProc
  BroodCareProc
  NewIHbeesProc
  NewDronesProc
  ; Varroa mite module:
  MiteProc
;  if (TotalMites > 0) [ MiteProc ]  ; ***NEW FOR BEEHAVE_BEEMAPP2015***

  BeekeepingProc
  DrawIHcohortsProc
  ; Foraging module:
  GenericPlotClearProc
  if ( TotalForagers
         + NewForagerSquadronsHealthy * SQUADRON_SIZE
         + NewForagerSquadronsInfectedAsPupae * SQUADRON_SIZE
         + NewForagerSquadronsInfectedAsAdults * SQUADRON_SIZE ) > 0
    [
      Start_IBM_ForagingProc
    ]

  ask turtles
  [
    set label-color black
    ifelse ploidy = 2
    [
      set label number
    ]
    [
      if ploidy = 1
      [
        set label number
      ]
    ]
  ]
  CountingProc
  CountMitesInMOProc ;; Added by I.S: procedure to count all mites that are currently in the broodcells -> i.e. organised by the miteOrganisers.

  PollenConsumptionProc
  HoneyConsumptionProc
  DoPlotsProc
end

; ********************************************************************************************************************************************************************************

to GoTreatmentProc
  ; similar to "Go", but used if colonies don't start on 1st January
  ; (e.g. to mimic empirical colony treatments), called only once by "Setup"
  ; but contains a "repeat"-loop


;;  repeat (INSERT START DAY)
;;  [
;;    Go
;;    set HoneyEnergyStore (MAX_HONEY_ENERGY_STORE / 5)
;;    set PollenStore_g 0.5 * IdealPollenStore_g
;;    ; guarantees survival of colonies before experiment
;;  ]
;;
;;  ask (turtle-set droneEggCohorts droneLarvaeCohorts) [ set number (INSERT NUMBER) ]
;;
;;  ask (turtle-set dronePupaeCohorts droneCohorts)
;;  [
;;    set number (INSERT NUMBER)
;;    set number_healthy (INSERT NUMBER)
;;    set number_infectedAsPupa (INSERT NUMBER)
;;  ]
;;  ask eggCohorts [ set number (INSERT NUMBER) ]
;;  ask larvaeCohorts [ set number (INSERT NUMBER) ]
;;  ask pupaeCohorts
;;  [
;;    set number (INSERT NUMBER)
;;    set number_Healthy (INSERT NUMBER)
;;    set number_infectedAsPupa (INSERT NUMBER)
;;  ]
;;
;;  ask IHbeeCohorts
;;  [
;;    set number_healthy (INSERT NUMBER)
;;    set number_infectedAsPupa (INSERT NUMBER)
;;    set number_infectedAsAdult (INSERT NUMBER)
;;  ]
;;
;;  set HoneyEnergyStore ENERGY_HONEY_per_g * (INSERT NUMBER OF CELLS WITH HONEY)
;;    ; 1 comb ca. 2*3268 cells (PJK), 1 cell full of honey = 500mg
;;    ; (Schmickl, Crailsheim, HoPoMo)
;;
;;  if Experiment = "INSERT NAME EXPERIMENT A"
;;  [
;;    (INSERT INITIAL CONDITIONS FOR EXERIMENT A)
;;  ]
;;
;;  if Experiment = "INSERT NAME EXPERIMENT B"
;;  [
;;    (INSERT INITIAL CONDITIONS FOR EXERIMENT B)
;;  ]
;;
;;
;;  ask miteOrganisers
;;  [
;;    set droneCellListCondensed n-values (MAX_INVADED_MITES_DRONECELL + 1) [ (INSERT NUMBER) ]
;;  ]    ; +1 as also the number of mite free cells is stored in this list
;;
;;  StartProc
end

; ********************************************************************************************************************************************************************************

to-report FlowerPatchesMaxFoodAvailableTodayREP [ patchID foodType ]
  ; foodType: "Nectar" or "Pollen"
  ; determines the max amount of nectar and pollen available at the patch today
  ; this reporter is ONLY called if ReadInfile = FALSE!!
  ; called by: CreateFlowerPatchesProc (i.e. 1x per run), DailyUpdateProc (i.e. 1x per day),
  ; and        FlowerPatchesUpdateProc (i.e. 1x per foraging round)

  ifelse SeasonalFoodFlow = true
  [
    ; SEASONAL variation of nectar ond pollen availability at RED and
    ; GREEN patch (if SeasonalFoodFlow = ON):
    let patchDayR day + SHIFT_R
    if day + SHIFT_R > 365 [ set patchDayR patchDayR - 365 ]
      ; to shift the seasonal food offer to earlier (+) or later (-) in the year

    let patchDayG day + SHIFT_G
    if day + SHIFT_G > 365 [ set patchDayG patchDayG - 365 ]

    if foodType != "Nectar" and foodType != "Pollen"
    [
      set BugAlarm true
      set BugMessage  "BUG ALARM in FlowerPatchesFoodAvailableTodayREP - Wrong 'foodType' of flower patch!" ;; Global parameter BugMessage added by I.S. to save message in file.
      show BugMessage
    ]
    if patchID != 0 and patchID != 1
    [
      set BugAlarm true
      set BugMessage  "BUG ALARM in FlowerPatchesFoodAvailableTodayREP - Wrong 'who' of flower patch!" ;; Global parameter BugMessage added by I.S. to save message in file.
      show BugMessage
    ]

    if ReadInfile = true
    [
      set BugAlarm true
      set BugMessage  "BUG ALARM in FlowerPatchesFoodAvailableTodayREP - called although ReadInfile = true!" ;; Global parameter BugMessage added by I.S. to save message in file.
      show BugMessage
    ]

    if patchID = 0 ; "RED" patch
    [
      if foodType = "Nectar"
      [
        report (1 - Season_HoPoMoREP patchDayR []) * QUANTITY_R_l * 1000 * 1000
      ]
      if foodType = "Pollen"
      [
        report (1 - Season_HoPoMoREP patchDayR []) * POLLEN_R_kg * 1000
      ]
    ]

    if patchID = 1 ; "GREEN" patch
    [
      if foodType = "Nectar"
      [
        report (1 - Season_HoPoMoREP patchDayG []) * QUANTITY_G_l * 1000 * 1000
      ]
      if foodType = "Pollen"
      [
        report (1 - Season_HoPoMoREP patchDayG []) * POLLEN_G_kg * 1000
      ]
    ]
  ]
  [
    ; ELSE (i.e. if SeasonalFoodFlow = FALSE):
    if foodType = "Nectar"
    [
      if patchID = 0 [ report QUANTITY_R_l * 1000 * 1000 ] ; "red" patch
      if patchID = 1 [ report QUANTITY_G_l * 1000 * 1000 ] ; "green" patch
    ]

    if foodType = "Pollen"
    [
      if patchID = 0 [ report POLLEN_R_kg * 1000 ] ; "red" patch
      if patchID = 1 [ report POLLEN_G_kg * 1000 ] ; "green" patch
    ]
  ]
end



; ********************************************************************************************************************************************************************************

to DailyUpdateProc
  set Day round (ticks mod 365.00001)
  set DeathsAdultWorkers_t 0
  set SumLifeSpanAdultWorkers_t 0
  set DailyMiteFall 0
  set Pupae_W&D_KilledByVirusToday 0
  set NewReleasedMitesToday 0
    ; all (healthy and infected) mites released from cells (mothers+offspring)
    ; on current day (calculated after MiteFall!)

  ask foragerSquadrons [ set km_today 0 ]
  if N_INITIAL_MITES_INFECTED = 0 and AllowReinfestation = false
  [
    if ( count foragerSquadrons with [ infectionState = "infectedAsPupa"]
       + count foragerSquadrons with [ infectionState = "infectedAsAdult"] ) > 0
         or
       ( count IHbeeCohorts with [ number_infectedAsPupa > 0]
       + count IHbeeCohorts with [ number_infectedAsAdult > 0] ) > 0
    [
      set BugAlarm true
      set BugMessage   "BUG ALARM! Infected bees from out of the blue!" ;; Global parameter BugMessage added by I.S. to save message in file.
      show BugMessage
    ]
  ]

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

  ask flowerpatches
  [
    ifelse ( quantityMyl < CROPVOLUME * SQUADRON_SIZE
             and
             amountPollen_g < POLLENLOAD * SQUADRON_SIZE )
      [ set shape "fadedFlower" ] ; IF
      [ set shape "Flower" ] ; ELSE = not empty
  ]

  set DailyForagingPeriod Foraging_PeriodREP
  set HoneyEnergyStoreYesterday HoneyEnergyStore
  set PollenStore_g_Yesterday PollenStore_g
  set LostBroodToday 0
  set Queenage Queenage + 1

  ask patch 0 -27 [ set plabel  5] ask patch 0 -32 [ set plabel 10]
  ask patch 0 -37 [ set plabel 15] ask patch 0 -42 [ set plabel 20]
  ask patch 0 -47 [ set plabel 25] ask patch 0 -52 [ set plabel 30]
  ask patch 0 -57 [ set plabel 35] ask patch 1 -58 [ set plabel "age  "]

  set SearchingFlightsToday 0
  set RecruitedFlightsToday 0
  set NectarFlightsToday 0
  set PollenFlightsToday 0
  set EmptyFlightsToday 0
  set DeathsForagingToday 0

  if ReadInfile = false
  [
    ask flowerPatches
    [ ; flower patches are set to the max. amount of nectar and pollen possible today:
      set quantityMyl FlowerPatchesMaxFoodAvailableTodayREP who "Nectar"
      set amountPollen_g FlowerPatchesMaxFoodAvailableTodayREP who "Pollen"
    ]
   ]

 ask flowerPatches
 [
   set nectarVisitsToday 0 set pollenVisitsToday 0
   if detectionProbability < -1
   [
     set BugAlarm true
     set BugMessage "Wrong detection probability! Set 'ModelledInsteadCalcDetectProb' 'false' and re-start run!" ;; Global parameter BugMessage added by I.S. to save message in file.
     user-message BugMessage
   ]
 ]

 if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

 if ReadInfile = true
 [
   set TodaysSinglePatchList []
     ; short list, contains data of current patch and only for today
   set TodaysAllPatchesList []
     ; shorter list, contains data of all patches, but only for today
   let counter (Day - 1)
   repeat N_FLOWERPATCHES
   [
     ; todays data for ALL N_FLOWERPATCHES flower patches are saved in a new,
     ; shorter list (= todaysAllPatchesList)

     set TodaysSinglePatchList (item counter AllDaysAllPatchesList)
       ; this new, shorter list (= todaysAllPatchesList) is comprised of very
       ; short lists (=todaysSinglePatchList) that contain only the data of the
       ; current patch and only for today

     set TodaysAllPatchesList fput TodaysSinglePatchList TodaysAllPatchesList
       ; fput: faster as lput (NetLogo version 4)! however: list is in reversed order!

     set counter counter + 365
     let id item 1 TodaysSinglePatchList ; patch number

     ask flowerpatch id
     [
       set amountPollen_g item 8 TodaysSinglePatchList ; [g]
       if amountPollen_g < 0 [ set amountPollen_g 0 ]
       set quantityMyl (item 10 TodaysSinglePatchList) * 1000 * 1000
         ; [microlitres]  new nectar value from infile (emptied flowers
         ; replenish nectar completely (or are replace by new flowers))

       if quantityMyl < 0 [ set quantityMyl 0 ]
       if id != who [  set BugMessage "Error in id / who!" user-message BugMessage set BugAlarm true  ] ;; Global parameter BugMessage added by I.S. to save message in file.

       if shape != "fadedflower"
       [
         ifelse amountPollen_g > 250
         [ set shape "flowerorange" ]
         [ set shape "flower" ]
       ]
         ; if a "reasonable" amount of pollen available, patch is shown
         ; as 'pollen patch'

       ifelse quantityMyl < CROPVOLUME * SQUADRON_SIZE [ set color grey ]
       [
         set color scale-color red eef 0 50
           ; colour: reddish, dependent on eef, if eff >= 50: white
       ]
     ]
   ] ; ask flowerpatch ID

   set todaysAllPatchesList reverse todaysAllPatchesList
     ; to correct the reversed order, caused by the fput command
 ] ; repeat

 if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

 ask patches [ set pcolor PATCHCOLOR ]

 ask hives
 [
   set shape "beehiveDeepHive"
     ; # of supers on drawn colony depends on honey store

   if HoneyEnergyStore / ENERGY_HONEY_per_g > 15000 [ set shape "beehive1super" ]
   if HoneyEnergyStore / ENERGY_HONEY_per_g > 30000 [ set shape "beehive2super" ]
   if HoneyEnergyStore / ENERGY_HONEY_per_g > 45000 [ set shape "beehive3super" ]
   if HoneyEnergyStore / ENERGY_HONEY_per_g > 60000 [ set shape "beehive4super" ]
   if HoneyEnergyStore / ENERGY_HONEY_per_g > 75000 [ set shape "beehive5super" ]
   if HoneyEnergyStore / ENERGY_HONEY_per_g > 90000 [ set shape "beehive6super" ]
   if HoneyEnergyStore / ENERGY_HONEY_per_g > 105000 [ set shape "beehive7super" ]
   if HoneyEnergyStore < 0
   [
     if ColonyDied = false
     [
       output-print word "Starvation! Colony died on Day " ticks
     ]
     set ColonyDied true
   ]
 ] ; ask hives

 if (ticks > 1) and (TotalWorkerAndDroneBrood + TotalIHbees + TotalForagers = 0)
 [
   if ColonyDied = false
   [
     output-print word "No bees left! Colony died on Day " ticks
   ]
   set ColonyDied true
 ]

 if (Day = 365)
 [
   output-type word "31.12.: COLONY SIZE: " (TotalIHbees + TotalForagers)
   output-type "   HONEY STORE [kg]: "
   output-print precision (HoneyEnergyStore / (1000 * ENERGY_HONEY_per_g)) 1
   output-print word "total mites: " TotalMites ;; Added by I.S.
 ]

 if (Day = 365) and (TotalIHbees + TotalForagers < CRITICAL_COLONY_SIZE_WINTER)
 [
   if ColonyDied = false
   [
     output-print word "Winter mortality! Colony died on Day " ticks
   ]
   set ColonyDied true
 ]

 if ColonyDied = true
 [
   ask hives [ set color grey ]
     ; grey colony: died! (even if it "recovers" later, it remains grey)

   if stopDead = true
   [
     ask Signs with [shape = "skull"]
     [
       show-turtle
     ]
   ]
   ask patches [ set pcolor black ]
   if stopDead = true
   [
     ask eggCohorts [ set number 0]
     ask larvaeCohorts [ set number 0]
     ask pupaeCohorts
     [
       set number 0
       set number_Healthy 0
       set number_infectedAsPupa 0
     ]
     ask IHbeeCohorts
     [
       set number 0
       set number_Healthy 0
       set number_infectedAsPupa 0
       set number_infectedAsAdult 0
     ]
     ask foragerSquadrons [ die ]
     ask droneEggCohorts [ set number 0]
     ask droneLarvaeCohorts [ set number 0]
     ask dronePupaeCohorts
     [
       set number 0
       set number_Healthy 0
       set number_infectedAsPupa 0
     ]
     ask droneCohorts
     [
       set number 0
       set number_Healthy 0           ; ***NEW FOR BEEHAVE_BEEMAPP2015***
       set number_infectedAsPupa 0    ; ***NEW FOR BEEHAVE_BEEMAPP2015***
     ]
   ]
 ]

 if ReadBeeMappFile = true [ BeeMappCorrectionProc ]   ;  ***NEW FOR BEEHAVE_BEEMAPP2015***
end

; ********************************************************************************************************************************************************************************

to-report Season_HoPoMoREP [ today parameterList ]
  ; see Schmickl&Crailsheim2007: p.221 and p.230
  ; Values HoPoMo: x1 385; x2 30; x3 36; x4 155; x5 30

  let x1 385  ;385
  let x2 25 ; (earlier increase in egg laying rate than in HoPoMo)
  let x3 36    ; 36
  let x4 155   ;155  ; Day of max. egg laying
  let x5 30    ;30
  if empty? parameterList = false
  [
    set x1 item 0 parameterList
    set x2 item 1 parameterList
    set x3 item 2 parameterList
    set x4 item 3 parameterList
    set x5 item 4 parameterList
  ]
  let seas1 (1 - (1 / (1 + x1 * e ^ (-2 * today / x2))))
  let seas2 (1 / (1 + x3 * e ^ (-2 * (today - x4) / x5)))
  ifelse seas1 > seas2
    [ report seas1 ]
    [ report seas2 ]
end

; ********************************************************************************************************************************************************************************

to SeasonProc_HoPoMo
  ; see Schmickl&Crailsheim2007: p.221 and p.230

  set HoPoMo_seasont Season_HoPoMoREP day []
    ; calls to-report SeasonProc_HoPoMoREP to calculate the HoPoMo seasonal
    ; factor on basis of "day" and of a parameter list ("[]"), which is empty in
    ; this case but could contain 5 values: x1..x5
end

; ********************************************************************************************************************************************************************************

to NewEggsProc
  ; CALLED BY WorkerEggLayingProc   see: HoPoMo p.222 & p.230, ignoring ELRstoch
  let ELRt_HoPoMo (MAX_EGG_LAYING * (1 - HoPoMo_seasont))
  if EMERGING_AGE <= 0 [ set BugAlarm true set BugMessage "EMERGING_AGE <= 0" show BugMessage] ;; Global parameter BugMessage added by I.S. to save message in file.

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

  let ELRt_IH (TotalIHbees
      + TotalForagers * FORAGER_NURSING_CONTRIBUTION)
      * MAX_BROOD_NURSE_RATIO / EMERGING_AGE
        ; EMERGING_AGE = 21: total developmental time of worker brood

  let ELRt ELRt_HoPoMo
    ; egg laying rate follows a seasonal pattern as described in
    ; HoPoMo (Schmickl & Crailsheim 2007)

  if EggLaying_IH = true and ELRt_IH < ELRt_HoPoMo
    ; if EggLaying_IH SWITCH is on and not enough nurse bees are available,
    ; the egg laying rate is reduced to ELRt_IH
  [
    set ELRt ELRt_IH
  ]

  if ELRt > MAX_EGG_LAYING
  [
    set ELRt MAX_EGG_LAYING
  ]

  ;   LIMITED BROOD NEST:
  if TotalWorkerAndDroneBrood + ELRt > MAX_BROODCELLS
  [
    set ELRt MAX_BROODCELLS - TotalWorkerAndDroneBrood
  ]


  ; ***********************************
  ; ********** Added by I.S. **********
  ; ***********************************

  ; In case of drone brood removal with a drone brood frame: the egglaying of drone brood is not constant with a certain number of eggs per day, but takes place in egglaying events.
  ifelse DroneBroodRemoval = true
  [
    ; Start of drone egglaying + maximum maxDroneFrameEgglayingDuration days & time periods as specified by the droneEgglayingTime-parameters + maximum maxDroneFrameEgglayingDuration days each.
    ; Based on the HoPoMo curve as before; egg laying until the queen has layed at least 'cellsDroneBroodFrame' drone eggs (with a maximum of maxDroneFrameEgglayingDuration days).

    ; If day is one-of droneEgglayingTime-parameters + max. maxDroneFrameEgglayingDuration days each.
    ifelse ( ( (day >= DRONE_EGGLAYING_START and day < DRONE_EGGLAYING_START + maxDroneFrameEgglayingDuration )
      or (day >= droneEgglayingTime2 and day < droneEgglayingTime2 + maxDroneFrameEgglayingDuration)
      or (day >= droneEgglayingTime3 and day < droneEgglayingTime3 + maxDroneFrameEgglayingDuration)
      or (day >= droneEgglayingTime4 and day < droneEgglayingTime4 + maxDroneFrameEgglayingDuration)
      or (day >= droneEgglayingTime5 and day < droneEgglayingTime5 + maxDroneFrameEgglayingDuration) )
      and countDroneEgglayingDays < maxDroneFrameEgglayingDuration and currentNumDroneEggs < cellsDroneBroodFrame )
    [
      set NewDroneEggs round ELRt ; Majority of eggs on this day are drone eggs.
      set NewWorkerEggs floor(NewDroneEggs * workerEggsProportionOnDroneEgglayingDays); Background worker egg laying to avoid a siginficant drop in worker strength.
      set NewDroneEggs NewDroneEggs - NewWorkerEggs ; Reduce number of worker eggs, so that num worker eggs + num drone eggs = 100 % of that day.

      ; Counter for new drone eggs and days the queen took to lay the eggs.
      set currentNumDroneEggs currentNumDroneEggs + NewDroneEggs
      set countDroneEgglayingDays countDroneEgglayingDays + 1
    ]
    [ ; Else: other days, that are not around the DBR days -> majority is worker eggs.
      set NewWorkerEggs round ELRt  ; ROUND! in contrast to HoPoMo

      ifelse (Day < DRONE_EGGLAYING_START or Day > DRONE_EGGLAYING_STOP)
      [ ; Not in drone season: set drone eggs to 0.
        set NewDroneEggs 0
      ]
      [ ; Else: background drone egg proportion.
        set NewDroneEggs floor(NewWorkerEggs * droneEggsProportionNoDroneEgglayingDay)
      ]

      set NewWorkerEggs NewWorkerEggs - NewDroneEggs ; Reduce worker eggs by number of drone eggs.
    ]
  ]
  [ ; Else: DroneBroodRemoval = false.
    set NewWorkerEggs round ELRt  ; ROUND! in contrast to HoPoMo.

    ifelse (Day < DRONE_EGGLAYING_START or Day > DRONE_EGGLAYING_STOP)
    [ ; Not in drone season: set drone eggs to 0.
      set NewDroneEggs 0
    ]
    [ ; Else, in drone egg season: specified drone egg proportion on each day.
      set NewDroneEggs floor(NewWorkerEggs * droneEggsProportionNoDBR)
    ]

    set NewWorkerEggs NewWorkerEggs - NewDroneEggs ; Reduce worker eggs by number of drone eggs.
  ]

  ; Reset counter -> max. number of days for the current drone egglaying-event has passed.
  if ( day = DRONE_EGGLAYING_START + maxDroneFrameEgglayingDuration
    or day = droneEgglayingTime2 + maxDroneFrameEgglayingDuration
    or day = droneEgglayingTime3 + maxDroneFrameEgglayingDuration
    or day = droneEgglayingTime4 + maxDroneFrameEgglayingDuration
    or day = droneEgglayingTime5 + maxDroneFrameEgglayingDuration )
  [
    set droneFrameEgglayingDuration countDroneEgglayingDays ; Save current number of drone egglaying days for next drone brood removal day.
    ; Reset values for next drone egglaying event.
    set currentNumDroneEggs 0
    set countDroneEgglayingDays 0
  ]

  ; Sum up total worker & drone eggs in one year.
  set countTotalWorkerEggs countTotalWorkerEggs + NewWorkerEggs
  set countTotalDroneEggs countTotalDroneEggs + NewDroneEggs

  if day = 365
  [
    ;print word "drone eggs % " round((countTotalDroneEggs / (countTotalWorkerEggs + countTotalDroneEggs)) * 100) ; Print percentage: drone eggs of total eggs in one year.
    set countTotalWorkerEggs 0
    set countTotalDroneEggs 0
  ]


  ; ***********************************
  ; ********** Added by I.S. END ******
  ; ***********************************



  ; AGEING OF QUEEN - based on deGrandi-Hofmann, BEEPOP:
  if QueenAgeing = true ; GUI: "switch"
  [
    let potentialEggs (MAX_EGG_LAYING
        + (-0.0027 * Queenage ^ 2)
        + (0.395 * Queenage))
          ; Beepops potential egglaying Pt
    set NewWorkerEggs round (NewWorkerEggs * (potentialEggs / MAX_EGG_LAYING) )
  ]

  ; no egg-laying of young queen (also if QUEEN_AGEING = false!):
  ask signs with [ shape = "queenx" ] [ hide-turtle ]  ; ***NEW FOR BEEHAVE_BEEMAPP2015***
  if Queenage <= 10
  [
    set NewWorkerEggs 0
      ; Winston p. 203: 5-6d until sexually mature, 2-4d for orientation and mating flight, mating
      ; can be postponed for 4 weeks if weather is bad

    set NewDroneEggs 0
    ask signs with [ shape = "queenx" ] [ show-turtle ]  ; ***NEW FOR BEEHAVE_BEEMAPP2015***
  ]

  if NewWorkerEggs < 0 ;; Changed by I.S.; before: if NewWorkerEggs < 0 [set NewWorkerEggs 0]
  [
    set BugMessage "BUG Alarm in NewEggsProc: NewWorkerEggs < 0" ;; Global parameter BugMessage added by I.S. to save message in file.
    user-message BugMessage
    set BugAlarm true
  ]
  if NewDroneEggs < 0 ;; Changed by I.S.
  [
    set BugMessage "BUG Alarm in NewEggsProc: NewDroneEggs < 0" ;; Global parameter BugMessage added by I.S. to save message in file.
    user-message BugMessage
    set BugAlarm true
  ]
  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.
end

; ********************************************************************************************************************************************************************************

to SwarmingProc

  ; # total brood triggers swarming
  ; PRE_SWARMING_PERIOD: 3d of preparation before swarming
  ; SwarmingDate: set to 0 in Param.Proc and in SwarmingProc (after swarming and on day 365)

  let fractionSwarm 0.6  ; 0.6 ; Winston p. 187
  let broodSwarmingTH 17000 ; Fefferman & Starks 2006 (model)
  let lastSwarmingDate 199; Winston 1980: prime: 14.05.(134) after swarm: 18.07.(199)
   ; McLellan, Rowland 1986: 162 (modelled),
  if TotalWorkerAndDroneBrood > broodSwarmingTH and SwarmingDate = 0 and day <= (lastSwarmingDate - PRE_SWARMING_PERIOD)
  [
    set SwarmingDate (day + PRE_SWARMING_PERIOD)
  ]

  if day = SwarmingDate
     and Swarming = "Swarm control"
  [
    output-type "Swarming (prevented) on day: " output-print day
  ]

  if day >= SwarmingDate - PRE_SWARMING_PERIOD
     and day <= SwarmingDate
  [
    if Swarming = "Swarming (parental colony)"
    [ ; Swarm PREPARATION of PARENTAL colony:
      set NewDroneEggs 0
      set NewWorkerEggs 0
      if  day = SwarmingDate
      [ ; SWARMING of PARENTAL colony:
        set Queenage -7
          ; a new queen is left in the hive, still in a capped cell, ca. 7d
          ; before she emerges (Winston p. 187)

        ; Winston p. 185: 36mg honey is taken by a swarming bee:
        set HoneyEnergyStore HoneyEnergyStore
           - (( TotalForagers + TotalIHbees) * 0.036 * ENERGY_HONEY_per_g)
           * fractionSwarm

        ; (1-fractionSwarm) of all healthy & infected in-hive bees stay in the hive:
        ask IHbeeCohorts
        [
          set number_Healthy round (number_Healthy * (1 - fractionSwarm))
          set number_infectedAsPupa round (number_infectedAsPupa * (1 - fractionSwarm))
          set number_infectedAsAdult round (number_infectedAsAdult * (1 - fractionSwarm))
          set number number_Healthy + number_infectedAsPupa + number_infectedAsAdult
        ]

        ; (1-fractionSwarm) of all healthy & infected drones stay in the hive:
        ask droneCohorts
        [
          set number_Healthy round (number_Healthy * (1 - fractionSwarm))
          set number_infectedAsPupa round (number_infectedAsPupa * (1 - fractionSwarm))
          set number number_Healthy + number_infectedAsPupa
        ]

        ; fractionSwarm foragers leave the colony and are considered to be dead in the model:
        ask foragerSquadrons
        [
          if random-float 1 < fractionSwarm [ die ]
        ] ; LEAVING foragers are treated as being dead

        ; the phoretic mite population in the hive is reduced:
        set PhoreticMites round (PhoreticMites * (1 - fractionSwarm))
        output-type "Swarming on day: " output-print day
        set SwarmingDate 0  ; allows production of after swarms
      ]
    ]


    if Swarming = "Swarming (prime swarm)"
    [ ; Swarm PREPARATION of PRIME SWARM:
      set NewDroneEggs 0
      set NewWorkerEggs 0
      if  day = SwarmingDate
      [ ; Swarming of PRIME SWARM:
        ask (turtle-set eggCohorts larvaeCohorts droneEggCohorts droneLarvaeCohorts)
        [ ; all brod is left behind and hence removed from the smulation:
          set number 0
        ]
        ask (turtle-set pupaeCohorts dronePupaeCohorts)
        [
          set number 0
          set number_infectedAsPupa 0
          set number_healthy 0
        ]
        set NewWorkerLarvae 0
        set NewDroneLarvae 0
        set NewWorkerPupae 0
        set NewDronePupae 0
        ask IHbeeCohorts
        [ ; fractionSwarm of all healthy & infected in-hive bees join the swarm
          set number_Healthy round (number_Healthy * fractionSwarm)
          set number_infectedAsPupa round (number_infectedAsPupa * fractionSwarm)
          set number_infectedAsAdult round (number_infectedAsAdult * fractionSwarm)
          set number number_Healthy + number_infectedAsPupa + number_infectedAsAdult
        ]

        ask droneCohorts
        [ ; fractionSwarm of all healthy & infected drones join the swarm
          set number_Healthy round (number_Healthy * fractionSwarm)
          set number_infectedAsPupa round (number_infectedAsPupa * fractionSwarm)
          set number number_Healthy + number_infectedAsPupa
        ]

        ask foragerSquadrons
        [ ; (1 - fractionSwarm) foragers do not join the swarm and hence die (in the model):
          if random-float 1 < (1 - fractionSwarm) [ die ]
        ]

        ask miteOrganisers [ die ]
          ; mites in brood cells are left behind in the old colony

        ; the phoretic mite population in the swarm is reduced:
        set PhoreticMites round (PhoreticMites * fractionSwarm)
        set PollenStore_g 0
        set HoneyEnergyStore
              ((TotalForagers + TotalIHbees)
                * 36 * ENERGY_HONEY_per_g) / 1000
          ; Winston p. 185: 36mg honey per bee during swarming
        output-type "Swarming on day: "
        output-print day
        set SwarmingDate 0  ; allows production of after swarms
      ] ; if  day = SwarmingDate ..
    ] ; if Swarming = "Swarming (prime swarm)"   ,,
  ] ; if SwarmingDate > 0 and ..

  if Swarming = "Swarm (daughter colony)"
     and day > SwarmingDate
     and day <= SwarmingDate + POST_SWARMING_PERIOD   ; DAUGHTER COLONY AFTER SWARMING (0d period)
  [ ; no eggs can be laid, no food stored, as long as they have no new home..
    set NewDroneEggs 0
    set NewWorkerEggs 0
    set PollenStore_g 0
    set Aff MAX_AFF
    if HoneyEnergyStore >
      (((TotalForagers + TotalIHbees) * CROPVOLUME) / 1000)
         * 1.36 * ENERGY_HONEY_per_g
    [
      set HoneyEnergyStore (((TotalForagers + TotalIHbees) *
        CROPVOLUME) / 1000) * 1.36 * ENERGY_HONEY_per_g
    ]
  ]
  ; resetting SwarmingDate to zero at the end of a year:
  if day = 365 [ set SwarmingDate 0 ]
end

; ********************************************************************************************************************************************************************************

to WorkerEggLayingProc  ; creation of worker eggs
  create-eggCohorts 1 ;
  [
    set shape "circle"
    set number NewWorkerEggs
    set age 0
    setxy 3 0
    set color blue
    set ploidy 2
  ]
end

; ********************************************************************************************************************************************************************************

to DroneEggLayingProc  ; creation of drone eggs
  create-DroneEggCohorts 1 ;
  [
    set shape "circle"
    set number NewDroneEggs
    ;if Day < DRONE_EGGLAYING_START or Day > DRONE_EGGLAYING_STOP [ set number 0 ] ; I.S.: moved to 'NewEggsProc'
    set age 0
    setxy -5 0
    set color blue
    set ploidy 1
  ]
end

; ********************************************************************************************************************************************************************************

to WorkerEggsDevProc ; ageing, deletion of oldest cohort
  ask eggCohorts
  [
    set age age + 1
    fd 1   ; turtle moves one step (display)
    set number (number - random-poisson (number * MORTALITY_EGGS))
    if number < 0 [ set number 0 ]
      ; random mortality, based on Poisson distribution

    if age = HATCHING_AGE [ set NewWorkerLarvae number ]
    if age >= HATCHING_AGE [ die ]
  ]
end

; ********************************************************************************************************************************************************************************

to DroneEggsDevProc  ; ageing, deletion of oldest cohort
  ask droneEggCohorts
  [
    set age age + 1
    set number (number - random-poisson (number * MORTALITY_DRONE_EGGS))
    if number < 0 [ set number 0 ]  ; random mortality, based on Poisson distribution
    if age = DRONE_HATCHING_AGE [ set NewDroneLarvae number ]
    if age >= DRONE_HATCHING_AGE [ die ]
    fd 1    ; turtle moves one step (display)
  ]
end

; ********************************************************************************************************************************************************************************

to NewWorkerLarvaeProc ; creation of worker larvae
   create-larvaeCohorts 1
   [
     set number NewWorkerLarvae   ; the cohort size
     set age HATCHING_AGE
     set shape "circle"   ; shape
     set color yellow
     setxy 3 (- age)
     set ploidy 2     ; worker larvae are diploid
   ]
end

; ********************************************************************************************************************************************************************************

to NewDroneLarvaeProc  ; creation of drone larvae
   create-droneLarvaeCohorts 1
   [
     set shape "circle"
     set number NewDroneLarvae   ; the cohort size
     set age DRONE_HATCHING_AGE
     set color yellow
     setxy -5 (- age)
     set ploidy 1    ; drone larvae are haploid
   ]
end

; ********************************************************************************************************************************************************************************

to WorkerLarvaeDevProc ; ageing of cohort
  ask larvaeCohorts
  [
    set age age + 1
    fd 1    ; turtle moves one step (display)
    set numberDied 0
    set numberDied random-poisson (number * MORTALITY_LARVAE)
    if numberDied > number [ set numberDied number ]
       ; random mortality, based on Poisson distribution

    set number number - numberDied
    if (numberDied > 0)
       and ( age > INVADING_WORKER_CELLS_AGE )
       and (TotalMites > 0)
    [
      MitesReleaseProc invadedByMiteOrganiserID ploidy numberDied "dyingBrood"
    ]

    if age = PUPATION_AGE
    [
      set NewWorkerPupae number
      set SaveWhoWorkerLarvaeToPupae who   ; "Who" is stored as a global variable
      set SaveInvadedMOWorkerLarvaeToPupae invadedByMiteOrganiserID
    ]
    if age >= PUPATION_AGE [ die ]
  ]
end

; ********************************************************************************************************************************************************************************

to DroneLarvaeDevProc ; ageing of cohort
  ask droneLarvaeCohorts
  [
    set age age + 1
    set numberDied 0
    set numberDied random-poisson (number * MORTALITY_DRONE_LARVAE)
    if numberDied > number [ set numberDied number ]
      ; random mortality, based on Poisson distribution
    set number number - numberDied

    if (numberDied > 0)
       and (age > INVADING_DRONE_CELLS_AGE)
       and (TotalMites > 0)
    [
      MitesReleaseProc invadedByMiteOrganiserID ploidy numberDied "dyingBrood"
    ] ; variables correspond to [ miteOrganiserID ploidyMO diedBrood ]

    fd 1
    if age = DRONE_PUPATION_AGE
    [
      set NewDronePupae number
      set SaveWhoDroneLarvaeToPupae who   ; "Who" is stored as a global variable
      set saveInvadedMODRONELarvaeToPupae invadedByMiteOrganiserID
    ]
    if age >= DRONE_PUPATION_AGE [ die ]
  ]
end

; ********************************************************************************************************************************************************************************

to NewWorkerPupaeProc
  create-pupaeCohorts 1
  [
    set shape "circle"   ; shape of the turtle as shown in the GUI
    set number NewWorkerPupae  ; cohort size
    set number_healthy number ; all newly created pupae are healthy
    set age PUPATION_AGE ; age of the cohort
    setxy 3 (- age)   ; xy position of the turtle in the Netlogo world
    set color brown    ; color of the turtle
    set ploidy 2    ; worker pupae are diploid
    set invadedByMiteOrganiserID SaveInvadedMOWorkerLarvaeToPupae
      ; saves "invadedByMiteOrganiserID" of the old larvaeCohort that has now developed
      ; into a pupaeCohort
    let saveWho who
      ; saves "who" for the following command (transition of larvae to pupae results in the
      ; death of larvae turtles, hence: ensuing pupae turtles have a different "who")
    ask miteOrganisers with [ invadedWorkerCohortID = SaveWhoWorkerLarvaeToPupae ]
    [
      set invadedWorkerCohortID saveWho
    ] ; miteOrganiser updates its value for the invadedWorkerCohortID
  ]
end

; ********************************************************************************************************************************************************************************
to NewDronePupaeProc
   create-dronePupaeCohorts 1
   [
     set shape "circle"
     set number NewDronePupae
     set number_healthy number ; all newly created pupae are healthy
     set age DRONE_PUPATION_AGE
     setxy -5 (- age)
     set color brown
     set ploidy 1
     set invadedByMiteOrganiserID SaveInvadedMODroneLarvaeToPupae
       ; saves "invadedByMiteOrganiserID" of the old larvaeCohort that has
       ; now developed into a pupaeCohort

     let saveWho who
       ; saves "who" for the next line (transition of larvae to pupae results
       ; in the death of larvae turtles, hence: ensuing pupae turtles
       ; have a different "who")

     ask miteOrganisers with [ invadedDroneCohortID = SaveWhoDroneLarvaeToPupae ]
     [
       set invadedDroneCohortID saveWho
     ] ; miteOrganiser updates its value for the invadedDroneCohortID
   ]
end

; ********************************************************************************************************************************************************************************

to WorkerPupaeDevProc
  ; ageing of cohort, oldest cohort may emerge and release mites
  ask pupaeCohorts
  [
    set age age + 1
    fd 1
    set numberDied 0
    set numberDied random-poisson (number * MORTALITY_PUPAE)
    if numberDied > number [ set numberDied number ]
      ; random mortality, based on Poisson distribution
    set number number - numberDied
    set number_healthy number_healthy - numberDied
      ; all pupae are healthy as infection takes place (in the model)
      ; at emergence - and if not..

    if number_infectedAsPupa > 0
    [
      set BugAlarm true
      set BugMessage "BUG ALARM!!! number_infectedAsPupa > 0 in WorkerPupaeDevProcs!" ;; Global parameter BugMessage added by I.S. to save message in file.
      show BugMessage
    ] ;  .. raise a bug alarm!

    if (numberDied > 0) and (TotalMites > 0)
    [
      MitesReleaseProc invadedByMiteOrganiserID ploidy numberDied "dyingBrood"
    ] ; variables correspond to [ miteOrganiserID ploidyMO diedBrood ]

    if age = EMERGING_AGE
    [
      if (number > 0) and (TotalMites > 0)
      [
        MitesReleaseProc invadedByMiteOrganiserID 2 0 "emergingBrood"
      ]  ; invadedByMiteOrganiserID ploidy = 2 numberDied = 0

      set NewIHbees number
      set NewIHbees_healthy number_healthy
    ]

    if age >= EMERGING_AGE [ die ]
  ]

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.
end

; ********************************************************************************************************************************************************************************

to DronePupaeDevProc
  ; ageing of cohort, oldest cohort may emerge and release mites
  ask dronePupaeCohorts
  [
    set age age + 1
    fd 1  ; turtle moves one step (display)
    set numberDied 0
    set numberDied random-poisson (number * MORTALITY_DRONE_PUPAE)

    if numberDied > number [ set numberDied number ]
    set number number - numberDied
    set number_healthy number_healthy - numberDied
      ; all pupae are healthy as infection takes place (in the model) at
      ; emergence - and if not..

    if number_infectedAsPupa > 0
    [
      set BugAlarm true
      set BugMessage "BUG ALARM!!! number_infectedAsPupa > 0 in DronePupaeDevProcs!" ;; Global parameter BugMessage added by I.S. to save message in file.
      show BugMessage
    ] ;  .. raise a bug alarm!
    if (numberDied > 0) and (TotalMites > 0)
    [
      MitesReleaseProc invadedByMiteOrganiserID ploidy numberDied "dyingBrood"
    ] ; variables correspond to [ miteOrganiserID ploidyMO diedBrood ]
    if age = DRONE_EMERGING_AGE
    [
      if (number > 0) and (TotalMites > 0)
      [
        MitesReleaseProc invadedByMiteOrganiserID 1 0 "emergingBrood"
      ]   ; invadedByMiteOrganiserID ploidy = 1 numberDied = 0

      set NewDrones number
      set NewDrones_healthy number_healthy ]
    if age >= DRONE_EMERGING_AGE [ die ]
  ]

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.
end

; ********************************************************************************************************************************************************************************

to NewIHbeesProc
   create-IHbeeCohorts 1
   [
     set shape "circle"
     set number NewIHbees ; all new IH bees
     set number_healthy NewIHbees_healthy ; new, healthy IH bees
     set number_infectedAsPupa number - number_healthy
       ; the others were infected during pupal phase

     set number_infectedAsAdult 0
       ; adult workers hadn't had any chance to become infected so far..

     set age 0
     set color orange
     setxy 3 (- age - EMERGING_AGE - 1)
     set ploidy 2
   ]
end

; ********************************************************************************************************************************************************************************

to NewDronesProc
  create-DroneCohorts 1
  [
    set shape "circle"
    set number NewDrones ; all new drones
    set number_healthy NewDrones_healthy ; new, healthy drones
    set number_infectedAsPupa number - number_healthy ; the others are infected
    set age 0
    set color grey
    setxy -5 (- age - DRONE_EMERGING_AGE - 1)
    set ploidy 1
  ]
end

; ********************************************************************************************************************************************************************************

to AffProc
  ; calculates the actual age of first foraging on basis of nectar stores and
  ; brood/nurse ratio - called by WorkerIHbeesDevProc

  let affYesterDay Aff  ; the current (= yesterday's) Aff is saved
  let pollenTH  0.5
  let proteinTH 1
  let honeyTH 35 * (DailyHoneyConsumption / 1000) * ENERGY_HONEY_per_g
    ; min. desired honey store lasts for 35 days (arbitrarily chosen)
  let broodTH 0.1
  let foragerToWorkerTH 0.3  ; like in Beshers et al. 2001

  ; POLLEN criterion:
  if PollenStore_g / IdealPollenStore_g < pollenTH [ set Aff Aff - 1 ]

  ; PROTEIN criterion:
  if proteinFactorNurses < proteinTH [ set Aff Aff - 1 ]

  ; HONEY criterion:
  if HoneyEnergyStore < honeyTH [ set Aff Aff - 2 ]

  ; FORAGER TO WORKER criterion:
  if (TotalIHbees > 0)
     and (TotalForagers / TotalIHbees < foragerToWorkerTH)
  [
    set Aff Aff - 1
  ]


  ; BROOD TO NURSES criterion:
  if ((TotalIHbees
      + TotalForagers * FORAGER_NURSING_CONTRIBUTION) * MAX_BROOD_NURSE_RATIO)
      > 0
    and
      TotalWorkerAndDroneBrood / ((TotalIHbees
      + TotalForagers * FORAGER_NURSING_CONTRIBUTION) * MAX_BROOD_NURSE_RATIO)
      > broodTH
  [
    set Aff Aff + 2
  ]

  ; to reduce strong deviations from the base Aff:
  if affYesterDay < AFF_BASE - 7 [ set Aff Aff + 1 ]
  if affYesterDay > AFF_BASE + 7 [ set Aff Aff - 1 ]

  ; Aff can be changed only by +-1 per day:
  if Aff < affYesterDay [ set Aff affYesterDay - 1 ]
  if Aff > affYesterDay [ set Aff affYesterDay + 1 ]

  ; MIN and MAX values for Aff:
  if Aff < MIN_AFF [ set Aff MIN_AFF ]
  if Aff > MAX_AFF [ set Aff MAX_AFF ]

end

; ********************************************************************************************************************************************************************************

to WorkerIHbeesDevProc
  ; ageing of IH bees, mortality for healthy and infected IH-workers,
  ; calls CalculateAffProc, calculation of # new foragerSquadrons

  let overagedIHbees 0
    ; bees with age > Aff but have to remain in the last IH cohort, as number < SQUADRON_SIZE

  AffProc
    ; in the AffProc today's age of first foraging (Aff) is calculated
  foreach reverse sort IHbeeCohorts
    ; cohorts have to be asked in order of their age (i.e. in reverse order of
    ; their "who") otherwise over-aged bees vanish with a 50% chance
  [
    x -> ask x
    [
      let deathsCounter 0
        ; # of bees dying in this cohort at current time step

      set age age + 1
      fd 1 ; turtle moves one step (display)

      ; MORTALITY
      ; healthy bees:
      set deathsCounter random-poisson (number_healthy * MORTALITY_INHIVE)
      if deathsCounter > number_healthy [ set deathsCounter number_healthy ]
        ; random mortality, based on Poisson distribution

      set number_healthy number_healthy - deathsCounter
        ; deathCounter: dead HEALTHY bees

      ; infectedAsPupa:
      set deathsCounter
        random-poisson (number_infectedAsPupa * MORTALITY_INHIVE_INFECTED_AS_PUPA)
      if deathsCounter > number_infectedAsPupa
      [
        set deathsCounter number_infectedAsPupa
      ]  ; random mortality, based on Poisson distribution

      set number_infectedAsPupa number_infectedAsPupa - deathsCounter
        ; deathCounter now: dead INFECTED bees

      ; infectedAsAdults:
      set deathsCounter
        random-poisson (number_infectedAsAdult * MORTALITY_INHIVE_INFECTED_AS_ADULT)
      if deathsCounter > number_infectedAsAdult
      [
        set deathsCounter number_infectedAsAdult
      ]  ; random mortality, based on Poisson distribution
      set number_infectedAsAdult number_infectedAsAdult - deathsCounter
        ; deathCounter now: dead INFECTED bees

      set deathsCounter number - number_healthy
        - number_infectedAsPupa - number_infectedAsAdult
        ; deathCounter is now set to the TOTAL number of dead bees

      set number number - deathsCounter
        ; # of bees in this cohort is reduced by # of dead bees

      set DeathsAdultWorkers_t DeathsAdultWorkers_t
        + deathsCounter
        ; sums up # of adult workers dying in current timestep to calculate
        ; mean lifespan of adult bees

      set SumLifeSpanAdultWorkers_t SumLifeSpanAdultWorkers_t
        + (deathsCounter * age)
        ; sums up lifespan of adult workers dying in current timestep

      set InhivebeesDiedToday DeathsAdultWorkers_t

      ; ONSET OF FORAGING
      if age >= Aff
      [
        ; new healthy foragerSquadrons:
        set NewForagerSquadronsHealthy
          floor (number_healthy / SQUADRON_SIZE) + NewForagerSquadronsHealthy
        set overagedIHbees number_healthy mod SQUADRON_SIZE
        ask IHbeeCohorts with [ age = Aff - 1 ]
        [
          set number number + overagedIHbees
          set number_healthy number_healthy + overagedIHbees
        ]
          ; overaged bees would vanish here without "reverse sort", as there
          ; might be no IHbeeCohort with age = Aff - 1! (50% chance)

        ; new foragerSquadrons, which were infected as pupae:
        set NewForagerSquadronsInfectedAsPupae
          floor (number_infectedAsPupa / SQUADRON_SIZE)
               + NewForagerSquadronsInfectedAsPupae

        set overagedIHbees number_infectedAsPupa mod SQUADRON_SIZE
        ask IHbeeCohorts with [ age = Aff - 1 ]
        [
          set number number + overagedIHbees
          set number_infectedAsPupa number_infectedAsPupa + overagedIHbees
        ]
          ; overaged bees would vanish here without "reverse sort", as there might
          ; be no IHbeeCohort with age = Aff - 1! (50% chance)

        ; new infectedAsAdults foragerSquadrons:
        set NewForagerSquadronsInfectedAsAdults
          floor (number_infectedAsAdult / SQUADRON_SIZE)
               + NewForagerSquadronsInfectedAsAdults

        set overagedIHbees number_infectedAsAdult mod SQUADRON_SIZE
        ask IHbeeCohorts with [ age = Aff - 1 ]
        [
          set number number + overagedIHbees
          set number_infectedAsAdult number_infectedAsAdult + overagedIHbees
        ]
          ; overaged bees would vanish here without "reverse sort", as there might
          ; be no IHbeeCohort with age = Aff - 1! (50% chance)
                    ]
      if age >= Aff
      [
        set plabel ""
        die
      ]
    ] ; ask ?
  ] ; foreach reverse sort IHbeeCohorts
end

; ********************************************************************************************************************************************************************************

to DronesDevProc
  ; ageing of cohort, mortality for healthy and infected drones
  ask DroneCohorts [
    fd 1
    set age age + 1

    ; MORTALITY:
    set number_healthy (number_healthy -
        random-poisson (number_healthy * MORTALITY_DRONES))
    if number_healthy < 0 [ set number_healthy 0 ]

    set number_infectedAsPupa
      ( number_infectedAsPupa
        - random-poisson (number_infectedAsPupa * MORTALITY_DRONES_INFECTED_AS_PUPAE) )

    if number_infectedAsPupa < 0 [ set number_infectedAsPupa 0 ]
    set number number_healthy + number_infectedAsPupa
      ; total number of drones = healthy + infected drones
    if age >= DRONE_LIFESPAN [ die ]
  ]
end

; ********************************************************************************************************************************************************************************

to BroodCareProc
  ; checks if enough nurses are present and, if not, kills excess of drone and
  ; worker brood; order of dying: 1. droneEggCohorts 2. droneLarvaeCohorts
  ; 3. eggCohorts 4. larvaeCohorts 5. dronePupaeCohorts 6. pupaeCohorts

  let lackNurses false
    ; all kind of brood might die due to lack of nurse bees..
  let lackProtein false
    ; .. or (drone&worker) LARVAE may die due to lack of protein in brood food

  if ticks > 1 [ CountingProc ]
    ; current # of IH-bees and brood, cannot be called in time step 1, as
    ; counting foragerSquadrons results wrongly in 0

  set ExcessBrood
    ceiling ( TotalWorkerAndDroneBrood
    - (TotalIHbees + TotalForagers * FORAGER_NURSING_CONTRIBUTION)
    *  MAX_BROOD_NURSE_RATIO )
      ; rounded up! totalWorkerDroneBrood: all brood stages of drones & workers;
      ; Nursing: also foragers are assumed to contribute (partly) to brood care

  ifelse ExcessBrood > 0
  [
    set lackNurses true
    ask signs with [shape = "beelarva_x2"]
    [
      show-turtle
      set label ExcessBrood
    ]
  ]
  [
    ask signs with [shape = "beelarva_x2"]
    [
      hide-turtle
    ]
  ]

  let starvedBrood ceiling ((TotalDroneLarvae + TotalLarvae) * (1 - ProteinFactorNurses))
    ; larvae require protein and may die if jelly contains not enough proteins

  if starvedBrood > 0 [ set lackProtein true ]
  if starvedBrood > ExcessBrood [ set ExcessBrood starvedBrood ]
    ; excess of brood is either determined by lack of nurses or lack of protein

  set LostBroodToday LostBroodToday + ExcessBrood
  set LostBroodTotal LostBroodTotal + ExcessBrood
  let stillToKill ExcessBrood
    ; keeps track of the amount of brood that is still to be killed

  if ExcessBrood > 0
  [ ; whenever a brood cell dies, the corresponding miteOrganiser is updated in the
    ; releaseMitesProc! (only for pupae and oldest larvae as eggs and young larvae are
    ; not invaded by mites

    if lackNurses = true
    [
      foreach reverse sort DroneEggCohorts
      [
        x -> ask x    ; young drone eggs die first if not enough nurses are available
        [ while [ (stillToKill * number) > 0 ]
          [
            set number number - 1
            set stillToKill stillToKill - 1
          ]
        ]
      ]
    ]

    if lackNurses = true or lackProtein = true
    [
      foreach reverse sort DroneLarvaeCohorts
      [
        x -> ask x
        [
          while [ (stillToKill * number) > 0 ]
          [ set number number - 1 set stillToKill stillToKill - 1
            if age > INVADING_DRONE_CELLS_AGE and (TotalMites > 0)
            [
              MitesReleaseProc invadedByMiteOrganiserID ploidy 1 "dyingBrood"
            ]
              ; Died brood: always 1! calls releaseMitesProc and transfers variables
              ; (correspond to [ miteOrganiserID ploidyMO diedBrood ])
          ]
        ]
      ]
    ] ; if lackNurses = true or lackProtein = true

    if lackNurses = true
    [
      foreach reverse sort EggCohorts
      [
        x -> ask x
        [
          while [ (stillToKill * number) > 0 ]
          [
            set number number - 1
            set stillToKill stillToKill - 1
          ]
        ]
      ]
    ] ;if lackNurses = true
    ; (stillToKill * number): BOTH, number AND stillToKill have to be > 0 to continue "while"

    if lackNurses = true or lackProtein = true
    [
      foreach reverse sort larvaeCohorts
      [
        x -> ask x
        [
          while [ (stillToKill * number) > 0 ]
          [
            set number number - 1 set stillToKill stillToKill - 1
            if age > INVADING_WORKER_CELLS_AGE and (TotalMites > 0)
            [
              MitesReleaseProc invadedByMiteOrganiserID ploidy 1 "dyingBrood"
            ]
              ; calls releaseMitesProc and transfers variables (correspond
              ; to [ miteOrganiserID ploidyMO diedBrood ])
          ]
        ]
      ]
    ] ; if lackNurses = true or lackProtein = true

    if lackNurses = true
    [
      foreach reverse sort DronePupaeCohorts
      [
        x -> ask x
        [
          while [ (stillToKill * number) > 0 ]
          [
            ifelse random number <= number_healthy ; choose a random pupal cell
              [ set number_healthy number_healthy - 1 set number number - 1  ]
                ; IF pupa is healthy, then number_healthy and (total) number are decreased by one
              [ set number_infectedAsPupa number_infectedAsPupa - 1 set number number - 1 ]
                ; ELSE number_infectedAsPupa and (total) number are decreased by one
            set stillToKill stillToKill - 1
            if (TotalMites > 0)
            [
              MitesReleaseProc invadedByMiteOrganiserID ploidy 1 "dyingBrood"
            ]
          ]
        ]
      ]
    ] ;    if lackNurses = true

    if lackNurses = true
    [
      foreach reverse sort pupaeCohorts
      [
        x -> ask x
        [
          while [ (stillToKill * number) > 0 ]
          [
            ifelse random number <= number_healthy  ; choose a random pupal cell
              [ set number_healthy number_healthy - 1 set number number - 1  ]
                ; IF pupa is healthy, then number_healthy and (total) number are decreased by one
              [ set number_infectedAsPupa number_infectedAsPupa - 1 set number number - 1 ]
                ; ELSE number_infectedAsPupa and (total) number are decreased by one
            set stillToKill stillToKill - 1
            if (TotalMites > 0)
            [
              MitesReleaseProc invadedByMiteOrganiserID ploidy 1 "dyingBrood"
            ]
          ]
        ]
      ]
    ] ; if lackNurses = true

    if stillToKill > 0
    [
      set BugAlarm true
      set BugMessage (word ticks " BUG ALARM! stillToKill > 0") ;; Global parameter BugMessage added by I.S. to save message in file.
      output-show BugMessage
    ]
  ] ; end IF ExcessBrood > 0

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.
end

; ********************************************************************************************************************************************************************************

to DrawIHcohortsProc
  ; # bees in IH cohorts (workers & drones, brood & adults) are drawn as coloured bars

  ask (turtle-set eggCohorts larvaeCohorts pupaeCohorts)
  [                                                                  ;   WORKERS
    set heading 90
    fd 1
    repeat ceiling( 10 * number / STEPWIDTH)
    [
      fd 0.1
      set pcolor color
    ]
    set heading 180 setxy 3 (- age)
  ]

  ask IHbeeCohorts
  [
    set heading 90
    fd 1
    repeat ceiling( 10 * number_healthy / STEPWIDTH)
    [
      fd 0.1
      set pcolor color
    ]
    repeat ceiling( 10 * number_infectedAsAdult / STEPWIDTH)
    [
      fd 0.1
      set pcolor (color - 1)
    ]
    repeat ceiling( 10 * number_infectedAsPupa / STEPWIDTH)
    [
      fd 0.1
      set pcolor (color - 2)
      ]
    set heading 180
    setxy 3 (- age - EMERGING_AGE - 1)
  ] ; ask IHbeeCohorts

  ask (turtle-set droneEggCohorts droneLarvaeCohorts dronePupaeCohorts)  ;   DRONES
  [
    set heading 270
    repeat ceiling( number / STEPWIDTHdrones)
    [
      fd 1
      set pcolor color
    ]
    set heading 180
    setxy -5 (- age)
  ]

  ask DroneCohorts
  [
    set heading 270 repeat ceiling( number_healthy / STEPWIDTHdrones)
    [
      fd 1
      set pcolor color
      ]
    repeat ceiling( number_infectedAsPupa / STEPWIDTHdrones)
    [
      fd 1
      set pcolor (color - 2)
    ]
    set heading 180
    setxy -5 (- age - DRONE_EMERGING_AGE - 1)
  ]
end

; ******************************************************************************************************************************************************************************



;  =============================================================================================================================================================================
;  ===============   IBM FORAGING SUBMODEL ========================   IBM FORAGING SUBMODEL ====================================   IBM FORAGING SUBMODEL =======================
;  =============================================================================================================================================================================

; ******************************************************************************************************************************************************************************

; ********************************************************************************************************************************************************************************

to Start_IBM_ForagingProc
  ; controls the number of foraging trips per day, calls ForagingRoundProc

  let continueForaging true
    ; foraging is continued until it is stopped
  let meanTripDuration 0
  let summedTripDuration 0
  let HANGING_AROUND SEARCH_LENGTH_M / FLIGHT_VELOCITY
    ; [s] duration of a foraging round if all foragers are resting
    ; (= time for unsuccessful search flight)
  let ageLaziness 100
  ; [d] min. age to allow foragers being lazy
  ForagersDevelopmentProc
    ; called before creation of new foragers to avoid ageing by 2d at creation

  NewForagersProc
  ask foragerSquadrons
  [ ; Laziness: lazy bees won't forage and can't be recruited on that day.
    ; applies only to older bees and if the honey store is not too small
    if age >= ageLaziness and
      random-float 1 < ProbLazinessWinterbees and ; ProbLazinessWinterbees: default: 0!
      random-float 1 < (HoneyEnergyStore / DecentHoneyEnergyStore)
     [
       set activity "lazy"
     ]
  ]

  set ForagingSpontaneousProb Foraging_ProbabilityREP
    ; the probability for a resting forager to start spontaneously foraging in a single foraging
    ; round today is calculated in "to-report Foraging_ProbabilityREP "

  set ForagingRounds 0
    ; counter of the foraging rounds
  ask foragerSquadrons
  [
    set activityList [ ]
    ; activityList records all activities of a forager during the day
  ]

  ; always "season" as SEASON_START = 1 & SEASON_STOP = 365 ; Comment by I.S.: SEASON_START & SEASON_STOP were changed by I.S. (to restirct foraging); as done by Horn et al. 2016.
  if ( Day >= SEASON_START )
      and ( Day <= SEASON_STOP )
       ; foraging takes only place during season and while honey store not
       ; (almost) full (0.95: to avoid foraging, when honey cannot be stored)..
      and
       ( HoneyEnergyStore < 0.95 * MAX_HONEY_ENERGY_STORE
         or PollenStore_g < IdealPollenStore_g )
       ;  ..or when pollen is needed
      and DailyForagingPeriod > 0

  [
    while [ continueForaging = true ]
      ; .. and only for a certain time (=DailyForagingPeriod), which is checked
      ; via "continueForaging"
    [

      ;print word "foragin round " ForagingRounds
      ;print count foragersquadrons

      ask foragerSquadrons
      [
        set activityList lput ForagingRounds activityList
        ; the ForagingRounds is added to a foragers activityList
      ]
      ForagingRoundProc
        ; call ForagingRoundProc, which calls all procedures involved in foraging

      set ForagingRounds ForagingRounds + 1
        ; # foraging rounds is increased

      ifelse ColonyTripForagersSum > 0
        [ set meanTripDuration ColonyTripDurationSum / ColonyTripForagersSum ]
          ; IF > 0 (i.e. if at least 1 foraging trip has taken place):  calculate the average time
          ; a forager needed for its trip in this round
        [ set meanTripDuration HANGING_AROUND ]
          ; ELSE: if no one goes foraging: foraging round lasts "HANGING_AROUND" seconds

      set summedTripDuration ( summedTripDuration + meanTripDuration )
        ; mean trip durations are summed up

      ; if the duration of all foraging rounds summed up is larger than DailyForagingPeriod
      ; then foraging ends for today
      if summedTripDuration >= DailyForagingPeriod
      [
        set continueForaging false
      ]  ; until the total time >= DailyForagingPeriod

      if ((Details = true) and (continueForaging = true))
      [
        if WriteFile = true [ WriteToFileProc ]
      ]
        ; if Details & WriteFile true: results are recorded in Output file after each foraging round (trip)
    ]
  ]

  ForagersLifespanProc
    ; mortality of foragers due to max. lifespan, max. km or in-hive mortality risk

  ask foragerSquadrons
  [
    set activity "resting"
    set activityList lput "End" activityList
  ]      ; after foraging is completed for today, all foragers do rest
end;

; ********************************************************************************************************************************************************************************

;  ************** PARAMETERIZATION FLOWER PATCH ****************************************************** PARAMETERIZATION FLOWER PATCH *******************************************

; ********************************************************************************************************************************************************************************

to CreateFlowerPatchesProc
  ; creates 2  flower patches ("red" & "green"),

  set N_FLOWERPATCHES  2 ; 2
  if readInfile = true
  [
    set bugAlarm true
    set BugMessage "BugAlarm in CreateFlowerPatchesProc! Check read-in!" ;; Global parameter BugMessage added by I.S. to save message in file.
    show BugMessage
  ]
  create-flowerPatches N_FLOWERPATCHES
  [
    set patchType "GreenField"
    set distanceToColony DISTANCE_G ;1500  ; [m]
    set xcorMap distanceToColony
    set size_sqm 100000
    set quantityMyl  QUANTITY_G_l * 1000 * 1000; [microlitres]
    set amountPollen_g POLLEN_G_kg * 1000 ;10000 ; 10kg = 10000g
      ; total amount of pollen available at this patch

    if SeasonalFoodFlow = true
    [
      set quantityMyl FlowerPatchesMaxFoodAvailableTodayREP who "Nectar"
      set amountPollen_g FlowerPatchesMaxFoodAvailableTodayREP who "Pollen"
    ]

    set nectarConcFlowerPatch CONC_G
      ;  mean nectar concentration returned to colony ca. 1.4 (assessed from Seeley (1986), Fig 2)

    set detectionProbability DETECT_PROB_G
    set shape "fadedFlower"
    set color green
    set size 4
    ifelse distanceToColony <= 5500
      [ setxy (15.1 + (distanceToColony / 250) )  3 ]  ; IF (distance)
      [ setxy 39.5 3 ]                                 ; ELSE (distance)
  ] ; create-flowerPatches N_FLOWERPATCHES

  ask flowerPatch 0
  [
    set patchType "RedField"
    set distanceToColony DISTANCE_R  ; [m]   ; RED PATCH
    set xcorMap -1 * distanceToColony
    set quantityMyl QUANTITY_R_l * 1000 * 1000 ; [microlitres]
    set amountPollen_g POLLEN_R_kg * 1000 ; [g]

    if SeasonalFoodFlow = true
    [
      set quantityMyl FlowerPatchesMaxFoodAvailableTodayREP who "Nectar"
      set amountPollen_g FlowerPatchesMaxFoodAvailableTodayREP who "Pollen"
    ]

    set nectarConcFlowerPatch CONC_R
    set detectionProbability DETECT_PROB_R
    set color red

    ifelse distanceToColony <= 5500
     [ setxy (14.9 - (distanceToColony / 250) )  3 ]
     [ setxy -7.5 3 ]
  ]
  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

  FlowerPatchesUpdateProc
end;

; *******************************************************************************************************************************************************************************

;  ************** PARAMETERIZATION FLOWER PATCHES FROM FILES  *******************************************************************************************************************

; ********************************************************************************************************************************************************************************

to Create_Read-in_FlowerPatchesProc
  ; copy of CreateFlowerPatchesProc but data are read from input file
  ; calculates derived values (e.g. EEF, flight costs etc)

  let counter 0
  set TodaysAllPatchesList []
    ; shorter list, contains data of all patches, but only for today

  set TodaysSinglePatchList []
    ; short list, contains data of a single patch for today

  set counter Day
    ; counter: to chose only the values for today from the complete
    ; (all days, all patches) list
;user-message counter
  repeat N_FLOWERPATCHES
  [
    ; todays data for ALL N_FLOWERPATCHES flower patches are saved in a
    ; new, shorter list (= todaysAllPatchesList)

    set TodaysSinglePatchList (item counter AllDaysAllPatchesList)
      ; this new, shorter list (= todaysAllPatchesList) is comprised of very
      ; short lists (=todaysSinglePatchList) that contain only the data of the
      ; current patch and only for today

   ; user-message TodaysSinglePatchList

    set todaysAllPatchesList fput TodaysSinglePatchList todaysAllPatchesList
      ; fput: faster as lput! (Netlogo 4) however: list is in reversed order!

    set counter counter + 365
    create-flowerPatches 1
    [
      set oldPatchID item 2 TodaysSinglePatchList
        ; refers to patch number of crop maps from a landscape module,
        ; an optional external tool to read in and analyse maps of food patches

      set patchType item 3 TodaysSinglePatchList ; e.g. Oilseed rape
      set distanceToColony item 4 TodaysSinglePatchList  ; [m]
      set xcorMap item 5 TodaysSinglePatchList ; x coordinate
      set ycorMap item 6 TodaysSinglePatchList ; y coordinate
      set size_sqm item 7 TodaysSinglePatchList  ; patch area [m^2]
      set amountPollen_g item 8 TodaysSinglePatchList ; [g]
      set nectarConcFlowerPatch item 9 todaysSinglePatchList  ; [mol/l]
      set quantityMyl  (item 10 TodaysSinglePatchList) * 1000 * 1000 ; [microlitres]

      let calcDetectProb item 11 TodaysSinglePatchList
      ; calculated in "2_BEEHAVE_FoodFlow"-Tool on basis of distance
      ; (if this input file is created by "BEEHAVE_FoodFlow")

      let modelledDetectProb item 12 TodaysSinglePatchList
        ; modelleded in "3_BEEHAVE_LANDSCAPE" with individual scouts
        ; exploring a 2-dim landscape

      ifelse ModelledInsteadCalcDetectProb = true
        [ set detectionProbability modelledDetectProb ]
        [ set detectionProbability calcDetectProb ]

      set shape "flower"
      set size 1 + (sqrt size_sqm) /  1000
      setxy (distanceToColony / 300) 3
    ]
  ]  ; END of "repeat N_FLOWERPATCHES"
  FlowerPatchesUpdateProc
  set TodaysAllPatchesList reverse TodaysAllPatchesList
    ; to correct the reversed order, caused by the fput command

end;

;  ******************************************************************************************************************************************************************************

to FlowerPatchesUpdateProc
  let energyFactor_onFlower 0.2 ; (0.2)
    ;  reflects reduced energy consumption while bee is sitting on the flower
    ; to collect nectar or pollen;
    ; Kacelnik et al 1986 (BES:19): 0.3 (rough estimation, based on Nunez 1982)

  ;                                                                         HANDLING TIME:
  ask flowerPatches
  [
    if ReadInfile = false
    [
      ifelse ConstantHandlingTime = true
        [
          set handlingTimeNectar TIME_NECTAR_GATHERING  ; IF: handling time constant
          set handlingTimePollen TIME_POLLEN_GATHERING
        ]
        [
          if quantityMyl > 0
          [
            set handlingTimeNectar
              TIME_NECTAR_GATHERING *
              ((FlowerPatchesMaxFoodAvailableTodayREP who "Nectar") / quantityMyl)
          ] ; ELSE: handling time dependent on proportion of nectar or pollen left

          if amountPollen_g > 0
          [
            set handlingTimePollen TIME_POLLEN_GATHERING
            * ((FlowerPatchesMaxFoodAvailableTodayREP who "Pollen") / amountPollen_g)
          ]
        ]
    ] ;     if ReadInfile = false

    if ReadInfile = true
    [
      set TodaysSinglePatchList item who TodaysAllPatchesList
      ifelse ConstantHandlingTime = true
        [ ; IF CONSTANT handling time:
          set handlingTimeNectar item 13 TodaysSinglePatchList
           ;  item 13: handling time nectar
          set handlingTimePollen item 14 TodaysSinglePatchList
        ] ;   item 14: handling time pollen
        [
          ; ELSE: if handling time is NOT constant:
          if quantityMyl > 0   ; nectar handling time
          [
            set handlingTimeNectar (
              item 13 TodaysSinglePatchList) *
              ((item 10 TodaysSinglePatchList) * 1000 * 1000) / quantityMyl
          ] ; item 13: NectarGathering_s, item 10: quantityNectar_l

          if amountPollen_g > 0   ; pollen handling time
          [
            set handlingTimePollen
            (item 14 TodaysSinglePatchList)
            * ((item 8 TodaysSinglePatchList) / amountPollen_g)
          ]  ; item 14: PollenGathering_s; item 8: quantityPollen_g
        ]
    ] ; if ReadInfile = true

      ;                                                                    FLIGHT COSTS & EEF:
    set flightCostsNectar
      ( 2 * distanceToColony * FLIGHTCOSTS_PER_m)
        + ( FLIGHTCOSTS_PER_m * handlingTimeNectar
        * FLIGHT_VELOCITY * energyFactor_onFlower ) ; [kJ] = [m*kJ/m + kJ/m * s * m/s]

    set flightCostsPollen
      ( 2 * distanceToColony * FLIGHTCOSTS_PER_m)
        + ( FLIGHTCOSTS_PER_m * handlingTimePollen
        * FLIGHT_VELOCITY * energyFactor_onFlower )

    set EEF ((nectarConcFlowerPatch * CROPVOLUME
            * ENERGY_SUCROSE) - flightCostsNectar) / flightCostsNectar
      ;  Energetic Efficiency of the flowerPatch





          ;                                                                          TRIP DURATION:
    set tripDuration 2 * distanceToColony * (1 / FLIGHT_VELOCITY )
      + handlingTimeNectar
      ; duration of nectar foraging trip depends on speed, 2*distance + time to
      ; collect nectar from the flowers

    set tripDurationPollen 2 * distanceToColony
      * (1 / FLIGHT_VELOCITY ) + handlingTimePollen
      ; duration of pollen foraging  trip depends on speed, 2*distance + time to
      ; collect pollen from the flowers
          ;                                                                         MORTALITY:
    set mortalityRisk 1 - ((1 - MORTALITY_FOR_PER_SEC) ^ tripDuration)   ; nectar foragers
    set mortalityRiskPollen 1 - ((1 - MORTALITY_FOR_PER_SEC) ^ tripDurationPollen) ; pollen foragers
          ;                                                                          DANCING:
    set danceCircuits DANCE_SLOPE * EEF + DANCE_INTERCEPT  ; derived from Seeley 1994

    if danceCircuits < 0 [ set danceCircuits 0 ]
    if danceCircuits > MAX_DANCE_CIRCUITS [ set danceCircuits MAX_DANCE_CIRCUITS ]
      ; MAX_DANCE_CIRCUITS: ca. 100 (Seeley, Towne 1992)

    if SimpleDancing = true
    [
      ifelse EEF > 20
        [ set danceCircuits 40 ] ; IF
        [ set danceCircuits 0 ]  ; ELSE
    ]

    if AlwaysDance = true [ set danceCircuits 40 ]
      ; in this case, foragers always dance for their patch,
      ; irrespective of its quality

    set danceFollowersNectar danceCircuits * 0.05
      ; Seeley, Reich, Tautz (2005): "0.05 recruits per waggle run (see Fig. 3)"
  ] ; ask flowerPatches
end

; ********************************************************************************************************************************************************************************

to ForagingRoundProc
  ;  CALLED BY Start_IBM_ForagingProc calls Procedures involved in each foraging trip
  ; and does foraging related plots




  set ColonyTripDurationSum 0
  set ColonyTripForagersSum 0
   ; used to calculated duration of this foraging round
  set DecentHoneyEnergyStore (TotalIHbees + TotalForagers ) * 1.5 * ENERGY_HONEY_per_g
   ; DecentHoneyEnergyStore reflects the amount of energy a colony should store
   ; to survive the winter, based on the assumption that a bee consumes ca. 1.5g honey during winter
  if DecentHoneyEnergyStore = 0
  [
    set DecentHoneyEnergyStore 1.5 * ENERGY_HONEY_per_g
  ] ; to avoid division by 0

  ; Proportion of pollen foragers:
  set ProbPollenCollection (1 - PollenStore_g / IdealPollenStore_g)
    * MAX_PROPORTION_POLLEN_FORAGERS
    ; (Pollen foragers: ~ 0-90% of all foragers: Lindauer 1952)

  if HoneyEnergyStore / DecentHoneyEnergyStore < 0.5
  [
    set ProbPollenCollection ProbPollenCollection
    * (HoneyEnergyStore / DecentHoneyEnergyStore)
  ]

  FlowerPatchesUpdateProc
  Foraging_start-stopProc  ; some foragers might spontaneously start foraging



  Foraging_searchingProc    ; unexperienced foragers search new flower patch




  Foraging_collectNectarPollenProc  ; succesful scouts and experienced Foragers gather nectar
  Foraging_flightCosts_flightTimeProc  ; energy costs for flights and trip duration



  Foraging_mortalityProc  ; foragers might die on their way back to the colony



  Foraging_dancingProc    ; successful foragers might dance..




  Foraging_unloadingProc  ; ..and unload their crop & increase colony's honey store

  let foragersAlive SQUADRON_SIZE * count foragerSquadrons

  let currentNectarForagers
     SQUADRON_SIZE * count foragerSquadrons with
       [activity = "expForaging" and pollenForager = false]

  let currentPollenForagers
     SQUADRON_SIZE * count foragerSquadrons with
        [activity = "expForaging" and pollenForager = true]

  let currentResters
     SQUADRON_SIZE * count foragerSquadrons with
        [activity = "resting"]

  let currentScouts
     SQUADRON_SIZE * count foragerSquadrons with
        [activity = "searching"]

  let currentRecruits
     SQUADRON_SIZE * count foragerSquadrons
        with [activity = "recForaging"]

  let currentLazy
     SQUADRON_SIZE * count foragerSquadrons
        with [activity = "lazy"]

  if sqrt ((foragersAlive - currentNectarForagers ; to avoid bugAlarm caused by numeric inaccuracy!
    - currentPollenForagers - currentResters
    - currentScouts - currentRecruits - currentLazy) ^ 2) > 0.0000000001
  [
    set BugAlarm true set BugMessage "BUG ALARM in ForagingRoundProc: wrong number of forager activities!" show BugMessage ;; Global parameter BugMessage added by I.S. to save message in file.
  ]

  if ShowAllPlots = true
  [
   let i 1
   while [ i <= N_GENERIC_PLOTS ]
   [
     let plotname (word "Generic plot " i)
       ; e.g. "Generic plot 1"

     set-current-plot plotname
     if (i = 1 and GenericPlot1 = "active foragers today [%]")
     or (i = 2 and GenericPlot2 = "active foragers today [%]")
     or (i = 3 and GenericPlot3 = "active foragers today [%]")
     or (i = 4 and GenericPlot4 = "active foragers today [%]")
     or (i = 5 and GenericPlot5 = "active foragers today [%]")
     or (i = 6 and GenericPlot6 = "active foragers today [%]")
     or (i = 7 and GenericPlot7 = "active foragers today [%]")
     or (i = 8 and GenericPlot8 = "active foragers today [%]")
     [
       create-temporary-plot-pen "active%"
       set-plot-y-range  0 110
       set-plot-pen-mode 0 ; 0: lines
       ifelse foragersAlive > 0
         [
           plot (100 * SQUADRON_SIZE ; % active foragers of all foragers CURRENTLY alive
                     * (count foragersquadrons
                              with [ activity != "resting" and activity != "lazy"] )) / foragersAlive
         ]    ; i.e. with activities = "searching", "recForaging" or "expForaging"
         [
           plot 0
         ]
       create-temporary-plot-pen "deaths%"
       set-plot-pen-color red
       plot 100 * DeathsForagingToday ; cumulative deaths as % of todays' INITIAL foraging force
               / (foragersAlive + DeathsForagingToday)
     ]

     if (i = 1 and GenericPlot1 = "foragers today [%]")
     or (i = 2 and GenericPlot2 = "foragers today [%]")
     or (i = 3 and GenericPlot3 = "foragers today [%]")
     or (i = 4 and GenericPlot4 = "foragers today [%]")
     or (i = 5 and GenericPlot5 = "foragers today [%]")
     or (i = 6 and GenericPlot6 = "foragers today [%]")
     or (i = 7 and GenericPlot7 = "foragers today [%]")
     or (i = 8 and GenericPlot8 = "foragers today [%]")
    [
      create-temporary-plot-pen "nectar"
      set-plot-pen-color yellow
      set-plot-pen-mode 0 ; 0: lines
      set-plot-y-range 0 100
      ifelse foragersAlive > 0
        [   plotxy ForagingRounds (100 * currentNectarForagers) / foragersAlive
          create-temporary-plot-pen "pollen"
            set-plot-pen-color orange
            plotxy ForagingRounds (100 * currentPollenForagers) / foragersAlive
          create-temporary-plot-pen "scouts"
            set-plot-pen-color green
            plotxy ForagingRounds (100 * currentScouts) / foragersAlive
          create-temporary-plot-pen "resters"
            set-plot-pen-color brown
            plotxy ForagingRounds (100 * currentResters) / foragersAlive
          create-temporary-plot-pen "lazy"
            plotxy ForagingRounds (100 * currentLazy) / foragersAlive
          create-temporary-plot-pen "recruits"
            set-plot-pen-color blue
            plotxy ForagingRounds (100 * currentRecruits) / foragersAlive
        ]
        [
            plotxy ForagingRounds 0
          create-temporary-plot-pen "pollen"
            set-plot-pen-color orange
            plotxy ForagingRounds 0
          create-temporary-plot-pen "scouts"
            set-plot-pen-color green
            plotxy ForagingRounds 0
          create-temporary-plot-pen "resters"
            set-plot-pen-color brown
            plotxy ForagingRounds 0
          create-temporary-plot-pen "lazy"
            plotxy ForagingRounds 0
          create-temporary-plot-pen "recruits"
            set-plot-pen-color blue
            plotxy ForagingRounds 0
        ]
    ]  ; END:  if plotChoice = "foragers today [%]"

   set i i + 1
  ]

  ] ; if ShowAllPlots = true

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.
end

; ********************************************************************************************************************************************************************************

to ForagersDevelopmentProc
  ; foragers age by 1 day, forager turtles move forward
  ask foragerSquadrons
  [
    set age age + 1
    fd 1.8   ; movement on GUI
  ]
end

; ********************************************************************************************************************************************************************************

to NewForagersProc
  ; creates foragerSquadrons as turtles, based on # in-hive bees developing into foragers

  let foragerSquadronsToBeCreated
     NewForagerSquadronsHealthy
     + NewForagerSquadronsInfectedAsPupae
     + NewForagerSquadronsInfectedAsAdults
  let newCreatedBees 0

  create-foragerSquadrons foragerSquadronsToBeCreated
  [
    set newCreatedBees newCreatedBees + 1
    ifelse ticks = 1
      [
        set age 100 + random 60 ; age of initial foragers: 100d + 0..59d
        setxy 40 9
        set color grey
        set size 2
        set heading 90
        set shape "bee_mb_1"
        set mileometer random (MAX_TOTAL_KM / 4)
      ]  ; IF 1st time step: (=initial bees): travelled distace equally distributed,
         ; (winterbees have done only little foraging in autumn!)

      [ ; ELSE: all other foragers
        set age Aff
        setxy (-20 + age) 9
        set color grey
        set size 2
        set heading 90
        set shape "bee_mb_1"
      ]

    set activity "resting"
    set activityList [ ]
    set cropEnergyLoad 0 ; [kJ] no nectar in the crop yet
    set collectedPollen 0 ; [g] no pollen pellets
    set knownNectarPatch -1  ; -1 = no nectar Flower patch known
    set knownPollenPatch -1 ; -1 = no pollen Flower patch known
    set pollenForager false
      ; foragers are nectar foragers except they decide to collect pollen

    ; creation of HEALTHY and INFECTED foragers:
    set infectionState "healthy"
      ; possible infection states are: "healthy" "infectedAsPupa" "infectedAsAdult"

    if newCreatedBees > NewForagerSquadronsHealthy
    [
      set infectionState "infectedAsPupa"
      set ycor ycor - 3
    ]  ; foragers infected as pupa are created

    if newCreatedBees > (NewForagerSquadronsHealthy + NewForagerSquadronsInfectedAsPupae)
    [
      set infectionState "infectedAsAdult"
      set ycor ycor + 1.5
    ] ; foragers infected as adults are created
  ] ; create-foragerSquadrons

  ; the toal number of ever produced foragers is recorded and can be used as output:
  set SummedForagerSquadronsOverTime
     SummedForagerSquadronsOverTime
     + NewForagerSquadronsHealthy
     + NewForagerSquadronsInfectedAsPupae
     + NewForagerSquadronsInfectedAsAdults

  ; no more new foragers have to be created in this time step:
  set NewForagerSquadronsHealthy 0
  set NewForagerSquadronsInfectedAsPupae 0
  set NewForagerSquadronsInfectedAsAdults 0
end;

; ********************************************************************************************************************************************************************************

to-report Foraging_PeriodREP
  let foragingPeriod_s -1
  let foragingHoursList [ ]
  ; "foragingPeriod" = HOURS SUNSHINE ON DAYS WITH Tmax > 15degC

  ; 2000: from weather data Berlin, Germany (DWD), (1.1.-31.12.2000);
  let foragingHoursListBerlin2000
    [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 7.2
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2.5 0 0 0 0
      0 0 0 10.7 0 0 0 0 0 0 0 0 0 0 0 7 0 7.9 6.8 4.7 10.8 11.2 11.8
      11.2 9.9 0 10.7 10.4 4.2 10.6    8.7 5.7 13.3 13.2 12 14 14.1 13.9
      13.1 10.7 7.1 13.7 14.6 15 15.1 15 13.5 10.3 2.6 5.9 0 6 0 8.4 2.4
      0.7 12.1 5.8 6.8 8.7 6 10 8.7 14.2 12.3 7.4 3.4 0.2 7.2 13.2 15.8
      13.9 9.5 11 15.3 4.1 2.1 6 12.7 10.4 15.4 15.1 11.4 8.5 8 1.5 1.5
      2.4 2.6 1.1 0.1 0 9.5 4.5 2.4 3.9 1.3 2.2 8.3 1.1 3.4 2.8 5.1 0.2
      6.4 0.5 3.4 5.2 5.4 0.1 0 1.5 0 0.5 7.9 9.8 4.4 1.6 3.8 2.1 0.6 1
      1.5 10.7 3.8 8.3 7.1 9.3 12.7 6.9 3.6 10.3 3.3 0.2 5.7 11.7 13.4
      7.8 5.2 9.5 5 4.2 5.4 2 7.3 8.5 9 4.7 13.1 10.5 0 7.5 8.6 4.3 8
      2.5 0 2.2 1.2 8.1 2.8 0 0.4 5.1 1.2 6.2 2.1 0.1 5.1 0.3 0 11.7 0
      0 10.4 6.5 11.1 11.3 8.5 1.2 8.8 5.6 10.6 10.3 8.1 3.7 9.4 2.2 0.2
      0 0 0 0 0 2.2 2.9 2.7 6.9 0 6 3.3 0 0 0 7.4 9.1 8.9 1.7 0 0 0 0 4.1
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ]

  ; 2001:
  let foragingHoursListBerlin2001
    [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2.3 10.3 6.2 5.5
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 13 8.1 3.9 6.6 0 3 10.9 13
      13.2 13.6 4.9 0 0 0 9 14.2 14.2 14.7 13.7 12.2 12.6 2.1 8.3 2.9 5.3
      10.1 13.1 8.3 7.5 15.3 15.1 14.9 11.6 6.5 0 6.2 3.5 1 2 0 0 0.7 1.2
      3.1 3.1 1.4 8.9 0 6.9 0 11.3 4.6 6.8 4 8.5 3.2 5.7 14.3 3.3 3.3 2.5
      6 13.6 13.3 14.3 1.7 10.6 12.8 5.6 0.9 12.6 12.4 11.2 13.1 6.6 0.4
      0 5.5 5.4 11.1 6.5 2.5 3 0 0.6 8.5 11.9 11.2 5.9 11.1 7.9 11 10.4
      10.9 14.9 14.5 6.3 12.2 2.7 5.8 12.6 3.9 2.8 5.2 6.5 5.3 5.9 8.5 7.3
      7.4 1.1 0 5.6 13.3 12.8 6.2 0 2.9 6.6 0 9.3 11.8 8.3 10.3 11 3.8 4
      4.3 10.9 2.9 3.9 2.5 0.3 1.2 8.1 2.9 1.6 6.2 0 0.2 0 2.1 0.2 1.5 4.2
      3.8 3.5 0 9.9 0.5 2.6 1.1 9 0 0 0 0 0.8 4.3 0 0 0 2.2 4.5 3.8 9.5 1.1
      7.9 3.9 7.6 0 7.7 7.5 6.3 1.2 5.5 0 0 1.9 6.9 0 0 0 0 0 5.7 0 0 0 3.1
      2.2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
      0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ]

  ; 2002:
  let foragingHoursListBerlin2002
  [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 5.9 8.3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 9.7
    0 0 0 0 0 0 7.2 0 0 0 0 0 0 0 0 0 0 11.2 9.1 2.8 11.2 11 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 5 0 6.7 13.3 3.3 0 0.2 3.2 0 0 0 0 2.7 1 5.8 0 0 4.5 0 8.1
    12.7 11.7 5.2 5.6 7.9 6.7 4.3 10.4 13.7 14.7 0 8.6 10.9 12.9 7.7 2.4 1.4 0
    6.1 0 6.7 11.3 6.1 10.3 13.3 10.4 8.9 7.7 3.9 0 0 0.4 1.7 4.6 1.3 0.2 3
    4.8 6.2 11.1 14.4 6.4 6 4.3 9.9 6.3 9 10.3 10.1 7.4 8.3 5 1.4 0 2 1.9 0.3
    12.2 5.7 4.5 12.9 14.5 11.5 8.2 6.9 7.8 0 1.4 6.4 0.9 0.6 0 2.9 11.7 0.9
    1.6 2 2.9 0.4 8.6 14.3 11.3 11.5 7.1 7.6 0.7 13.4 8.8 0.1 7.5 4.3 2.9 3.7
    4.7 9.1 0 0 1.2 10.4 6.1 6.3 12.2 12.3 12.9 11.8 9.2 10.7 9 9.3 10.6 10.8
    10.5 8.5 8.6 6.7 7.8 11.8 10.4 10.6 6.7 10.6 4.8 10.4 10.9 9 7.2 12.1 10.2
    3.7 8.8 1.5 1.9 3.3 4.3 0.3 2.6 0 0 0 9.4 0 0 0 0.7 6.6 9.3 8.9 6.2 4.3 0
    0 0 0 0 0 0 0 0 0 0 1.2 0 0 0 0 0 0 0.9 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0  ]

  ; 2003:
  let foragingHoursListBerlin2003
  [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 11.5 7.9 0 1.8 0 9.6 8.1 0 9.7 0 0 0 0 0 0 0 0 0 0 0 11.7
    12.4 12.4 12.5 12.7 0 0 11.8 11.7 12.8 12.4 8.6 8.6 0.1 7.3 4.7 2.9 4.5 7.3
    9.5 3.1 13.5 12.4 7.7 9.4 11.6 0.5 4.9 10.6 4.1 3.1 4.6 0 5.3 6.7 7.3 1.7
    5.5 5.9 8.1 1.1 13.1 14.3 5.6 10.3 9.9 15.4 15.4 7.8 14.3 14.4 12.5 13.6 10.9
    11.4 13.6 13.2 11.2 13.6 9.3 12.4 12.5 8.8 8.9 10.3 13.3 3.6 1.8 5.3 2.8 10.8
    5.7 10.9 2.7 3.8 13.9 15.2 5.2 11.6 2.3 6.1 8.1 1.3 0.4 0.1 3.6 4.5 3.1 6.2
    13.4 4.2 6.4 15.7 13.3 13.2 4 6.5 13.4 13.3 8.5 12.6 8.9 6.6 4.2 2.2 7.6 5
    7.5 12.6 4.6 10.4 5 8.1 12.8 12.8 12.1 13.9 13.8 13.9 14.2 14.4 10.5 13 4.6
    9.9 9.4 13.3 6 3.6 10.1 9.3 9.4 4.3 6.8 11.9 7.2 2.6 2.7 2.3 4.6 7.8 3.8 10.8
    2.7 0.8 11.7 11.2 5.7 9.7 2 3.5 0 1.3 3.5 6.1 10.8 8.2 6.9 10.7 11.4 11.3 11.6
    11.1 2.8 9.6 11.4 11.3 3.1 6.5 2.4 0 9.6 1.7 2.4 3.1 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ]

  ; 2004:
  let foragingHoursListBerlin2004
  [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.1 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 9.9 7 1.3 0 0 0 0 0 0 0 0 0 0 0 12 10.6 0 6.5 2.5 0 0 0 0 0 0 0 0 0 13.2 13.1
    12.5 11 8.4 0.5 4.5 3.2 10.4 0 0 10.2 0 2 13.9 11.6 12.5 7.2 0 3.9 5.2 8.2 3.9
    2.3 0 0 4.4 4.7 0 0 6.6 0 9.6 0.4 8 8.4 8.1 0 0 0 0 1.6 0 0 11.6 15.2 14.8 8.7
    7.9 0 12.8 4.2 1.1 12.1 8.2 9.4 2.9 4.6 4 9.1 6.2 6.6 5.5 9.6 1 2.6 4.9 11.7
    11.6 7.7 4.9 5.2 5.4 6.3 0.2 8.6 8.1 4.5 5.8 9.3 7 7.5 6 11.4 13.7 4 3.6 3.9 9.6
    1 0.8 4.2 2.5 1.1 7.5 10.4 7 9.6 5 3.3 10.3 6.5 6.4 4.1 6.7 11.2 14.8 14.4 11.5
    9.7 8.3 8.5 12.2 11.9 13.9 12.4 12.6 12.9 13.7 7.3 11.5 4.9 5.2 12 7.5 5.1 6.3
    6.2 4.2 5.8 10.1 7.1 2.7 2.9 3 1.9 2.1 3.2 0.7 3.8 6.7 12.2 12.4 12.4 12.8 12.4
    10.7 11.6 12.6 12.5 4.5 5.1 4 5.2 7.8 8.1 11.6 11.7 4.7 2.4 1.5 3.2 0 0 3.9 0
    0.2 0.8 1 3.5 0.8 3.7 8.7 5.3 9.5 1.9 8.1 0 0 0 0 0 0 0 0 0 0 0 0 0 6.5 9.3 1.3
    5.4 3.7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ]

  ; 2005:
  let foragingHoursListBerlin2005
  [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.8 0.4
    0 0 0 0 0 0 4.7 7 0 0 0 0 0 0 0 12.3 10.4 11.7 0 9.4 0 0 0 0 0 6.3 2.1 6.7 7 10.2
    10 11.4 10.3 0 0 0 0 0 4.4 11.7 0 8.4 8.5 6.6 11.7 9.7 5 2.5 7.1 2.3 0 0 0 0 0
    0 11.8 1.6 0 8.4 0 0 12.7 11 5.7 4.7 0.4 5.4 9.6 12.7 13.9 15 14.2 0 4.3 0 2.8
    7.9 6.7 2.5 0 0 9.5 6.6 1.2 0 0 11.7 10.2 7.9 11.5 0.4 14.1 11.1 16 11.9 7.2 15.7
    9.8 8.7 14.8 15.7 15 13.8 10.9 0.1 3.2 9.2 12 0 1.1 2.1 0.1 3 14.3 14.8 14.9 13.7
    12 11 9.1 7.3 6.4 4.7 4.3 0 3 0.2 4.6 4 2.1 6.8 7.9 6.8 6.9 9.4 8.5 10.1 0 6.4
    5.6 3.9 5.1 11.1 0.5 0 1.3 8.4 0.6 1.2 4 10.9 6.6 13.7 12.4 8.4 11.5 11.1 0 6.5
    0.2 5.6 11.3 10 12.8 12 12.8 12.3 8.4 0.9 12.4 12.4 12.5 11.9 11.7 11.7 7.4 0 0.2
    6.6 6.9 7 0 8.1 11.7 6.8 5 0.7 11.3 11.2 10.3 10.5 3.6 7.4 0.8 0 3.4 1.7 0 0 5.4
    9.5 10 9.4 8.9 9.2 7.5 9.8 9.7 9.2 9.6 8.6 0 0 0 0 5.7 0 0.2 2.2 0 0 3.3 7.7 8.9
    8.6 8.2 0 0 0 2.7 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ]

  ; 2006:
  let foragingHoursListBerlin2006
  [ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 1.8 1.5 5 0 0 0 3.8 8.5 0 0 0 0 0 8.2 0 0 0 0 0 0 0 0.1 0 0 6.5 9.6 4.3
    0 3.7 0 13.1 4.7 0 0 0 0 10.5 5.6 13.4 12.5 11.9 11 12.2 10.6 14.2 14.7 14.1 12.6
    6.8 4.6 10.5 8.6 1.4 0.3 3.5 6.1 1.5 7.7 5.8 9.9 0 0 1.6 6.6 0 0 2.4 0 11.5 4.4 0
    0 4.8 9 11.5 11.5 15.6 15.8 15.8 15.7 15.2 7.5 5.6 1.2 9.1 9.8 9 7.7 6.4 9.8 12.4
    13 9.7 12.3 10.4 10.2 0.7 14.2 15.8 16 16 15.7 12.9 10.6 2.5 12.3 11.7 10.8 13.3
    8.5 10.3 11.5 13.4 15.7 15.7 15.5 13.9 12 14.1 6 14 12.9 14.8 13.6 5 5 12.9 6 9.3
    8.5 6.4 3.5 0.6 0.8 9.3 4.6 5.3 2 3.9 8.4 0 9.8 2.2 6.9 8.2 3.7 11.2 7.7 4.9 7 0.9
    9.6 3.5 2.3 4.2 6.7 1.2 0.2 4.2 0.2 7.7 0 5.1 9.1 3.7 8.5 6.4 5.3 11.9 12.4 11.5
    12.1 12 11.4 6.4 4.7 9.2 1 8.9 11.3 11.5 11.4 11.3 11.1 9.5 0.1 3 10.2 7.8 3.9 1.3
    0.4 0.2 2.9 0.9 1.4 4.2 9.8 9.1 6.3 8.2 0 0 0 6.7 9.9 7.9 4.8 0 6 5.3 3.2 2.7 4.4
    6.3 7.1 0 1.1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4.7 7.7 1.3 0 0 0 0 0 0 0 0 0 0 0 0
    0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ]

  ; ROTHAMSTED WEATHER DATA 2009:
  ;TH: 15C:
  let foragingHoursListRothamsted2009 [ 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  10.4  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  7.8  0  0  8.9  0  5.4  0  0  0  0  0  0  4.1  6  5.9  0  0  0  0  10.1  12.3  11  9.3  10.5  0  11.5  0  0  11.2  4.5  8  10.3  0  0  5.2  7.5  3.2  0  9.4  10.3  0  11.6  0  0.7  0  0  0  6.9  5.4  8.2  8.7  8.4  12.5  15  7.5  7.5  0.7  6.7  13  15  14.2  14.3  14.9  3.4  11.7  0  0  4.3  2.5  0  0.9  6.5  11.8  5.4  13  5.4  9.4  4.7  6  9.7  2.7  9  5  10.6  13.9  8  2.7  4.7  4.3  10.8  11.7  12.7  12.3  6.2  11.8  9  6.8  4.7  3.7  5.2  9.7  2.2  7.4  7.4  8.7  6.1  3.6  1.9  5.3  3.8  7.8  0.2  7.1  6.1  6.5  11.4  1.8  5.1  6.8  1.6  8.7  8.6  0.9  8.5  5.4  0  5.9  3.2  2.7  9.5  4.8  2.7  8.5  1.8  6.2  3.2  2.6  10.4  7.5  7.5  12.3  5.4  8.4  8.1  11.4  7.3  5.8  2.3  7.4  7.4  8.7  3.8  5.7  7.3  0.4  5.2  7.5  6.1  4.3  0.5  6.7  5.7  7  4.8  9.8  0.8  3.6  0  4.6  1.6  7.7  3.4  4.4  4.9  3.3  1.8  9.7  9.9  8  9.3  0.9  5.2  0.3  5.6  5.5  0.8  4.9  0.1  0.1  0  0  0  4  3.5  0  0  0  0  0  0  0  0  0  0  0  6.2  0.5  4.2  0  1.3  0.6  1.8  0  2.5  0.5  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0.8  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0 ]

  ; ROTHAMSTED WEATHER DATA 2010:
  ; TH: 15C:
    let foragingHoursListRothamsted2010 [ 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  5.3  0  0  0  0  0  5.8  0  0  0  0  0  0  0  0  0  0  0  0  9.3  0  11.4  9.1  10.6  0  0  0  0  0  0  11.8  11.4  0  0  0  0  13.1  11.2  2.4  4.4  10.4  8.1  1.7  0  3  0  0  0  0  0  0  0  0  0  0  0  0  0  8.3  0  6.4  7  8.1  5.9  12.5  14.9  15  14.7  9  5  6.2  10.7  0  10.1  1.1  0  12.8  15.4  12.9  8.5  3.7  5.7  3.1  2.8  0.9  5  4.5  5  6.5  9  12.1  13.9  1.5  0  6.9  9.1  14.6  13  10.2  9  8.9  13.7  14  6.2  7.6  7.3  3.8  10.3  10.2  7.2  7.6  1.4  6.5  12.5  10.8  7.3  4.6  0  2.2  4.1  6.8  9.6  6.3  9.3  5.8  10.3  7.6  1.7  7  2.9  0.9  1.2  2  2  4  6  1.3  3.3  7.3  0.8  5.8  4.6  3  5.8  9.3  1.1  9.6  2.9  2.8  1.4  8  7.2  2.1  6.6  4.9  1.1  1.3  6.3  2.9  8  1.6  0  2.9  7.5  4.7  6  10.2  11.3  11.1  8.5  5.6  2.4  4  5  1.6  4.2  1  3  8.6  2.3  0  5  4.6  6.3  7.3  1.1  5.2  7.5  8.7  1.3  0  0  0  0  0.3  0.1  6.6  0  3.1  1.3  0.1  0.7  5.2  6  4.1  0  6.4  8.6  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  4.7  0  0  0  0  0  0  3.3  2.2  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0 ]

  ; ROTHAMSTED WEATHER DATA 2011:
  ; TH: 15degC
  let foragingHoursListRothamsted2011 [ 0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  5.4  1.7  0  0  0  0  0  0  0  0  0  0  0  0  3.2  0  4.9  0  0  3.9  0  0  0  0  0  3.1  1.1  10.1  10.5  10.2  3  7.5  6.5  4.6  0.2  4.8  3.3  3.9  6.1  6.2  0  11.5  10.2  12.5  12  11.1  8.5  10.2  0  0.2  5  3.6  6.6  6.7  11.3  8.5  7.8  12.6  12.7  10.1  12.8  4.6  10.9  6.8  5.3  12.9  12.2  13  13.2  13.6  6.6  11.8  3.2  6.8  10.8  11  2.1  8  7.2  8.7  5.1  3.6  2.6  1.3  9.8  8.6  12.3  9.4  4.5  11.9  13  3.8  4.1  2.9  4.2  1.5  10.8  9.7  9.8  13.5  10.7  2.6  0.9  9.1  8.5  4.5  6.6  9.4  2  6.6  11.8  3.6  5.2  1.3  6.7  9.8  7.1  7.1  5.2  7  7.3  6.7  12  8.9  1.6  11.1  8.2  8.5  8.3  4.8  4.6  8.7  6.7  4.4  3.3  5.6  4.2  8.3  1  2.1  8.1  9.5  3.2  3.1  1.1  3.6  1.4  1.3  8  6.6  12.7  9.2  1.7  2.3  6.9  2.2  11.3  8.7  7.5  6.9  8.7  0.3  3.5  1.8  4.9  7.5  10.1  7.1  2.5  2.8  2  6.4  7.2  3.5  4.1  0.1  9.6  5.4  6.6  8.8  0  4.2  3.2  1.2  5.6  4.4  4.6  0  1  6.2  8.4  5  2  5.8  0  1.2  1.5  1.5  2.3  5.2  6.9  7.5  8.6  7  4.9  5.9  6  6.6  0.2  2.6  5.3  8.4  6.4  6.9  2.7  6.3  9.5  9.7  9.8  9.2  9.7  6.3  4.1  1.3  7  3.3  0.8  2.3  4.7  1.6  2.3  0.1  8.3  9.3  4.5  2.3  8.2  6  0  3.3  9.1  6.4  4.8  2.8  5.8  0  8.3  4.1  0  0  4.1  3.5  0  1.4  0.5  0  0  0  1.1  1.2  0  0.7  5.9  0  0  0  2.2  3  0  0  0  0  0  2  0  2.8  5.6  0  0.3  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0.4  0  0  0  0  0 ]

  if Weather = "Rothamsted (2009-2011)"
  [
    let inputYear 2011 + round ((ceiling (ticks / 365)) mod 3)
    if inputYear > 2011
    [
      while [inputYear > 2011] [ set inputYear inputYear - 3]
    ] ; after 3 years, 1st dataset is used again etc.

   ;if day = 1 [ type "Rothamsted weather data, year: " print inputYear ]
    if inputYear = 2009 [ set foragingHoursList foragingHoursListRothamsted2009 ]
    if inputYear = 2010 [ set foragingHoursList foragingHoursListRothamsted2010 ]
    if inputYear = 2011 [ set foragingHoursList foragingHoursListRothamsted2011 ]
  ]

  if Weather = "Rothamsted (2009)" [ set foragingHoursList foragingHoursListRothamsted2009 ]
  if Weather = "Rothamsted (2010)" [ set foragingHoursList foragingHoursListRothamsted2010 ]
  if Weather = "Rothamsted (2011)" [ set foragingHoursList foragingHoursListRothamsted2011 ]

  if Weather = "Berlin (2000-2006)"
  [
    let inputYear 2006 + round ((ceiling (ticks / 365)) mod 7)
    if inputYear > 2006 [ while [inputYear > 2006] [ set inputYear inputYear - 7] ]
      ; after 7 years, 1st dataset is used again etc.
    if inputYear = 2000 [ set foragingHoursList foragingHoursListBerlin2000 ]
    if inputYear = 2001 [ set foragingHoursList foragingHoursListBerlin2001 ]
    if inputYear = 2002 [ set foragingHoursList foragingHoursListBerlin2002 ]
    if inputYear = 2003 [ set foragingHoursList foragingHoursListBerlin2003 ]
    if inputYear = 2004 [ set foragingHoursList foragingHoursListBerlin2004 ]
    if inputYear = 2005 [ set foragingHoursList foragingHoursListBerlin2005 ]
    if inputYear = 2006 [ set foragingHoursList foragingHoursListBerlin2006 ]
  ]

  if Weather = "Berlin (2000)" [ set foragingHoursList foragingHoursListBerlin2000 ]

  if Weather != "HoPoMo_Season"
    and Weather != "HoPoMo_Season_Random"
    and Weather != "Constant"
    and Weather != "Weather File"    ;  ***NEW FOR BEEHAVE_BEEMAPP2015***
  [
    set foragingPeriod_s (item (day - 1) foragingHoursList) * 3600
  ] ; [s] hours sunshine on that day, in seconds

  if Weather = "HoPoMo_Season" or Weather = "HoPoMo_Season_Random"
  [
    set foragingPeriod_s 12 * 3600 * (1 - Season_HoPoMoREP day [ 385 25 36 155 60 ])
    if foragingPeriod_s < 3600 [ set foragingPeriod_s 0 ]
  ]   ; bell shape curve of foraging period, 12 * 3600 = 12 hrs max.

  if Weather = "HoPoMo_Season_Random"
  [
    if random-float 1 < 0.15 [ set foragingPeriod_s random-float (4 * 3600)]
  ]

  if Weather = "Constant" [ set foragingPeriod_s 8 * 3600 ]


  ;  begin ***NEW FOR BEEHAVE_BEEMAPP2015***
  if Weather = "Weather File"
  [
    let year_no ceiling (ticks / 365) - 1

    set foragingPeriod_s item (day - 1) ( item ( year_no mod length(WeatherDataList)) WeatherDataList) * 3600
  ]
  ; end ;  ***NEW FOR BEEHAVE_BEEMAPP2015***



  ask signs with [ shape = "sun"]
  [
    ifelse foragingPeriod_s > 0
      [ show-turtle set label precision (foragingPeriod_s / 3600) 1 ]
      [ hide-turtle set label " " ]
  ]   ; "sun" sign is shown, whenever there is an opportunity to forage

  ask signs with [ shape = "cloud"]
  [
    ifelse foragingPeriod_s < (4 * 3600)
      [ show-turtle ]
      [ hide-turtle ]
  ]   ; "cloud" sign is shown, whenever there is less than 4 hrs of foraging possible

  if foragingPeriod_s = -1
  [
    set BugAlarm true
    set BugMessage "BugAlarm in Foraging_PeriodREP! Weather not defined!" ;; Global parameter BugMessage added by I.S. to save message in file.
    show BugMessage
  ]
  if foragingPeriod_s < 0 [ set foragingPeriod_s 0 ]  ;  ***NEW FOR BEEHAVE_BEEMAPP2015***
  report foragingPeriod_s
end

; ********************************************************************************************************************************************************************************

to-report Foraging_ProbabilityREP
  ; calculates the probability that a forager start spontaneously to forage,
  ; called by Start_IBM_Proc once a day
  let foragingProbability 0.01  ; 0.01
    ; default foraging probability per "round" (round: ca. 13 min)
    ; 0.01 comparable to Dornhaus et al 2006: 0.00033/36s
  let highForProb 0.05 ; 0.02
  let emergencyProb 0.2
    ; foraging prob. is increased if pollen is needed:
  if (PollenStore_g / IdealPollenStore_g) < 0.2
  [
    set foragingProbability highForProb
  ]

  if HoneyEnergyStore / DecentHoneyEnergyStore < 0.5
  [
    set foragingProbability highForProb
  ]
   ; foraging prob. is increased if pollen is needed:
  if HoneyEnergyStore / DecentHoneyEnergyStore < 0.2
  [
    set foragingProbability emergencyProb
  ]

  if (PollenStore_g / IdealPollenStore_g) > 0.5 and
     HoneyEnergyStore / DecentHoneyEnergyStore > 1
     [
       set foragingProbability 0
     ] ; no foraging if plenty of honey and pollen is present

  let i 1
   while [ i <= N_GENERIC_PLOTS ]
   [
     let plotname (word "Generic plot " i)
       ; e.g. "Generic plot 1"
     set-current-plot plotname
     if (i = 1 and GenericPlot1 = "foraging probability")
     or (i = 2 and GenericPlot2 = "foraging probability")
     or (i = 3 and GenericPlot3 = "foraging probability")
     or (i = 4 and GenericPlot4 = "foraging probability")
     or (i = 5 and GenericPlot5 = "foraging probability")
     or (i = 6 and GenericPlot6 = "foraging probability")
     or (i = 7 and GenericPlot7 = "foraging probability")
     or (i = 8 and GenericPlot8 = "foraging probability")
     [
       create-temporary-plot-pen "ForProb"
       set-plot-pen-mode 0 ; 0: lines
       plotxy ticks  (foragingProbability)
      ]
       set i i + 1
   ]


 ask Signs with [shape = "exclamation"]
    [ ; if the foraging prob. is set to 0, an exclamation mark is shown
      ; on the interface (beside the weather sign)
      ifelse foragingProbability > 0
        [ hide-turtle ]
        [ show-turtle ]
    ]

 report foragingProbability
end

; ********************************************************************************************************************************************************************************

to Foraging_start-stopProc
  ; decision for pollen or nectar foraging; active foragers may quit foraging;
  ; foragers might spontaneously start or continue foraging (either exploiting known
  ; patch or search new patch)

  let FORAGE_AUTOCORR 0 ;
  ; autocorrelation of chosen forage (i.e. probability to not-reconsider chosen forage
  ; type: 1: always collect the same forage type (i.e. nectar!) if 0: no effect)

  ask foragerSquadrons with [ activity != "recForaging" ]
   ; this does not apply to bees, that followed a dance in the last foraging round
   ; and hence have already made their decision for nectar or pollen foraging
  [


    if random-float 1 > FORAGE_AUTOCORR
    ; if smaller, the bee sticks to her current food type
    [
      ifelse random-float 1 < ProbPollenCollection
        [
          set pollenForager true     ; IF -> pollen forager
          set activityList lput "PF" activityList
        ]
        [
          set pollenForager false    ; ELSE -> nectar forager
          set shape "bee_mb_1" ; ] ] ]
          set activityList lput "NF" activityList
        ]
    ]
  ]

  ask foragerSquadrons with
     [ activity != "resting"
       and activity != "recForaging"
       and activity != "lazy" ]
     ; i.e. ask actively foraging bees
  [
    if random-float 1 < FORAGING_STOP_PROB
    ; active foragers, that weren't recruited in the foraging round before, may abandon foraging
      [
        set activity "resting"
        set activityList lput "AfR" activityList
       ]
  ]

  ; recording of the activities & forage type in the activityList
  ask foragerSquadrons with
     [ activity = "searching" ]
     [



       if pollenForager = true
       [
         set activityList lput "Sp" activityList
       ]
       if pollenForager = false
       [
         set activityList lput "Sn" activityList
       ]
                                                        ]
  ask foragerSquadrons with [ activity = "resting" ]
  [
    set activityList lput "R" activityList
  ]

  ask foragerSquadrons with [ activity = "lazy" ]
  [
    set activityList lput "L" activityList
  ]

  ask foragerSquadrons with
    [ knownNectarPatch >= 0
      and pollenForager = false
    ]
    ; ask experienced NECTAR foragers if they abandon their nectar patch
  [


    if random-float 1 < 1 / [ EEF ] of flowerPatch knownNectarPatch
      and random-float 1 < (HoneyEnergyStore / DecentHoneyEnergyStore)
        ; chance to abandon depends on 1/EEF and is reduced if colony needs nectar
    [
      set knownNectarPatch -1   ; forager doesn't know a nectar patch anymore
      ifelse (activity != "resting" and activity != "lazy")
        [
          set activity "searching"
          set activityList lput "AnSn" activityList
        ] ; active foragers that abandoned their patch have to search a new one
        [
          set activityList lput "An" activityList
        ]  ; resting foragers that abandoned their patch still rest
    ]
  ]

  ask foragerSquadrons with
    [ knownPollenPatch >= 0
      and pollenForager = true ]
    ; ask experienced POLLEN foragers if they abandon their pollen patch
  [
    if random-float 1 < 1 - (1 -
       ABANDON_POLLEN_PATCH_PROB_PER_S) ^ [ tripDurationPollen ] of flowerPatch knownPollenPatch
    [
      set knownPollenPatch -1   ; forager doesn't know a pollen patch anymore
      ifelse ( activity != "resting"
        and activity != "lazy")
        [
          set activity "searching"
          set activityList lput "ApSp" activityList
        ] ; active foragers that abandoned their patch have to search a new one
        [
          set activityList lput "Ap" activityList
        ]  ; resting foragers that abandoned their patch still rest
    ]
  ]

  ask foragerSquadrons with [ activity = "resting" ]
  [
    if random-float 1 < ForagingSpontaneousProb
      ;  resting foragers may start foraging spontaneously..
    [
      if pollenForager = false
        ; ask (resting) nectar foragers to become active
      [
        ifelse knownNectarPatch >= 0
          [
            set activity "expForaging"
            set activityList lput "Xn" activityList
          ] ; IF they already know a NECTAR patch, they become experienced nectar foragers
          [
            set activity "searching"
            set activityList lput "Sn" activityList
          ] ; ELSE: they become scouts and search a new one
      ]

      if pollenForager = true   ; ask (resting) pollen foragers to become active
      [
        ifelse knownPollenPatch >= 0
          [
            set activity "expForaging"
            set activityList lput "Xp1" activityList
          ] ; IF they already know a POLLEN patch, they become experienced pollen foragers
          [
            set activity "searching"
            set activityList lput "Sp" activityList
          ] ; ELSE: they become scouts and search a new one
      ]
    ] ; "if random-float 1 < ForagingSpontaneousProb"
  ]
  ask foragerSquadrons  ; if bees are "exhausted" they cease foraging on that day:
  [
    if km_today >= MAX_km_PER_DAY
    [
      set activity "resting"
    ]
  ]

end

; ********************************************************************************************************************************************************************************

to Foraging_searchingProc
  ; called by: ForagingRoundProc, determines if a patch (and which one) is
  ; found by a searching forager

  let patchCounter 0
  let probSum 0  ; necessary to decide, which flower patch is found
  let chosenPatch -1  ; -1: i.e. no patch chosen yet
  let cumulative_NON-detectionProb 1
  let nowAvailablePatchesList [ ]

  ask flowerPatches with
     [ quantityMyl >= CROPVOLUME * SQUADRON_SIZE
       or amountPollen_g >= POLLENLOAD * SQUADRON_SIZE ]
     ; only patches with enough nectar OR pollen left are considered
  [
    set probSum probSum + detectionProbability ; sums up the detection probabilities of patches, to decide later, which patch was actually found
    set cumulative_NON-detectionProb
      cumulative_NON-detectionProb * (1 - detectionProbability)
        ; Probability to find any patch is: 1 - Probability, to find no patch at all
    set nowAvailablePatchesList fput who nowAvailablePatchesList
  ]

  set TotalFPdetectionProb (1 - cumulative_NON-detectionProb)
    ; Probability to find ANY (not empty!) flower patch during one search trip

  ask foragerSquadrons with [ activity = "searching" ]
  [
    set SearchingFlightsToday SearchingFlightsToday + SQUADRON_SIZE
      ; counts the numer of search flights on current day
    ifelse random-float 1 < TotalFPdetectionProb
      ; if any (not empty!!) flower patch found by the forager:
      [
        let p random-float probSum   ; to decide which flower patch is found
        set patchCounter 0
        set chosenPatch -1

        foreach nowAvailablePatchesList
        [
          x -> ask flowerPatch x   ;  "?" item of the list
          [  ; the patch is randomly chosen, according to its detection probability:
            set patchCounter patchCounter + detectionProbability
            if (patchCounter >= p) and (chosenPatch = -1) [ set chosenPatch who ]
          ]
        ]

        ifelse pollenForager = false
          [ set knownNectarPatch chosenPatch ]
            ; IF nectar forager: detected patch is memorised as nectar patch
          [ set knownPollenPatch chosenPatch ]
            ; ELSE pollen forager: detected patch is memorised as pollen patch

        if (knownNectarPatch < 0 and knownPollenPatch < 0)
        [
          set BugMessage "BUG: negative flower patches!" ;; Global parameter BugMessage added by I.S. to save message in file.
          user-message BugMessage
          set BugAlarm true
        ]

        ifelse ( pollenForager = false
          and [ quantityMyl ] of flowerPatch chosenPatch >= (CROPVOLUME * SQUADRON_SIZE))
            ; collection of NECTAR - only if nectar is available at the chosen patch!
            ; this is necessary as the patch may offer only pollen
          [
            set activity "bringingNectar"  ; then the scout becomes a successful nectar forager
            set activityList lput "fN" activityList

            ask flowerPatch knownNectarPatch
            [
              set quantityMyl (quantityMyl - (CROPVOLUME * SQUADRON_SIZE))
                ; quantity of nectar in patch is reduced

              set nectarVisitsToday nectarVisitsToday + SQUADRON_SIZE
              set summedVisitors summedVisitors + SQUADRON_SIZE
            ] ; and numbers of visitors increased
          ]
          [ ; ELSE: found a patch but it doesn't offer nectar: feN: "found empty nectar patch"
            if pollenForager = false
            [
              set knownNectarPatch -1
              set activityList lput "feN" activityList
            ]
          ]

        ifelse ( pollenForager = true
          and [ amountPollen_g ] of flowerPatch chosenPatch >= (POLLENLOAD * SQUADRON_SIZE))
            ; collection of POLLEN - only if pollen is available at the chosen patch!
          [
            set activity "bringingPollen"  ; then the scout becomes a successful pollen forager
            set activityList lput "fP" activityList

            ask flowerPatch knownPollenPatch
            [
              set amountPollen_g (amountPollen_g - (POLLENLOAD * SQUADRON_SIZE))
                ; quantity of nectar in patch is reduced
              set pollenVisitsToday pollenVisitsToday + SQUADRON_SIZE
              set summedVisitors summedVisitors + SQUADRON_SIZE
            ] ; and numbers of visitors increased
          ]
          [
            if pollenForager = true
            [
              set knownPollenPatch -1
              set activityList lput "feP" activityList
            ]
          ] ; ELSE: found patch does not offer nectar: feP: "found empty pollen patch"
      ] ; "ifelse random-float 1 < TotalFPdetectionProb"

      ; ELSE: no patch is found; uS = unsuccessful searching
      [
        set activityList lput "uS" activityList
      ]
  ] ; "ask foragerSquadrons with [ activity = "searching" ]"

  ask foragerSquadrons with ; ask recruited NECTAR foragers:
     [ activity = "recForaging" ; forager is recruited
       and knownNectarPatch >= 0 ; it knows a patch where it is recruited to
       and pollenForager = false ] ; and it is looking for nectar
  [ ; the flights of recruited bees are counted:
    set RecruitedFlightsToday RecruitedFlightsToday + SQUADRON_SIZE
    ; IF(1) recruited Forager finds the nectar patch:
    ifelse random-float 1 < FIND_DANCED_PATCH_PROB
      [ ; and IF (2) nectar is still there:
        ifelse [ quantityMyl ] of flowerPatch knownNectarPatch >= (CROPVOLUME * SQUADRON_SIZE)
          [  ; .. then the recruit becomes a successful nectar forager
            set activity "bringingNectar"
            ; which is recorded in its activityList:
            set activityList lput "frN" activityList
            ask flowerPatch knownNectarPatch
            [  ; the nectar in the patch is then reduced:
              set quantityMyl (quantityMyl - (CROPVOLUME * SQUADRON_SIZE))
              ; the visit is counted:
              set nectarVisitsToday nectarVisitsToday + SQUADRON_SIZE
              set summedVisitors summedVisitors + SQUADRON_SIZE
            ]
          ]
          [  ; ELSE(2): if patch has not enough nectar, recruit becomes a scout again
            set activity "searching"
            set activityList lput "eSn" activityList
            ; and the patch is forgotten:
            set knownNectarPatch -1
          ]
      ]
      [ ; ELSE(1): if the recruits does not find the patch, it starts searching
        set activity "searching"
        set activityList lput "mSn" activityList
        ; and forgets "known" nectar patch
        set knownNectarPatch -1
      ]
  ]

  ; also recruited POLLEN foragers are searching a patch:
  ask foragerSquadrons with
     [ activity = "recForaging"
       and knownPollenPatch >= 0
       and pollenForager = true ]
  [
    set RecruitedFlightsToday RecruitedFlightsToday + SQUADRON_SIZE
    ; they find their patch with the probability of FIND_DANCED_PATCH_PROB
    ifelse random-float 1 < FIND_DANCED_PATCH_PROB
      ; IF(1) recruited Forager finds the pollen patch...
      [
        ifelse [ amountPollen_g ] of flowerPatch knownPollenPatch >= (POLLENLOAD * SQUADRON_SIZE)
          ; ..and pollen is still there..
          [ set activity "bringingPollen"
            ; .. then the recruit becomes a successful pollen forager
            set activityList lput "frP" activityList
            ask flowerPatch knownPollenPatch
            [
              set amountPollen_g (amountPollen_g - (POLLENLOAD * SQUADRON_SIZE))
                ; ..pollen in the patch is reduced
              set pollenVisitsToday pollenVisitsToday + SQUADRON_SIZE
              set summedVisitors summedVisitors + SQUADRON_SIZE
            ]  ; ..and numbers of visitors increased
          ]
          [ ; ELSE(2): if patch has not enough pollen, recruit becomes a scout again
            set activity "searching"
            set activityList lput "eSp" activityList
            set knownPollenPatch -1
          ]
      ]
      [ ; ELSE(1): if she does not find the patch, she starts searching
        ; (but can't find another patch in this foraging round)
        set activity "searching"
        set activityList lput "mSp" activityList
        ; it forgets its "known" pollen patch:
        set knownPollenPatch -1
      ]
  ] ; "ask foragerSquadrons with [ activity = "recForaging"]"

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

end;

; ********************************************************************************************************************************************************************************

to Foraging_collectNectarPollenProc
  ; successful foragers gather nectar/pollen (if still available) and decrease
  ; nectar/pollen in flower patch

   ; ask experienced NECTAR foragers:
  ask foragerSquadrons with
     [ activity = "expForaging"
       and knownNectarPatch >= 0
       and pollenForager = false ]
  [ ; does patch still have enough nectar?:
    ifelse [ quantityMyl ] of flowerPatch knownNectarPatch >= (CROPVOLUME * SQUADRON_SIZE)
      [ ; the forager will then be bringing nectar:
        set NectarFlightsToday NectarFlightsToday + SQUADRON_SIZE
        set activity "bringingNectar"
        ; this is recorded in its activityList:
        set activityList lput "N" activityList

        ask flowerPatch knownNectarPatch
        [ ; available nectar in the patch is reduced:
          set quantityMyl (quantityMyl - ( CROPVOLUME * SQUADRON_SIZE))
          ; the visits are counted:
          set nectarVisitsToday nectarVisitsToday + SQUADRON_SIZE
          ; and numbers of visitors increased:
          set summedVisitors summedVisitors + SQUADRON_SIZE
        ]
      ]
      [ ; ELSE: not enough nectar available at the patch
        ; the forager will then become a scout:
        set activity "searching"
        set activityList lput "eSn" activityList
        ; the bee forgets this empty nectar patch
        set knownNectarPatch -1
      ]
  ]

  ; ask experienced POLLEN foragers:
  ask foragerSquadrons with
     [ activity = "expForaging"
       and knownPollenPatch >= 0
       and pollenForager = true ]
  [ ; does patch still have enough pollen?
    ifelse [ amountPollen_g ] of flowerPatch knownPollenPatch >= (POLLENLOAD * SQUADRON_SIZE)
     [ ; IF patch has enough pollen:
       set PollenFlightsToday PollenFlightsToday + SQUADRON_SIZE
       ; the forager will then be bringing pollen:
       set activity "bringingPollen"
       set activityList lput "P" activityList

       ask flowerPatch knownPollenPatch
       [  ; available pollen in the patch is reduced:
         set amountPollen_g (amountPollen_g - (POLLENLOAD * SQUADRON_SIZE))
         set pollenVisitsToday pollenVisitsToday + SQUADRON_SIZE
          ; and numbers of visitors increased
         set summedVisitors summedVisitors + SQUADRON_SIZE ]
     ]
     [ ; ELSE: not enough pollen available at the patch
       ; the forager will then become a scout:
       set activity "searching"
       set activityList lput "eSp" activityList
       set knownPollenPatch -1
     ]
  ]

  ; experienced pollen foragers, who know a nectar patch but no pollen patch
  ; or experienced nectar foragers, who know a pollen patch but no nectar patch:
  ; this can happen if e.g. an exp. nectar foragers switches to pollen foraging
  ; these bees switch to "resting" and DO NOT LEAVE THE HIVE!
  ; hence, their mileometer or km_today doesn't change
  ; and they are not considered in the Foraging_MortalityProc
  ask foragerSquadrons with
     [ ( activity = "expForaging"    ; experienced (but got its experience as pollen forager!)
         and pollenForager = false   ; has now switched to nectar foraging
         and knownNectarPatch = -1   ; but doesn't know a nectar patch
         )
         or
       ( activity = "expForaging"    ; experienced (but got its experience as nectar forager!)
         and pollenForager = true    ; has now switched to pollen foraging
         and knownPollenPatch = -1   ; but doesn't know a pollen patch
         )]
  [
    set activity "resting"       ; switch to resting - i.e. they haven't left the hive in this foraging round
    set activityList lput "Rx" activityList
  ]

  ; ask successful NECTAR foragers:
  ask foragerSquadrons with [ activity = "bringingNectar" ]
  [ ; the energy content of their cropload is calculated, which depends on the nectar concentration:
    set cropEnergyLoad ([ nectarConcFlowerPatch ] of
       flowerPatch knownNectarPatch * CROPVOLUME * ENERGY_SUCROSE)  ; [kJ]

    ; the distance they have travelled today is increased..
    set km_today km_today + ([ flightCostsNectar ] of
       flowerPatch knownNectarPatch / (FLIGHTCOSTS_PER_m * 1000))

    ; and also their total travelled distance:
    set mileometer mileometer + ([ flightCostsNectar ] of
      flowerPatch knownNectarPatch / (FLIGHTCOSTS_PER_m * 1000))  ;

    ifelse readInfile = true
      [ ; if patch data are read in, then the color of the bee
        ; reflects the ID of the flower patch:
        ; set color knownNectarPatch
        let memoColor 0
        ask flowerPatch knownNectarPatch [ set memoColor color ]
        set color memoColor
      ]
      [ ; ELSE: if there are 2 patches, defined via GUI,
        ; then the color of the bee reflects the patch it is foraging at:
        if knownNectarPatch = -1 [ set color grey ]
        if knownNectarPatch = 0 [ set color red ]
        if knownNectarPatch > 0 [ set color green ]
      ]
  ]

  ; and similar for successful POLLEN foragers:
  ask foragerSquadrons with [ activity = "bringingPollen" ]
  [ ; the pollen load is the same for all patches!
    set collectedPollen POLLENLOAD ; [g]
    set shape "bee_mb_pollen"

    ; the distance they have travelled today is increased..
    set km_today km_today + ([ flightCostsPollen ] of
      flowerPatch knownPollenPatch / (FLIGHTCOSTS_PER_m * 1000))

    ; and also their total travelled distance:
    set mileometer mileometer + ([ flightCostsPollen ] of
      flowerPatch knownPollenPatch / (FLIGHTCOSTS_PER_m * 1000))  ;

    ifelse readInfile = true
      [ ; the color of the bee is set according to its flower patch:
        ; set color knownPollenPatch
        let memoColor 0
        ask flowerPatch knownPollenPatch [ set memoColor color ]
        set color memoColor
      ]
      [
        if knownPollenPatch = -1 [ set color grey ]
        if knownPollenPatch = 0 [ set color red ]
        if knownPollenPatch > 0 [ set color green ]
      ]
  ]
end;

; ********************************************************************************************************************************************************************************

to Foraging_flightCosts_flightTimeProc
  ; sums up travelled distance for unsuccessful scouts and honey consumption due to foraging, trip duration
  ; consumption is subtracted from honey store, not from the crop, as it is empty for unsuccessful scouts
  let energyConsumption 0

  ; flight distance for successful foragers is calculated in Foraging_collectNectarPollenProc!
  ; flight distance for unsuccessful scout is calculated here:
  ask foragerSquadrons with [ activity = "searching" ]
  [ ; the search length [m] of the foraging trip is added to today's km and the lifetime km (mileometer):
    set km_today km_today + ( SEARCH_LENGTH_M / 1000 )
    set mileometer mileometer + ( SEARCH_LENGTH_M / 1000 )  ; mileometer: [km]

    ; honey store in the colony is reduced to reflect the energy consumed during the trip:
    set HoneyEnergyStore HoneyEnergyStore - ( SEARCH_LENGTH_M * FLIGHTCOSTS_PER_m * SQUADRON_SIZE )
    set ColonyTripDurationSum ColonyTripDurationSum + (SEARCH_LENGTH_M / FLIGHT_VELOCITY )  ; sums up time of a search trip

    ; sums up # foragers doing a trip & unsuccessful foraging trips:
    set ColonyTripForagersSum ColonyTripForagersSum + 1
    set EmptyFlightsToday EmptyFlightsToday + SQUADRON_SIZE
  ]

  ; energy consumption for successful foragers:
  ask foragerSquadrons with
    [ activity = "bringingNectar"
      or activity = "bringingPollen" ]
  [
    if pollenForager = false ; ask NECTAR foragers
    [
      ask flowerPatch knownNectarPatch
      [ ; flightCostsNectar is a flowerPatch variable, reflecting distance and handling time
        set energyConsumption flightCostsNectar
         ; energy is used, according to the flight costs of the patch
        set ColonyTripDurationSum ColonyTripDurationSum + tripDuration + TIME_UNLOADING
      ]  ; adds duration of this nectar trip to the sum of all trips performed during this foraging round so far
    ]
    if pollenForager = true ; ask POLLEN foragers
      [
        ask flowerPatch knownPollenPatch
        [
          set energyConsumption flightCostsPollen
            ; energy is used, according to the flight costs of the patch
          set ColonyTripDurationSum ColonyTripDurationSum + tripDurationPollen + TIME_UNLOADING_POLLEN
        ] ; adds duration of this pollen trip to the sum of all trips performed during this foraging round so far
      ]

      ; colony's honey store is decreased:
    set HoneyEnergyStore HoneyEnergyStore - ( energyConsumption * SQUADRON_SIZE)
      ; sums up # foragers doing a trip:
    set ColonyTripForagersSum ColonyTripForagersSum + 1
  ]

end


; ********************************************************************************************************************************************************************************

to Foraging_mortalityProc
  ; mortality of foragers during their foraging trip, counts # dying foragers and their lifespan
  let emptyTripDuration SEARCH_LENGTH_M / FLIGHT_VELOCITY  ; [s] = 10 min

  ask foragerSquadrons with [ activity = "searching" ]
  [ ; mortality risk of unsuccessful scouts depends on their time spent for searching
    ; mortality risk calculated as probability to NOT survive every single second of the foraging trip:
    if random-float 1 < 1 - ((1 - MORTALITY_FOR_PER_SEC) ^ emptyTripDuration)
    [ ; deaths are counted and the lifespans summed up to later calculate a mean lifespan:
      set DeathsAdultWorkers_t DeathsAdultWorkers_t + SQUADRON_SIZE
      set DeathsForagingToday DeathsForagingToday + SQUADRON_SIZE
      set SumLifeSpanAdultWorkers_t SumLifeSpanAdultWorkers_t + (age * SQUADRON_SIZE)
      die
    ]
  ]
  ; this is similar for NECTAR foragers, but here with a patch specific mortalityRisk
  ask foragerSquadrons with [ activity = "bringingNectar" ]
  [
    if random-float 1 < ([ mortalityRisk ] of flowerPatch knownNectarPatch)
    [
      set DeathsAdultWorkers_t DeathsAdultWorkers_t + SQUADRON_SIZE
      set DeathsForagingToday DeathsForagingToday + SQUADRON_SIZE
      set SumLifeSpanAdultWorkers_t SumLifeSpanAdultWorkers_t + (age * SQUADRON_SIZE)
      die
    ]
  ]
  ; and again for POLLEN foragers, with a patch specific mortalityRiskPollen:
  ask foragerSquadrons with [ activity = "bringingPollen" ]
  [
    if random-float 1 < ([ mortalityRiskPollen ] of flowerPatch knownPollenPatch)
    [
      set DeathsAdultWorkers_t DeathsAdultWorkers_t + SQUADRON_SIZE
      set DeathsForagingToday DeathsForagingToday + SQUADRON_SIZE
      set SumLifeSpanAdultWorkers_t SumLifeSpanAdultWorkers_t + (age * SQUADRON_SIZE)
      die
    ]
  ]
end;

; ********************************************************************************************************************************************************************************

to Foraging_dancingProc
  ; foragers dance for a good patch and recruit 2 pollen foragers or up to 5 nectar foragers
  ; to the advertised patch

  let EEFdancedPatch -999   ; correct number set later
    ; energetic efficiency of the flower patch danced for (set to nonsense number as control)

  let tripDurationDancedPatch -999  ; correct number set later
    ; trip duration to a pollen patch

  let patchNumberDanced -999  ; correct number set later
    ; ...and the number of that flower patch

  ask foragerSquadrons with
    [ activity = "bringingNectar"
      or activity = "bringingPollen" ]
      ; successful pollen or nectar foragers are addressed
  [
    if activity = "bringingNectar" ; NECTAR FORAGERS
    [
      set EEFdancedPatch [ EEF ] of flowerPatch knownNectarPatch
      set patchNumberDanced knownNectarPatch
        ; successful foragers dance; they communicate EEF and ID of flowerPatch



      let danceFollowersNectarNow
        random-poisson [ danceFollowersNectar ] of flowerPatch knownNectarPatch



      if [ danceFollowersNectarNow ] of flowerPatch knownNectarPatch >= 1
      [
        set activityList lput "Dn" activityList
      ]

      if ( count foragerSquadrons with
          [ activity = "resting" ]) >=
              [ danceFollowersNectarNow ] of flowerPatch knownNectarPatch
              ; only if enough resting foragers are present, there will be dances
      [
        ask n-of
              ([ danceFollowersNectarNow ] of flowerPatch knownNectarPatch)
                 foragerSquadrons with [ activity = "resting" ]
                    ; depending on EEF of the patch, (0-5) resting foragers will follow the dance
        [
          ifelse knownNectarPatch = -1
            [    ; unexperienced foragers will always accept the advertised patch:
              set knownNectarPatch patchNumberDanced
              set activity "recForaging"
              set pollenForager false
                ; and become a nectar forager
              set activityList lput "rFnNF" activityList
            ]
            [
              ifelse EEFdancedPatch > [ EEF ] of flowerPatch knownNectarPatch
                ; if(2) ; experienced foragers: if the advertised patch has higher EEF
                ; than the known flowerPatch,
                [
                  set knownNectarPatch patchNumberDanced
                    ; the dance follower will switch to new patch

                  set pollenForager false
                    ; and become a nectar forager

                  set activity "recForaging"
                  set activityList lput "rFnxNF" activityList
                ]
                [ ; ELSE 2 (i.e. experienced foragers, knowing a BETTER patch) are activated
                  set activity "expForaging"
                  set activityList lput "Xnr" activityList
                ]  ; else (2) they become active foragers to their own, known patch
            ]
        ]
      ]
    ]

    if activity = "bringingPollen"                                                               ; POLLEN FORAGERS
    [
      set tripDurationDancedPatch [ tripDurationPollen ] of flowerPatch knownPollenPatch
      set patchNumberDanced knownPollenPatch
      if POLLEN_DANCE_FOLLOWERS >= 1 ; pollen foragers dance ALWAYS (as POLLEN_DANCE_FOLLOWERS = 2)
      [
        set activityList lput "Dp" activityList
      ]

      if ( count foragerSquadrons with [ activity = "resting" ])
        >= POLLEN_DANCE_FOLLOWERS
          ; only if enough resting foragers are present, there will be dances
      [
        ask n-of POLLEN_DANCE_FOLLOWERS foragerSquadrons
          with [ activity = "resting" ]
          ; # pollen dance followers: constant and independent of patch distance!!
        [
          ifelse knownPollenPatch = -1
            [  ; unexperienced forager will always accept the advertised patch:
              set knownPollenPatch patchNumberDanced
              set activity "recForaging"

              ; and become a pollen forager:
              set pollenForager true
              set activityList lput "rFpPF" activityList
            ]
            [ ; if(2) ; experienced foragers: if the advertised patch offers a
              ;  shorter trip duration than the known pollen patch..
              ifelse tripDurationDancedPatch < [ tripDurationPollen ]
                of flowerPatch knownPollenPatch
                [ ; .. then the dance follower will switch to new patch
                  set knownPollenPatch patchNumberDanced
                  ; and become a pollen forager:
                  set pollenForager true

                  set activity "recForaging"
                  set activityList lput "rFpxPF" activityList
                ]
                [ ; else (2) they become active foragers to their own, known patch:
                  set activity "expForaging"
                  set activityList lput "Xpr" activityList
                ]
            ]
        ]
      ]
    ]
  ]

end;

; ********************************************************************************************************************************************************************************

to Foraging_unloadingProc
  ; successful foragers increase honey or pollen store of the colony and become experienced foragers

  ask foragerSquadrons with [ activity = "bringingNectar" ]
  [
    set HoneyEnergyStore HoneyEnergyStore + (cropEnergyLoad * SQUADRON_SIZE)

    if HoneyEnergyStore > MAX_HONEY_ENERGY_STORE
    [
      set HoneyEnergyStore MAX_HONEY_ENERGY_STORE
    ]  ; honey store can't be larger than maximum

    set activityList lput "bN" activityList
    set cropEnergyLoad 0
    set activity "expForaging"
    set activityList lput "Xn" activityList
  ]

  ask foragerSquadrons with [ activity = "bringingPollen" ]
  [
    set PollenStore_g PollenStore_g + (collectedPollen * SQUADRON_SIZE)
    set collectedPollen 0
    set activityList lput "bP" activityList
    set activity "expForaging"
    set activityList lput "Xp" activityList
  ]

  ask foragerSquadrons with [ activity = "searching" ]
  [
    set activityList lput "E" activityList
  ]  ; unsuccessful souts return empty

end;

; ********************************************************************************************************************************************************************************

to ForagersLifespanProc
  ; foragers also die due to age, max. travelled distance or by chance inside
  ; the colony; dying foragers are counted to calculate mean lifespan

  ask foragerSquadrons
  [
    if age >= LIFESPAN
    [
      set DeathsAdultWorkers_t DeathsAdultWorkers_t + SQUADRON_SIZE
      set SumLifeSpanAdultWorkers_t SumLifeSpanAdultWorkers_t + (age * SQUADRON_SIZE)
      die
    ]

    if mileometer >= MAX_TOTAL_KM
    [
      set DeathsAdultWorkers_t DeathsAdultWorkers_t + SQUADRON_SIZE
      set DeathsForagingToday DeathsForagingToday + SQUADRON_SIZE
      set SumLifeSpanAdultWorkers_t SumLifeSpanAdultWorkers_t + (age * SQUADRON_SIZE)
      die
    ]

    let dailyRiskToDie MORTALITY_INHIVE
      ; the daily background mortality of (healthy) foragers, which is equal to MORTALITY_INHIVE of the inhive bees

    if infectionState = "infectedAsPupa"
    [
      set dailyRiskToDie MORTALITY_INHIVE_INFECTED_AS_PUPA
    ]  ; except for infected as pupa foragers, which have a higher mortality

    if infectionState = "infectedAsAdult"
    [
      set dailyRiskToDie MORTALITY_INHIVE_INFECTED_AS_ADULT
    ]  ; except for infected as adult foragers, which have a higher mortality

    if random-float 1 < dailyRiskToDie
    [
      set DeathsAdultWorkers_t DeathsAdultWorkers_t + SQUADRON_SIZE
      set SumLifeSpanAdultWorkers_t SumLifeSpanAdultWorkers_t + (age * SQUADRON_SIZE)
      die
    ]
  ] ; ask foragerSquadrons
end;

; ********************************************************************************************************************************************************************************

;  ==============================================================================================================================================================================
;  ===============   END OF IBM FORAGING SUBMODEL ====================================================================   END OF IBM FORAGING SUBMODEL ===========================
;  ==============================================================================================================================================================================

; ********************************************************************************************************************************************************************************


; ********************************************************************************************************************************************************************************
; ...............  THE VARROA MITE SUBMODEL   ...............................................................  THE VARROA MITE SUBMODEL   .......................................
; ********************************************************************************************************************************************************************************

to MiteProc ; calls the Varroa related procedures
  CreateMiteOrganisersProc
  CountingProc ; updating number of brood & adults of drones & workers
  MitesInvasionProc
  MitePhoreticPhaseProc
  MiteDailyMortalityProc
  MiteOrganisersUpdateProc
end


; ********************************************************************************************************************************************************************************

to CreateMiteOrganisersProc
  ; called by MiteProc, creates a single miteOrganiser turtle, that
  ; stores info on number and distribution of mites newly invaded into the brood cells

  create-miteOrganisers 1
  [
    setxy -1 -7
    set heading 0
    set size 1.3
    set color 33.5
    set shape "VarroaMite03"   ;"Virus1" ;"VarroaMite03"
    set workerCellListCondensed n-values (MAX_INVADED_MITES_WORKERCELL + 1) [ 0 ]
      ; +1 as also the number of mite free cells is stored in this list

    set droneCellListCondensed n-values (MAX_INVADED_MITES_DRONECELL + 1) [ 0 ]
      ; +1 as also the number of mite free cells is stored in this list

    set label-color white
    set cohortInvadedMitesSum 0
      ; sum of all mites that invaded a worker or drone cell on the same Day

    set invadedMitesHealthyRate PhoreticMitesHealthyRate
      ; rate of healthy mites in this cohort of invading mites equals the rate of healthy
      ; phoretic mites on this day

    set age INVADING_WORKER_CELLS_AGE
      ; "age" refers to age of invaded brood. If age for invasion differs in
      ; worker and drone brood..

    if INVADING_DRONE_CELLS_AGE < INVADING_WORKER_CELLS_AGE
    [
      set age INVADING_DRONE_CELLS_AGE
    ] ; ..then age refers to the younger of both
  ]
end

; ********************************************************************************************************************************************************************************

to MitesInvasionProc
  ; called by MiteProc  calculates the number of phoretic mites that
  ; enter worker and drone brood cells on this day based on: Calis et al. 1999, Martin 2001

  ;; Comment by I.S.: Boot et al. 1995: drone cells 11.6 times more favourable than worker cells
  ;let factorDrones 6.49  ; (Boot et al. 1995, Martin 2001)
  ;let factorWorkers 0.56 ; (Boot et al. 1995, Martin 2001)
  ; I.S.: both variables were made global: 'factorWorkers' fixed to 0.56 and 'factorDrones' is now as an input on the interface.

  let adultsWeight_g (TotalIHbees + TotalForagers) * WEIGHT_WORKER_g
    ; weight of all adult worker bees
  let invadingBroodCellProb 0
    ; probability for a phoretic mite to enter any suitable brood cell
  let invadingWorkerCellProb 0
    ; probaility to invade a worker cell (only if any cell was invaded)
  let suitableWorkerCells 0
  let suitableDroneCells 0
    ; number of worker and drone cells, that are suitable for mite invasion
  let rD 0
  let rW 0
    ; rD, rW: Rate of invasion into Drone cells and Worker cells (Boot et al. 1995)

  ask larvaeCohorts with [ age = INVADING_WORKER_CELLS_AGE ]
  [
    set suitableWorkerCells number
  ] ; (age = 8) mites enter worker larvae cells ~1d before capping (at 9d age) (Boot, Calis, Beetsma 1992)

  ask droneLarvaeCohorts with [ age = INVADING_DRONE_CELLS_AGE ]
  [
    set suitableDroneCells number
  ]  ; (age = 8) mites enter drone larvae cells ~ 2d before capping (at 10d age) (Boot, Calis, Beetsma 1992)

  if adultsWeight_g > 0
  [ ; invasion rates in worker and drone cells:
    set rW factorWorkers * (suitableWorkerCells / adultsWeight_g)  ; (Martin 1998, 2001; Calis et al.1999)
    set rD factorDrones * (suitableDroneCells / adultsWeight_g)
  ]

  let exitingMites 0
    ; # mites, that theoretically should invade cells but leave it immediatly,
    ; because the cell is already invaded by the max. number of mites

  let workerCellListTemporary n-values suitableWorkerCells [ 0 ]
    ; two temporary lists of all suitable worker/drone cells, to store
    ; the number of mites in each cell..

  let droneCellListTemporary n-values suitableDroneCells [ 0 ]
    ; .. of which later the number of cells invaded by 0, 1, 2.. mites can be calculated

  let cell -1
    ;  stores randomly chosen cell, which is invaded by a mite in the below
    ; "repeat phoreticMites.." process. -1 will be changed to a random number >= 0

  set InvadingMitesWorkerCellsTheo 0
  set InvadingMitesDroneCellsTheo 0
  set invadingBroodCellProb (1 - (exp (-(rW + rD))))
    ; probability for a phoretic mite to enter a brood cell; similar to
    ; Martin 2001, however: we use probability instead of proportion

  if rW + rD > 0 ; if invasion takes place..
  [
    set invadingWorkerCellProb (rW / (rW + rD))
  ]

  ; based on the Boot/Martin/Calis rates of cell invasion, which are used as probabilities,
  ; it is calculated how many phoretic mites enter a brood cell, and whether it is
  ; a drone or a worker cell; each invading mite is then associated with a random brood
  ; cell number (WorkerCellsInvasionList), finally, the mites in each "brood cell" are
  ; counted and saved in the condensed nMitesInCellsList
  repeat PhoreticMites
  [
    if random-float 1 < invadingBroodCellProb
      ; mites have a chance to enter a brood cell
    [
      ifelse random-float 1 < invadingWorkerCellProb ; the brood cell might be a WORKER cell
        [
          set InvadingMitesWorkerCellsTheo InvadingMitesWorkerCellsTheo + 1
            ; mites entering worker cells are counted

          set cell random suitableWorkerCells
            ; randomly, one of the suitable WORKER cells is invaded by a mite

          set WorkerCellListTemporary replace-item cell WorkerCellListTemporary
            (item cell WorkerCellListTemporary + 1)
            ; this list contains all worker cells and the number of mites
            ; invading into each cell
        ]
        [
          ; ELSE: invasion into DRONE cell
          set InvadingMitesDroneCellsTheo InvadingMitesDroneCellsTheo + 1
          set cell random suitableDroneCells
            ; randomly, one of the suitable drone cells is invaded by a mite

          set DroneCellListTemporary replace-item cell DroneCellListTemporary
            (item cell DroneCellListTemporary + 1)
            ; this list contains all drone cells and the number of mites
            ; invading into each cell
        ]
    ]
  ]

  ; excess of invaded mites: # mites in each cells is restricted to MAX_INVADED_MITES:
  let counter 0
  foreach WorkerCellListTemporary
  [
    ; (note: items are addressed in ordered way - NOT randomly)
    x ->


    if x > MAX_INVADED_MITES_WORKERCELL
    [
      set exitingMites exitingMites + (x - MAX_INVADED_MITES_WORKERCELL)
        ; if too many mites in cells: they leave the cell ("?": # of mites in the cell)

      set WorkerCellListTemporary replace-item
        counter WorkerCellListTemporary MAX_INVADED_MITES_WORKERCELL
          ; .. mites left in the cell = max. mites in worker cell
    ]

    set counter counter + 1
  ]
  set InvadingMitesWorkerCellsReal InvadingMitesWorkerCellsTheo - exitingMites

  ; and the same for the drones..
  set counter 0  ; resetting the counter

  foreach DroneCellListTemporary
  [
    x ->
    if x > MAX_INVADED_MITES_DRONECELL
    [
      set exitingMites exitingMites + (x - MAX_INVADED_MITES_DRONECELL)
        ; if too many mites in cells: they leave the cell ("?": # of mites in the cell)

      set DroneCellListTemporary replace-item counter
        DroneCellListTemporary MAX_INVADED_MITES_DRONECELL
        ; .. mites left in the cell = max. mites in drone cell
    ]
    set counter counter + 1
  ]

  set InvadingMitesDroneCellsReal InvadingMitesDroneCellsTheo
    - exitingMites
    + (InvadingMitesWorkerCellsTheo - InvadingMitesWorkerCellsReal)
      ; mites invaded drone cells = mites theor. invading drone cells
      ; - mites exiting drone&worker cells
      ; + mites exiting worker cells (here: exitingMites: sum of worker&drone cell mites!)

  set PhoreticMites PhoreticMites
    - InvadingMitesWorkerCellsTheo
    - InvadingMitesDroneCellsTheo
    + exitingMites
      ; # of phoretic mites left (=phor.mites - invading mites
      ; + mites immediately leaving cells and become phoretic again

  if PhoreticMites < 0
  [
    set BugMessage "Error in MitesInvasionProc - negative number of phoretic Mites" ;; Global parameter BugMessage added by I.S. to save message in file.
    user-message BugMessage
    set BugAlarm true
  ] ; assertion

  let memory -1 ; -1: = no cohort invaded

  ask miteOrganisers with [age = INVADING_WORKER_CELLS_AGE]
  [
    foreach workerCellListTemporary
      ; checks the list that contains all worker brood cells for
      ; how many mites have entered..
    [
      x ->
      set workerCellListCondensed replace-item x workerCellListCondensed
        ((item x workerCellListCondensed) + 1)
    ]  ; sums up the number of cells entered by 0, 1,2..n mites in the mitesOrganisers own list

    set cohortInvadedMitesSum cohortInvadedMitesSum + InvadingMitesWorkerCellsReal

    let whoMO who  ; stores the "who" of the current miteOrganiser
    ask larvaeCohorts with [age = INVADING_WORKER_CELLS_AGE]
    [
      set invadedByMiteOrganiserID whoMO
      set memory who
    ]
    set invadedWorkerCohortID memory
  ] ; "ask miteorganisers ..."

  ask miteOrganisers with [age = INVADING_DRONE_CELLS_AGE]
  [
    foreach droneCellListTemporary
      ; checks the list that contains all drone brood cells for
      ; how many mites have entered..
    [
      x ->
      set droneCellListCondensed replace-item x droneCellListCondensed
        ((item x droneCellListCondensed) + 1)
    ] ; sums up the cell entered by 0, 1,2..n mites in the mitesOrganisers own list

    set cohortInvadedMitesSum cohortInvadedMitesSum + InvadingMitesDroneCellsReal
    set memory -1  ; -1: = no cohort invaded

    ask droneLarvaeCohorts with [age = INVADING_DRONE_CELLS_AGE]
    [
      set memory who
    ]
    set invadedDroneCohortID memory
    let whoMO who  ; stores the "who" of the current miteOrganiser

    ask droneLarvaeCohorts with [ age = INVADING_DRONE_CELLS_AGE ]
    [
      set invadedByMiteOrganiserID whoMO
    ]
  ] ; "ask miteOrganisers with ..."

  if (PhoreticMites + InvadingMitesWorkerCellsReal
    +  InvadingMitesDroneCellsReal) > 0 ; avoid div 0!
  [
    set PropNewToAllPhorMites NewReleasedMitesToday
      / ( PhoreticMites + InvadingMitesWorkerCellsReal + InvadingMitesDroneCellsReal)
  ] ; Proportion of new emerged phoretic mites (today) to all phoretic mites
    ; present (needed in the MitePhoreticPhaseProc to determine # of newly infected phoretic mites etc)

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.
end

; ********************************************************************************************************************************************************************************

to-report MiteDensityFactorREP [ ploidyMiteOrg mitesIndex ]
  ; reports the (single) density factor for a certain number of invaded mites
  ; depending on ploidy of bee brood and chosen reproduction model

  let dataList []

  if MiteReproductionModel = "Martin"
  [ ifelse ploidyMiteOrg = 2
    [ set dataList [ 0 1 0.91 0.86 0.60 ] ]
      ; workers  (list length: 5) [ 0 1 0.91 0.86 0.60 ]
      ; from Martin 1998, Tab. 4; first value (0) doesn't matter, as no
      ; mother mite invaded these cells

    [ set dataList [ 0 1 0.84 0.65 0.66 ] ]
  ]   ; drones (list length: 5)  [ 0 1 0.84 0.65 0.66 ] from Martin 1998, Tab. 4

  if MiteReproductionModel = "Fuchs&Langenbach"
  [
    ifelse ploidyMiteOrg = 2
      [ set dataList [ 0 1 0.96 0.93 0.89 0.86 0.82 0.79 0 ]]
        ; workers   (list length: 9) calculated from Fuchs&Langenbach 1989 Tab.III
      [ set dataList [ 0 1 0.93 0.86 0.80 0.73 0.66 0.59 0.52 0.45 0.39 0.32 0.25 0.18 0.11 0.05 0 ] ]
  ]  ; (list length: 17) calculated from Fuchs&Langenbach 1989 Tab.III

  if MiteReproductionModel = "No Mite Reproduction"  ; only for model testing
  [
    ifelse ploidyMiteOrg = 2
      [ set dataList [ 0 1 1 1 1 1 ] ] ; workers   (list length: 6)
      [ set dataList [ 0 1 1 1 1 1 ] ]
  ]  ; drones  (list length: 6)

  if MiteReproductionModel = "Martin+0"
    ; like Martin, but max # of mites in brood cell is increased by
    ; one with a rel. reprod. rate of 0 (= 0 at the end of the list)

  [ ; Martin Test with 0
    ifelse ploidyMiteOrg = 2
      [ set dataList [ 0 1 0.91 0.86 0.60 0 ] ]
        ; workers   (list length: 6) [ 0 1 0.91 0.86 0.60 0 ]
        ; from Martin 1998, Tab. 4; first value (0) doesn't matter, as no
        ; mother mite invaded these cells
      [ set dataList [ 0 1 0.84 0.65 0.66 0 ] ]
  ]  ; drones (list length: 6)  [ 0 1 0.84 0.65 0.66 0 ] from Martin 1998, Tab. 4

  report item mitesIndex dataList

end

; ********************************************************************************************************************************************************************************

to-report  MiteOffspringREP [ ploidyMiteOrg ]
  ; reports offspring per mite depending on ploidy of bee brood and chosen reproduction model

  let result 0
  if ploidyMiteOrg != 1 and ploidyMiteOrg != 2
  [
    set BugAlarm true
    set BugMessage word "BUG ALARM in MiteOffspringREP! Wrong ploidyMiteOrg: " ploidyMiteOrg ;; Global parameter BugMessage added by I.S. to save message in file.
    type "BUG ALARM in MiteOffspringREP! Wrong ploidyMiteOrg: "
    print ploidyMiteOrg
  ]

  if MiteReproductionModel = "Martin" or MiteReproductionModel = "Martin+0"
  [
    ifelse ploidyMiteOrg = 2
      [ set result 1.01 ]
        ; workers (1.01: Martin 1998; fertilisation already taken into account)

      [ set result  2.91 ]
  ]     ; drones (2.91: Martin 1998; fertilisation already taken into account)

 if MiteReproductionModel = "Fuchs&Langenbach"
 [
   ifelse ploidyMiteOrg = 2
     [ set result 1.4 * 0.95 ]
       ; workers (1.4: Fuchs&Langenbach 1989; of which 5% are
       ; unfertilised (Martin 1998 p.271))
     [ set result 2.21 * 0.967 ]
 ]  ; drones (2.21: Fuchs&Langenbach 1989; of which 3.3% are unfertilised (Martin 1998 p.271))

 if MiteReproductionModel = "No Mite Reproduction"  ; only for model testing
 [
   ifelse ploidyMiteOrg = 2
      [ set result 0 ]   ; workers
      [ set result 0 ]
 ] ; drones

 report result
end

; ********************************************************************************************************************************************************************************

; MitesReleaseProc: determines how many healthy and infected mites emerge from cells with a) dead or b) emerging bees
; CALLED BY: WorkerLarvaeDevProc (dying), DroneLarvaeDevProc (dying), WorkerPupaeDevProc (2x, for dying & emerging brood)
; DronePupaeDevProc (2x, for dying & emerging brood), BroodCareProc (4x, dying of drone & worker larvae & pupae)

; .. all these procedures are called BEFORE the mite module (MiteProc)!

to MitesReleaseProc [ miteOrganiserID ploidyMiteOrg diedBrood releaseCausedBy ]
    ; 1. rate of healthy mites in the cellList 2. the relevant worker/drone
    ; cellListCondensed 3.  # died broodCells (0..n) 4. "emergingBrood" or "dyingBrood"

  let cellListCondensed []
    ; to not double the code for worker and drones, the local variable
    ; cellListCondensed is defined which stores EITHER the workerCellListCondensed
    ; OR the droneCellListCondensed

  let mitesInfectedSumUncappedCells 0
    ; sums up the infected mites of the current cohort

  let mitesHealthySumUncappedCells 0 ; sums up the healthy mites of the current cohort
  let mitesHealthy&InfectedSumUncappedCells 0
    ; sums up the healthy and infected mites of the current cohort

  let nPhoreticMitesBeforeEmergenceHealthy round (PhoreticMitesHealthyRate * PhoreticMites)
    ; saves the number healthy phoretic mites before the new mites emerge from their
    ; cells - necessary to calculate new PhoreticMitesHealthyRate

  let nPhoreticMitesBeforeEmergenceInfected PhoreticMites - nPhoreticMitesBeforeEmergenceHealthy
    ; saves the number infected phoretic mites before the new mites emerge from
    ; their cells - necessary to calculate new PhoreticMitesHealthyRate

  let healthyRateMiteOrg 0
    ; proportion of healthy mites in the current cohort (miteOrganiser)

  let totalCells 0
    ; number of brood cells in the current cohort

  let releasedPupaeCohortsID -1

  let repetitions MAX_INVADED_MITES_WORKERCELL + 1
    ; to count the brood cells; (for worker cells); +1 as cells can also bee mite free
  if ploidyMiteOrg = 1
  [
    set repetitions MAX_INVADED_MITES_DRONECELL + 1
  ] ; ..the same for drone cells, +1 as cells can also bee mite free

  ; to save the required "cellListCondensed" and to determine the "who"
  ; of the affected (worker or drone) pupaeCohort:
  ask miteOrganisers with [ who = miteOrganiserID ]
  [
    ifelse ploidyMiteOrg = 1
      [
        set cellListCondensed droneCellListCondensed
          ; IF DRONES: local cellListCondensed =  droneCellListCondensed
        set releasedPupaeCohortsID invadedDroneCohortID
      ]   ; ... and affected droneCohort is the miteOrganisers "invadedDroneCohortID"
      [
        set cellListCondensed workerCellListCondensed
          ; ELSE WORKERS: local cellListCondensed = workerCellListCondensed
        set releasedPupaeCohortsID invadedWorkerCohortID
      ]  ; ... and affected workerCohort is the miteOrganisers "invadedWorkerCohortID"
    set healthyRateMiteOrg invadedMitesHealthyRate
      ; saves the rate of healthy mites invaded to the current miteOrganiser
  ]

  let i 0
  repeat repetitions
  ; repetitions = MAX_INVADED_MITES_WORKER/DRONE_CELL + 1
  [
    ; counts the # of cells in the cellList
    set totalCells totalCells + (item i cellListCondensed)
    set i i + 1
  ]

  let uncappedCells 0  ; number of cells that are uncapped ...
  if releaseCausedBy = "dyingBrood" [ set uncappedCells diedBrood  ]
    ; .. because some pupae died..

  if releaseCausedBy = "emergingBrood" [ set uncappedCells totalCells  ]
    ; .. or because all pupae emerge

  if releaseCausedBy != "dyingBrood" and  releaseCausedBy != "emergingBrood"
  [
    set BugAlarm true
    set BugMessage word "BUG ALARM in ReleaseMitesProc(1)! releaseCausedBy: " releaseCausedBy ;; Global parameter BugMessage added by I.S. to save message in file.
    type "BUG ALARM in ReleaseMitesProc(1)! releaseCausedBy: "
    print releaseCausedBy
  ]  ; assertion

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

  repeat uncappedCells
  [
    ; uncapped brood cells are randomly chosen from all brood cells of
    ; this cohort. These cells may contain 0,1,2..invadedMitesCounter mites.
    ; These mother mites are released from the cell WITH OR WITHOUT
    ; reproduction and become phoretic

    let randomCell (random totalCells) + 1
      ; choses a random cell -> 1..totalCells (+1 as: random n = 0, 1, ..n-1)
      ; (totalCells is decreased at the end of each repetition by 1)

    let cellCounter 0
    let allMitesInSingleCell -1
      ; starting value of allMitesInSingleCell: -1 as it is increased by 1 in the
      ; following "while" loop
      ; allMitesInSingleCell: # of mites that invaded the randomly chosen cell

    while [ cellCounter < randomCell ]
      ; determines, by how many mites the "random cell"
      ; is invaded: sums up the # of cells invaded by 0 mites (1st loop)
      ; by 1 mite (2nd loop) etc. until the cellCounter >= randomCell
      ; the number of mites in random cell is then allMitesInSingleCell
    [
      set allMitesInSingleCell allMitesInSingleCell + 1
        ; in 1st loop: allMitesInSingleCell = 0! (i.e. item 0 = first item in list = 0 mites)
        ; in 2nd loop: 1 mite etc.

      set cellCounter cellCounter + (item allMitesInSingleCell cellListCondensed)
        ; cellCounter is increased by the # of cells with x mites in it
        ; (x = allMitesInSingleCell, i.e. 0,1,2..n)
    ]

    ; how many of the released mites are infected? -> 1. how many infected
    ; mites entered? 2. did they infect the larva? 3. how many healthy mites become
    ; infected by the infected larva?
    let mitesIndex allMitesInSingleCell
      ; to address the correct item in the cellListCondensed after mite
      ; reproduction (i.e. when allMitesInSingleCell has changed)

    let pupaInfected false ; a young larva is healthy
    let infectedMitesInSingleCell 0
      ; the number of mites that were diseased on day of cell invasion

    repeat allMitesInSingleCell
    [
      ; invaded mites might be infected: repeat over all mites in the current brood cell
      if random-float 1 > healthyRateMiteOrg
      [
        set infectedMitesInSingleCell infectedMitesInSingleCell + 1
        ; this invaded mite was infected when invading the cell and is now counted as infected
      ]
    ]

    let healthyMitesInSingleCell allMitesInSingleCell - infectedMitesInSingleCell
      ; healthy invaded mites are all invaded mites minus infected ones

    ;; SUGGESTION by I.S.: to avoid 0 ^ x, because in case of APV: VIRUS_TRANSMISSION_RATE_MITE_TO_PUPA = 1 => (1-1)^infectedMitesInSingleCell = 0 ^infectedMitesInSingleCell.
    ;; The following suggested lines are marked with ';;'.
;;    ifelse Virus = "APV"
;;    [
;;      ifelse infectedMitesInSingleCell > 0
;;      [
;;        set pupaInfected true ; Pupa gets always infected with APV.
;;      ]
;;      [
;;        set pupaInfected false
;;      ]
;;    ] ; Else: e.g Virus = "DWV"
;;    [
      if random-float 1 > (1 - VIRUS_TRANSMISSION_RATE_MITE_TO_PUPA) ^ infectedMitesInSingleCell
      [
        set pupaInfected true
      ] ; as soon as at least 1 infected mite successfully infects the bee pupa, the bee pupa is infected
;;    ]

      if random-float 1 > (1 - VIRUS_TRANSMISSION_RATE_MITE_TO_PUPA) ^ infectedMitesInSingleCell
      [
        set pupaInfected true
      ] ; as soon as at least 1 infected mite successfully infects the bee pupa, the bee pupa is infected

    ; PUPA ALIVE OR DEAD? (either died normally, died due to lack of nursing or killed by virus
    let pupaAlive 1 ; (0 or 1) 1: = "yes", pupa is alive 0: = "no", pupa is dead
    if pupaInfected = true
    [
      if random-float 1 < VIRUS_KILLS_PUPA_PROB
      [
        set pupaAlive 0
      ]
    ] ; infected pupa might be killed by the virus. In this case:
      ; no offspring mites but still transmission of viruses to healthy mites in this cell
      ; (at least for DWV)

    if releaseCausedBy = "dyingBrood"
    [
      set pupaAlive 0
    ] ; larva/pupa is dead, if MitesReleaseProcis called, BECAUSE the brood died..

    if releaseCausedBy = "emergingBrood" and allMitesInSingleCell > 0
    [
      ; callow bees are emerging and with them the invaded mother mites and their offspring
      if pupaAlive = 0
      [
        ask turtles with [ who = releasedPupaeCohortsID ]
        [
          set number number - 1
            ; pupa died, hence the number of bees in this pupae cohort is reduced by 1
          set number_healthy number_healthy - 1
            ; pupa dies due to virus infection and has previously been healthy
          set Pupae_W&D_KilledByVirusToDay Pupae_W&D_KilledByVirusToDay + 1
        ]
      ]

      ; surviving but infected pupae:
      if pupaAlive = 1 and pupaInfected = true
      [
        ask turtles with [ who = releasedPupaeCohortsID ]
        [
          set number_infectedAsPupa number_infectedAsPupa + 1
          ; the bee was infected as pupa
          set number_healthy number_healthy - 1
          ; the pupa has become infected and is no longer healthy
        ]
      ]

      let averageOffspring
        random-poisson (MiteOffspringREP ploidyMiteOrg * MiteDensityFactorREP ploidyMiteOrg mitesIndex)
        ; average # offspring of a single mother mite in the single cell (depends on ploidy of bee pupa and # invaded mites)

      set healthyMitesInSingleCell allMitesInSingleCell
        * averageOffspring
            ; Offspring: all mites in cell x reprod. rate. NOTE: also infected mites
            ; may have healthy offspring! (MiteOffspringREP: reports # offspring for
            ; 1 mite in single invaded cell, for drones or workers)
        * pupaAlive
          ; pupaAlive =  1 or 0; if pupa is alive: normal mite reproduction, if dead:
          ; offspring = 0
        + healthyMitesInSingleCell             ; + mother mites

      set healthyMitesInSingleCell round healthyMitesInSingleCell
      ; this line is NOT NECESSARY as averageOffspring is integer!
      set allMitesInSingleCell healthyMitesInSingleCell + infectedMitesInSingleCell
        ; update of total mites in the cell
    ]  ; END of "if releaseCausedBy = 'emergingBrood' "

    if pupaAlive = 1 and pupaInfected = true
    [
      ; if the bee pupa was infected by an infected mite AND IS STILL ALIVE,
      ; then the healthy mites (invaded or offspring) might become infected too

      repeat healthyMitesInSingleCell
      [
        ; all healthy mites have then the risk to become infected too
        if random-float 1 < VIRUS_TRANSMISSION_RATE_PUPA_TO_MITES
        ; if random number < the transmission rate from bee pupa to mite, the healthy
        ; mite becomes infected
        [
          set healthyMitesInSingleCell healthyMitesInSingleCell - 1
            ; hence: the number of healthy released mites decreases by 1..

          set infectedMitesInSingleCell infectedMitesInSingleCell + 1
        ]  ; .. and the number of infected released mites increases by 1
      ] ; end of 'repeat sumInvadedMitesHealthy'
    ] ; end of 'IF pupaInfected' - now the numbers of healthy and infected (mother) mites in
    ; single cell is known (= healthyMitesInSingleCell and infectedMitesInSingleCell)

    if healthyMitesInSingleCell + infectedMitesInSingleCell != allMitesInSingleCell
    [
      set BugAlarm true
      set BugMessage "BUG ALARM in ReleaseMitesProc(2)!" ;; Global parameter BugMessage added by I.S. to save message in file.
      type "BUG ALARM in ReleaseMitesProc(2)! allMitesInSingleCell: "
      type allMitesInSingleCell
      type " infectedMitesInSingleCell: "
      type infectedMitesInSingleCell
      type " healthyMitesInSingleCell: "
      print healthyMitesInSingleCell
    ]

    if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

    ; MITE FALL:
    let miteFallProb MITE_FALL_DRONECELL
    if ploidyMiteOrg = 2
    [
      set miteFallProb MITE_FALL_WORKERCELL
    ] ; probabilities of mites to fall from comb, depending on cell type

    repeat healthyMitesInSingleCell
    [ ; determined for healthy and infected mites separately
      if random-float 1 < miteFallProb
      [
        set healthyMitesInSingleCell healthyMitesInSingleCell - 1
        set allMitesInSingleCell allMitesInSingleCell - 1
        set DailyMiteFall DailyMiteFall + 1
      ]
    ]

    repeat infectedMitesInSingleCell
    [
      if random-float 1 < miteFallProb
      [
        set infectedMitesInSingleCell infectedMitesInSingleCell - 1
        set allMitesInSingleCell allMitesInSingleCell - 1
        set DailyMiteFall DailyMiteFall + 1
      ]
    ]

    set mitesHealthySumUncappedCells mitesHealthySumUncappedCells + healthyMitesInSingleCell
      ; sums up all healthy mites emerging from current cohort
      ; (set to 0 at beginning of this procedure)

    set mitesInfectedSumUncappedCells mitesInfectedSumUncappedCells + infectedMitesInSingleCell
      ; same for infected mites (set to 0 at beginning of this procedure)

    set PhoreticMites PhoreticMites + allMitesInSingleCell
      ; mother mites in this uncapped brood cell are released from the brood
      ; cell and become phoretic..

    set mitesHealthy&InfectedSumUncappedCells
      mitesHealthy&InfectedSumUncappedCells + allMitesInSingleCell
        ; released mites from all brood cell in this cohort are totaled up

    set cellListCondensed replace-item mitesIndex cellListCondensed
      (item mitesIndex cellListCondensed - 1)
        ; .. and one brood cell is removed; mitesIdex: number of mother mites that
        ; invaded the brood cell

    if item mitesIndex cellListCondensed < 0
    [
      set BugAlarm true
      set BugMessage "BUG ALARM in ReleaseMitesProc(3)! Negative number in cellListCondensed (releaseMitesProc)! " ;; Global parameter BugMessage added by I.S. to save message in file.
      type "BUG ALARM in ReleaseMitesProc(3)! Negative number in cellListCondensed (releaseMitesProc)! "
      show cellListCondensed
    ]

    if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

    set totalCells totalCells - 1
      ; number of total brood cells in this cohort is reduced by 1

    if totalCells < 0
    [
      set BugAlarm true
      set BugMessage "BUG ALARM in ReleaseMitesProc(4)! Negative number of  total cells in releaseMitesProc: " ;; Global parameter BugMessage added by I.S. to save message in file.
      print totalCells
      type "BUG ALARM in ReleaseMitesProc(4)! Negative number of  total cells in releaseMitesProc: "
      print totalCells
    ]
  ] ; END OF "REPEAT UNCAPPEDCELLS"

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

  set NewReleasedMitesToday
    NewReleasedMitesToday + mitesHealthy&InfectedSumUncappedCells
      ; # of newly released (mother+offspring) mites (only those that survived
      ; MiteFall) is summed up (set to 0 in DailyUpdateProc)

  if mitesInfectedSumUncappedCells + mitesHealthySumUncappedCells
     != mitesHealthy&InfectedSumUncappedCells
  [ ; assertion
    set BugAlarm true
    set BugMessage "BUG ALARM in ReleaseMitesProc(5)!" ;; Global parameter BugMessage added by I.S. to save message in file.
    type "BUG ALARM in ReleaseMitesProc(5)! mitesInfectedSumUncappedCells: "
    type mitesInfectedSumUncappedCells
    type " mitesHealthySumUncappedCells: "
    type mitesHealthySumUncappedCells
    type " mitesHealthy&InfectedSumUncappedCells: "
    print mitesHealthy&InfectedSumUncappedCells
  ]

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

  if mitesInfectedSumUncappedCells < 0 or mitesHealthySumUncappedCells < 0
  [ ; assertion
    set BugAlarm true
    set BugMessage "BUG ALARM in ReleaseMitesProc(6)!" ;; Global parameter BugMessage added by I.S. to save message in file.
    type "BUG ALARM in ReleaseMitesProc(6)! mitesInfectedSumUncappedCells: "
    type mitesInfectedSumUncappedCells
    type " mitesHealthySumUncappedCells: "
    type mitesHealthySumUncappedCells
    type " mitesHealthy&InfectedSumUncappedCells: "
    print mitesHealthy&InfectedSumUncappedCells
  ]

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

 ; Updating of the actual cell lists - either for the drone or for the worker brood:
  ask miteOrganisers with [ who = miteOrganiserID ]
  [ ; assertion
    if ploidyMiteOrg = 1 [ set droneCellListCondensed cellListCondensed ]    ; IF drones
    if ploidyMiteOrg = 2 [ set workerCellListCondensed cellListCondensed ]    ; IF workers
    if (ploidyMiteOrg != 1) and (ploidyMiteOrg != 2)
    [
      set BugAlarm true
      set BugMessage "BUG ALARM in releaseMitesProc(7)!" ;; Global parameter BugMessage added by I.S. to save message in file.
      type "BUG ALARM in releaseMitesProc(7)! Wrong ploidyMiteOrg: "
      print ploidyMiteOrg
    ]
  ]

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

  ; UPDATE of the healthy mite rate:
  if ( nPhoreticMitesBeforeEmergenceHealthy
       + nPhoreticMitesBeforeEmergenceInfected
       + mitesHealthySumUncappedCells
       + mitesInfectedSumUncappedCells) > 0
  [
    set PhoreticMitesHealthyRate
      ( nPhoreticMitesBeforeEmergenceHealthy + mitesHealthySumUncappedCells)
        / ( nPhoreticMitesBeforeEmergenceHealthy
            + nPhoreticMitesBeforeEmergenceInfected
            + mitesHealthySumUncappedCells
            + mitesInfectedSumUncappedCells )
  ]

 end

; ********************************************************************************************************************************************************************************

to MiteDailyMortalityProc
  ifelse ( TotalEggs + TotalLarvae
           + TotalPupae + TotalDroneEggs
           + TotalDroneLarvae + TotalDronePupae) > 0 ; is it within brood period?
    [
      set PhoreticMites
        (PhoreticMites - random-poisson (PhoreticMites *  MITE_MORTALITY_BROODPERIOD))
    ]  ; IF brood is present
    [
      set PhoreticMites
      (PhoreticMites - random-poisson (PhoreticMites *  MITE_MORTALITY_WINTER))
    ] ; ELSE: if no brood is present
end

; ********************************************************************************************************************************************************************************

to MitePhoreticPhaseProc
  ; infection of healthy worker bees via infected phoretic mites and of
  ; healthy phoretic mites via infected workers; Called daily by MiteProc

  let healthyPhoreticMites round (PhoreticMites * PhoreticMitesHealthyRate)
    ; # of healthy, phoretic mites is calculated from the rate of healthy phoretic mites

  let infectedPhoreticMites PhoreticMites - healthyPhoreticMites
    ; all other phoretic mites are infected

  let phoreticMitesPerIHbee 0

  if ( TotalIHbees + InhivebeesDiedToday
       + NewForagerSquadronsHealthy
       + NewForagerSquadronsInfectedAsPupae
       + NewForagerSquadronsInfectedAsAdults > 0 ) ; avoid division by 0
  [
    set phoreticMitesPerIHbee
       ( PhoreticMites - NewReleasedMitesToday)
         / (TotalIHbees + InhivebeesDiedToday
            + SQUADRON_SIZE *
               ( NewForagerSquadronsHealthy
                 + NewForagerSquadronsInfectedAsPupae
                 + NewForagerSquadronsInfectedAsAdults
               )
           )
  ] ; phoretic mites are assumed to infest only inhive bees,
    ; "ih-bees" here = current ih-bees + ih-bees died today
    ;                  + ih-bees developed into foragers today!

 ; mites are released from inhive bees, if ih-bees die or develop into foragers:
  let mitesReleasedFromInhivebees
    precision
       (
        phoreticMitesPerIHbee
         * ( InhivebeesDiedToday  ; died ih-bees
             + SQUADRON_SIZE      ; new foragers:
              * ( NewForagerSquadronsHealthy
                  + NewForagerSquadronsInfectedAsPupae
                  + NewForagerSquadronsInfectedAsAdults
                )
            )
       ) 5

  if mitesReleasedFromInhivebees > PhoreticMites
  [
    set BugAlarm true
    set BugMessage "BugAlarm!!! mitesReleasedFromInhivebees > PhoreticMites!" ;; Global parameter BugMessage added by I.S. to save message in file.
    type "BugAlarm!!! mitesReleasedFromInhivebees > PhoreticMites! mitesReleasedFromInhivebees: "
    type mitesReleasedFromInhivebees
    type " PhoreticMites: "
    print PhoreticMites
  ]

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

  let healthyPhoreticMitesSwitchingHosts
    round
      (
        mitesReleasedFromInhivebees * PhoreticMitesHealthyRate
        + PhoreticMites * PropNewToAllPhorMites * PhoreticMitesHealthyRate
      )  ; # healthy phoretic mites that infest a bee. These are: newly
         ; released mites that haven't entered a brood cell (hence:
         ; "phoreticMites * PropNewToAllPhorMites") and phoretic mites, where the host
         ; bee just died; all multiplied with PhoreticMitesHealthyRate as only healthy
         ; mites are considered

  if healthyPhoreticMitesSwitchingHosts > healthyPhoreticMites
  [
    ; set BugAlarm true
    if (healthyPhoreticMitesSwitchingHosts - healthyPhoreticMites) > 1
    [
      set BugAlarm true  ; if difference > 1 it can't be explained by rounding errors..
      set BugMessage "BugAlarm!!! (MitePhoreticPhaseProc)  healthyPhoreticMitesSwitchingHosts > healthyPhoreticMites!" ;; Global parameter BugMessage added by I.S. to save message in file.
      type "BugAlarm!!! (MitePhoreticPhaseProc)  healthyPhoreticMitesSwitchingHosts > healthyPhoreticMites! healthyPhoreticMitesSwitchingHosts: "
      type healthyPhoreticMitesSwitchingHosts
      type " healthyPhoreticMites: "
      print healthyPhoreticMites
    ]

    set healthyPhoreticMitesSwitchingHosts healthyPhoreticMites
  ] ; to ensure that not more mites switch their hosts than actually present!

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

  ; healthy and infected IN-HIVE bees:
  set totalInfectedWorkers 0 ;; Changed by I.S. from let to set.
  set totalHealthyWorkers 0 ;; Changed by I.S. from let to set.
  ask IHbeeCohorts
  [
    set totalInfectedWorkers
      totalInfectedWorkers + number_infectedAsPupa + number_infectedAsAdult
        ; infected: either during pupal phase or as adults
    set totalHealthyWorkers totalHealthyWorkers + number_healthy
  ]

  ; Infection of healthy mites:
  let newlyInfectedMites 0
   ; the probability of healthy mites to become infected equals the proportion of
    ; infected in-hive workers to all in-hive workers:
  if (totalInfectedWorkers + totalHealthyWorkers) > 0  ; avoid division by 0!
   [
    repeat healthyPhoreticMitesSwitchingHosts
     [
       if random-float 1 <  totalInfectedWorkers / (totalInfectedWorkers + totalHealthyWorkers)
        [
          set newlyInfectedMites newlyInfectedMites + 1
        ]
      ]
   ]

  ; infection of healthy adult workers - ONLY IN-HIVE WORKERS!
  let allInfectedMitesSwitchingHosts
    round
      ( PhoreticMites * PropNewToAllPhorMites * (1 - PhoreticMitesHealthyRate)
        + mitesReleasedFromInhivebees * (1 - PhoreticMitesHealthyRate))
        ; # infected phoretic mites that infest a new bee. These are: newly
        ; released mites, that haven't entered a brood cell (hence: "phoreticMites
        ; * PropNewToAllPhorMites") and phoretic mites, where the host bee just died;
        ; all multiplied with (1 - PhoreticMitesHealthyRate) as only infected mites are considered

  ask IHbeeCohorts
  [
    if TotalIHbees > 0 and number > 0  ; avoid division by 0!
    [
      let infectedMitesSwitchingHostsInThisCohort
        (allInfectedMitesSwitchingHosts / TotalIHbees) *  number
          ; # of infected mites switching their host in current bee cohort: # mites per ih-bee * number of ih-bees
          ; in this cohort (assumes an equal distribution of mites)

      let newlyInfectedIHbeesInThisCohort 0

      repeat number_healthy  ; only healthy bees can become newly infected
        [
          if number > 1 ; Added by I.S.: to avoid 0 ^ infectedMitesSwitchingHostsInThisCohort.
          [
            if random-float 1 > (1 - (1 / number)) ^ infectedMitesSwitchingHostsInThisCohort
            ; "number" (i.e. all bees in this cohort) as mites can also jump on already infected bees
            [
              set newlyInfectedIHbeesInThisCohort newlyInfectedIHbeesInThisCohort + 1
               ; # of newly infected bees is increased by 1
              set infectedMitesSwitchingHostsInThisCohort infectedMitesSwitchingHostsInThisCohort - 1
              if infectedMitesSwitchingHostsInThisCohort < 0
                 [ set infectedMitesSwitchingHostsInThisCohort 0 ]
            ]
          ]
        ]


      ; Assertion to be sure there are not more newly infected bees than there were healthy bees:
      if newlyInfectedIHbeesInThisCohort > number_healthy
      [
        set BugAlarm true
        set BugMessage "Bug Alarm! newlyInfectedIHbeesInThisCohort > number_healthy!" ;; Global parameter BugMessage added by I.S. to save message in file.
        print "Bug Alarm! newlyInfectedIHbeesInThisCohort > number_healthy!"

      ]

      if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

      set number_infectedAsAdult number_infectedAsAdult + newlyInfectedIHbeesInThisCohort
      set number_healthy  number_healthy - newlyInfectedIHbeesInThisCohort

      if number_healthy < 0
      [
        set BugAlarm true
        set BugMessage "BUG ALARM!!! (MitePhoreticPhaseProc) Negative number of healthy IH bees (MitePhoreticPhaseProc)" ;; Global parameter BugMessage added by I.S. to save message in file.
        type "BUG ALARM!!! (MitePhoreticPhaseProc) Negative number of healthy IH bees (MitePhoreticPhaseProc): "
        show number_healthy
      ]

      if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

      if number_healthy + number_infectedAsPupa + number_infectedAsAdult != number
      [
        set BugAlarm true
        set BugMessage "BUG ALARM!!! (MitePhoreticPhaseProc) Wrong sum of healthy + infected bees in this cohort" ;; Global parameter BugMessage added by I.S. to save message in file.
        type "BUG ALARM!!! (MitePhoreticPhaseProc) Wrong sum of healthy + infected bees in this cohort: "
        type number_healthy + number_infectedAsPupa + number_infectedAsAdult
        type " instead of: "
        show number
      ]

      if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

    ]  ; end "if TotalIHbees > 0 and number > 0 "
  ] ; end "ask IHbeeCohorts "

  set infectedPhoreticMites infectedPhoreticMites + newlyInfectedMites
  set healthyPhoreticMites healthyPhoreticMites - newlyInfectedMites

  if healthyPhoreticMites < 0
  [
    set BugAlarm true
    set BugMessage "BUG ALARM!!! Negative number of healthy mites (MitePhoreticPhaseProc)" ;; Global parameter BugMessage added by I.S. to save message in file.
    type "BUG ALARM!!! Negative number of healthy mites (MitePhoreticPhaseProc): "
    show healthyPhoreticMites
  ]

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

  if infectedPhoreticMites + healthyPhoreticMites > 0
  [
    set PhoreticMitesHealthyRate
      healthyPhoreticMites / (infectedPhoreticMites + healthyPhoreticMites)
  ]

end

; ********************************************************************************************************************************************************************************

to MiteOrganisersUpdateProc
  set TotalMites 0
    ; all mites in the colony, irrespective if phoretic or in cells

  ask miteOrganisers
  [
    back 1 ; new position in the GUI
    set age age + 1
    set cohortInvadedMitesSum 0
    let counter 0
      ; counts total numbers of mites in brood cells for each miteOrganiser (="mite cohort")

    foreach workerCellListCondensed
    [
      x ->
      set cohortInvadedMitesSum cohortInvadedMitesSum + (x * counter)
      set counter counter + 1
    ] ; sums up the mites in worker cells ( multiplication of # cells with X mites in them * X) (X = counter)

    set counter 0

    foreach droneCellListCondensed
    [
      x ->
      set cohortInvadedMitesSum cohortInvadedMitesSum
          + (x * counter)
      set counter counter + 1
    ] ; sums up the mites in drone cells ( multiplication of # cells with X mites in them * X) (X = counter)

    set label cohortInvadedMitesSum
    set TotalMites TotalMites + cohortInvadedMitesSum
      ; interim result: summing up all the mites in the cells

    if (age > DRONE_EMERGING_AGE) and (age >= EMERGING_AGE)
    [
      die
    ]  ; ">" (not ">=") as they age at the beginning of this procedure
  ] ; end "ask miteOrganisers "

 set TotalMites TotalMites + PhoreticMites
   ; final result: TotalMites = all mites in the cells + phoretic mites
end

; ********************************************************************************************************************************************************************************

; ...............  END OF THE VARROA MITE SUBMODEL   ...................................................................  END OF THE VARROA MITE SUBMODEL   .....................


; ********************************************************************************************************************************************************************************

to CountingProc
  ; counts # bees in different stages, castes CALLED BY: 1. BroodCareProc 2. Go 3. MiteProcedure

  ; WORKERS:
  set TotalEggs 0 ask eggCohorts [ set TotalEggs (TotalEggs + number)]
  set TotalLarvae 0 ask larvaeCohorts [ set TotalLarvae (TotalLarvae + number)]
  set TotalPupae 0 ask pupaeCohorts [ set TotalPupae (TotalPupae + number)]
  set TotalIHbees 0 ask IHbeeCohorts [ set TotalIHbees (TotalIHbees + number)]
  set TotalForagers (count foragerSquadrons) * SQUADRON_SIZE

  ;; *** ADDED by I.S. ***
  ; Recalculate infected & healthy bees.
  set totalInfectedWorkers 0 ;; Changed by I.S. from let to set.
  set totalHealthyWorkers 0 ;; Changed by I.S. from let to set.
  ask IHbeeCohorts
  [
    set totalInfectedWorkers
      totalInfectedWorkers + number_infectedAsPupa + number_infectedAsAdult
        ; infected: either during pupal phase or as adults
    set totalHealthyWorkers totalHealthyWorkers + number_healthy
  ]
  set infectedBees (totalInfectedWorkers + (count foragerSquadrons with [infectionState = "infectedAsPupa"]) * SQUADRON_SIZE + (count foragerSquadrons with [infectionState = "infectedAsAdult"]) * SQUADRON_SIZE )
  ;; ADDITION END ***

  ; DRONES:
  set TotalDroneEggs 0 ask DroneEggCohorts [ set TotalDroneEggs (TotalDroneEggs + number)]
  set TotalDroneLarvae 0 ask DroneLarvaeCohorts [ set TotalDroneLarvae (TotalDroneLarvae + number)]
  set TotalDronePupae 0 ask DronePupaeCohorts [ set TotalDronePupae (TotalDronePupae + number)]
  set TotalDrones 0 ask DroneCohorts [ set TotalDrones (TotalDrones + number)]
  set TotalWorkerAndDroneBrood TotalEggs + TotalLarvae + TotalPupae + TotalDroneEggs + TotalDroneLarvae + TotalDronePupae
  if TotalEggs  < 0 OR TotalLarvae < 0 OR TotalPupae < 0 OR TotalIHbees < 0 OR TotalForagers < 0
  [
    set BugAlarm true
    set BugMessage (word ticks " BUG ALARM! negative number in total bees")  ;; Global parameter BugMessage added by I.S. to save message in file.
    output-show (word ticks " BUG ALARM! negative number in total bees")
    type "TotalEggs: "
    type TotalEggs
    type " TotalLarvae: "
    type TotalLarvae
    type " TotalPupae: "
    type TotalPupae
    type " TotalIHbees: "
    type TotalIHbees
    type " TotalForagers: "
    print TotalForagers
  ]

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

  ask turtles
  [
    if number < 0
    [
      set BugAlarm true
      set BugMessage (word ticks " BUG ALARM! negative number in turtles: ")
      type (word ticks " BUG ALARM! negative number in turtles: ")
      show number
      ]
  ]

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

  if TotalMites < 0 or PhoreticMites < 0 or PhoreticMitesHealthyRate > 1  or PhoreticMitesHealthyRate < 0
  [
    set BugAlarm true
    set BugMessage (word ticks " BUG ALARM! Check number of mites and PhoreticMitesHealthyRate!") ;; Global parameter BugMessage added by I.S. to save message in file.
    output-show (word ticks " BUG ALARM! Check number of mites and PhoreticMitesHealthyRate!")
    type "PhoreticMitesHealthyRate: "
    type PhoreticMitesHealthyRate
    type " TotalMites: "
    type TotalMites
    type " PhoreticMites: "
    type PhoreticMites
  ]

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

  ask (turtle-set pupaeCohorts dronePupaeCohorts droneCohorts)
  [
    if number != number_infectedAsPupa + number_healthy
    [
      set BugAlarm true
      set BugMessage "BUG ALARM! (CountingProc) number <> healthy + infected" ;; Global parameter BugMessage added by I.S. to save message in file.
      show "BUG ALARM! (CountingProc) number <> healthy + infected"
    ]
  ]

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

  ask IHbeeCohorts
  [
    if number != number_infectedAsAdult + number_infectedAsPupa + number_healthy
    [
      set BugAlarm true
      set BugMessage "BUG ALARM! (CountingProc) number <> healthy + infected (IH-bees)" ;; Global parameter BugMessage added by I.S. to save message in file.
      show "BUG ALARM! (CountingProc) number <> healthy + infected (IH-bees)"
    ]
  ]

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.

end

; ********************************************************************************************************************************************************************************


; ***********************************
; ********** Added by I.S. **********
; ***********************************

; Count the number of infected mites in all miteOrganisers.
; Called daily in the 'Go' procedure.
to CountMitesInMOProc
  set allMitesInMO 0; Reset counter for all mites in brood cells.
  set mitesInfectedInMO 0 ; Reset counter for infected mites in brood cells.

  ask miteOrganisers
  [
    set allMitesInMO (allMitesInMO + cohortInvadedMitesSum) ; Sum up the number of all mites in the miteOrganisers.
    set mitesInfectedInMO (mitesInfectedInMO + (cohortInvadedMitesSum * (1 - invadedMitesHealthyRate))) ; Sum up the number of infected mites in the miteOrganisers.
  ]
end

; ***********************************
; ******** Added by I.S. END ********
; ***********************************



; ********************************************************************************************************************************************************************************


to PollenConsumptionProc
  ; calculates the daily pollen consumption

  let DAILY_POLLEN_NEED_ADULT 1.5 ; 0 ;1.5 ; 1.5 ;
    ; 1.5 mg fresh pollen per Day per bee (based on
    ; Pernal, Currie 2000, value for 14d old bees, Fig. 3)

  let DAILY_POLLEN_NEED_ADULT_DRONE 2 ; just an ESTIMATION

  let DAILY_POLLEN_NEED_LARVA 142 / (PUPATION_AGE - HATCHING_AGE)
    ; (23.6 mg/d) see HoPoMo
  let DAILY_POLLEN_NEED_DRONE_LARVA 50
    ; ESTIMATION, Rortais et al. 2005: "The pollen consumption of drone larvae has never been determined."

  let pollenStoreLasting_d 7
    ; similar to "FACTORpollenstorage" of HoPoMo model, which is set to 6.
    ; Seeley 1995: pollen stores last for about 1 week;

  let needPollenAdult
    ((TotalIHbees + TotalForagers) *  DAILY_POLLEN_NEED_ADULT
      + TotalDrones * DAILY_POLLEN_NEED_ADULT_DRONE )

  let needPollenLarvae (TotalLarvae * DAILY_POLLEN_NEED_LARVA
      + TotalDroneLarvae * DAILY_POLLEN_NEED_DRONE_LARVA )

  set DailyPollenConsumption_g (needPollenAdult + needPollenLarvae) / 1000 ; [g]
  set PollenStore_g PollenStore_g - DailyPollenConsumption_g
  if PollenStore_g < 0
  [
    set PollenStore_g 0
  ]

  ; the amount of pollen a colony tries to keep (depends on its current pollen consumption):
  set IdealPollenStore_g DailyPollenConsumption_g * pollenStoreLasting_d ; [g]

  if IdealPollenStore_g < MIN_IDEAL_POLLEN_STORE
  [
    set IdealPollenStore_g MIN_IDEAL_POLLEN_STORE
  ]

  ; PollenIdeal: switch in GUI, if true: pollen stores are always "ideal":
  if PollenIdeal = true
  [
    set PollenStore_g IdealPollenStore_g
  ]

  ; if no more pollen is left, protein stores of nurse bees are reduced.
  ;Assumption: protein stores of nurses can last for 7d, if the max. amount of brood (rel. to # nurses) is present, or proportionally longer if less brood is present:
  let workloadNurses 0
  if (TotalIHbees + TotalForagers * FORAGER_NURSING_CONTRIBUTION) * MAX_BROOD_NURSE_RATIO > 0
  [
    set workloadNurses
      TotalWorkerAndDroneBrood /
        ((TotalIHbees + TotalForagers * FORAGER_NURSING_CONTRIBUTION) * MAX_BROOD_NURSE_RATIO)
  ]

  ifelse PollenStore_g > 0
    [
      set ProteinFactorNurses ProteinFactorNurses + (1 / PROTEIN_STORE_NURSES_d)
    ] ;  IF pollen in present in colony, nurses can restore the protein stores of
      ; their bodies (within 7d)
    [
      set ProteinFactorNurses ProteinFactorNurses - (workloadNurses / PROTEIN_STORE_NURSES_d)
    ] ; ELSE protein content of brood food decreases, depending on brood to nurse ratio

  if ProteinFactorNurses > 1 [ set ProteinFactorNurses 1 ]
    ; range of ProteinFactorNurses between 1..

  if ProteinFactorNurses < 0 [ set ProteinFactorNurses 0 ]  ; .. and 0
end

; ********************************************************************************************************************************************************************************

to HoneyConsumptionProc
  let DAILY_HONEY_NEED_ADULT_RESTING 11 ; 15 ; (11)
    ; [mg/Day of honey] Rortais et al 2005: Winter bees: 11 mg/d (based on
    ; assumptions from Winston, 1987)

  let DAILY_HONEY_NEED_NURSES 53.42  ; (53.42) [mg/Day of honey]
    ; Rortais et al 2005: average for "brood attending" 34-50mg sugar/d => 43-64mg/d honey

  let THERMOREGULATION_BROOD (DAILY_HONEY_NEED_NURSES - DAILY_HONEY_NEED_ADULT_RESTING)
    / MAX_BROOD_NURSE_RATIO
    ;  additional cost per broodcell (e.g. Thermoregulation): difference between nursing
    ; and resting divided by # broodcells;

  let DAILY_HONEY_NEED_LARVA 65.4 / (PUPATION_AGE - HATCHING_AGE) ; [mg/day]
    ; = 10.9[mg] HONEY per Day per larvae  = 163.5mg nectar in total * 0.4
    ; (0.4: Nectar to honey); HoPoMo =  65.4 mg / 6

  let DAILY_HONEY_NEED_DRONE_LARVA 19.2 ;
    ; [mg/Day of honey] Rortais et al 2005: 98.2mg sugar in 6.5d
    ; sugar to honey: x1.272 i.e. 124.9mg honey in total or 19.2 mg/d

  let DAILY_HONEY_NEED_ADULT_DRONE 10  ;
    ; (9.806 = 10mg honey per day): Winston p62: resting drone 1-3mg sugar/hr
    ; flying drone: 14mg/hr (Mindt 1962); assumptions: 22h resting, 2h flying (MB);
    ; 1 mg sucrose = 17J; 1kJ = 0.008013g Honig

  ; honey costs of all adults, in-hive bees, foragers and drones:
  let needHoneyAdult
      (TotalIHbees + TotalForagers) * DAILY_HONEY_NEED_ADULT_RESTING
      + TotalDrones * DAILY_HONEY_NEED_ADULT_DRONE

  let needHoneyLarvae
      TotalLarvae * DAILY_HONEY_NEED_LARVA
       + TotalDroneLarvae * DAILY_HONEY_NEED_DRONE_LARVA

  set DailyHoneyConsumption
     needHoneyAdult + needHoneyLarvae + TotalWorkerAndDroneBrood
      * THERMOREGULATION_BROOD  ; [mg]

  ; the honey consumption is removed from the honey stores:
  set HoneyEnergyStore
      HoneyEnergyStore
      - (DailyHoneyConsumption / 1000) * ENERGY_HONEY_per_g

  ; sum up the total honey consumption as potential output:
  set CumulativeHoneyConsumption
     CumulativeHoneyConsumption  + DailyHoneyConsumption  ;[mg]

  ; HoneyIdeal: switch in GUI, if true: honey stores are always full:
  if HoneyIdeal = true
  [
    set HoneyEnergyStore MAX_HONEY_ENERGY_STORE
  ]
end

; ********************************************************************************************************************************************************************************

to BeekeepingProc
  let winterPauseStart 320 ; 320 = mid November
  let winterPauseStop 45 ; 45 = mid February
  let minWinterStore_kg 16 ; [kg] honey
  let minSummerStore_kg 3   ; [kg]
  let addedFondant_kg 1 ; [kg]
  ;let addedPollen_kg 0.5  ; [kg]

  ; FEEDING OF COLONY:
  ask Signs with [shape = "ambrosia"] [ hide-turtle]

  if FeedBees = true
     and day < winterPauseStart
     and day > winterPauseStop
     and HoneyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ) < minSummerStore_kg
       ; feeding colony in spring or summer
  [
    set TotalHoneyFed_kg TotalHoneyFed_kg + addedFondant_kg
    set HoneyEnergyStore HoneyEnergyStore + (addedFondant_kg * ENERGY_HONEY_per_g * 1000)
    output-type "Feeding colony on day "
    output-type ceiling (day mod 30.4374999) ; day
    output-type "."
    output-type floor(day / (365.25 / 12)) + 1 ; month
    output-type "."
    output-type ceiling (ticks / 365)     ; year
    output-type " Fondant provided [kg]: "
    output-type precision addedFondant_kg 1
    output-type " total food added [kg]: "
    output-print precision TotalHoneyFed_kg 1
    ask Signs with [shape = "ambrosia"] [ show-turtle]
  ]

  if FeedBees = true
    and day = winterPauseStart
    and HoneyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ) < minWinterStore_kg
      ; feeding colony before winter
  [
    set TotalHoneyFed_kg TotalHoneyFed_kg
       + minWinterStore_kg
       -(HoneyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ))

    output-type "Feeding colony on day "
    output-type day
    output-type ". Ambrosia fed [kg]: "
    output-type precision (minWinterStore_kg - (HoneyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ))) 1
    output-type " total food added [kg]: "
    output-print precision TotalHoneyFed_kg 1
    set HoneyEnergyStore minWinterStore_kg * 1000 * ENERGY_HONEY_per_g
       ; if honey store is smaller than minWinterStore it is filled up to minWinterStore

    ask Signs with [shape = "ambrosia"] [ show-turtle]
  ]

  ; ADD BEES TO WEAK COLONY - a weak colony is "merged" with another
  ; (not modelled!) weak colony (all of them are healthy):
  ask signs with [shape = "colonies_merged"] [ hide-turtle ]
  if MergeWeakColonies = true
    and (TotalIHbees + TotalForagers) < MergeColoniesTH
    and day = winterPauseStart
  [
    set TotalBeesAdded TotalBeesAdded + MergeColoniesTH
    output-type "Merging colonies in autumn! "
    output-type " # added bees: "
    output-type MergeColoniesTH
    output-type " total bees added: "
    output-print TotalBeesAdded
    ask signs with [shape = "colonies_merged"] [ show-turtle ]

    create-foragerSquadrons (MergeColoniesTH / SQUADRON_SIZE)
    [
      set age 60 + random 40
      setxy 30 9
      set color grey
      set size 2
      set heading 90
      set shape "bee_mb_1"
      set mileometer random (MAX_TOTAL_KM / 5)
      set activity "resting"
      set activityList [ ]
      set cropEnergyLoad 0 ; [kJ] no nectar in the crop yet
      set collectedPollen 0 ; [g] no pollen pellets
      set knownNectarPatch -1  ; -1 = no nectar Flower patch known
      set knownPollenPatch -1 ; -1 = no pollen Flower patch known
      set pollenForager false ; new foragers are nectar foragers
      set infectionState "healthy"
        ; possible infection states are: "healthy" "infectedAsPupa" "infectedAsAdult"
    ]
  ]  ; if MergeWeakColonies = true  ...

  ; ADDING POLLEN IN SPRING:
  ask signs with [shape = "pollengrain"] [ hide-turtle ]
  if AddPollen = true and day = 90 ; day 90: end of March
  [
    ask signs with [shape = "pollengrain"] [ show-turtle ]
    set TotalPollenAdded TotalPollenAdded + addedPollen_kg
    output-type "Added pollen [kg]: "
    output-type addedPollen_kg
    output-type " total pollen added [kg]: "
    output-print TotalPollenAdded
    set PollenStore_g PollenStore_g + addedPollen_kg * 1000
  ]

  ask Signs with [shape = "honeyjar"] [ hide-turtle ]
  if ((Day >=  HarvestingDay)
    and (Day <  HarvestingDay + HarvestingPeriod)
    and (HoneyHarvesting = true))
      ; honey can only be harvested within HarvestingPeriod
  [
    if HoneyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ) > HarvestingTH
    [
      set HarvestedHoney_kg (HoneyEnergyStore  / (ENERGY_HONEY_per_g * 1000)) - RemainingHoney_kg
      set HoneyEnergyStore HoneyEnergyStore - (HarvestedHoney_kg * ENERGY_HONEY_per_g * 1000)
      set TotalHoneyHarvested_kg TotalHoneyHarvested_kg + HarvestedHoney_kg
      output-type "Honey harvest on day "
      output-type ceiling (day mod 30.4374999)
      output-type "."
      output-type floor(day / (365.25 / 12)) + 1
      output-type "."
      output-type ceiling (ticks / 365)
      output-type ". Amount [kg]: "
      output-type precision HarvestedHoney_kg 1
      output-type " total honey harvested: "
      output-print precision TotalHoneyHarvested_kg 1
      ask Signs with [shape = "honeyjar"]
      [
        show-turtle
        set label precision HarvestedHoney_kg 1
      ]
    ]
  ]

  if QueenAgeing = true
  [
    let requeening true ; true
    if requeening = true and Queenage >= 375
    [
      set Queenage 10
      output-print word "New queen inserted on day " day
    ]  ; old queen is replaced by the beekeeper
   ]


  ;;-----------------------------------
  ;; PREVIOUS CODE FOR VARROA TREATMENT
  ;;-----------------------------------

  ; begin ***NEW FOR BEEHAVE_BEEMAPP2015***
    ; let treatmentDay 270   ; 270: 27.September
    ; let treatmentDuration 40  ; (28-40d) Fries et al. 1994
    ; let treatmentEfficiency 0.115
    ; (0.115) Fries et al. 1994 kills X*100% of phoretic mites each treatment Day

  ; treatment #1:
  if EfficiencyPhoretic > 1 [ set EfficiencyPhoretic 1 ]
  ifelse ((varroaTreatment = true) and (Day >= treatmentDay)
    and (Day <=  treatmentDay + treatmentDuration ))
    [
      set PhoreticMites round(PhoreticMites * (1 - EfficiencyPhoretic))
      ask signs with [shape = "x" or shape = "varroamite03"] [ show-turtle]



      if KillOpenBrood = true
        [
          ask (turtle-set eggCohorts larvaeCohorts) with [ age < PUPATION_AGE ] [ set number 0 ]
          ask (turtle-set droneEggCohorts droneLarvaeCohorts) with [ age < DRONE_PUPATION_AGE ] [ set number 0 ]
          ask miteOrganisers with [ age <= 10 ] ; i.e. those mite organisers, connected to dying larvae cohorts
          [
            if age < 10 ; for workers: age 10 brood is already capped, i.e. not affected!
              [ set workerCellListCondensed n-values (MAX_INVADED_MITES_WORKERCELL + 1) [ 0 ]]
            set droneCellListCondensed n-values (MAX_INVADED_MITES_DRONECELL + 1) [ 0 ]
            let memoInvadedW invadedWorkerCohortID
            let memoInvadedD invadedDroneCohortID
            if any? turtles with [ who = memoInvadedW ] [ set workerCellListCondensed replace-item 0 workerCellListCondensed [number] of turtle invadedWorkerCohortID ]
            if any? turtles with [ who = memoInvadedD ] [ set droneCellListCondensed replace-item 0 droneCellListCondensed [number] of turtle invadedDroneCohortID ]
          ]
        ]

     if KillAllMitesInCells = true
        [
          ask miteOrganisers
          [
            set workerCellListCondensed n-values (MAX_INVADED_MITES_WORKERCELL + 1) [ 0 ]
            set droneCellListCondensed n-values (MAX_INVADED_MITES_DRONECELL + 1) [ 0 ]
            let memoInvadedW invadedWorkerCohortID
            let memoInvadedD invadedDroneCohortID
            if any? turtles with [ who = memoInvadedW ] [ set workerCellListCondensed replace-item 0 workerCellListCondensed [number] of turtle invadedWorkerCohortID ]
            if any? turtles with [ who = memoInvadedD ] [ set droneCellListCondensed replace-item 0 droneCellListCondensed [number] of turtle invadedDroneCohortID ]
          ]
        ]
    ]
    [
      ask signs with [shape = "x" or shape = "varroamite03"] [ hide-turtle]
    ]

  ; treatment #2:
  if EfficiencyPhoretic2 > 1 [ set EfficiencyPhoretic2 1 ]
  if ((varroaTreatment = true) and (Day >= treatmentDay2)
    and (Day <=  treatmentDay2 + treatmentDuration2 ))
    [
      set PhoreticMites round (PhoreticMites * (1 - EfficiencyPhoretic2))
      ask signs with [shape = "x" or shape = "varroamite03"] [ show-turtle]
      if KillOpenBrood2 = true
        [
          ask (turtle-set eggCohorts larvaeCohorts) with [ age < PUPATION_AGE ] [ set number 0 ]
          ask (turtle-set droneEggCohorts droneLarvaeCohorts) with [ age < DRONE_PUPATION_AGE ] [ set number 0 ]
          ask miteOrganisers with [ age <= 10 ] ; i.e. those mite organisers, connected to dying larvae cohorts
          [
            if age < 10 ; for workers: age 10 brood is already capped, i.e. not affected!
              [ set workerCellListCondensed n-values (MAX_INVADED_MITES_WORKERCELL + 1) [ 0 ]]
            set droneCellListCondensed n-values (MAX_INVADED_MITES_DRONECELL + 1) [ 0 ]
            let memoInvadedW invadedWorkerCohortID
            let memoInvadedD invadedDroneCohortID
            if any? turtles with [ who = memoInvadedW ] [ set workerCellListCondensed replace-item 0 workerCellListCondensed [number] of turtle invadedWorkerCohortID ]
            if any? turtles with [ who = memoInvadedD ] [ set droneCellListCondensed replace-item 0 droneCellListCondensed [number] of turtle invadedDroneCohortID ]
          ]
        ]

      if KillAllMitesInCells2 = true
        [
         ask miteOrganisers
          [
            set workerCellListCondensed n-values (MAX_INVADED_MITES_WORKERCELL + 1) [ 0 ]
            set droneCellListCondensed n-values (MAX_INVADED_MITES_DRONECELL + 1) [ 0 ]
            let memoInvadedW invadedWorkerCohortID
            let memoInvadedD invadedDroneCohortID
            if any? turtles with [ who = memoInvadedW ] [ set workerCellListCondensed replace-item 0 workerCellListCondensed [number] of turtle invadedWorkerCohortID ]
            if any? turtles with [ who = memoInvadedD ] [ set droneCellListCondensed replace-item 0 droneCellListCondensed [number] of turtle invadedDroneCohortID ]
          ]
        ]

    ]
  ;;-----------------------------------------
  ;; PREVIOUS CODE FOR VARROA TREATMENT - END
  ;;-----------------------------------------





  ; ***********************************
  ; ********** Added by I.S. **********
  ; ***********************************

  ; Treatment of the varroa mite with organic acaricide.

  ; formic acid (Ameisensaeure) -> possible on two days between July (Day 182) & September (Day 273) with specified duration.

  ; formic acid treatment 1.
  ; If treatment for formic acid is true and the current day is the treatment day or within its duration range.
  ; 'formicAcidTreatmentDay1-1' means one day before the treatment should be applied.
  ; For the value of 'formicAcidTreatmentDay1-1' '>' and not '>=" was chosen to allow the number of treatment days to be equal to the specified treatment duration.
  ; E.g. if formicAcidTreatmentDay1-1 = 214 and formicAcidTreatmentDuration1 = 3: with '>=' the treatment duration is actually 4 days, with '>' the desired 3.
  ; -10 is used as the value when the treatment day should be skipped.
  ifelse ((formicAcidVarroaTreatment = true) and (formicAcidTreatmentDay1-1 != -10) and (Day > formicAcidTreatmentDay1-1) and (Day <= formicAcidTreatmentDay1-1 + formicAcidTreatmentDuration1))
  [
    ask signs with [shape = "x" or shape = "varroamite03"] [ show-turtle] ; NetLogo interface command ; Copied from Matthias' code.

    ; Kill phoretic mites.
    set PhoreticMites round(PhoreticMites * (1 - formicAcidEfficiencyPhoretic1))

    ; Kill mites in cells.
    ; Remove the desired proportion from every cell in every miteOrganiser.
    ask miteOrganisers ; Ask all miteOrganisers in Beehave, regardless of their age/associated bee life stage.
    [
      ; Call outsorced procedure to update the worker/drone cellListCondensed.
      set workerCellListCondensed (UpdateCellListCondensed_formicAcid formicAcidEfficiencyBroodcells1 workerCellListCondensed) ; For workers.
      set droneCellListCondensed (UpdateCellListCondensed_formicAcid formicAcidEfficiencyBroodcells1 droneCellListCondensed) ; For drones.

      ; Update the total number of mites in this miteOrganiser.
      set cohortInvadedMitesSum sumMitesinMiteOrganiser workerCellListCondensed droneCellListCondensed
    ]

    ; If true, kill open brood at the end of the treatment -> negative effect of formic acid treatment on bee colony.
    if (formicAcidKillOpenBrood1 = true and Day = formicAcidTreatmentDay1-1 + formicAcidTreatmentDuration1)
    [ ; Copied from Matthias' code.
      ask (turtle-set eggCohorts larvaeCohorts) with [ age < PUPATION_AGE ] [ set number 0 ]
      ask (turtle-set droneEggCohorts droneLarvaeCohorts) with [ age < DRONE_PUPATION_AGE ] [ set number 0 ]
      ask miteOrganisers with [ age <= 10 ] ; i.e. those mite organisers, connected to dying larvae cohorts
      [
        if age < 10 ; for workers: age 10 brood is already capped, i.e. not affected!
          [ set workerCellListCondensed n-values (MAX_INVADED_MITES_WORKERCELL + 1) [ 0 ]]
        set droneCellListCondensed n-values (MAX_INVADED_MITES_DRONECELL + 1) [ 0 ]
        let memoInvadedW invadedWorkerCohortID
        let memoInvadedD invadedDroneCohortID
        if any? turtles with [ who = memoInvadedW ] [ set workerCellListCondensed replace-item 0 workerCellListCondensed [number] of turtle invadedWorkerCohortID ]
        if any? turtles with [ who = memoInvadedD ] [ set droneCellListCondensed replace-item 0 droneCellListCondensed [number] of turtle invadedDroneCohortID ]
      ]
    ]
  ]
  [
    ask signs with [shape = "x" or shape = "varroamite03"] [ hide-turtle] ; Copied from Matthias' code.
  ]


  ; formic acid treatment 2.
  ; If treatment for formic acid is true and the current day is the treatment day or within its duration range.
  ; For the value of 'formicAcidTreatmentDay2-1' '>' and not '>=" was chosen for reasons specified above for the first formic acid treatment.
  ; -10 is used as the value when the treatment day should be skipped -> for example if one only wants one treatment with formic acid put -10 in 'formicAcidTreatmentDay2-1' on the graphical interface.
  ifelse ((formicAcidVarroaTreatment = true) and (formicAcidTreatmentDay2-1 != -10) and (Day > formicAcidTreatmentDay2-1) and (Day <= formicAcidTreatmentDay2-1 + formicAcidTreatmentDuration2))
  [
    ask signs with [shape = "x" or shape = "varroamite03"] [ show-turtle] ; NetLogo interface command ; Copied from Matthias' code.

    ; Kill phoretic mites.
    set PhoreticMites round(PhoreticMites * (1 - formicAcidEfficiencyPhoretic2))

    ; Kill mites in cells.
    ; Remove the desired proportion (given by 'formicAcidEfficiency2') from every cell in every miteOrganiser.
    ask miteOrganisers ; Ask all miteOrganisers in Beehave, regardless of their age/associated bee life stage.
    [
      ; Call outsorced procedure to update the worker/drone cellListCondensed.
      set workerCellListCondensed (UpdateCellListCondensed_formicAcid formicAcidEfficiencyBroodcells2 workerCellListCondensed) ; For workers.
      set droneCellListCondensed (UpdateCellListCondensed_formicAcid formicAcidEfficiencyBroodcells2 droneCellListCondensed) ; For drones.

      ; Update the total number of mites in this miteOrganiser.
      set cohortInvadedMitesSum sumMitesinMiteOrganiser workerCellListCondensed droneCellListCondensed
    ]

    ; If true, kill open brood at the end of the treatment -> negative effect of formic acid treatment.
    if (formicAcidKillOpenBrood2 = true and Day = formicAcidTreatmentDay2-1 + formicAcidTreatmentDuration2)
    [ ; Copied from Matthias' code.
      ask (turtle-set eggCohorts larvaeCohorts) with [ age < PUPATION_AGE ] [ set number 0 ]
      ask (turtle-set droneEggCohorts droneLarvaeCohorts) with [ age < DRONE_PUPATION_AGE ] [ set number 0 ]
      ask miteOrganisers with [ age <= 10 ] ; i.e. those mite organisers, connected to dying larvae cohorts
      [
        if age < 10 ; for workers: age 10 brood is already capped, i.e. not affected!
        [ set workerCellListCondensed n-values (MAX_INVADED_MITES_WORKERCELL + 1) [ 0 ]]
        set droneCellListCondensed n-values (MAX_INVADED_MITES_DRONECELL + 1) [ 0 ]
        let memoInvadedW invadedWorkerCohortID
        let memoInvadedD invadedDroneCohortID
        if any? turtles with [ who = memoInvadedW ] [ set workerCellListCondensed replace-item 0 workerCellListCondensed [number] of turtle invadedWorkerCohortID ]
        if any? turtles with [ who = memoInvadedD ] [ set droneCellListCondensed replace-item 0 droneCellListCondensed [number] of turtle invadedDroneCohortID ]
      ]
    ]
  ]
  [
    ask signs with [shape = "x" or shape = "varroamite03"] [ hide-turtle] ; Copied from Matthias' code.
  ]



  ; Oxalic acid -> possible in November (earliest Day 305) and December (latest Day 365).
  ; For the value of 'oxalicAcidTreatmentDay-1' '>' and not '>=" was chosen for reasons specified above for the first formic acid treatment.
  ; -10 is used as the value when the treatment day should be skipped.
  ifelse ((oxalicAcidvarroaTreatment = true) and (oxalicAcidTreatmentDay-1 != -10) and (Day > oxalicAcidTreatmentDay-1) and (Day <= oxalicAcidTreatmentDay-1 + oxalicAcidTreatmentDuration))
  [
    ask signs with [shape = "x" or shape = "varroamite03"] [ show-turtle] ; Copied from Matthias' code.

    ; Check that the bee colony is brood free and that the latest egglaying was 3 to 4 weeks before the treatment day -> requirement for oxalic acid.
    let totalBrood (totalEggs + TotalLarvae + TotalPupae + TotalDroneEggs + TotalDroneLarvae + TotalDronePupae)
    if (totalBrood > 0 )
    [
      output-show (word ticks)
      type "TotalEggs: "
      type TotalEggs
      type " TotalLarvae: "
      type TotalLarvae
      type " TotalPupae: "
      type TotalPupae
      type " TotalDroneEggs: "
      type TotalDroneEggs
      type " TotalDroneLarvae: "
      print TotalDroneLarvae
      type " TotalDronePupae: "
      print TotalDronePupae
      user-message "BUG Alarm: brood still present on oxalic acid treatment day!"
    ]

    ; Kill ONLY phoretic mites.
    set PhoreticMites round(PhoreticMites * (1 - oxalicAcidEfficiency))

  ]
  [
    ask signs with [shape = "x" or shape = "varroamite03"] [ hide-turtle] ; Copied from Matthias' code.
  ]

  ; ***********************************
  ; ********** Added by I.S. END ******
  ; ***********************************



  ;;--------------------------------------
  ;; PREVIOUS CODE FOR DRONE BROOD REMOVAL
  ;;--------------------------------------
;  ; removal drone brood:
;  if (ContinuousBroodRemoval = true) or (DroneBroodRemoval = true and (day = RemovalDay1 or day = RemovalDay2 or day = RemovalDay3 or day = RemovalDay4 or day = RemovalDay5))
;  [
;    ask dronePupaeCohorts
;    [
;      set number 0
;      set number_healthy 0
;      set number_infectedAsPupa 0
;    ]
;    ask miteOrganisers with [ age >=  DRONE_PUPATION_AGE + 1 ]
;    [
;       set droneCellListCondensed n-values (MAX_INVADED_MITES_DRONECELL + 1) [ 0 ]
;    ]
;    CountingProc
;  ]
  ;;---------------------------------------------
  ;; PREVIOUS CODE FOR DRONE BROOD REMOVAL - END
  ;;---------------------------------------------



  ; ***********************************
  ; ********** Added by I.S. **********
  ; ***********************************

  ; Drone brood removal (DBR).
  if (DroneBroodRemoval = true and (day = RemovalDay1 or day = RemovalDay2 or day = RemovalDay3 or day = RemovalDay4 or day = RemovalDay5))
  [
    ; Call the procedure to remove drone brood (Added & outsorced by I.S.).
    DroneBroodRemovalProc

    ; Call 'CountingProc' -> as already previously called at the end of the drone brood removal.
    CountingProc

    set countRemovalDay countRemovalDay + 1 ; Count for current number of removal day (0 -> RemovalDay1, 1 -> RemovalDay2 and so on).
    ; Reset the counter after the last removal event in the current year.
    if (countRemovalDay = length days_between_removals)
    [
      set countRemovalDay 0
    ]

    ; Reset counter for removed mites.
    set countMitesRemoved 0
  ]

  ; ***********************************
  ; ********** Added by I.S. END ******
  ; ***********************************


  ; re-infestation of varroa-mites
  if AllowReinfestation = true
  [
    let additionalMites random-poisson MiteReinfestation
    if DailyForagingPeriod = 0 [ set additionalMites 0 ]
    if phoreticMites + additionalMites > 0
      [ set PhoreticMitesHealthyRate  (phoreticMites * phoreticMitesHealthyRate + additionalMites / 2) / (phoreticMites + additionalMites)] ; assumes 50% of new mites are infected with virus
    set PhoreticMites PhoreticMites + additionalMites
    set TotalMites TotalMites + additionalMites
  ]

  ask miteOrganisers  ; update the number of invaded mites for each mite organiser:
  [
    let counter 0
    set cohortInvadedMitesSum 0
    foreach workerCellListCondensed
    [
      x ->
      set cohortInvadedMitesSum cohortInvadedMitesSum + (x * counter)
      set counter counter + 1
    ]
    set counter 0
    foreach droneCellListCondensed
    [
      x ->
      set cohortInvadedMitesSum cohortInvadedMitesSum + (x * counter)
      set counter counter + 1
    ]
    set label cohortInvadedMitesSum
  ]


  ; end ***NEW FOR BEEHAVE_BEEMAPP2015***




end


; ***********************************
; ********** Added by I.S. **********
; ***********************************

; ------- Sum Mites in miteOrganiser Reporter --------
to-report sumMitesinMiteOrganiser [current_workerCellListCondensed current_droneCellListCondensed]
  let counter 0
  let cohortInvadedMitesSum_local 0
  ; Sum up mites in the current cellListCondensed -> 'x * counter' as the CellListCondensed are mite-frequency classes for 0,1,2,... mites.
  foreach current_workerCellListCondensed
  [
    x ->
    set cohortInvadedMitesSum_local cohortInvadedMitesSum_local + (x * counter)
    set counter counter + 1
  ]
  set counter 0
  foreach current_droneCellListCondensed
  [
    x ->
    set cohortInvadedMitesSum_local cohortInvadedMitesSum_local + (x * counter)
    set counter counter + 1
  ]
  report cohortInvadedMitesSum_local
end
; ----- Sum Mites in miteOrganiser Reporter END -----



; ------- Drone Brood Removal Procedure --------
to DroneBroodRemovalProc
  ; Remove only drone pupae cohorts with specific ages on each drone-brood-removal day.
  ; Drone pupae are aged 10 to 24.
  ; The age of the youngest and oldest drone pupae cohort to be removed depends on the days between the start of the last droneEgglayingTime and the current removalDay.

  ; Get the number of days between last egg laying and current drone brood removal.
  let daysBetweenRemoval item countRemovalDay days_between_removals

  ; Calculate the possible ages of drone pupae cohorts.
  let min_dronePupae_ages map [i -> daysBetweenRemoval - i] (range 0 maxDroneFrameEgglayingDuration) ; Calculate the possible ages of drone pupae cohorts based on daysBetweenRemovals.
  ; In 'min_dronePupae_ages': first entry corresponds to droneFrameEgglayingDuration =  1, second to droneFrameEgglayingDuration =  2 and so on until maxDroneFrameEgglayingDuration.
  let maxDronePupaeAge daysBetweenRemoval ; Maximum age is the current 'daysBetweenRemoval'.

  ; Determine ages of pupae to be removed from the number of days that eggs were layed on the last drone egglaying event.
  let itemPosition droneFrameEgglayingDuration - 1 ; Netlogo lists/arrays start with 0.
  let minDronePupaeAge item itemPosition min_dronePupae_ages ; Determine age of youngest larvae cohort that emerged from last drone egglaying event.
  let countPupaeRemoved 0 ; Count the number of pupae removed.

  ask dronePupaeCohorts with [age >= minDronePupaeAge and age <= maxDronePupaeAge and number > 0] ; Only pupae cohorts with suitable ages get killed, and which are non-empty.
  [
    ; Kill only a certain proportion of the specific age cohorts.
    set current_dronePupaeRemain round(number * (1 - propRemoveDronePupae))
    set countPupaeRemoved countPupaeRemoved + (number - current_dronePupaeRemain); Count removed pupae.
    ; Update numbers in this cohort accordingly.
    set number round(number * (1 - propRemoveDronePupae))

    ; Determine randomly which number (healthy or infected) gets reduced first -> the other number is calculated from this one and the determined total number of drone pupae 'number'.
    ifelse random 1 < 0.5
    [
      set number_healthy round(number_healthy * (1 - propRemoveDronePupae))
      set number_infectedAsPupa number - number_healthy
    ]
    [
      set number_infectedAsPupa round(number_infectedAsPupa * (1 - propRemoveDronePupae))
      set number_healthy number - number_infectedAsPupa
    ]

    ask miteOrganiser invadedByMiteOrganiserID ; Ask the to the current drone pupae cohort corresponding miteOrganiser.
    [
      ; Call reporter to reduce mites in all mite classes by the desired proportion.
      set droneCellListCondensed (UpdateCellListCondensed propRemoveDronePupae droneCellListCondensed current_dronePupaeRemain)

      ; CHECK that the the number of drone pupae remaining is the same as the number of cells stored in the MiteOrgansiser.
      if current_dronePupaeRemain != sum droneCellListCondensed
      [;; Global parameter BugMessage added by I.S. to save message in file.
        set BugAlarm true
        set BugMessage (word "BUG ALARM in DroneBroodRemovalProc: number of drone pupae != number of cells in MiteOrganiser" current_dronePupaeRemain word " != " droneCellListCondensed)
        type (word "number of drone pupae != number of cells in MiteOrganiser" current_dronePupaeRemain word " != " droneCellListCondensed)
      ]
    ]
  ]
end

; ------- Drone Brood Removal Procedure END ----


; ------- Reduce Mites in MiteOrganiser Reporter  --------
; Called in DroneBroodRemovalProc.
to-report UpdateCellListCondensed [proportion current_cellListCondensed numDronePupae]
  ; For every drone pupae removed in the DroneBroodRemovalProc, one cell in the corresponding MiteOrganiser has to be removed.
  ; First, the desired proportion that should be removed (e.g. 80%) is removed from every mite frequency class.
  ; As, due to rounding, more or less cells than desired might be removed, it is then checked whether cells then have to be removed or re-added.
  ; To always make sure

  let cellListCondensed current_cellListCondensed ; Local copy of the current cell list.

  let num_cells_remain 0 ; Local parameter of cells that will remain in the current mite-frequency-class.

  ; Create a shuffeled list of indices indicating positions in cellListCondensed.
  let shuffledIndices shuffle n-values length cellListCondensed [i -> i]

  foreach shuffledIndices ; Loop through every entry in shuffledIndices list.
  [
    x -> ; Do the following for all entries in shuffledIndices,  while 'x' being the current position in the cellListCondensed.
    set num_cells_remain ((item x cellListCondensed) * (1 - proportion)) ; As float.
    let num_cells_remain_int floor num_cells_remain ; As int.
    let diff num_cells_remain - num_cells_remain_int ; Calculate difference.

    if random 1 < diff [set num_cells_remain num_cells_remain + 1] ; Determine whether the difference is large enough to remove one more cell.

    set cellListCondensed replace-item x cellListCondensed num_cells_remain_int ; Update the cells in the current mite-frequency-class.
  ]

  ; If too little or too many cells have been removed due to rounding: remove or add them again until the number matches with the number of drone pupae in this cohort corresponding to the miteOrganiser.
  while [sum cellListCondensed != numDronePupae]
  [
    ifelse sum cellListCondensed < numDronePupae
    [
      let index position (max cellListCondensed) cellListCondensed ; Local index to get the position of the  largest value in cellListCondensed.
      set cellListCondensed replace-item index cellListCondensed ((item index cellListCondensed) + 1)
    ]
    ; If still not enough cells have been removed from the miteOrganiser.
    ;i.e.: sum cellListCondensed > numDronePupae
    [
      let index position (max cellListCondensed) cellListCondensed ; Local index to get the position of the  largest value in cellListCondensed.
      set cellListCondensed replace-item index cellListCondensed ((item index cellListCondensed) - 1)
    ]
  ]
  report cellListCondensed
end
; ------ Reduce Mites in MiteOrganiser Reporter END ------



; ------- Varroa Treatment Reporter: formic Acid --------
; Called in BeekeepingProc for formic acid treatment.
to-report UpdateCellListCondensed_formicAcid [formicAcidEfficiency current_cellListCondensed]
  ; It is assumed that once the treatment gets into a brood cell all mites in this cell die -> the cell is always shifted to the no-mites frequency-class.
  ; Remove the desired proportion from every entry in the current cellListCondensed.

  let cellListCondensed current_cellListCondensed ; Local copy of the current cell list.

  let num_cells_remain 0 ; Local number of cells that will remain in the current mite-frequency-class.
  let index 0 ;

  foreach cellListCondensed ; Loop through every entry in the cellListCondensed.
  [
    x -> ; Do the following for all entries in cellListCondensed,  while 'x' being the current cellListCondensed entry.

    if index > 0 ; Skip the first entry in the cellListCondensed, as this corresponds to the number of no-mite-cells.
    [
      set num_cells_remain (x * (1 - formicAcidEfficiency)) ; As float.
      let num_cells_remain_int floor num_cells_remain ; As int.
      let diff num_cells_remain - num_cells_remain_int ; Calculate difference.

      if random 1 < diff [set num_cells_remain num_cells_remain + 1] ; Determine whether the difference is large enough to remove one more cell.

      set cellListCondensed replace-item index cellListCondensed num_cells_remain_int ; Update the cells in the current mite-frequency-class.
      set cellListCondensed replace-item 0 cellListCondensed ((x - num_cells_remain_int) + item 0 cellListCondensed)  ; Move the removed cells to the first mite-frequency-class, i.e. no mites.
    ]
    set index index + 1
  ]

  report cellListCondensed
end
; ------ Varroa Treatment Reporter END ------

; ***********************************
; ********** Added by I.S. END ******
; ***********************************





; ********************************************************************************************************************************************************************************

;.............................................................................................................................................................................
;              PLOT PROCEDURES
;.............................................................................................................................................................................


; ********************************************************************************************************************************************************************************

to DoPlotsProc
; CAUTION: choosing "age forager squadrons", "mileometer" or "mean total km per day" will affect
; the sequence of random numbers!
; with-local-randomness [  ; to run the procedure is run without affecting subsequent random events
  if showAllPlots = true [ DrawForagingMapProc ]

  ask Signs with [ shape = "arrow" ]
  [
    facexy (xcor + 1000000) (ycor + (HoneyEnergyStore - HoneyEnergyStoreYesterday)
       / ( ENERGY_HONEY_per_g / 1000))

    set label  word "H: " precision ((HoneyEnergyStore - HoneyEnergyStoreYesterday)
        / ( ENERGY_HONEY_per_g * 1000 )) 2

    ifelse (HoneyEnergyStore - HoneyEnergyStoreYesterday)
      / ( ENERGY_HONEY_per_g * 1000 ) >= 0
      [ set color green ]
      [ set color red ]
  ]

  ask Signs with [ shape = "arrowpollen" ]
  [
    facexy (xcor - 100) (ycor + (PollenStore_g - PollenStore_g_Yesterday))
    set label word "P: " precision ((PollenStore_g - PollenStore_g_Yesterday) / 1000) 2
    ifelse (PollenStore_g - PollenStore_g_Yesterday) > 0
      [ set color green ]
      [ set color red ]
  ]

  ask Signs with [shape = "pete"]
  [
    ifelse formicAcidVarroaTreatment = true ;; Added by I.S.
           or oxalicAcidVarroaTreatment = true ;; Added by I.S.
           or FeedBees = true
           or HoneyHarvesting = true
           or AddPollen
           or MergeWeakColonies = TRUE
      [ show-turtle]
      [ hide-turtle ]
  ]

  ; calling GenericPlottingProc (8x) with plotname & plotChoice as input:
  GenericPlottingProc "Generic plot 1" GenericPlot1
  GenericPlottingProc "Generic plot 2" GenericPlot2
  GenericPlottingProc "Generic plot 3" GenericPlot3
  GenericPlottingProc "Generic plot 4" GenericPlot4
  GenericPlottingProc "Generic plot 5" GenericPlot5
  GenericPlottingProc "Generic plot 6" GenericPlot6
  GenericPlottingProc "Generic plot 7" GenericPlot7
  GenericPlottingProc "Generic plot 8" GenericPlot8
; ] ; end "with-local-randomness"
end
; ********************************************************************************************************************************************************************************

to GenericPlotClearProc
  ; clear those plots, that only show output of 'today'

  let i 1
  while [ i <= N_GENERIC_PLOTS ]

  [
    let plotname (word "Generic plot " i)
      ; e.g. "Generic plot 1"
     if (i = 1 and (GenericPlot1 = "foragers today [%]" or GenericPlot1 = "active foragers today [%]"))
     or (i = 2 and (GenericPlot2 = "foragers today [%]" or GenericPlot2 = "active foragers today [%]"))
     or (i = 3 and (GenericPlot3 = "foragers today [%]" or GenericPlot3 = "active foragers today [%]"))
     or (i = 4 and (GenericPlot4 = "foragers today [%]" or GenericPlot4 = "active foragers today [%]"))
     or (i = 5 and (GenericPlot5 = "foragers today [%]" or GenericPlot5 = "active foragers today [%]"))
     or (i = 6 and (GenericPlot6 = "foragers today [%]" or GenericPlot6 = "active foragers today [%]"))
     or (i = 7 and (GenericPlot7 = "foragers today [%]" or GenericPlot7 = "active foragers today [%]"))
     or (i = 8 and (GenericPlot8 = "foragers today [%]" or GenericPlot8 = "active foragers today [%]"))
        [
          set-current-plot plotname
          clear-plot
        ]
    set i i + 1
  ]
end
; ********************************************************************************************************************************************************************************



to GenericPlottingProc [ plotname plotChoice ]
 set TotalEventsToday NectarFlightsToday + PollenFlightsToday + EmptyFlightsToday
 set-current-plot plotname

 set TotalWeightBees_kg
   ( TotalEggs * 0.0001     ; 0.0001g (wegg, HoPoMo)
     + TotalLarvae * 0.0457
         ; 0.0457g : average weight of a larva (using wlarva 1..5 from HoPoMo (p. 231)
     + TotalPupae * 0.16      ; 0.16g wpupa (HoPoMo)
     + (TotalIHbees + TotalForagers) * WEIGHT_WORKER_g      ; 0.1g wadult (HoPoMo)
     + TotalDroneEggs * 0.0001
     + TotalDrones * 0.22
         ; 0.22g (Rinderer, Collins, Pesante (1985), Apidologie)
     + TotalDroneLarvae *(0.1 * (0.22 / WEIGHT_WORKER_g))
        ; estimation of drone larva weight on basis of worker larva weight and
        ; adult worker:drone weight
        ; 0.10054 = 0.0457*2.2 = estimated drone larva weight
     + TotalDronePupae * (0.16 * (0.22 / WEIGHT_WORKER_g))
        ; estimation of drone pupa weight on basis of worker pupa weight and adult worker:drone weight
    ) / 1000 ; [g] -> [kg]

  if plotChoice = "colony weight [kg]" ; total weight of the colony without hive/supers etc.
  [
    create-temporary-plot-pen "weight"
    plot TotalWeightBees_kg ;
  ]

  if plotChoice = "foragingPeriod"
    [
     create-temporary-plot-pen "period"
     plotxy ticks DailyForagingPeriod / 3600
    ]
  if plotChoice = "# completed foraging trips (E-3)"
    [
      create-temporary-plot-pen "# trips"
      plotxy ticks totalEventsToday / 1000

      create-temporary-plot-pen "# deaths"
      set-plot-pen-color red
      plotxy ticks (totalEventsToday - DeathsForagingToday) / 1000
    ]

 if plotChoice = "trips per hour sunshine (E-3)"
    [
      create-temporary-plot-pen "trips/h"
      ifelse DailyForagingPeriod > 0
       [ plotxy ticks (TotalEventsToday / 1000) / (DailyForagingPeriod / 3600) ]
       [ plotxy ticks 0 ]
    ]

 if plotChoice = "active foragers [%]"
    [
      create-temporary-plot-pen "active%"
      set-plot-y-range  0 100
      set-plot-pen-mode 1 ; 1: bars
      ifelse TotalForagers > 0
        [ plotxy ticks (100 * SQUADRON_SIZE
                 * (count foragersquadrons with [km_today > 0])) / TotalForagers ]
        [ plotxy ticks 0 ]
    ]

 if plotChoice = "mean trip duration"
    [
      create-temporary-plot-pen "trip [min]"
      set-plot-pen-mode 1 ; 1: bars
      ifelse ForagingRounds > 0
       [ plotxy ticks ( DailyForagingPeriod  / (ForagingRounds * 60)) ]
        ; mean Foraging trip duration [min] on this day
       [ plotxy ticks 0 ] ; if no foraging takes place
    ]

 if plotChoice = "mean total km per day"
    [
      create-temporary-plot-pen "km/d"
      set-plot-pen-mode 0 ; 0: lines
      ifelse count foragerSquadrons > 0
        [ plotxy ticks mean [km_today] of foragerSquadrons ]
        [ plotxy ticks 0 ]
    ]

 if plotChoice = "mileometer"
    [
      create-temporary-plot-pen "km"
      set-plot-x-range  0 850
      set-plot-y-range  0 40
      set-plot-pen-mode 1 ; 1: bars
      set-plot-pen-interval 25
      histogram [ mileometer ] of foragerSquadrons
    ]


 if plotChoice = "loads returning foragers [%]"
    [
      set totalEventsToday NectarFlightsToday + PollenFlightsToday + EmptyFlightsToday
      ifelse totalEventsToday > 0
        [
          create-temporary-plot-pen "nectar"
          set-plot-pen-color yellow
          plotxy ticks (100 * NectarFlightsToday) / totalEventsToday
          create-temporary-plot-pen "pollen"
          set-plot-pen-color orange
          plotxy ticks (100 * PollenFlightsToday) / totalEventsToday
          create-temporary-plot-pen "empty"
          set-plot-pen-color cyan
          plotxy ticks (100 * EmptyFlightsToday) / totalEventsToday
        ]
        [
          create-temporary-plot-pen "nectar"
          set-plot-pen-color yellow
          plotxy ticks 0
          create-temporary-plot-pen "pollen"
          set-plot-pen-color orange
          plotxy ticks 0
          create-temporary-plot-pen "empty"
          set-plot-pen-color cyan
          plotxy ticks 0
        ]
    ]

  if plotChoice = "broodcare [%]"
    [
      set-plot-y-range 0 150
      create-temporary-plot-pen "Protein"
        set-plot-pen-color orange
        plot ( ProteinFactorNurses * 100 )  ; Proteinfactor of nurses [%]
      create-temporary-plot-pen "Workload"
       if ((TotalIHbees + TotalForagers * FORAGER_NURSING_CONTRIBUTION)
         * MAX_BROOD_NURSE_RATIO) > 0 ; avoids division by 0
       [
         plot ( 100 * (TotalWorkerAndDroneBrood / ((TotalIHbees + TotalForagers
              * FORAGER_NURSING_CONTRIBUTION) * MAX_BROOD_NURSE_RATIO)) )
       ]

      create-temporary-plot-pen "Pollen"
        set-plot-pen-color green
        plot (PollenStore_g / IdealPollenStore_g) * 100
    ]


 if plotChoice = "consumption [g/day]"
    [
      create-temporary-plot-pen "honey"
        set-plot-pen-color yellow
        plot (DailyHoneyConsumption / 1000)  ;[g/day]

      create-temporary-plot-pen "pollen"
        set-plot-pen-color orange
        plot (DailyPollenConsumption_g)   ;[g/day]
    ]


 if plotChoice = "drones"
    [
      create-temporary-plot-pen "Eggs"  ; DRONE eggs
        set-plot-pen-color blue
        plot (TotalDroneEggs)
      create-temporary-plot-pen "Larvae"  ; DRONE larvae
        set-plot-pen-color yellow
        plot (TotalDroneLarvae)
      create-temporary-plot-pen "Pupae"   ; DRONE pupae
        set-plot-pen-color brown
        plot (TotalDronePupae)
      create-temporary-plot-pen "Drones"
        plot (TotalDrones)
    ]



 if plotChoice = "colony structure workers"
    [
      create-temporary-plot-pen "Eggs"
        set-plot-pen-color blue
        plot (TotalEggs)
      create-temporary-plot-pen "Larvae"
        set-plot-pen-color yellow
        plot (TotalLarvae)
      create-temporary-plot-pen "Pupae"
        set-plot-pen-color brown
        plot (TotalPupae)
      create-temporary-plot-pen "IHbees"
        set-plot-pen-color orange
        plot (TotalIHbees)
      create-temporary-plot-pen "Foragers"
        set-plot-pen-color green
        plot (TotalForagers)
      create-temporary-plot-pen "Adults"
        set-plot-pen-color black
        plot (TotalForagers + TotalIHbees)
      create-temporary-plot-pen "Brood"
        set-plot-pen-color violet
        plot (TotalEggs + TotalLarvae + TotalPupae)
      create-temporary-plot-pen "infectedBees" ;; Added by I.S.
        set-plot-pen-color red
        plot (infectedBees)
    ]






  let totalNectarAvailableToDay 0
  let totalPollenAvailableToDay 0
  ask flowerPatches
  [
    set totalNectarAvailableToDay totalNectarAvailableToDay + quantityMyl
    set totalPollenAvailableToDay totalPollenAvailableToDay + amountPollen_g
  ]

 if plotChoice = "nectar availability [l]"
  [
    ifelse readInfile = false
      [
        create-temporary-plot-pen "Patch 0"
          set-plot-pen-color red
          plot (([ quantityMyl ] of flowerPatch 0 ) / 1000000 )  ;[l] nectar
        create-temporary-plot-pen "Patch 1"
          set-plot-pen-color green
          plot (([ quantityMyl ] of flowerPatch 1 ) / 1000000 )  ;[l] nectar
      ]
      [
        create-temporary-plot-pen "all patches"
        set-plot-pen-color yellow ; black
        plot (totalNectarAvailableToDay / 1000000 )  ;[l] nectar
      ]
  ]


  if plotChoice =  "pollen availability [kg]"
  [
    ifelse readInfile = false
      [
        create-temporary-plot-pen "Patch 0"
          set-plot-pen-color red
          plot (([ amountPollen_g ] of flowerPatch 0 ) / 1000 )  ; [kg] pollen
        create-temporary-plot-pen "Patch 1"
          set-plot-pen-color green
          plot (([ amountPollen_g ] of flowerPatch 1 ) / 1000 )  ; [kg] pollen
      ]
      [
        create-temporary-plot-pen "all patches"
          set-plot-pen-color orange; black
          plot (totalPollenAvailableToDay / 1000 )  ; [kg] pollen
      ]
  ]

 if plotChoice = "egg laying"
 [
  ;; Added & changed by I.S.
  create-temporary-plot-pen "total eggs"
    set-plot-pen-color violet; black
    plot (NewWorkerEggs + NewDroneEggs)
  create-temporary-plot-pen "new worker eggs"
    set-plot-pen-color black
    plot (NewWorkerEggs)
  create-temporary-plot-pen "new drone eggs"
    set-plot-pen-color orange
    plot (NewDroneEggs)
 ]

  if plotChoice = "honey gain [kg]"
    [
      set-plot-y-range -3 10
      create-temporary-plot-pen "gain"
      set-plot-pen-mode 1 ; 1: bars
      ifelse (HoneyEnergyStore - HoneyEnergyStoreYesterday) / ( ENERGY_HONEY_per_g * 1000 ) < 0
        [ set-plot-pen-color red ]
        [ set-plot-pen-color black ]
      plotxy ticks (HoneyEnergyStore - HoneyEnergyStoreYesterday) / ( ENERGY_HONEY_per_g * 1000 )
    ]

 if plotChoice = "honey & pollen stores [kg]"
 [ create-temporary-plot-pen "honey"
     set-plot-pen-color yellow
     plot (HoneyEnergyStore / ( ENERGY_HONEY_per_g * 1000 ) )  ;[ml] honey
  ; create-temporary-plot-pen "decent honey"
  ;    set-plot-pen-color brown
  ;   plot (TotalIHbees + TotalForagers ) * 0.0015
     ;; 1.5g honey per bee = estimated honey necessary for the colony to survive the winter
   create-temporary-plot-pen "pollen x 20"
     set-plot-pen-color orange
     plot 20 * (PollenStore_g / 1000)  ;[kg * 10] pollen stored in the colony in kg
 ]

  if plotChoice = "mites"
  [
    create-temporary-plot-pen "totalMites"
      plot (TotalMites)  ; # all mites (phoretic & in cells)
    create-temporary-plot-pen "phoreticMites"
      set-plot-pen-color brown
      plot (PhoreticMites)  ; # phoretic mites
    create-temporary-plot-pen "phoreticMitesInfected"
      set-plot-pen-color red
      plot (PhoreticMites * (1 - PhoreticMitesHealthyRate))  ; # infected phoretic mites
    ;create-temporary-plot-pen "phoreticMitesHealthy"
    ;  set-plot-pen-color green
    ;  plot (PhoreticMites * PhoreticMitesHealthyRate)  ; # healthy phoretic mites
    create-temporary-plot-pen "miteDrop x 10"
      set-plot-pen-color violet
      plot (DailyMiteFall * 10)  ; # dropping mites

    ;; Added by I.S.
    ;create-temporary-plot-pen "allMitesInMO"
    ;  set-plot-pen-color blue
    ;  plot (allMitesInMO)
    create-temporary-plot-pen "mitesInfectedInCells"
      set-plot-pen-color orange
      plot (mitesInfectedInMO) ; All infected mites that are organised by all miteOrganisers, i.e. the infected mites in the brood cells.
    ;; Addition End.
  ]

  if plotChoice = "proportion infected mites"
  [
    create-temporary-plot-pen "proportion"
    ;if TotalMites > 0 [ plotxy ticks (1 - PhoreticMitesHealthyRate) ]  ; ***NEW FOR BEEHAVE_BEEMAPP2015***
    plotxy ticks (1 - PhoreticMitesHealthyRate)  ; ***NEW FOR BEEHAVE_BEEMAPP2015***
  ]

  if plotChoice = "aff & lifespan"
  [
    create-temporary-plot-pen "aff"
      set-plot-y-range 0 200
      set-plot-pen-mode 1 ; 1: bars
      if count foragerSquadrons with [age = aff] > 0
         [ plotxy ticks (aff) ]
    create-temporary-plot-pen "lifespan"
      set-plot-pen-color green
      set-plot-pen-mode 2 ; 2: dots
      ifelse (DeathsAdultWorkers_t > 0)
        and ((SumLifeSpanAdultWorkers_t / deathsAdultWorkers_t) < MIN_AFF)
           [ plot-pen-down ]
           [ plot-pen-up  ]
      plot (SumLifeSpanAdultWorkers_t / (DeathsAdultWorkers_t + 0.0000001)) ; to avoid division by 0
  ]

  if plotChoice =  "age forager squadrons"
  [
    set-plot-y-range 0 10
    set-plot-x-range 0 300

    create-temporary-plot-pen "foragersHealthy"
      set-plot-pen-mode 1 ; 1: bars
      set-plot-pen-interval 1
      histogram [ age ] of foragerSquadrons
        with [ infectionState = "healthy" ]

    create-temporary-plot-pen "foragersDiseased"
      set-plot-pen-mode 1 ; 1: bars
      set-plot-pen-interval 1
      set-plot-pen-color red
      histogram [ age ] of foragerSquadrons
        with [ infectionState = "infectedAsPupa" ]
        ; infectedAsPupa = true or infectedAsAdult = true ]

    create-temporary-plot-pen "foragersCarrier"
      set-plot-pen-mode 1 ; 1: bars
      set-plot-pen-interval 1
      set-plot-pen-color blue
      histogram [ age ] of foragerSquadrons
        with [ infectionState = "infectedAsAdult" ]
  ]

end


; ********************************************************************************************************************************************************************************

to DrawForagingMapProc
; CAUTION: choice of ForagingMap and DotDensity affects the sequence of random numbers!
; with-local-randomness [  ; procedure is run without affecting subsequent random events
  set-current-plot "foraging map"
  set-current-plot-pen "default"
  clear-plot
  let xplot 0
  let yplot 0
  ask flowerPatches
  [
    if ForagingMap = "Nectar foraging"
    [
      repeat nectarVisitsToday * DotDensity
      [
        let radius sqrt(size_sqm / pi)
          ; the (hypothetical) radius of the patch (assumed to be circular)

        set xplot (xcorMap - radius) + (random-float (2 * radius))
          ; x coordinate randomly chosen from centre +- radius

        let yRange sqrt((radius ^ 2) - ((xplot - xcorMap) ^ 2))
          ; calculate the range of possible y-coordinates for chosen x-coordinate,

        set yplot (ycorMap - yRange) + (random-float (2 * yRange))
          ; y coordinate randomly chosen from the range of possible values

        set-plot-pen-color yellow
        plotxy xplot yplot
      ]
    ]

    if ForagingMap = "Pollen foraging"
    [
      repeat pollenVisitsToday * DotDensity
      [
        let radius sqrt(size_sqm / pi)
        ; the (hypothetical) radius of the patch (assumed to be circular)

        set xplot (xcorMap - radius) + (random-float (2 * radius))
          ; x coordinate randomly chosen from centre +- radius

        let yRange sqrt((radius ^ 2) - ((xplot - xcorMap) ^ 2))
          ; calculate the range of possible y-coordinates for chosen x-coordinate,

        set yplot (ycorMap - yRange) + (random-float (2 * yRange))
          ; y coordinate randomly chosen from the range of possible values )

        set-plot-pen-color orange
        plotxy xplot yplot
      ]
    ]

    if ForagingMap = "All visits"
    [
      repeat (nectarVisitsToday + pollenVisitsToday) * DotDensity
      [
        let radius sqrt(size_sqm / pi)
          ; the (hypothetical) radius of the patch (assumed to be circular)

        set xplot (xcorMap - radius) + (random-float (2 * radius))
          ; x coordinate randomly chosen from centre +- radius

        let yRange sqrt((radius ^ 2) - ((xplot - xcorMap) ^ 2))
          ; calculate the range of possible y-coordinates for chosen x-coordinate,

        set yplot (ycorMap - yRange) + (random-float (2 * yRange))
          ; y coordinate randomly chosen from the range of possible values

        set-plot-pen-color black
        plotxy xplot yplot
      ]
    ]

     if ForagingMap = "All patches"
     [
       repeat 100; J.G. too much effort 0000 * DotDensity
       [
         let radius 0.1 * sqrt(size_sqm / pi)
           ; the (hypothetical) radius of the patch (assumed to be circular)

         set xplot (xcorMap - radius) + (random-float (2 * radius))
           ; x coordinate randomly chosen from centre +- radius

         let yRange sqrt((radius ^ 2) - ((xplot - xcorMap) ^ 2))
            ;calculate the range of possible y-coordinates for chosen x-coordinate,

         set yplot (ycorMap - yRange) + (random-float (2 * yRange))
           ; y coordinate randomly chosen from the range of possible values

         if patchType = "YellowField"
            or patchType = "OilSeedRape"
         [
           set-plot-pen-color yellow
         ]
         if patchType = "RedField" [ set-plot-pen-color red ]
         if patchType = "BlueField" [ set-plot-pen-color blue ]
         if patchType = "GreenField" [ set-plot-pen-color green ]
         plotxy xplot yplot
       ]
     ]

     if ForagingMap = "Available patches"
     [
       let proportionPollen 0
       let pollenAvailable amountPollen_g / POLLENLOAD
         ; # pollen loads available

       let nectarAvailable quantityMyl / CROPVOLUME
         ; # crop loads available

       if pollenAvailable + nectarAvailable > 0
       [
         set proportionPollen pollenAvailable / (pollenAvailable + nectarAvailable)
       ]

       repeat round sqrt((pollenAvailable + nectarAvailable) * DotDensity)
         ; sqrt to avoid too many repeats
       [
         let radius sqrt(size_sqm / pi)
           ; the (hypothetical) radius of the patch (assumed to be circular)

         set xplot (xcorMap - radius) + (random-float (2 * radius))
           ; x coordinate randomly chosen from centre +- radius

         let yRange sqrt((radius ^ 2) - ((xplot - xcorMap) ^ 2))
           ; calculate the range of possible y-coordinates for chosen x-coordinate,

         set yplot (ycorMap - yRange) + (random-float (2 * yRange))
           ; y coordinate randomly chosen from the range of possible values

         ifelse random-float 1 < proportionPollen
           [ set-plot-pen-color orange ]
           [ set-plot-pen-color yellow ]
         plotxy xplot yplot
       ]
     ]

     if ForagingMap = "Nectar and Pollen"
     [
       let proportionPollen 0
       if pollenVisitsToday + nectarVisitsToday > 0
       [
         set proportionPollen pollenVisitsToday
          / ( pollenVisitsToday
            + nectarVisitsToday )
       ]

       repeat (pollenVisitsToday + nectarVisitsToday) * DotDensity
       [
         let radius sqrt(size_sqm / pi)
           ; the (hypothetical) radius of the patch (assumed to be circular)

         set xplot (xcorMap - radius) + (random-float (2 * radius))
           ; x coordinate randomly chosen from centre +- radius

         let yRange sqrt((radius ^ 2) - ((xplot - xcorMap) ^ 2))
         set yplot (ycorMap - yRange) + (random-float (2 * yRange))
         ifelse random-float 1 < proportionPollen
           [ set-plot-pen-color orange ]
           [ set-plot-pen-color yellow ]
         plotxy xplot yplot
       ]
     ]
    ]  ; end of: "Ask flowerpatches"

;  set-plot-pen-color brown  ; draw the colony:
;  repeat 10000
;  [
;    plotxy (-50 + random 100) (-50 + random 100)
;  ]
; ]   ; end "local randomness"
end

; ********************************************************************************************************************************************************************************

to WriteToFileProc
  ; writes data in file, copied from: Netlogo: Library:
  ; Code Examples: "File Output Example"

  let year ceiling (ticks / 365)
  foreach sort flowerPatches
  [
    x -> ask x
    [
      file-print
         ( word year " " word ticks " " ForagingRounds " " word self
           " distance: " distanceToColony
           " concentration: " nectarConcFlowerPatch
           " EEF: " EEF
           " quantity: " quantityMyl)
    ]
  ]

  foreach sort foragerSquadrons
  [
    x -> ask x
    [
      file-print
        (word year " " word ticks " " ForagingRounds " "  word self
          " age: " age
          " km: " mileometer)
    ]
  ]

end

; ********************************************************************************************************************************************************************************

to-report DateREP
  let month-names (list "January" "February" "March" "April" "May" "June" "July" "August" "September" "October" "November" "December")
  let days-in-months (list 31 28 31 30 31 30 31 31 30 31 30 31)


  let year floor (ticks / 365.01) + 1
  let month 0
  let dayOfYear remainder ticks 365
  if dayOfYear = 0 [ set dayOfYear 365 ]
  let dayOfMonth 0
  let sumDaysInMonths 0
  while [ sumDaysInMonths < dayOfYear ]
  [
    set month month + 1
    set sumDaysInMonths sumDaysInMonths + item (month - 1) days-in-months
    set dayOfMonth dayOfYear - sumDaysInMonths + item (month - 1) days-in-months
  ]

  report (word dayOfMonth "  " (item (month - 1) month-names) " " year )

end

; ********************************************************************************************************************************************************************************

to ReadFileProc
  ; reads data in from file, copied from: Netlogo: Library:
  ; Code Examples: "File Input Example"

  ifelse ( file-exists? INPUT_FILE )
    ; We check to make sure the file exists first
    [
      set AllDaysAllPatchesList []
        ; IF: data are saved in a list (list still empty)

      file-open INPUT_FILE
      let dustbin file-read-line
        ; first line of input file with headings is read - but not used for anything
   ; user-message AllDaysAllPatchesList
      while [ not file-at-end? ]
      [
        set AllDaysAllPatchesList sentence AllDaysAllPatchesList
           (list (list file-read file-read file-read file-read file-read
                       file-read file-read file-read file-read file-read
                       file-read file-read file-read file-read file-read))]
           ; 15 data colums are read in
        file-close  ; closes file
        set N_FLOWERPATCHES ((length AllDaysAllPatchesList) / 365)

   ; user-message N_FLOWERPATCHES

        if (N_FLOWERPATCHES mod 1) != 0
        [
          set BugMessage "Error in Infile - wrong number of lines" ;; Global parameter BugMessage added by I.S. to save message in file.
          user-message BugMessage
          set BugAlarm true
        ]
    ] ; end "ifelse"
    [
      user-message "There is no such INPUT_FILE in current directory!"
    ]

  if BugAlarm = true [ask patches [set pcolor red] export-parameters-to-file stop] ;; Added by I.S.: stop program after BugAlarm becomes true.
end

; ********************************************************************************************************************************************************************************


to ReadBeeMappFileProc
  ; reads colony data in from file, created by the BeeMapp app

  ifelse ( file-exists? BeeMapp_FILE )
    [
      set AllBeeMappCorrectionsList []
      file-open BeeMapp_FILE
      let dustbin file-read-line
       ; first line of input file with headings is read - but not used for anything

      while [ not file-at-end? ]
      [
        set AllBeeMappCorrectionsList sentence AllBeeMappCorrectionsList ; x columns in BeeMapp input file:
           (list (list ; repeat nColumns [ file-read ]
                       file-read file-read file-read file-read file-read file-read )) ;; Changed by I.S.
      ]
      set AssessmentNumber 0
      ;(list (list file-read-line ))]

        file-close
    ] ; end "ifelse"
    [
      user-message "There is no such BeeMapp_FILE in current directory!"
    ]
end

; ********************************************************************************************************************************************************************************

to BeeMappCorrectionProc ; ***NEW FOR BEEHAVE_BEEMAPP2015***

  let nextBeeMappCorrectionList item AssessmentNumber AllBeeMappCorrectionsList

  if ticks = item 0 nextBeeMappCorrectionList  ; if day = date of colony next colony assessment ;; Changed by I.S.: from item 1 to item 0.
  [

   ;############ Added by I.S. ############

    ; Change mite numbers.
    ; Healthy mites.
    set N_INITIAL_MITES_HEALTHY item 1 nextBeeMappCorrectionList
    ; Infected mites.
    set N_INITIAL_MITES_INFECTED item 2 nextBeeMappCorrectionList

    ; Change other mite numbers accordingly.
    set PhoreticMites  N_INITIAL_MITES_HEALTHY + N_INITIAL_MITES_INFECTED
    set TotalMites  PhoreticMites
    if (N_INITIAL_MITES_HEALTHY + N_INITIAL_MITES_INFECTED) > 0
    [
      set PhoreticMitesHealthyRate N_INITIAL_MITES_HEALTHY / (N_INITIAL_MITES_HEALTHY + N_INITIAL_MITES_INFECTED)
    ]

    ; Drone brood removal (DBR).
    ifelse item 3 nextBeeMappCorrectionList = 1
    [ ; DBR true
      set DroneBroodRemoval true
    ]
    [ ; DBR false
      set DroneBroodRemoval false
    ]

    ; Mite reinfestation.
    ifelse item 4 nextBeeMappCorrectionList = 1
    [
      set AllowReinfestation true
    ]
    [
      set AllowReinfestation false
    ]

    ; Formic acid treatment.
    ifelse item 5 nextBeeMappCorrectionList = 1
    [
      set formicAcidVarroaTreatment true
    ]
    [
      set formicAcidVarroaTreatment false
    ]


   ;############ Addition END ############

    ;############ Commented out by I.S. ############
   ; correct honey stores according to real honey stores:
;   set HoneyEnergyStore ENERGY_HONEY_per_g * 1000 * item 7 nextBeeMappCorrectionList ;
;
;   ; correct number of workers according to real colony size:
;   let correctedNumberWorkers item 6 nextBeeMappCorrectionList ;
;   if correctedNumberWorkers < 0 [ set correctedNumberWorkers 0 ]
;
;   ; correct # foragers:
;   let correctedNumberForagers correctedNumberWorkers * (totalForagers / (totalIHbees + totalForagers)) ;
;   let correctedNumberForagerSquadrons round (correctedNumberForagers / SQUADRON_SIZE)
;
;   ifelse correctedNumberForagerSquadrons * SQUADRON_SIZE < totalForagers
;   [
;      repeat totalForagers / SQUADRON_SIZE - correctedNumberForagerSquadrons    ; if foragers have to be REMOVED from the simulation
;       [ ask one-of foragerSquadrons [ die ] ]
;   ]
;   [
;     repeat correctedNumberForagerSquadrons - totalForagers / SQUADRON_SIZE     ; if foragers have to be ADDED to the simulation
;       [ ask one-of foragerSquadrons [ hatch 1 ] ]
;   ]
;
;   ; correct # in-hive bees:
;   let correctedNumberIHbees correctedNumberWorkers - correctedNumberForagerSquadrons * SQUADRON_SIZE
;   let changeNumberBy1 0
;
;   ifelse correctedNumberIHbees - totalIHbees < 0
;   [ set changeNumberBy1 -1 ]  ; if IHbees have to be REMOVED from the simulation
;   [ set changeNumberBy1 1 ]   ; if IHbees have to be ADDED to the simulation
;
;   repeat sqrt ((correctedNumberIHbees - totalIHbees) ^ 2)
;    [
;      let applyToCohorts IHbeecohorts
;      if count IHbeecohorts with [ number > 0 ] > 0
;        [ set applyToCohorts IHbeecohorts with [ number > 0 ]  ]
;
;      ;ask one-of IHbeecohorts with [ number > 0 ]
;      ask one-of applyToCohorts
;
;       [
;         let chooseBee 1 + random number  ; to determine which sub-cohort (healthy, infected as pupa or as adult) is affected, depending on number of bees in each cohort
;         let changeHealthy false
;         let changeInfPupa false
;         let changeInfAdult false
;
;         ; determine which sub-cohort is changed:
;         if chooseBee <= number_healthy
;            [ set changeHealthy true ]
;
;         if chooseBee > number_healthy and chooseBee <= number_healthy + number_infectedAsPupa
;            [ set changeInfPupa true ]
;
;         if chooseBee > number_healthy + number_infectedAsPupa and chooseBee <= number_healthy + number_infectedAsPupa + number_infectedAsAdult
;            [ set number_infectedAsAdult number_infectedAsAdult + changeNumberBy1 ]
;
;
;         ; do the change in numbers (separate step, otherwise errors might occur)
;         set number number + changeNumberBy1
;
;         if changeHealthy = true
;            [ set number_healthy number_healthy + changeNumberBy1 ]
;
;         if changeInfPupa = true
;            [ set number_infectedAsPupa number_infectedAsPupa + changeNumberBy1 ]
;
;         if changeInfAdult = true
;            [ set number_infectedAsAdult number_infectedAsAdult + changeNumberBy1 ]
;       ]
;    ]
;
;
;; NEW for new BeeMapp version that allows assessment of number of capped brood cells (31.03.2016):
;; correct # pupae:
;   let correctedNumberPupae item 5 nextBeeMappCorrectionList
;   if correctedNumberPupae > 1
;   [
;     set changeNumberBy1 0
;     ifelse correctedNumberPupae - (TotalPupae + TotalDronePupae) < 0
;     [ set changeNumberBy1 -1 ]  ; if IHbees have to be REMOVED from the simulation
;     [ set changeNumberBy1 1 ]   ; if IHbees have to be ADDED to the simulation
;     repeat sqrt ((correctedNumberPupae - (TotalPupae + TotalDronePupae)) ^ 2)
;      [
;        let applyToCohorts pupaeCohorts  ; defines the pupal cohorts that are affected, here: all worker pupae (only if no worker pupae at all are currently present in the model
;        if count pupaeCohorts with [ number > 0 ] > 0             ; otherwise (i.e. IF there are worker pupae present), then only those worker pupae cohorts with number > 0 are affected. Hence gaps (e.g. due to lack of pollen) still remain
;          [ set applyToCohorts pupaeCohorts with [ number > 0 ]  ]
;        if random (TotalPupae + TotalDronePupae) > TotalPupae ; in this case, the number of drone pupae will be modified
;        [
;          set applyToCohorts dronePupaeCohorts
;          if count dronePupaeCohorts with [ number > 0 ] > 0
;          [ set applyToCohorts pupaeCohorts with [ number > 0 ]  ]
;
;        ]
;         ask one-of applyToCohorts
;          [
;            set number number + changeNumberBy1
;            set number_healthy number_healthy + changeNumberBy1
;            set TotalPupae TotalPupae + changeNumberBy1
;          ]
;      ]
;   ]
;
;
;   ; PRESENCE/ABSENCE of QEL: -1: not assessed, 0: not present, 1: present
;   ; new queen, if no queen was found in real colony
;   if item 2 nextBeeMappCorrectionList = 0
;    [ set Queenage 0 ]
;
;
;   ; remove eggs, if no eggs were found in real colony
;   if item 3 nextBeeMappCorrectionList = 0
;   [
;     ask eggcohorts [ set number 0 ]
;     set NewWorkerLarvae 0
;     ask droneeggcohorts [ set number 0]
;     set NewDroneLarvae 0
;   ]
;
;   ; remove larvae, if no larvae were found in real colony
;   if item 4 nextBeeMappCorrectionList = 0
;   [
;     ask larvaecohorts [ set number 0 ]
;     set NewWorkerPupae 0
;     ask dronelarvaecohorts [ set number 0 ]
;     set NewDronePupae 0
;   ]
;
;   ; remove pupae, if no pupae were found in real colony
;   if item 5 nextBeeMappCorrectionList = 0
;   [
;     ask pupaecohorts [ set number 0 set number_healthy 0 set number_infectedAsPupa 0 ]
;     set NewIHbees 0
;     set NewIHbees_healthy 0
;     ask dronepupaecohorts [ set number 0 set number_healthy 0 set number_infectedAsPupa 0 ]
;     set NewDrones 0
;     set NewDrones_healthy 0
;   ]
   ;############ COMMENTED OUT END ############


   if nextBeeMappCorrectionList != last AllBeeMappCorrectionsList ; if current correction is last item in file/AllBeeMappCorrectionsList, then AssessmentNumber is no longer increased
   [
     set AssessmentNumber AssessmentNumber + 1
   ]
  ]

  CountingProc

end


; ********************************************************************************************************************************************************************************

to DefaultProc
; new variables:
set AllowReinfestation FALSE
;set BeeMapp_FILE "ColonyAssessment.txt"
; FrameType: no default setting
; HiveType: no default setting
set MiteReinfestation 0.1
set ReadBeeMappFile FALSE
; WeatherFile: no default setting

  set factorDrones 6.49 ;; Made global by I.S.: set to default value.

  ;; Variables added by I.S.
  set useDBRdaysAsDroneEgglayingTime true
  set DroneBroodRemoval FALSE
  set RemovalDay1 119
  set RemovalDay2 134
  set RemovalDay3 149
  set RemovalDay4 164
  set RemovalDay5 -10
  set formicAcidVarroaTreatment FALSE
  set formicAcidTreatmentDay1-1 211
  set formicAcidTreatmentDuration1 3
  set formicAcidEfficiencyPhoretic1 0.5
  set formicAcidEfficiencyBroodcells1 0.3
  set formicAcidTreatmentDay2-1 242
  set formicAcidTreatmentDuration2 6
  set formicAcidEfficiencyPhoretic2 0.3
  set formicAcidEfficiencyBroodcells2 0.1
  set oxalicAcidVarroaTreatment FALSE
  set oxalicAcidTreatmentDay-1 339
  set oxalicAcidTreatmentDuration 3
  set oxalicAcidEfficiency 0.4
  ; Drone egg laying periods.
  if RemovalDay1 != -10 [set droneEgglayingTime2 RemovalDay1 + 1]
  ifelse RemovalDay2 != -10 [set droneEgglayingTime3 RemovalDay2 + 1][set droneEgglayingTime2 -10]
  ifelse RemovalDay3 != -10 [set droneEgglayingTime4 RemovalDay3 + 1][set droneEgglayingTime3 -10]
  ifelse RemovalDay4 != -10 [set droneEgglayingTime5 RemovalDay4 + 1][set droneEgglayingTime4 -10]
  if RemovalDay5 = -10 [set droneEgglayingTime5 -10]
  ;;


; Old drone brood removal & varroa treatment.
set ContinuousBroodRemoval FALSE
set VarroaTreatment  FALSE
set EfficiencyPhoretic 0.115
set TreatmentDay 270   ; 270: 27.September
set TreatmentDuration 40  ; (28-40d) Fries et al. 1994
set TreatmentDay2 0
set TreatmentDuration2 0
set EfficiencyPhoretic2 0
set KillAllMitesInCells FALSE
set KillAllMitesInCells2 FALSE
set KillOpenBrood FALSE
set KillOpenBrood2 FALSE


set AddedPollen_kg 0.5


; old variables, new default values:
set GenericPlot1 "egg laying" ;; Changed by I.S.

; old variables, removed:
; set Testing "SIMULATION - NO TEST"
; old & unchanged (Beehave2013):
set AddPollen FALSE
set AlwaysDance  FALSE
set CONC_G  1.5
set CONC_R 1.5
set ConstantHandlingTime  FALSE
set CRITICAL_COLONY_SIZE_WINTER  4000
set Details  TRUE
set DANCE_INTERCEPT 0 ; -17.7
set DANCE_SLOPE 1.16
set DETECT_PROB_G 0.2
set DETECT_PROB_R 0.2
set DISTANCE_G  500
set DISTANCE_R 1500
set DotDensity  0.01 ; (affects sequence of random numbers)
set EggLaying_IH  TRUE
set Experiment  "none"
set FeedBees FALSE
set ForagingMap "show nothing" ;"Nectar and Pollen" ; (affects sequence of random numbers) ;; Changed by. I.S.
set GenericPlot2 "colony structure workers"
set GenericPlot3 "drones" ;; Changed by I.S.
set GenericPlot4 "mites"
set GenericPlot5 "nectar availability [l]"
set GenericPlot6 "pollen availability [kg]"
set GenericPlot7 "mean trip duration"
set GenericPlot8 "foragers today [%]"
set HarvestingDay 135
set HarvestingTH 20
set HoneyHarvesting  FALSE
set HoneyIdeal  FALSE
;set INPUT_FILE "Input_2-1_FoodFlow.txt"
set MAX_BROODCELLS  2000099
set MAX_km_PER_DAY  7299
set MAX_HONEY_STORE_kg  50
set MergeColoniesTH 5000
set MergeWeakColonies FALSE
set MiteReproductionModel  "Martin"
set ModelledInsteadCalcDetectProb  FALSE
set N_INITIAL_BEES  10000
set N_INITIAL_MITES_HEALTHY  0
set N_INITIAL_MITES_INFECTED  0
set POLLEN_G_kg 1.0
set POLLEN_R_kg 1.0
set PollenIdeal  FALSE
set ProbLazinessWinterbees 0 ; 0.7
set QUANTITY_G_l 20
set QUANTITY_R_l 20
set QueenAgeing  FALSE
; RAND_SEED: no default setting
set ReadInfile FALSE
set RemainingHoney_kg  5
set SeasonalFoodFlow TRUE
set SHIFT_G -40
set SHIFT_R 30
set ShowAllPlots  TRUE
set SQUADRON_SIZE  100
set StopDead  TRUE
set Swarming  "No swarming"
set TIME_NECTAR_GATHERING 1200
set TIME_POLLEN_GATHERING 600
set Virus  "DWV"
set Weather "Constant" ;Berlin (2000-2006)";"Rothamsted (2009)" ; "Rothamsted (2009-2011)" ;; Changed by I.S.
set WriteFile  FALSE
;set X_Days  7


end


; ***********************************
; ********** Added by I.S. **********
; ***********************************

;; Procedure to create an output file in case of a BugAlarm -> seed and specified parameters get reported into an .txt file.
; Saving location is the same as for this BEEHAVE NetLogo file.
to export-parameters-to-file
  let filename (word "output_parameters_BugAlarm_" current_seed ".txt")

  if is-string? filename  ; to make sure filename is a string
  [
    if file-exists? filename   ; if the file already exists, it is deleted
    [
      file-delete filename
    ]
    file-open filename
    file-print
    (word
      "BugMessage; " BugMessage "\n"
      "current_seed; "   current_seed "\n"
      "Day; " Day "\n"
      "useDBRdaysAsDroneEgglayingTime; " useDBRdaysAsDroneEgglayingTime  "\n"
      "DroneBroodRemoval; " DroneBroodRemoval  "\n"
      "RemovalDay1; " RemovalDay1  "\n"
      "RemovalDay2; " RemovalDay2  "\n"
      "RemovalDay3; " RemovalDay3  "\n"
      "RemovalDay4; " RemovalDay4  "\n"
      "RemovalDay5; " RemovalDay5  "\n"
      "formicAcidVarroaTreatment; " formicAcidVarroaTreatment  "\n"
      "formicAcidTreatmentDay1-1; " formicAcidTreatmentDay1-1  "\n"
      "formicAcidTreatmentDuration1; " formicAcidTreatmentDuration1  "\n"
      "formicAcidEfficiencyPhoretic1; " formicAcidEfficiencyPhoretic1  "\n"
      "formicAcidEfficiencyBroodcells1; " formicAcidEfficiencyBroodcells1  "\n"
      "formicAcidTreatmentDay2-1; " formicAcidTreatmentDay2-1  "\n"
      "formicAcidTreatmentDuration2; " formicAcidTreatmentDuration2  "\n"
      "formicAcidEfficiencyPhoretic2; " formicAcidEfficiencyPhoretic2  "\n"
      "formicAcidEfficiencyBroodcells2; " formicAcidEfficiencyBroodcells2  "\n"
      "oxalicAcidVarroaTreatment; " oxalicAcidVarroaTreatment  "\n"
      "oxalicAcidTreatmentDay-1; " oxalicAcidTreatmentDay-1  "\n"
      "oxalicAcidTreatmentDuration; " oxalicAcidTreatmentDuration  "\n"
      "oxalicAcidEfficiency; " oxalicAcidEfficiency
    )
  ]
  file-close ; Close file at the end.
end



; ***********************************
; ********** Added by I.S. END ******
; ***********************************



; ********************************************************************************************************************************************************************************
; ***   END   *********   END   *********   END   *********   END   *********   END   *********   END   *********   END   *********   END   *********   END   *********   END   **
; ********************************************************************************************************************************************************************************
@#$#@#$#@
GRAPHICS-WINDOW
1
11
562
718
-1
-1
8.52
1
10
1
1
1
0
0
0
1
-20
44
-71
10
1
1
1
ticks
30.0

BUTTON
669
647
772
686
RUN
StartProc
T
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
565
686
634
724
1 Day
StartProc\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
564
647
669
686
Setup
Setup\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
706
686
772
724
1 Year
repeat 365 [ StartProc ]
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
564
601
624
646
Julian Day
day  ;;ticks mod 365.0000001
5
1
11

BUTTON
633
686
706
724
1 Month
if ticks = 0 [ StartProc ] ; to set date to 1 January\nlet days-in-months (list 31 28 31 30 31 30 31 31 30 31 30 31)\nlet month 0\nlet dayOfYear remainder ticks 365.01\n  let dayOfMonth 0\n  let sumDaysInMonths 0\n  while [ sumDaysInMonths < dayOfYear ]\n  [\n    set month month + 1 \n    set sumDaysInMonths sumDaysInMonths + item (month - 1) days-in-months \n    set dayOfMonth dayOfYear - sumDaysInMonths + item (month - 1) days-in-months  \n  ]\n\nrepeat item (month - 1) days-in-months [ StartProc ] \n\n;ifelse ticks = 0\n; [ repeat 31 [ StartProc ] ]\n; [ repeat item (month - 1) days-in-months [ StartProc ] ]\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
998
139
1098
199
QUANTITY_R_l
20.0
1
0
Number

INPUTBOX
1098
139
1201
199
QUANTITY_G_l
20.0
1
0
Number

INPUTBOX
998
199
1098
259
CONC_R
1.5
1
0
Number

INPUTBOX
1098
199
1201
259
CONC_G
1.5
1
0
Number

INPUTBOX
998
320
1099
380
DISTANCE_R
1500.0
1
0
Number

INPUTBOX
1098
319
1201
379
DISTANCE_G
500.0
1
0
Number

INPUTBOX
998
379
1099
439
DETECT_PROB_R
0.2
1
0
Number

INPUTBOX
1099
379
1201
439
DETECT_PROB_G
0.2
1
0
Number

INPUTBOX
1099
10
1200
70
N_INITIAL_BEES
10000.0
1
0
Number

SWITCH
229
1508
420
1541
EggLaying_IH
EggLaying_IH
0
1
-1000

BUTTON
664
1406
773
1439
close file
file-close
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
664
1372
773
1405
write file
createOutputFileProc
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SWITCH
775
1406
882
1439
writeFile
writeFile
1
1
-1000

SWITCH
775
1372
882
1405
details
details
0
1
-1000

INPUTBOX
2097
1441
2237
1501
MAX_HONEY_STORE_kg
50.0
1
0
Number

SWITCH
666
1508
882
1541
stopDead
stopDead
0
1
-1000

OUTPUT
-1
660
559
735
11

INPUTBOX
997
10
1099
70
RAND_SEED
0.0
1
0
Number

SWITCH
1315
1330
1542
1363
ReadInfile
ReadInfile
1
1
-1000

TEXTBOX
1036
50
1096
68
0: no seed!
11
0.0
1

SWITCH
666
1440
882
1473
modelledInsteadCalcDetectProb
modelledInsteadCalcDetectProb
1
1
-1000

SWITCH
1979
1325
2157
1358
HoneyHarvesting
HoneyHarvesting
1
1
-1000

INPUTBOX
1978
1258
2059
1318
HarvestingDay
135.0
1
0
Number

INPUTBOX
2237
1258
2351
1318
RemainingHoney_kg
5.0
1
0
Number

INPUTBOX
1320
226
1485
289
N_INITIAL_MITES_HEALTHY
40.0
1
0
Number

CHOOSER
1813
271
1943
316
MiteReproductionModel
MiteReproductionModel
"Fuchs&Langenbach" "Martin" "Martin+0" "Test" "No Mite Reproduction"
1

SWITCH
2728
1359
2878
1392
VarroaTreatment
VarroaTreatment
1
1
-1000

INPUTBOX
1488
225
1653
289
N_INITIAL_MITES_INFECTED
10.0
1
0
Number

CHOOSER
1813
225
1943
270
Virus
Virus
"DWV" "APV" "benignDWV" "modifiedAPV" "TestVirus"
0

MONITOR
1879
999
2011
1044
rate healthy mites
phoreticMitesHealthyRate
5
1
11

TEXTBOX
11
40
103
82
healthy foragers\ninfected as adults\ninfected as pupae
11
0.0
1

SWITCH
223
1311
434
1344
AlwaysDance
AlwaysDance
1
1
-1000

CHOOSER
461
1473
652
1518
Experiment
Experiment
"none" "Experiment A" "Experiment B"
0

MONITOR
1879
952
2011
997
mites in cells
totalMites -  phoreticMites * (1 - phoreticMitesHealthyRate)\n  - phoreticMites * phoreticMitesHealthyRate
10
1
11

SWITCH
2240
1467
2355
1500
PollenIdeal
PollenIdeal
1
1
-1000

SWITCH
2240
1432
2354
1465
HoneyIdeal
HoneyIdeal
1
1
-1000

INPUTBOX
998
259
1098
319
POLLEN_R_kg
1.0
1
0
Number

INPUTBOX
1098
259
1201
319
POLLEN_G_kg
1.0
1
0
Number

SWITCH
7
1313
213
1346
SeasonalFoodFlow
SeasonalFoodFlow
0
1
-1000

INPUTBOX
6
1509
103
1569
SHIFT_R
30.0
1
0
Number

INPUTBOX
115
1509
214
1569
SHIFT_G
-40.0
1
0
Number

SWITCH
7
1347
213
1380
ConstantHandlingTime
ConstantHandlingTime
1
1
-1000

CHOOSER
1982
1540
2159
1585
Swarming
Swarming
"No swarming" "Swarm control" "Swarming (parental colony)" "Swarming (prime swarm)"
0

SWITCH
229
1543
421
1576
QueenAgeing
QueenAgeing
1
1
-1000

BUTTON
565
724
665
784
run X days
repeat X_days [ startProc ]
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
894
1307
999
1340
Kill!
ask IHbeeCohorts [ if random-float 1 < 1 [ set number 0 set number_Healthy 0 set number_infectedAsPupa 0 set number_infectedAsAdult 0 ] ]\n;ask foragerSquadrons [ set infectionState \"infectedAsAdult\" ]\n;set honeyEnergyStore honeyEnergyStore * 0.01\n;ask foragerSquadrons [ die ]\n;set MORTALITY_INHIVE 0\n; set PollenStore_g 0\n; set honeyEnergyStore 1500\n;ask eggCohorts [set number 0]\n;ask droneEggCohorts [set number 0]\n;ask larvaeCohorts [set number 0]\n;ask droneLarvaeCohorts [set number 0]\n;ask pupaeCohorts [set number 0 set number_Healthy 0 set number_infectedAsPupa 0]\n;ask dronePupaeCohorts [set number 0 set number_Healthy 0 set number_infectedAsPupa 0]\n;ask IHbeeCohorts [ if random-float 1 < 1 [ set number 0 set number_Healthy 0 set number_infectedAsPupa 0 set number_infectedAsAdult 0 ] ]\n;ask foragerSquadrons [ set age age + 20 ]\n;ask foragerSquadrons with [ infectionState = \"infectedAsPupa\" ] [ die ];\n;set phoreticMites 0\nCountingProc
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
663
1308
773
1368
SQUADRON_SIZE
100.0
1
0
Number

PLOT
1234
844
1873
1018
Generic plot 3
NIL
NIL
0.0
10.0
0.0
0.01
true
true
"" ""
PENS

INPUTBOX
997
74
1201
134
CRITICAL_COLONY_SIZE_WINTER
4000.0
1
0
Number

BUTTON
894
1341
999
1374
show Patches
type \"day: \" type day print \" \"\nforeach sort flowerpatches [ x -> ask x [\n type \"ID \" type who\n type \" patchType \" type patchType \n ;type \" oldPatchID \" type oldPatchID\n type \" distanceToColony \" type distanceToColony \n type \" x: \" type xcorMap \n type \" y: \" type ycorMap \n type \" size_sqm \" type size_sqm \n type \" Nectar_l \" type precision (quantityMyl / 1000000) 1\n type \" Pollen_kg \" type precision (amountPollen_g / 1000) 1 \n type \" nectarConc \" type nectarConcFlowerPatch \n type \" EEF \" type precision eef 2\n type \" followers \" type precision danceFollowersNectar 2\n type \" detectionProbability \" type precision detectionProbability 4 \n type \" handlingTimeNectar \" type round handlingTimeNectar \n type \" handlingTimePollen \" type round handlingTimePollen\n type \" total visitors \" type summedVisitors\n\n \n \n print \" \"\n] ]
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

CHOOSER
1312
1496
1539
1541
Weather
Weather
"Weather File" "Rothamsted (2009)" "Rothamsted (2010)" "Rothamsted (2011)" "Rothamsted (2009-2011)" "Berlin (2000-2006)" "Berlin (2000)" "HoPoMo_Season" "HoPoMo_Season_Random" "Constant"
9

BUTTON
895
1375
999
1408
active patches
type \"day: \" type day print \" \"\nforeach sort flowerpatches [ x -> ask x \n[ if quantityMyl > 0 or amountPollen_g > 0\n[\n type \"ID \" type who\n; type \" patchType \" type patchType \n type \" distanceToColony \" type distanceToColony \n type \" size_sqm \" type size_sqm \n type \" Nectar_l \" type precision (quantityMyl / 1000000) 1\n type \" Pollen_kg \" type precision (amountPollen_g / 1000)1 \n type \" nectarConc \" type nectarConcFlowerPatch \n type \" detectionProbability \" type precision detectionProbability 4 \n type \" handlingTimeNectar \" type round handlingTimeNectar \n type \" handlingTimePollen \" type round handlingTimePollen\n type \" total visitors \" type summedVisitors\n\n \n \n print \" \"\n] ] ]
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
895
1410
1000
1443
activityList
type \"day: \" type day print \" \"\n;foreach sort foragerSquadrons with [km_today > 0]  \nforeach sort foragerSquadrons\n  [ x -> ask x\n     [ type who type \" \" type precision km_today 2 type \" \"  print activityList ]\n  ]
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
463
1309
652
1369
MAX_km_PER_DAY
7299.0
1
0
Number

INPUTBOX
1980
1441
2096
1501
MAX_BROODCELLS
2000099.0
1
0
Number

PLOT
565
10
994
442
foraging map
NIL
NIL
-5000.0
5000.0
-5000.0
5000.0
false
false
"" ""
PENS
"default" 1.0 2 -16777216 true "" ""
"colony" 1.0 0 -6459832 true "" ""

CHOOSER
793
28
917
73
ForagingMap
ForagingMap
"show nothing" "Nectar foraging" "Pollen foraging" "Nectar and Pollen" "All visits" "All patches" "Available patches"
0

BUTTON
738
28
793
73
Refresh
DrawForagingMapProc
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
917
28
987
88
DotDensity
0.01
1
0
Number

MONITOR
599
28
669
73
Nectar visits
 sum [ nectarVisitsToday ] of flowerpatches\n
17
1
11

MONITOR
668
28
738
73
Pollen visits
 sum [ pollenVisitsToday ] of flowerpatches
17
1
11

INPUTBOX
666
724
772
784
X_Days
3650.0
1
0
Number

SWITCH
666
1474
882
1507
ShowAllPlots
ShowAllPlots
0
1
-1000

BUTTON
504
628
559
661
Import
import-world \"World_Beehave.csv\"\n;import-world \"World_RRes-real_PopDyn_Foraging_Varroa_10.6 world.csv\"
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
258
10
321
43
1 feeder
set ReadInfile false\nset QUANTITY_R_l 20\nset QUANTITY_G_l 0\nset CONC_R 1.5\nset POLLEN_R_kg 2\nset POLLEN_G_kg 0\nset DISTANCE_R 1500\nset ConstantHandlingTime true\nset seasonalFoodFlow false\nset TIME_NECTAR_GATHERING 79  ;  Seeley\nset TIME_POLLEN_GATHERING 120 ; arbitrary\nset DETECT_PROB_R 0.01  ; 0.15   ; arbitrary\nSetup\n\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
321
10
385
43
RRes
set Weather  \"Rothamsted (2009-2011)\"    \nset INPUT_FILE  \"Input_2-1_FoodFlow_RRes.txt\"       \nset ReadInfile  TRUE      \nSetup\n  \n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
385
10
449
43
varroa
set N_INITIAL_MITES_HEALTHY 10\nset N_INITIAL_MITES_INFECTED 10\nset Virus \"DWV\"\nset MiteReproductionModel \"Martin\"\nset GenericPlot4 \"mites\"\nSetup\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
141
10
197
43
DEFAULT
DefaultProc\nSetup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
2061
1258
2154
1318
HarvestingPeriod
80.0
1
0
Number

INPUTBOX
2157
1258
2236
1318
HarvestingTH
20.0
1
0
Number

SWITCH
2158
1325
2254
1358
FeedBees
FeedBees
1
1
-1000

BUTTON
448
10
512
43
beekeeping
set DroneBroodRemoval TRUE\nset formicAcidVarroaTreatment TRUE\nset oxalicAcidVarroaTreatment TRUE\nset FeedBees TRUE\nset HoneyHarvesting TRUE\nset MergeWeakColonies TRUE \nset MergeColoniesTH 5000\n;set AddPollen TRUE\nset HarvestingDay 135\nset HarvestingPeriod 80\nset RemainingHoney_kg 5\nset HarvestingTH 20\n;Setup\nask signs with [shape = \"jenny\"] [show-turtle]\n\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
1980
1394
2158
1427
add fondant
let addedFondant_kg 1 ; [kg]\nset HoneyEnergyStore HoneyEnergyStore +  addedFondant_kg * ENERGY_HONEY_per_g * 1000 ; adding fondant equivalent to 1 kg of honey\nask Signs with [shape = \"ambrosia\"] [ show-turtle ]\nset TotalHoneyFed_kg TotalHoneyFed_kg + addedFondant_kg\noutput-type \"Fondant provided [kg]: \" output-type precision addedFondant_kg 1 output-type \" total food added [kg]: \" output-print precision TotalHoneyFed_kg 1
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SWITCH
1980
1359
2157
1392
MergeWeakColonies
MergeWeakColonies
1
1
-1000

INPUTBOX
1983
1588
2160
1648
MergeColoniesTH
5000.0
1
0
Number

BUTTON
449
628
504
661
Export
export-world \"World_Beehave.csv\"
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SWITCH
2158
1359
2254
1392
AddPollen
AddPollen
1
1
-1000

BUTTON
895
1446
1001
1479
visited patches
type \"day: \" type day print \" \"\nforeach sort flowerpatches [ x -> ask x\n[ if pollenVisitsToday > 0 or nectarVisitsToday > 0\n[\n type \"ID \" type who\n; type \" patchType \" type patchType \n type \" distanceToColony \" type distanceToColony \n type \" size_sqm \" type size_sqm \n type \" Nectar_l \" type precision (quantityMyl / 1000000) 1\n type \" Pollen_kg \" type precision (amountPollen_g / 1000)1 \n type \" nectarConc \" type nectarConcFlowerPatch \n type \" detectionProbability \" type precision detectionProbability 4 \n type \" handlingTimeNectar \" type round handlingTimeNectar \n type \" handlingTimePollen \" type round handlingTimePollen\n type \" pollenVisitsToday \" type pollenVisitsToday\n type \" nectarVisitsToday \" type nectarVisitsToday\n \n type \" total visitors \" type summedVisitors\n\n \n \n print \" \"\n] ] ]
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
197
10
260
43
2 patches
set ReadInfile false\nset QUANTITY_R_l 20\nset QUANTITY_G_l 20\nset CONC_R 1.5\nset CONC_G 1.5\nset POLLEN_R_kg 1\nset POLLEN_G_kg 1\nset DISTANCE_R 1500\nset DISTANCE_G 500\nset ConstantHandlingTime FALSE\nset seasonalFoodFlow TRUE\nset SHIFT_R 30\nset shift_G -40\nset TIME_NECTAR_GATHERING 1200\nset TIME_POLLEN_GATHERING 600\nset DETECT_PROB_R 0.2\nset DETECT_PROB_G 0.2\nSetup\n\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
463
1370
652
1430
ProbLazinessWinterbees
0.0
1
0
Number

BUTTON
2159
1394
2353
1427
add pollen
  ;let addedPollen_kg 1\n  set PollenStore_g PollenStore_g + (addedPollen_kg * 1000)\n  ask Signs with [shape = \"pollengrain\"] [ show-turtle ]\n  set TotalPollenAdded TotalPollenAdded + addedPollen_kg\n  output-type \"Added pollen [kg]: \" output-type addedPollen_kg output-type \" total pollen added [kg]: \" output-print TotalPollenAdded
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
572
1407
640
1435
(if age > 100)
11
0.0
1

INPUTBOX
6
1383
213
1443
TIME_NECTAR_GATHERING
1200.0
1
0
Number

INPUTBOX
6
1445
213
1505
TIME_POLLEN_GATHERING
600.0
1
0
Number

INPUTBOX
279
1417
434
1477
DANCE_INTERCEPT
0.0
1
0
Number

INPUTBOX
279
1348
434
1408
DANCE_SLOPE
1.16
1
0
Number

BUTTON
223
1444
278
1477
high
; from Seeley 1994\n; bee \"WY\" (lowest dance threshold)\nset DANCE_INTERCEPT -17.7\nset DANCE_SLOPE 1.16
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
223
1413
278
1446
mean
; from Seeley 1994: mean values\nset DANCE_INTERCEPT -11.1\nset DANCE_SLOPE 0.51
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
223
1380
278
1413
high 0
; Seeley 1994: highest slope (from bee \"WY\")\n; but intercept = 0 to allow dancing for \n; far patches\nset DANCE_INTERCEPT 0\nset DANCE_SLOPE 1.16
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
1228
200
1299
226
VARROA
18
0.0
1

TEXTBOX
1745
1260
1854
1285
BEEKEEPING
18
0.0
1

CHOOSER
1233
815
1872
860
GenericPlot3
GenericPlot3
"colony structure workers" "drones" "egg laying" "broodcare [%]" "age forager squadrons" "aff & lifespan" "mileometer" "honey & pollen stores [kg]" "colony weight [kg]" "consumption [g/day]" "honey gain [kg]" "mites" "proportion infected mites" "active foragers [%]" "active foragers today [%]" "foragingPeriod" "foraging probability" "foragers today [%]" "loads returning foragers [%]" "mean trip duration" "mean total km per day" "# completed foraging trips (E-3)" "trips per hour sunshine (E-3)" "nectar availability [l]" "pollen availability [kg]"
1

BUTTON
775
1307
882
1369
Version Test
\nset Rand_seed 1\n\nDefaultProc\n\nset stopDead false\n\n; \"Varroa\"\nset N_INITIAL_MITES_HEALTHY 10\nset N_INITIAL_MITES_INFECTED 10\nset Virus \"DWV\"\nset MiteReproductionModel \"Martin\"\nset GenericPlot4 \"mites\"\nset AllowReinfestation true\n\nset KillOpenBrood true\nset KillOpenBrood2 true\nset KillAllMitesInCells true\nset KillAllMitesInCells2 true\nset DroneBroodRemoval true\nset ContinuousBroodRemoval true\nset TreatmentDay2 180\nset TreatmentDuration2 20\nset EfficiencyPhoretic2 0.05\n\n; \"Beekeeping\"\nset VarroaTreatment TRUE\nset FeedBees TRUE\nset HoneyHarvesting TRUE\nset MergeWeakColonies TRUE \nset MergeColoniesTH 5000\nset HarvestingDay 135\nset HarvestingPeriod 80\nset RemainingHoney_kg 5\nset HarvestingTH 20\nask signs with [shape = \"jenny\"] [show-turtle]\n\n; SWARMING\nset Swarming \"Swarming (prime swarm)\"\n\nSetup\nrepeat 365 [ startProc ]\nset VarroaTreatment false\nset Swarming \"Swarming (parental colony)\"\nset ContinuousBroodRemoval false\nset KillOpenBrood false\nset KillOpenBrood2 false\nset KillAllMitesInCells false\nset KillAllMitesInCells2 false\n\nrepeat 1825 [ startProc ]\n\nifelse\n(totalForagers = 5300)\nand ( totalIHbees = 41)\nand (totalMites = 7101)\nand (precision (HoneyEnergyStore / ( ENERGY_HONEY_per_g * 1000 )) 6 = 16.297696)\n[ user-message \"OK! No deviations detected from the Beehave_BeeMapp2016 version!\" ]\n[ ask patches [ set pcolor pink ]\n  user-message \"Caution! Changes have been made to the code! THIS IS NOT THE OFFICIAL VERSION OF Beehave_BeeMapp2015!\"]\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

PLOT
565
844
1230
1018
Generic plot 1
NIL
NIL
0.0
10.0
0.0
0.0
true
true
"" ""
PENS

PLOT
775
631
1201
798
Generic plot 2
NIL
NIL
0.0
10.0
0.0
0.01
true
true
"" ""
PENS

CHOOSER
565
816
1230
861
GenericPlot1
GenericPlot1
"colony structure workers" "drones" "egg laying" "broodcare [%]" "age forager squadrons" "aff & lifespan" "mileometer" "honey & pollen stores [kg]" "colony weight [kg]" "consumption [g/day]" "honey gain [kg]" "mites" "proportion infected mites" "active foragers [%]" "active foragers today [%]" "foragingPeriod" "foraging probability" "foragers today [%]" "loads returning foragers [%]" "mean trip duration" "mean total km per day" "# completed foraging trips (E-3)" "trips per hour sunshine (E-3)" "nectar availability [l]" "pollen availability [kg]"
2

CHOOSER
774
601
1202
646
GenericPlot2
GenericPlot2
"colony structure workers" "drones" "egg laying" "broodcare [%]" "age forager squadrons" "aff & lifespan" "mileometer" "honey & pollen stores [kg]" "colony weight [kg]" "consumption [g/day]" "honey gain [kg]" "mites" "proportion infected mites" "active foragers [%]" "active foragers today [%]" "foragingPeriod" "foraging probability" "foragers today [%]" "loads returning foragers [%]" "mean trip duration" "mean total km per day" "# completed foraging trips (E-3)" "trips per hour sunshine (E-3)" "nectar availability [l]" "pollen availability [kg]"
0

BUTTON
481
1227
561
1272
clear all plots
clear-all-plots
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
1248
485
1380
503
Varroa treatment:
14
0.0
1

TEXTBOX
1864
1263
2014
1281
Honey harvest:
14
0.0
1

TEXTBOX
1899
1330
1965
1348
Feeding:
14
0.0
1

TEXTBOX
1873
1616
1986
1634
Merging colonies:
14
0.0
1

TEXTBOX
466
1448
616
1466
Prepare experiments:\n
14
0.0
1

PLOT
565
471
1202
600
Generic plot 4
NIL
NIL
0.0
10.0
0.0
0.0
true
true
"" ""
PENS

CHOOSER
565
442
1202
487
GenericPlot4
GenericPlot4
"colony structure workers" "drones" "egg laying" "broodcare [%]" "age forager squadrons" "aff & lifespan" "mileometer" "honey & pollen stores [kg]" "colony weight [kg]" "consumption [g/day]" "honey gain [kg]" "mites" "proportion infected mites" "active foragers [%]" "active foragers today [%]" "foragingPeriod" "foraging probability" "foragers today [%]" "loads returning foragers [%]" "mean trip duration" "mean total km per day" "# completed foraging trips (E-3)" "trips per hour sunshine (E-3)" "nectar availability [l]" "pollen availability [kg]"
6

TEXTBOX
9
1243
159
1265
ADVANCED INPUT
18
0.0
1

PLOT
5
845
564
1018
Generic plot 5
NIL
NIL
0.0
10.0
0.0
0.0
true
true
"" ""
PENS

PLOT
4
1051
563
1224
Generic plot 6
NIL
NIL
0.0
10.0
0.0
0.0
true
true
"" ""
PENS

PLOT
565
1050
1233
1224
Generic plot 7
NIL
NIL
0.0
10.0
0.0
0.0
true
true
"" ""
PENS

PLOT
1234
1050
1875
1224
Generic plot 8
NIL
NIL
0.0
10.0
0.0
0.0
true
true
"" ""
PENS

CHOOSER
4
816
563
861
GenericPlot5
GenericPlot5
"colony structure workers" "drones" "egg laying" "broodcare [%]" "age forager squadrons" "aff & lifespan" "mileometer" "honey & pollen stores [kg]" "colony weight [kg]" "consumption [g/day]" "honey gain [kg]" "mites" "proportion infected mites" "active foragers [%]" "active foragers today [%]" "foragingPeriod" "foraging probability" "foragers today [%]" "loads returning foragers [%]" "mean trip duration" "mean total km per day" "# completed foraging trips (E-3)" "trips per hour sunshine (E-3)" "nectar availability [l]" "pollen availability [kg]"
23

CHOOSER
4
1020
563
1065
GenericPlot6
GenericPlot6
"colony structure workers" "drones" "egg laying" "broodcare [%]" "age forager squadrons" "aff & lifespan" "mileometer" "honey & pollen stores [kg]" "colony weight [kg]" "consumption [g/day]" "honey gain [kg]" "mites" "proportion infected mites" "active foragers [%]" "active foragers today [%]" "foragingPeriod" "foraging probability" "foragers today [%]" "loads returning foragers [%]" "mean trip duration" "mean total km per day" "# completed foraging trips (E-3)" "trips per hour sunshine (E-3)" "nectar availability [l]" "pollen availability [kg]"
24

CHOOSER
564
1020
1233
1065
GenericPlot7
GenericPlot7
"colony structure workers" "drones" "egg laying" "broodcare [%]" "age forager squadrons" "aff & lifespan" "mileometer" "honey & pollen stores [kg]" "colony weight [kg]" "consumption [g/day]" "honey gain [kg]" "mites" "proportion infected mites" "active foragers [%]" "active foragers today [%]" "foragingPeriod" "foraging probability" "foragers today [%]" "loads returning foragers [%]" "mean trip duration" "mean total km per day" "# completed foraging trips (E-3)" "trips per hour sunshine (E-3)" "nectar availability [l]" "pollen availability [kg]"
19

CHOOSER
1234
1020
1875
1065
GenericPlot8
GenericPlot8
"colony structure workers" "drones" "egg laying" "broodcare [%]" "age forager squadrons" "aff & lifespan" "mileometer" "honey & pollen stores [kg]" "colony weight [kg]" "consumption [g/day]" "honey gain [kg]" "mites" "proportion infected mites" "active foragers [%]" "active foragers today [%]" "foragingPeriod" "foraging probability" "foragers today [%]" "loads returning foragers [%]" "mean trip duration" "mean total km per day" "# completed foraging trips (E-3)" "trips per hour sunshine (E-3)" "nectar availability [l]" "pollen availability [kg]"
17

TEXTBOX
8
1273
150
1307
Red & green default flower patches:
14
0.0
1

TEXTBOX
1876
1450
2026
1468
Colony stores:
14
0.0
1

TEXTBOX
36
1571
186
1589
(timing of patch phenology)
11
0.0
1

TEXTBOX
229
1285
379
1303
Dancing:
14
0.0
1

TEXTBOX
465
1284
633
1318
Colony & bee behaviour:
14
0.0
1

TEXTBOX
230
1483
325
1501
Egg laying:
14
0.0
1

TEXTBOX
1909
1557
1987
1575
Swarming:
14
0.0
1

TEXTBOX
666
1284
816
1302
Program:
14
0.0
1

TEXTBOX
897
1283
997
1301
Special output:
14
0.0
1

MONITOR
1879
906
2011
951
phoretic mites INFECTED
phoreticMites * (1 - phoreticMitesHealthyRate)
2
1
11

MONITOR
1879
860
2011
905
phoretic mites healthy
phoreticMites * phoreticMitesHealthyRate
2
1
11

MONITOR
2
738
66
783
# workers
totalIHbees + totalForagers
17
1
11

MONITOR
67
738
134
783
# foragers
totalForagers
17
1
11

MONITOR
355
738
409
783
# brood
totalWorkerAndDroneBrood
17
1
11

MONITOR
241
738
291
783
aff
aff
17
1
11

MONITOR
135
738
240
783
mean age foragers
mean [ age ] of foragerSquadrons
1
1
11

MONITOR
1879
1044
2011
1089
mite fall
DailyMiteFall
17
1
11

MONITOR
292
738
354
783
# ih bees
totalIHbees
17
1
11

MONITOR
410
738
468
783
work load
totalWorkerAndDroneBrood / ((totalIHbees + totalForagers * FORAGER_NURSING_CONTRIBUTION) * MAX_BROOD_NURSE_RATIO)
2
1
11

MONITOR
469
739
563
784
% pollen store
(PollenStore_g / IdealPollenStore_g) * 100
1
1
11

MONITOR
1879
1135
2012
1180
pollen store [kg]
pollenStore_g / 1000
3
1
11

MONITOR
1879
1180
2012
1225
honey store [kg]
HoneyEnergyStore / ( ENERGY_HONEY_per_g * 1000 )
8
1
11

BUTTON
895
1482
1002
1515
Video
;; export movie of the view\n;setup\n;movie-start \"out.mov\"\n;movie-set-frame-rate 15\n;movie-grab-view ;; show the initial state\n;repeat 365\n;[ StartProc \n;   movie-grab-view \n; ]\n;movie-close\n\n
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
1879
1089
2012
1134
rate healthy foragers
(count foragerSquadrons with [infectionState = \"healthy\"]) / (totalForagers / SQUADRON_SIZE)
3
1
11

BUTTON
223
1348
278
1381
mean 0
; Seeley 1994: mean slope but intercept = 0\n;  to allow dancing for far patches\nset DANCE_INTERCEPT 0\nset DANCE_SLOPE 0.51
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
2170
1593
2364
1647
1-2 foraging file
set ReadInfile TRUE\nset StopDead false\nSetup\nlet filename \"Input_1-2_Foraging.txt\" \nif file-exists? filename   ;; If the file already exists, we begin by deleting it, otherwise new data would be appended to the old contents.\n             [ file-delete filename ]\nfile-open filename    \n   \nfile-print count flowerPatches\nfile-print \"day who nectarVisits pollenVisits\"\nrepeat 365 [ \n  startProc\n  foreach sort flowerpatches [ x -> ask x [\n    file-type day file-type \" \"\n    ;file-type who file-type \" \"\n    file-type oldPatchId file-type \" \"\n    file-type nectarVisitsToday file-type \" \"\n    file-type pollenVisitsToday file-print \" \"\n   ] ]\n] ; end repeat\nfile-close  \nuser-message \"Input file ('Input_1-2_Foraging.txt') was created for the external landscape module BEESCOUT\"
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
1879
814
2010
859
total mites
totalMites
17
1
11

MONITOR
624
601
772
646
Date & Year
DateREP
17
1
11

INPUTBOX
1312
1542
1540
1602
WeatherFile
WeatherExample.txt
1
0
String

INPUTBOX
2542
1409
2658
1469
TreatmentDay
0.0
1
0
Number

INPUTBOX
2659
1409
2775
1469
TreatmentDuration
0.0
1
0
Number

INPUTBOX
2776
1409
2892
1469
EfficiencyPhoretic
0.115
1
0
Number

INPUTBOX
2659
1479
2774
1539
TreatmentDuration2
0.0
1
0
Number

INPUTBOX
2775
1479
2892
1539
EfficiencyPhoretic2
0.115
1
0
Number

MONITOR
324
1227
401
1272
Followers R
[ danceFollowersNectar ] of flowerPatch 0
2
1
11

MONITOR
403
1227
480
1272
Followers G
[ danceFollowersNectar ] of flowerPatch 1
2
1
11

MONITOR
3027
1413
3165
1458
(est. efficiency phoretic 1)
1 - ((1 - EfficiencyPhoretic) ^ TreatmentDuration)
3
1
11

MONITOR
3028
1487
3168
1532
(est. efficiency phoretic 2)
1 - ((1 - EfficiencyPhoretic2) ^ TreatmentDuration2)
3
1
11

SWITCH
1565
1496
1792
1529
ReadBeeMappFile
ReadBeeMappFile
0
1
-1000

CHOOSER
1064
1310
1252
1355
HiveType
HiveType
"National, WBC, Smith" "Langstroth" "Commercial" "Dadant"
1

CHOOSER
1064
1356
1252
1401
FrameType
FrameType
"Standard brood/deep frame" "Extra deep/jumbo frame" "Shallow frame"
2

BUTTON
1064
1400
1252
1433
show cells per frame
let cellsPerFrame 0\nlet message \"\"\nif HiveType = \"National, WBC, Smith\"\n [ \n   if FrameType = \"Standard brood/deep frame\" [ set cellsPerFrame 5400 ]\n   if FrameType = \"Extra deep/jumbo frame\" [ set cellsPerFrame 7700 ]\n   if FrameType = \"Shallow frame\" [ set cellsPerFrame 3400 ]\n ] \nif HiveType = \"Langstroth\"\n [ \n   if FrameType = \"Standard brood/deep frame\" [ set cellsPerFrame 7200 ]\n   if FrameType = \"Extra deep/jumbo frame\" [ set cellsPerFrame 9000 ]\n   if FrameType = \"Shallow frame\" [ set cellsPerFrame 4000 ]\n ]\nif HiveType = \"Commercial\"\n [ \n   if FrameType = \"Standard brood/deep frame\" [ set cellsPerFrame 6500 ]\n   if FrameType = \"Shallow frame\" [ set cellsPerFrame 4300 ]\n ]\nif HiveType = \"Dadant\"\n [ \n   if FrameType = \"Standard brood/deep frame\" [ set cellsPerFrame 9000 ]\n   if FrameType = \"Shallow frame\" [ set cellsPerFrame 4800 ]\n ]\nifelse cellsPerFrame > 0\n [ set message (word \"Number of cells per frame (both sides): ca. \" cellsPerFrame) ]\n [ set message \"No data for this combination of hive and frame type\"]\n \nuser-message message
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SWITCH
1368
360
1540
393
DroneBroodRemoval
DroneBroodRemoval
0
1
-1000

INPUTBOX
1368
398
1452
458
RemovalDay1
119.0
1
0
Number

INPUTBOX
1454
398
1538
458
RemovalDay2
134.0
1
0
Number

INPUTBOX
1539
398
1623
458
RemovalDay3
149.0
1
0
Number

INPUTBOX
1624
398
1707
458
RemovalDay4
164.0
1
0
Number

INPUTBOX
1709
398
1792
458
RemovalDay5
-10.0
1
0
Number

SWITCH
2549
1618
2722
1651
ContinuousBroodRemoval
ContinuousBroodRemoval
1
1
-1000

SWITCH
2894
1401
3026
1434
KillOpenBrood
KillOpenBrood
1
1
-1000

SWITCH
2894
1471
3026
1504
KillOpenBrood2
KillOpenBrood2
1
1
-1000

SWITCH
2893
1436
3025
1469
KillAllMitesInCells
KillAllMitesInCells
1
1
-1000

SWITCH
2893
1506
3026
1539
KillAllMitesInCells2
KillAllMitesInCells2
1
1
-1000

INPUTBOX
1657
225
1810
289
MiteReinfestation
0.0
1
0
Number

SWITCH
1659
291
1795
324
AllowReinfestation
AllowReinfestation
1
1
-1000

TEXTBOX
1667
267
1817
285
additional mites per day
11
0.0
1

TEXTBOX
1317
1259
1467
1281
FILES - in
18
0.0
1

TEXTBOX
1568
1458
1785
1492
Colony assessment from BeeMapp:
14
0.0
1

TEXTBOX
1313
1456
1535
1490
Weather file from Beehave weather:
14
0.0
1

TEXTBOX
1316
1291
1536
1325
Food sources (e.g. from BeeMapp or BEESCOUT):
14
0.0
1

TEXTBOX
2170
1537
2320
1559
FILES - out
18
0.0
1

TEXTBOX
2170
1568
2372
1602
Foraging activity to BEESCOUT:
14
0.0
1

TEXTBOX
1067
1282
1217
1300
Calculator: # cells
14
0.0
1

CHOOSER
1313
1372
1714
1417
INPUT_FILE
INPUT_FILE
"Input_2-1_FoodFlow.txt" "Input_2-1_FoodFlow_RRes.txt" "Input_2-1_FoodFlowJanFritschHorn.txt" "Input_2-1_FoodFlowTest.txt" "Input_2-1_FoodFlowJanFritschTest.txt" "Input_2-1_FoodFlowJanFritschRevised.txt" "Input_2-1_FoodFlowJF_MP.txt" "Input_2_1_FoodFlowJanFritschHorn_isabel_Rmodified.txt"
1

CHOOSER
1565
1529
1853
1574
BeeMapp_FILE
BeeMapp_FILE
"Assessments.txt" "input_text_noDBR.txt" "input_text_withDBR.txt" "input_text_noDBR_withReinvasion.txt" "input_text_DBR_withReinvasion.txt" "input_text_withDBR_formicAcid.txt"
5

TEXTBOX
1589
1422
1731
1458
(right click & \"Edit\" to add more)
9
0.0
1

TEXTBOX
1665
1580
1804
1611
(right click & \"Edit\" to add more)
9
0.0
1

INPUTBOX
2255
1332
2353
1392
AddedPollen_kg
0.5
1
0
Number

TEXTBOX
2257
1320
2361
1342
Pollen added 1 March:
9
0.0
1

TEXTBOX
1259
514
1363
559
Formic acid \n
12
0.0
1

TEXTBOX
1265
701
1341
731
Oxalic acid\n
12
0.0
1

INPUTBOX
1368
546
1527
606
formicAcidTreatmentDay1-1
211.0
1
0
Number

INPUTBOX
2542
1479
2657
1539
TreatmentDay2
0.0
1
0
Number

TEXTBOX
2545
1368
2722
1402
Varroa Treatment - Old
14
0.0
1

INPUTBOX
1369
610
1529
670
formicAcidTreatmentDay2-1
242.0
1
0
Number

SWITCH
1371
507
1602
540
formicAcidVarroaTreatment
formicAcidVarroaTreatment
0
1
-1000

INPUTBOX
1537
546
1712
606
formicAcidTreatmentDuration1
2.0
1
0
Number

INPUTBOX
1537
610
1711
670
formicAcidTreatmentDuration2
3.0
1
0
Number

SWITCH
1370
700
1596
733
oxalicAcidVarroaTreatment
oxalicAcidVarroaTreatment
1
1
-1000

INPUTBOX
1369
740
1526
800
oxalicAcidTreatmentDay-1
339.0
1
0
Number

INPUTBOX
1538
738
1711
798
oxalicAcidTreatmentDuration
-10.0
1
0
Number

INPUTBOX
1721
738
1870
798
oxalicAcidEfficiency
0.0
1
0
Number

TEXTBOX
2550
1581
2752
1615
Drone Brood Removal - Old
14
0.0
1

TEXTBOX
1246
337
1435
371
Drone brood removal:
14
0.0
1

TEXTBOX
2450
24
2788
72
Buttons: scenarios paper Schödl et al. (2022)
14
95.0
1

INPUTBOX
1741
547
1905
607
formicAcidEfficiencyPhoretic1
0.4
1
0
Number

INPUTBOX
1742
613
1905
673
formicAcidEfficiencyPhoretic2
0.3
1
0
Number

INPUTBOX
1914
614
2090
674
formicAcidEfficiencyBroodcells2
0.1
1
0
Number

SWITCH
2129
559
2352
592
formicAcidKillOpenBrood1
formicAcidKillOpenBrood1
1
1
-1000

SWITCH
2129
625
2352
658
formicAcidKillOpenBrood2
formicAcidKillOpenBrood2
1
1
-1000

TEXTBOX
1225
15
1375
37
Egg laying
18
0.0
1

INPUTBOX
1593
65
1714
125
droneEgglayingTime2
120.0
1
0
Number

SWITCH
1333
31
1577
64
useDBRdaysAsDroneEgglayingTime
useDBRdaysAsDroneEgglayingTime
0
1
-1000

INPUTBOX
1594
128
1714
188
droneEgglayingTime3
135.0
1
0
Number

INPUTBOX
1718
64
1838
124
droneEgglayingTime4
150.0
1
0
Number

INPUTBOX
1719
129
1840
189
droneEgglayingTime5
-10.0
1
0
Number

TEXTBOX
1720
21
1881
39
= DRONE_EGGLAYING_START
10
0.0
1

MONITOR
1593
18
1714
59
droneEgglayingTime1 
DRONE_EGGLAYING_START
0
1
10

BUTTON
2485
314
2647
347
Good beekeeping pratice
DefaultProc\nset ReadBeeMappFile true\nset BeeMapp_FILE \"input_text_withDBR_formicAcid.txt\"\nset N_INITIAL_MITES_HEALTHY 0\nset N_INITIAL_MITES_INFECTED 0\nset Virus \"DWV\"\nset MiteReproductionModel \"Martin\"\nset AllowReinfestation false\nset GenericPlot4 \"mites\"\nset cellsDroneBroodFrame 3000\nset maxDroneFrameEgglayingDuration 5\nset workerEggsProportionOnDroneEgglayingDays 0.1\nset droneEggsProportionNoDroneEgglayingDay 0.05\nset droneEggsProportionNoDBR 0.2\nset propRemoveDronePupae 0.8\nset useDBRdaysAsDroneEgglayingTime true\nset DroneBroodRemoval false\nset RemovalDay1 119\nset RemovalDay2 134\nset RemovalDay3 149\nset RemovalDay4 164\nset RemovalDay5 -10\nset formicAcidVarroaTreatment false\nset formicAcidTreatmentDay1-1 211\n  set formicAcidTreatmentDuration1 2\n  set formicAcidEfficiencyPhoretic1 0.4\n  set formicAcidEfficiencyBroodcells1 0.2\n  set formicAcidTreatmentDay2-1 242\n  set formicAcidTreatmentDuration2 3\n  set formicAcidEfficiencyPhoretic2 0.3\n  set formicAcidEfficiencyBroodcells2 0.1\n  set oxalicAcidVarroaTreatment FALSE\n  set oxalicAcidTreatmentDay-1 339\n  set oxalicAcidTreatmentDuration 0\n  set oxalicAcidEfficiency 0\n  Setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
2466
166
2616
196
Drone brood removal scenarios:
12
125.0
1

BUTTON
2482
203
2679
236
DBR-Scenario: 2-week-gap
DefaultProc\nset ReadBeeMappFile true\nset BeeMapp_FILE \"input_text_withDBR.txt\"\nset N_INITIAL_MITES_HEALTHY 0\nset N_INITIAL_MITES_INFECTED 0\nset Virus \"DWV\"\nset MiteReproductionModel \"Martin\"\nset AllowReinfestation false\nset GenericPlot4 \"mites\"\nset cellsDroneBroodFrame 3000\nset maxDroneFrameEgglayingDuration 5\nset workerEggsProportionOnDroneEgglayingDays 0.1\nset droneEggsProportionNoDroneEgglayingDay 0.05\nset droneEggsProportionNoDBR 0.2\nset propRemoveDronePupae 0.8\nset useDBRdaysAsDroneEgglayingTime true\nset DroneBroodRemoval false\nset RemovalDay1 119\nset RemovalDay2 134\nset RemovalDay3 149\nset RemovalDay4 164\nset RemovalDay5 -10\nset formicAcidVarroaTreatment FALSE\n  set formicAcidTreatmentDay1-1 211\n  set formicAcidTreatmentDuration1 7\n  set formicAcidEfficiencyPhoretic1 0.5\n  set formicAcidEfficiencyBroodcells1 0.3\n  set formicAcidTreatmentDay2-1 242\n  set formicAcidTreatmentDuration2 5\n  set formicAcidEfficiencyPhoretic2 0.5\n  set formicAcidEfficiencyBroodcells2 0.3\n  set oxalicAcidVarroaTreatment FALSE\n  set oxalicAcidTreatmentDay-1 339\n  set oxalicAcidTreatmentDuration 2\n  set oxalicAcidEfficiency 0.5\n  ; Drone egg laying periods.\n  if RemovalDay1 != -10 [set droneEgglayingTime2 RemovalDay1 + 1]\n  ifelse RemovalDay2 != -10 [set droneEgglayingTime3 RemovalDay2 + 1][set droneEgglayingTime2 -10]\n  ifelse RemovalDay3 != -10 [set droneEgglayingTime4 RemovalDay3 + 1][set droneEgglayingTime3 -10]\n  ifelse RemovalDay4 != -10 [set droneEgglayingTime5 RemovalDay4 + 1][set droneEgglayingTime4 -10]\n  if RemovalDay5 = -10 [set droneEgglayingTime5 -10]\nSetup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
2484
241
2681
274
DBR-Scenario: 3-week-gap
DefaultProc\nset ReadBeeMappFile true\nset BeeMapp_FILE \"input_text_withDBR.txt\"\nset N_INITIAL_MITES_HEALTHY 0\nset N_INITIAL_MITES_INFECTED 0\nset Virus \"DWV\"\nset MiteReproductionModel \"Martin\"\nset AllowReinfestation false\nset GenericPlot4 \"mites\"\nset cellsDroneBroodFrame 3000\nset maxDroneFrameEgglayingDuration 5\nset workerEggsProportionOnDroneEgglayingDays 0.1\nset droneEggsProportionNoDroneEgglayingDay 0.05\nset droneEggsProportionNoDBR 0.2\nset propRemoveDronePupae 0.8\nset useDBRdaysAsDroneEgglayingTime true\nset DroneBroodRemoval false\nset RemovalDay1 126\nset RemovalDay2 148\nset RemovalDay3 170\nset RemovalDay4 192\nset RemovalDay5 -10\nset formicAcidVarroaTreatment FALSE\n  set formicAcidTreatmentDay1-1 211\n  set formicAcidTreatmentDuration1 7\n  set formicAcidEfficiencyPhoretic1 0.5\n  set formicAcidEfficiencyBroodcells1 0.3\n  set formicAcidTreatmentDay2-1 242\n  set formicAcidTreatmentDuration2 5\n  set formicAcidEfficiencyPhoretic2 0.5\n  set formicAcidEfficiencyBroodcells2 0.3\n  set oxalicAcidVarroaTreatment FALSE\n  set oxalicAcidTreatmentDay-1 339\n  set oxalicAcidTreatmentDuration 2\n  set oxalicAcidEfficiency 0.5\n  ; Drone egg laying periods.\n  if RemovalDay1 != -10 [set droneEgglayingTime2 RemovalDay1 + 1]\n  ifelse RemovalDay2 != -10 [set droneEgglayingTime3 RemovalDay2 + 1][set droneEgglayingTime2 -10]\n  ifelse RemovalDay3 != -10 [set droneEgglayingTime4 RemovalDay3 + 1][set droneEgglayingTime3 -10]\n  ifelse RemovalDay4 != -10 [set droneEgglayingTime5 RemovalDay4 + 1][set droneEgglayingTime4 -10]\n  if RemovalDay5 = -10 [set droneEgglayingTime5 -10]\n  Setup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
2752
63
2906
96
no DBR, drone egg pulses
DefaultProc\nset N_INITIAL_MITES_HEALTHY 0\nset N_INITIAL_MITES_INFECTED 0\nset cellsDroneBroodFrame 3000\nset maxDroneFrameEgglayingDuration 5\nset workerEggsProportionOnDroneEgglayingDays 0.1\nset droneEggsProportionNoDroneEgglayingDay 0.05\nset droneEggsProportionNoDBR 0.2\nset propRemoveDronePupae 0\nset DroneBroodRemoval true\nset RemovalDay1 -10\nset RemovalDay2 -10\nset RemovalDay3 -10\nset RemovalDay4 -10\nset RemovalDay5 -10\nset useDBRdaysAsDroneEgglayingTime false\nset droneEgglayingTime2 130\nset droneEgglayingTime3 155\nset droneEgglayingTime4 180\nset droneEgglayingTime5 -10\n  set RemovalDay1 -10\n  set RemovalDay2 -10\n  set RemovalDay3 -10\n  set RemovalDay4 -10\n  set RemovalDay5 -10\n  set formicAcidVarroaTreatment FALSE\n  set formicAcidTreatmentDay1-1 211\n  set formicAcidTreatmentDuration1 3\n  set formicAcidEfficiencyPhoretic1 0.5\n  set formicAcidEfficiencyBroodcells1 0.3\n  set formicAcidTreatmentDay2-1 242\n  set formicAcidTreatmentDuration2 6\n  set formicAcidEfficiencyPhoretic2 0.3\n  set formicAcidEfficiencyBroodcells2 0.1\n  set oxalicAcidVarroaTreatment FALSE\n  set oxalicAcidTreatmentDay-1 339\n  set oxalicAcidTreatmentDuration 3\n  set oxalicAcidEfficiency 0.4\nSetup\n  
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
1892
451
2097
496
ratioDronesToWorkersMiteInvasion
factorDrones / factorWorkers
2
1
11

INPUTBOX
1893
388
1983
448
factorDrones
6.49
1
0
Number

BUTTON
2453
63
2672
96
Initialisation: healthy bees, no mites
DefaultProc\nSetup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
2473
292
2623
310
With varroa treatment:
12
115.0
1

BUTTON
2570
106
2633
139
DWV
DefaultProc\nset ReadBeeMappFile true\nset BeeMapp_FILE \"input_text_noDBR.txt\"\nset DroneBroodRemoval FALSE\nset formicAcidVarroaTreatment FALSE\nset oxalicAcidVarroaTreatment FALSE\nset N_INITIAL_MITES_HEALTHY 0\nset N_INITIAL_MITES_INFECTED 0\nset Virus \"DWV\"\nset MiteReproductionModel \"Martin\"\nset AllowReinfestation false\nset GenericPlot4 \"mites\"\nSetup
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

TEXTBOX
2455
118
2605
136
Add Varroa mites:
12
15.0
1

TEXTBOX
2455
147
2605
165
With DWV:
12
25.0
1

INPUTBOX
1914
547
2090
607
formicAcidEfficiencyBroodcells1
0.2
1
0
Number

TEXTBOX
2134
27
2344
61
Parameters for egg laying:
14
0.0
1

INPUTBOX
2140
186
2407
246
workerEggsProportionOnDroneEgglayingDays
0.1
1
0
Number

INPUTBOX
2140
250
2406
310
droneEggsProportionNoDroneEgglayingDay
0.05
1
0
Number

INPUTBOX
2141
317
2406
377
droneEggsProportionNoDBR
0.2
1
0
Number

INPUTBOX
2139
51
2288
111
cellsDroneBroodFrame
3000.0
1
0
Number

INPUTBOX
2256
405
2405
465
propRemoveDronePupae
0.8
1
0
Number

INPUTBOX
2139
115
2408
175
maxDroneFrameEgglayingDuration
5.0
1
0
Number

MONITOR
2008
395
2095
440
NIL
factorWorkers
17
1
11

@#$#@#$#@
# Terms of use of the software Beehave_BeeMapp (2015)


Beehave (2013) and Beehave_BeeMapp (2015) are implementations of the model BEEHAVE, developed by Matthias Becher and colleagues:

Becher, M.A., Grimm, V., Thorbek, P., Horn, J., Kennedy, P.J. & Osborne, J.L. (2013) BEEHAVE: A systems model of honeybee colony dynamics and foraging to explore multifactorial causes of colony failure. _Journal of Applied Ecology_.


This implementation is based on the software platform NetLogo (Wilensky 1999), and can be downloaded for free from http://beehave-model.net/.



## Copyright and Licence Information:
© The University of Exeter, Matthias Becher 2015

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.

A copy of the GNU General Public License can be found at http://www.gnu.org/licenses/gpl.html or write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.



## Recommendations when using BEEHAVE:

• Please refer to the BEEHAVE publication (Becher et al. 2013; see above) and the BEEHAVE website (http://beehave-model.net/) when using BEEHAVE.

• We recommend that any publication or report based on using BEEHAVE shall include, in the Supplementary Material, the very NetLogo file that was used to produce the corresponding figure, table, or other kinds of results, as well as the "Experiments" in the BehaviorSpace and all necessary input files (see Supplementary Material of Becher et al. 2013 as example).

• You might want to modify the NetLogo code implementing BEEHAVE, for example by adding further outputs, or running specific scenarios. To check whether you are still using the original version of BEEHAVE click the "Version Test" button, which runs the model under specific settings and defined random numbers and informs the user if the code was changed. Note that not all changes to the code can be detected by this test. If you changed the code, we recommend to document these changes in all detail and to provide a revised ODD model description in which the modified or added elements are highlighted.
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

ambrosia
false
15
Rectangle -1 true true 51 107 246 218
Rectangle -1 true true 46 40 256 205
Rectangle -13345367 true false 60 90 240 180
Circle -1 true true 39 24 42
Circle -1 true true 219 24 42
Circle -1 true true 219 204 42
Circle -1 true true 39 204 42
Rectangle -1 true true 39 45 60 222
Rectangle -1 true true 246 46 261 224
Rectangle -1 true true 57 23 243 53
Rectangle -1 true true 57 218 240 246
Line -1184463 false 72 113 72 158
Line -1184463 false 74 134 88 134
Circle -1184463 false false 102 117 43
Rectangle -2674135 true false 192 9 239 23
Polygon -1 true true 58 27 65 8 140 8 147 27
Line -1184463 false 73 114 97 114
Circle -1184463 false false 151 115 43
Polygon -1184463 false false 207 115 221 117 226 129 226 146 221 155 207 158
Rectangle -16777216 true false 74 16 132 27

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

arrowpollen
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

bee_mb_1
true
0
Circle -7500403 true true 110 75 80
Circle -7500403 true true 101 157 98
Circle -6459832 true false 107 124 86
Line -7500403 true 150 100 105 60
Line -7500403 true 150 100 195 60
Circle -7500403 true true 103 178 92
Circle -7500403 true true 117 227 62
Polygon -7500403 true true 120 150 60 225 60 240 75 255 105 255 120 240 135 165 120 150
Polygon -7500403 true true 180 150 240 225 240 240 225 255 195 255 180 240 165 165 180 150
Circle -16777216 true false 116 88 19
Circle -16777216 true false 163 86 19
Circle -16777216 true false 112 99 19
Circle -16777216 true false 168 97 19

bee_mb_pollen
true
0
Circle -7500403 true true 110 75 80
Circle -7500403 true true 101 157 98
Circle -6459832 true false 107 124 86
Line -7500403 true 150 100 105 60
Line -7500403 true 150 100 195 60
Circle -7500403 true true 103 178 92
Circle -7500403 true true 117 227 62
Polygon -7500403 true true 120 150 60 225 60 240 75 255 105 255 120 240 135 165 120 150
Polygon -7500403 true true 180 150 240 225 240 240 225 255 195 255 180 240 165 165 180 150
Circle -16777216 true false 116 88 19
Circle -16777216 true false 163 86 19
Circle -16777216 true false 112 99 19
Circle -16777216 true false 168 97 19
Circle -1184463 true false 90 240 30
Circle -1184463 true false 180 240 30

beehive1
false
3
Rectangle -6459832 true true 15 135 285 270
Rectangle -7500403 true false 0 105 300 135
Line -16777216 false 15 240 285 240
Rectangle -16777216 true false 120 240 180 255

beehive1super
false
3
Rectangle -6459832 true true 15 195 150 300
Rectangle -7500403 true false 0 180 165 195
Line -16777216 false 15 285 150 285
Rectangle -16777216 true false 60 285 105 300
Line -16777216 false 15 225 150 225

beehive2
false
3
Rectangle -6459832 true true 15 30 285 270
Rectangle -7500403 true false 0 0 300 30
Line -16777216 false 15 240 285 240
Rectangle -16777216 true false 120 240 180 255
Line -16777216 false 15 135 285 135

beehive2super
false
3
Rectangle -6459832 true true 15 165 150 300
Rectangle -7500403 true false 0 150 165 165
Line -16777216 false 15 285 150 285
Rectangle -16777216 true false 60 285 105 300
Line -16777216 false 15 225 150 225
Line -16777216 false 15 195 150 195

beehive3super
false
3
Rectangle -6459832 true true 15 135 150 300
Rectangle -7500403 true false 0 120 165 135
Line -16777216 false 15 285 150 285
Rectangle -16777216 true false 60 285 105 300
Line -16777216 false 15 225 150 225
Line -16777216 false 15 195 150 195
Line -16777216 false 15 165 150 165

beehive4super
false
3
Rectangle -6459832 true true 15 105 150 300
Rectangle -7500403 true false 0 90 165 105
Line -16777216 false 15 285 150 285
Rectangle -16777216 true false 60 285 105 300
Line -16777216 false 15 225 150 225
Line -16777216 false 15 195 150 195
Line -16777216 false 15 165 150 165
Line -16777216 false 15 135 150 135

beehive5super
false
3
Rectangle -6459832 true true 15 75 150 300
Rectangle -7500403 true false 0 60 165 75
Line -16777216 false 15 285 150 285
Rectangle -16777216 true false 60 285 105 300
Line -16777216 false 15 225 150 225
Line -16777216 false 15 195 150 195
Line -16777216 false 15 165 150 165
Line -16777216 false 15 105 150 105
Line -16777216 false 15 135 150 135

beehive6super
false
3
Rectangle -6459832 true true 15 45 150 300
Rectangle -7500403 true false 0 30 165 45
Line -16777216 false 15 285 150 285
Rectangle -16777216 true false 60 285 105 300
Line -16777216 false 15 225 150 225
Line -16777216 false 15 195 150 195
Line -16777216 false 15 165 150 165
Line -16777216 false 15 105 150 105
Line -16777216 false 15 135 150 135
Line -16777216 false 15 105 150 105
Line -16777216 false 15 75 150 75

beehive7super
false
3
Rectangle -6459832 true true 15 15 150 300
Rectangle -7500403 true false 0 0 165 15
Line -16777216 false 15 285 150 285
Rectangle -16777216 true false 60 285 105 300
Line -16777216 false 15 225 150 225
Line -16777216 false 15 195 150 195
Line -16777216 false 15 165 150 165
Line -16777216 false 15 105 150 105
Line -16777216 false 15 135 150 135
Line -16777216 false 15 105 150 105
Line -16777216 false 15 75 150 75
Line -16777216 false 15 45 150 45

beehivedeephive
false
3
Rectangle -6459832 true true 15 225 150 300
Rectangle -7500403 true false 0 210 165 225
Line -16777216 false 15 285 150 285
Rectangle -16777216 true false 60 285 105 300

beelarva
true
0
Circle -7500403 true true 150 122 60
Circle -7500403 true true 135 110 60
Circle -7500403 true true 120 105 60
Circle -7500403 true true 105 105 60
Circle -7500403 true true 90 105 60
Circle -7500403 true true 69 111 58
Circle -7500403 true true 52 132 44
Circle -7500403 true true 50 152 32
Circle -7500403 true true 54 175 14
Circle -7500403 true true 168 145 44

beelarva_x
true
0
Circle -7500403 true true 140 158 60
Circle -7500403 true true 124 173 60
Circle -7500403 true true 144 143 60
Circle -7500403 true true 145 125 60
Circle -7500403 true true 141 110 60
Circle -7500403 true true 136 96 58
Circle -7500403 true true 132 91 44
Circle -7500403 true true 123 90 32
Circle -7500403 true true 116 95 14
Circle -7500403 true true 117 193 44
Rectangle -2674135 true false 75 135 255 165
Rectangle -2674135 true false 150 60 180 240

beelarva_x2
true
0
Circle -7500403 true true 173 157 54
Circle -7500403 true true 138 119 60
Circle -7500403 true true 161 134 60
Circle -7500403 true true 98 111 52
Circle -7500403 true true 120 108 60
Circle -7500403 true true 80 121 50
Circle -7500403 true true 73 135 44
Circle -7500403 true true 71 155 32
Circle -7500403 true true 73 175 14
Circle -7500403 true true 183 178 44
Rectangle -2674135 true false 80 134 230 164
Rectangle -2674135 true false 136 75 166 225

book
false
0
Polygon -7500403 true true 30 195 150 255 270 135 150 75
Polygon -7500403 true true 30 135 150 195 270 75 150 15
Polygon -7500403 true true 30 135 30 195 90 150
Polygon -1 true false 39 139 39 184 151 239 156 199
Polygon -1 true false 151 239 254 135 254 90 151 197
Line -7500403 true 150 196 150 247
Line -7500403 true 43 159 138 207
Line -7500403 true 43 174 138 222
Line -7500403 true 153 206 248 113
Line -7500403 true 153 221 248 128
Polygon -1 true false 159 52 144 67 204 97 219 82

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

bumblebeenest
false
0
Circle -6459832 true false 135 105 90
Circle -6459832 true false 15 135 90
Circle -6459832 true false 150 180 90
Circle -6459832 true false 75 150 90
Circle -6459832 true false 90 210 90
Circle -6459832 true false 195 120 90
Circle -16777216 true false 45 136 42
Circle -16777216 true false 109 151 42
Circle -16777216 true false 166 181 42
Circle -6459832 true false 15 195 90

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cloud
false
0
Circle -7500403 true true 13 118 94
Circle -7500403 true true 86 101 127
Circle -7500403 true true 51 51 108
Circle -7500403 true true 118 43 95
Circle -7500403 true true 158 68 134

colonies_merged
false
3
Rectangle -6459832 true true 0 195 135 300
Rectangle -7500403 true false 0 180 135 195
Line -16777216 false 0 285 135 285
Rectangle -16777216 true false 34 285 79 300
Line -16777216 false 0 225 135 225
Rectangle -7500403 true false 165 180 300 195
Rectangle -6459832 true true 165 195 300 300
Line -16777216 false 165 225 300 225
Line -16777216 false 165 285 300 285
Rectangle -16777216 true false 207 285 252 300
Rectangle -2674135 true false 146 238 153 268
Rectangle -2674135 true false 137 249 163 258

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cross
true
0
Rectangle -7500403 true true 120 15 180 285
Rectangle -7500403 true true 15 120 285 180

crown
false
0
Polygon -1184463 true false 15 150 45 225 255 225 285 150 15 150
Polygon -1184463 true false 150 120 90 150 210 150 150 120
Polygon -1184463 true false 45 120 15 150 75 150 45 120
Polygon -1184463 true false 255 120 225 150 285 150 255 120
Rectangle -1184463 true false 135 75 165 135
Rectangle -1184463 true false 120 90 180 105
Circle -2674135 true false 120 150 60

crownx
false
0
Polygon -1184463 true false 15 150 45 225 255 225 285 150 15 150
Polygon -1184463 true false 150 120 90 150 210 150 150 120
Polygon -1184463 true false 45 120 15 150 75 150 45 120
Polygon -1184463 true false 255 120 225 150 285 150 255 120
Rectangle -1184463 true false 135 75 165 135
Rectangle -1184463 true false 120 90 180 105
Circle -2674135 true false 120 150 60
Polygon -2674135 true false 15 30 30 15 285 270 270 285 15 30
Polygon -2674135 true false 30 285 15 270 270 15 285 30

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

exclamation
false
0
Circle -7500403 true true 103 198 95
Polygon -7500403 true true 135 180 165 180 210 30 180 0 120 0 90 30

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fadedflower
false
0
Polygon -6459832 true false 75 195 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 10 252 38
Circle -7500403 true true 70 132 38
Circle -7500403 true true 102 175 38
Circle -7500403 true true 87 237 38
Circle -7500403 true true -5 145 38
Circle -7500403 true true 6 156 108
Circle -16777216 true false 23 173 74
Polygon -6459832 true false 189 233 210 225 240 225 225 285 210 240
Polygon -6459832 true false 180 240 150 240 105 240 90 285 120 255

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -1184463 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

flowerorange
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -955883 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

honeyjar
false
15
Circle -1184463 true false 39 69 42
Circle -1184463 true false 219 69 42
Circle -1184463 true false 219 204 42
Circle -1184463 true false 39 204 42
Rectangle -1184463 true false 45 75 255 240
Rectangle -1184463 true false 39 87 54 222
Rectangle -1184463 true false 246 85 261 220
Rectangle -1184463 true false 60 70 243 98
Rectangle -1184463 true false 57 218 240 246
Rectangle -7500403 true false 75 29 226 72
Rectangle -1 true true 51 107 246 218
Line -16777216 false 63 129 63 186
Line -16777216 false 80 129 80 186
Line -16777216 false 65 158 79 158
Circle -16777216 false false 85 140 43
Line -16777216 false 134 135 135 185
Line -16777216 false 134 137 154 184
Line -16777216 false 154 185 153 135
Line -16777216 false 168 134 168 186
Line -16777216 false 169 136 182 136
Line -16777216 false 169 160 179 160
Line -16777216 false 168 185 183 185
Line -16777216 false 193 134 205 150
Line -16777216 false 206 152 217 132
Line -16777216 false 207 154 208 185

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

linemb
true
0
Line -7500403 true 15 150 150 150

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

person farmer
false
0
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Polygon -1 true false 60 195 90 210 114 154 120 195 180 195 187 157 210 210 240 195 195 90 165 90 150 105 150 150 135 90 105 90
Circle -7500403 true true 110 5 80
Rectangle -7500403 true true 127 79 172 94
Polygon -13345367 true false 120 90 120 180 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 180 90 172 89 165 135 135 135 127 90
Polygon -6459832 true false 116 4 113 21 71 33 71 40 109 48 117 34 144 27 180 26 188 36 224 23 222 14 178 16 167 0
Line -16777216 false 225 90 270 90
Line -16777216 false 225 15 225 90
Line -16777216 false 270 15 270 90
Line -16777216 false 247 15 247 90
Rectangle -6459832 true false 240 90 255 300

person_beekeeper
false
13
Polygon -2064490 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Polygon -1 true false 60 195 90 210 114 154 120 195 180 195 187 157 210 210 240 195 195 90 165 90 150 105 150 150 135 90 105 90
Circle -2064490 true true 110 5 80
Rectangle -2064490 true true 127 79 172 94
Polygon -1 true false 120 90 120 180 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 180 90 172 89 165 135 135 135 127 90
Polygon -1 true false 115 2 112 19 70 31 70 38 108 46 116 32 143 25 179 24 187 34 223 21 221 12 177 14 166 -2
Rectangle -7500403 true false 225 210 255 255
Rectangle -16777216 false false 115 24 182 99
Line -16777216 false 127 26 128 99
Line -16777216 false 142 24 143 96
Line -16777216 false 156 27 157 99
Line -16777216 false 167 25 168 97
Line -16777216 false 115 76 181 75
Line -16777216 false 115 85 182 85
Line -16777216 false 117 60 180 60
Line -16777216 false 116 45 179 45
Circle -7500403 true false 225 195 30
Polygon -7500403 true false 247 205 255 211 270 196 265 196 248 202
Polygon -6459832 true false 225 211 205 211 227 250
Circle -16777216 true false 142 163 10
Circle -16777216 true false 142 143 10
Circle -16777216 true false 143 180 10
Line -16777216 false 120 195 179 195
Line -16777216 false 115 34 178 34

pete
false
13
Polygon -2064490 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Polygon -1 true false 60 195 90 210 114 154 120 195 180 195 187 157 210 210 240 195 195 90 165 90 150 105 150 150 135 90 105 90
Circle -2064490 true true 110 5 80
Rectangle -2064490 true true 127 79 172 94
Polygon -1 true false 120 90 120 180 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 180 90 172 89 165 135 135 135 127 90
Polygon -1 true false 115 2 112 19 70 31 70 38 108 46 116 32 143 25 179 24 187 34 223 21 221 12 177 14 166 -2
Rectangle -7500403 true false 225 209 258 255
Rectangle -16777216 false false 115 24 182 99
Line -16777216 false 127 26 127 95
Line -16777216 false 142 24 143 96
Line -16777216 false 156 27 157 96
Line -16777216 false 167 25 168 96
Line -16777216 false 115 76 181 75
Line -16777216 false 115 85 182 85
Line -16777216 false 117 60 180 60
Line -16777216 false 116 45 179 45
Circle -7500403 true false 222 188 36
Polygon -7500403 true false 249 211 257 217 276 188 268 184 247 195
Polygon -6459832 true false 226 204 199 205 227 250
Circle -16777216 true false 143 173 10
Circle -16777216 true false 142 151 10
Line -16777216 false 120 195 179 195
Line -16777216 false 115 34 178 34

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

pollengrain
true
0
Circle -7500403 true true 75 75 150
Line -7500403 true 151 61 151 237
Line -7500403 true 60 150 240 150
Line -7500403 true 90 90 210 210
Line -7500403 true 90 210 210 90
Line -7500403 true 75 105 225 195
Line -7500403 true 105 75 195 225
Line -7500403 true 120 75 180 225
Line -7500403 true 135 75 165 225
Line -7500403 true 75 120 225 180
Line -7500403 true 75 135 225 165
Line -7500403 true 75 165 225 135
Line -7500403 true 75 180 225 120
Line -7500403 true 75 195 225 105
Line -7500403 true 105 225 195 75
Line -7500403 true 120 225 180 75
Line -7500403 true 165 75 135 225

queen
true
6
Circle -13840069 true true 114 48 72
Circle -13840069 true true 101 112 98
Circle -16777216 true false 107 79 86
Line -13840069 true 150 70 105 30
Line -13840069 true 150 70 195 30
Circle -13840069 true true 109 170 78
Circle -13840069 true true 125 230 50
Polygon -7500403 true false 120 120 60 195 60 210 75 225 105 225 120 210 135 135 120 120
Polygon -7500403 true false 180 120 240 195 240 210 225 225 195 225 180 210 165 135 180 120
Circle -16777216 true false 116 58 19
Circle -16777216 true false 163 56 19
Circle -16777216 true false 112 69 19
Circle -16777216 true false 168 67 19
Circle -13840069 true true 115 199 70
Circle -13791810 true false 121 95 60
Circle -13840069 true true 137 267 26
Circle -13840069 true true 132 253 34
Line -16777216 false 117 228 181 227
Line -16777216 false 126 258 174 256
Line -16777216 false 166 275 133 276
Line -16777216 false 123 192 176 190

queenx
false
6
Circle -13840069 true true 114 48 72
Circle -13840069 true true 101 112 98
Circle -16777216 true false 107 79 86
Line -13840069 true 150 70 105 30
Line -13840069 true 150 70 195 30
Circle -13840069 true true 109 170 78
Circle -13840069 true true 125 230 50
Polygon -7500403 true false 120 120 60 195 60 210 75 225 105 225 120 210 135 135 120 120
Polygon -7500403 true false 180 120 240 195 240 210 225 225 195 225 180 210 165 135 180 120
Circle -16777216 true false 116 58 19
Circle -16777216 true false 163 56 19
Circle -16777216 true false 112 69 19
Circle -16777216 true false 168 67 19
Circle -13840069 true true 115 199 70
Circle -13791810 true false 121 95 60
Circle -13840069 true true 137 267 26
Circle -13840069 true true 132 253 34
Line -16777216 false 117 228 181 227
Line -16777216 false 126 258 174 256
Line -16777216 false 166 275 133 276
Line -16777216 false 123 192 176 190
Polygon -2674135 true false 15 30 30 15 285 270 270 285
Polygon -2674135 true false 30 285 15 270 270 15 285 30

rabbit
false
0
Polygon -7500403 true true 61 150 76 180 91 195 103 214 91 240 76 255 61 270 76 270 106 255 132 209 151 210 181 210 211 240 196 255 181 255 166 247 151 255 166 270 211 270 241 255 240 210 270 225 285 165 256 135 226 105 166 90 91 105
Polygon -7500403 true true 75 164 94 104 70 82 45 89 19 104 4 149 19 164 37 162 59 153
Polygon -7500403 true true 64 98 96 87 138 26 130 15 97 36 54 86
Polygon -7500403 true true 49 89 57 47 78 4 89 20 70 88
Circle -16777216 true false 37 103 16
Line -16777216 false 44 150 104 150
Line -16777216 false 39 158 84 175
Line -16777216 false 29 159 57 195
Polygon -5825686 true false 0 150 15 165 15 150
Polygon -5825686 true false 76 90 97 47 130 32
Line -16777216 false 180 210 165 180
Line -16777216 false 165 180 180 165
Line -16777216 false 180 165 225 165
Line -16777216 false 180 210 210 240

sheep
false
0
Rectangle -7500403 true true 151 225 180 285
Rectangle -7500403 true true 47 225 75 285
Rectangle -7500403 true true 15 75 210 225
Circle -7500403 true true 135 75 150
Circle -16777216 true false 165 76 116

skull
false
0
Circle -1 true false 17 -5 232
Circle -1 true false 5 10 220
Circle -1 true false 62 0 220
Circle -1 true false 62 19 220
Circle -1 true false 5 10 220
Circle -1 true false 47 -5 232
Rectangle -1 true false 75 225 210 285
Rectangle -7500403 true true 150 258 178 285
Polygon -1 true false 203 250 230 194 177 183
Circle -16777216 true false 46 76 88
Polygon -16777216 true false 135 165 135 210 120 210 135 165
Polygon -16777216 true false 150 165 150 210 165 210 150 165
Line -16777216 false 135 285 135 261
Line -16777216 false 120 285 120 262
Rectangle -7500403 true true 135 269 153 285
Rectangle -7500403 true true 195 260 210 285
Polygon -1 true false 60 195 76 254 105 240 75 210 60 210
Circle -16777216 true false 153 77 88
Rectangle -7500403 true true 75 260 103 285

skull2
false
15
Circle -1 true true 28 13 242
Rectangle -1 true true 75 225 210 285
Rectangle -16777216 true false 150 255 180 285
Polygon -1 true true 60 195 75 255 105 255 105 195 60 195
Polygon -1 true true 210 255 225 195 180 195
Circle -16777216 true false 60 90 60
Circle -16777216 true false 165 90 60
Polygon -16777216 true false 135 165 135 210 120 210 135 165
Polygon -16777216 true false 150 165 150 210 165 210 150 165
Line -16777216 false 135 285 135 255
Line -16777216 false 120 285 120 255
Rectangle -16777216 true false 90 255 105 285
Line -16777216 false 195 285 195 255

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

sun
false
0
Circle -7500403 true true 75 75 150
Polygon -7500403 true true 300 150 240 120 240 180
Polygon -7500403 true true 150 0 120 60 180 60
Polygon -7500403 true true 150 300 120 240 180 240
Polygon -7500403 true true 0 150 60 120 60 180
Polygon -7500403 true true 60 195 105 240 45 255
Polygon -7500403 true true 60 105 105 60 45 45
Polygon -7500403 true true 195 60 240 105 255 45
Polygon -7500403 true true 240 195 195 240 255 255

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

varroamite01
false
0
Circle -7500403 true true 29 91 122
Circle -7500403 true true 149 91 122
Circle -7500403 true true 89 61 122
Circle -7500403 true true 89 136 122
Circle -7500403 true true 62 64 86
Circle -7500403 true true 152 64 86
Circle -7500403 true true 62 154 86
Circle -7500403 true true 152 154 86
Circle -7500403 true true 225 75 30
Circle -7500403 true true 45 75 30
Circle -7500403 true true 195 15 30
Circle -7500403 true true 90 30 30
Circle -7500403 true true 180 30 30
Circle -7500403 true true 165 45 30
Circle -7500403 true true 105 45 30
Circle -7500403 true true 75 15 30

varroamite02
false
0
Polygon -7500403 true true 75 75 150 60 225 75 240 150 225 225 150 240 75 225 60 150
Circle -7500403 true true 134 72 154
Circle -7500403 true true 15 73 152
Circle -7500403 true true 197 15 28
Circle -7500403 true true 77 15 28
Circle -7500403 true true 182 30 28
Circle -7500403 true true 92 30 28
Circle -7500403 true true 167 45 28
Circle -7500403 true true 107 45 28
Circle -7500403 true true 212 60 28
Line -7500403 true 150 45 150 75
Circle -7500403 true true 62 60 28
Circle -6459832 true false 92 105 28
Circle -6459832 true false 182 150 28
Circle -6459832 true false 92 150 28
Circle -6459832 true false 197 135 28
Circle -6459832 true false 77 135 28
Circle -6459832 true false 197 120 28
Circle -6459832 true false 77 120 28
Circle -6459832 true false 182 105 28

varroamite03
true
0
Polygon -7500403 true true 75 75 150 60 225 75 240 150 225 225 150 240 75 225 60 150
Circle -7500403 true true 134 72 154
Circle -7500403 true true 15 73 152
Circle -7500403 true true 197 15 28
Circle -7500403 true true 77 15 28
Circle -7500403 true true 182 30 28
Circle -7500403 true true 92 30 28
Circle -7500403 true true 167 45 28
Circle -7500403 true true 107 45 28
Circle -7500403 true true 212 60 28
Line -7500403 true 150 45 150 75
Circle -7500403 true true 62 60 28

virus1
true
0
Polygon -7500403 true true 90 45 120 15 180 15 210 45 210 90 180 120 120 120 90 90 90 45
Rectangle -7500403 true true 135 120 165 195
Rectangle -7500403 true true 105 210 195 195
Rectangle -7500403 true true 105 195 195 210
Polygon -7500403 true true 180 195 195 210 240 165 225 150 180 195 195 210
Polygon -7500403 true true 105 210 120 195 75 150 60 165 105 210
Polygon -7500403 true true 240 165 285 210 270 225 225 180
Polygon -7500403 true true 60 165 75 180 30 225 15 210 60 165
Rectangle -7500403 true true 120 150 135 225
Rectangle -7500403 true true 165 150 180 225

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270
@#$#@#$#@
NetLogo 6.2.2
@#$#@#$#@
@#$#@#$#@
@#$#@#$#@
<experiments>
  <experiment name="Figure2_egglaying_pulsedEggs" repetitions="5" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>StartProc</go>
    <final>clear-all
file-close-all</final>
    <timeLimit steps="365"/>
    <metric>current_seed</metric>
    <metric>droneEgglayingTime2</metric>
    <metric>droneEgglayingTime3</metric>
    <metric>droneEgglayingTime4</metric>
    <metric>droneEgglayingTime5</metric>
    <metric>day</metric>
    <metric>NewWorkerEggs</metric>
    <metric>NewDroneEggs</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>TotalIHbees + totalForagers</metric>
    <metric>TotalEggs + TotalLarvae + TotalPupae</metric>
    <metric>infectedBees</metric>
    <metric>TotalMites</metric>
    <metric>(PhoreticMites * (1 - PhoreticMitesHealthyRate))</metric>
    <metric>allMitesInMO</metric>
    <metric>mitesInfectedInMO</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <enumeratedValueSet variable="cellsDroneBroodFrame">
      <value value="3000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="maxDroneFrameEgglayingDuration">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="workerEggsProportionOnDroneEgglayingDays">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDroneEgglayingDay">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDBR">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="propRemoveDronePupae">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="factorDrones">
      <value value="6.49"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="useDBRdaysAsDroneEgglayingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime2">
      <value value="130"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime3">
      <value value="155"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime4">
      <value value="180"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DroneBroodRemoval">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay1">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay2">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay3">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay4">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay1-1">
      <value value="215"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration1">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic1">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells1">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood1">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay2-1">
      <value value="-1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration2">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic2">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells2">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDay-1">
      <value value="340"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDuration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidEfficiency">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="3650"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow_RRes.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Constant&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="WeatherFile">
      <value value="&quot;WeatherExample.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HiveType">
      <value value="&quot;Langstroth&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;show nothing&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReinfestation">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;drones&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddedPollen_kg">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;egg laying&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AllowReinfestation">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="BeeMapp_FILE">
      <value value="&quot;Assessments.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mileometer&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadBeeMappFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FrameType">
      <value value="&quot;Shallow frame&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ContinuousBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic2">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells2">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="Figure2_egglaying_contEggs" repetitions="5" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>StartProc</go>
    <final>clear-all
file-close-all</final>
    <timeLimit steps="365"/>
    <metric>current_seed</metric>
    <metric>droneEgglayingTime2</metric>
    <metric>droneEgglayingTime3</metric>
    <metric>droneEgglayingTime4</metric>
    <metric>droneEgglayingTime5</metric>
    <metric>day</metric>
    <metric>NewWorkerEggs</metric>
    <metric>NewDroneEggs</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>TotalIHbees + totalForagers</metric>
    <metric>TotalEggs + TotalLarvae + TotalPupae</metric>
    <metric>infectedBees</metric>
    <metric>TotalMites</metric>
    <metric>(PhoreticMites * (1 - PhoreticMitesHealthyRate))</metric>
    <metric>allMitesInMO</metric>
    <metric>mitesInfectedInMO</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <enumeratedValueSet variable="cellsDroneBroodFrame">
      <value value="3000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="maxDroneFrameEgglayingDuration">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="workerEggsProportionOnDroneEgglayingDays">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDroneEgglayingDay">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDBR">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="propRemoveDronePupae">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="factorDrones">
      <value value="6.49"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="useDBRdaysAsDroneEgglayingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime2">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime3">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime4">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DroneBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay1">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay2">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay3">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay4">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay1-1">
      <value value="215"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration1">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic1">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells1">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood1">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay2-1">
      <value value="-1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration2">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic2">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells2">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDay-1">
      <value value="340"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDuration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidEfficiency">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AllowReinfestation">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReinfestation">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="3650"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow_RRes.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Constant&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="WeatherFile">
      <value value="&quot;WeatherExample.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HiveType">
      <value value="&quot;Langstroth&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;show nothing&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;drones&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddedPollen_kg">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;egg laying&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="BeeMapp_FILE">
      <value value="&quot;Assessments.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mileometer&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadBeeMappFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FrameType">
      <value value="&quot;Shallow frame&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ContinuousBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic2">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells2">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="Figure3_beeColonyWithMites" repetitions="10" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>StartProc</go>
    <final>clear-all
file-close-all</final>
    <timeLimit steps="2190"/>
    <metric>day</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>TotalIHbees + totalForagers</metric>
    <metric>TotalEggs + TotalLarvae + TotalPupae</metric>
    <metric>infectedBees</metric>
    <metric>TotalMites</metric>
    <metric>PhoreticMites</metric>
    <metric>(PhoreticMites * (1 - PhoreticMitesHealthyRate))</metric>
    <metric>allMitesInMO</metric>
    <metric>mitesInfectedInMO</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <enumeratedValueSet variable="cellsDroneBroodFrame">
      <value value="3000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="maxDroneFrameEgglayingDuration">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="workerEggsProportionOnDroneEgglayingDays">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDroneEgglayingDay">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDBR">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="propRemoveDronePupae">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="factorDrones">
      <value value="6.49"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="useDBRdaysAsDroneEgglayingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime2">
      <value value="120"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime3">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime4">
      <value value="150"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DroneBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay1">
      <value value="119"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay2">
      <value value="134"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay3">
      <value value="149"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay4">
      <value value="164"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay1-1">
      <value value="215"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration1">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic1">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells1">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood1">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay2-1">
      <value value="-1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration2">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic2">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells2">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDay-1">
      <value value="340"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDuration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidEfficiency">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="3650"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow_RRes.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Constant&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="WeatherFile">
      <value value="&quot;WeatherExample.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HiveType">
      <value value="&quot;Langstroth&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;show nothing&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReinfestation">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;drones&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddedPollen_kg">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;egg laying&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AllowReinfestation">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="BeeMapp_FILE">
      <value value="&quot;input_text_noDBR.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mileometer&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadBeeMappFile">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FrameType">
      <value value="&quot;Shallow frame&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ContinuousBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic2">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells2">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="Figure4_beeColonyWithMites_4removalDays_2weekGap_varyPropRemoveDronePupae" repetitions="10" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>StartProc</go>
    <final>clear-all
file-close-all</final>
    <timeLimit steps="730"/>
    <metric>current_seed</metric>
    <metric>droneEgglayingTime2</metric>
    <metric>droneEgglayingTime3</metric>
    <metric>droneEgglayingTime4</metric>
    <metric>droneEgglayingTime5</metric>
    <metric>day</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>TotalIHbees + totalForagers</metric>
    <metric>TotalEggs + TotalLarvae + TotalPupae</metric>
    <metric>infectedBees</metric>
    <metric>TotalMites</metric>
    <metric>(PhoreticMites * (1 - PhoreticMitesHealthyRate))</metric>
    <metric>allMitesInMO</metric>
    <metric>mitesInfectedInMO</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <enumeratedValueSet variable="cellsDroneBroodFrame">
      <value value="3000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="maxDroneFrameEgglayingDuration">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="workerEggsProportionOnDroneEgglayingDays">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDroneEgglayingDay">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDBR">
      <value value="0.2"/>
    </enumeratedValueSet>
    <steppedValueSet variable="propRemoveDronePupae" first="0" step="0.1" last="1"/>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="factorDrones">
      <value value="6.49"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="useDBRdaysAsDroneEgglayingTime">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime2">
      <value value="120"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime3">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime4">
      <value value="150"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DroneBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay1">
      <value value="119"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay2">
      <value value="134"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay3">
      <value value="149"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay4">
      <value value="164"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay1-1">
      <value value="215"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration1">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic1">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells1">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood1">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay2-1">
      <value value="-1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration2">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic2">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells2">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDay-1">
      <value value="340"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDuration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidEfficiency">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AllowReinfestation">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReinfestation">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="3650"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow_RRes.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Constant&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="WeatherFile">
      <value value="&quot;WeatherExample.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HiveType">
      <value value="&quot;Langstroth&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;show nothing&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;drones&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddedPollen_kg">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;egg laying&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="BeeMapp_FILE">
      <value value="&quot;input_text_withDBR.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mileometer&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadBeeMappFile">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FrameType">
      <value value="&quot;Shallow frame&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ContinuousBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic2">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells2">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="Figure4_beeColonyWithMites_4removalDays_3weekGap_varyPropRemoveDronePupae" repetitions="10" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>StartProc</go>
    <final>clear-all
file-close-all</final>
    <timeLimit steps="730"/>
    <metric>current_seed</metric>
    <metric>droneEgglayingTime2</metric>
    <metric>droneEgglayingTime3</metric>
    <metric>droneEgglayingTime4</metric>
    <metric>droneEgglayingTime5</metric>
    <metric>day</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>TotalIHbees + totalForagers</metric>
    <metric>TotalEggs + TotalLarvae + TotalPupae</metric>
    <metric>infectedBees</metric>
    <metric>TotalMites</metric>
    <metric>(PhoreticMites * (1 - PhoreticMitesHealthyRate))</metric>
    <metric>allMitesInMO</metric>
    <metric>mitesInfectedInMO</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <enumeratedValueSet variable="cellsDroneBroodFrame">
      <value value="3000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="workerEggsProportionOnDroneEgglayingDays">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDroneEgglayingDay">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDBR">
      <value value="0.2"/>
    </enumeratedValueSet>
    <steppedValueSet variable="propRemoveDronePupae" first="0" step="0.1" last="1"/>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="factorDrones">
      <value value="6.49"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="useDBRdaysAsDroneEgglayingTime">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime2">
      <value value="127"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime3">
      <value value="149"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime4">
      <value value="171"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DroneBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay1">
      <value value="126"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay2">
      <value value="148"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay3">
      <value value="170"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay4">
      <value value="192"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay1-1">
      <value value="215"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration1">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic1">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells1">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood1">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay2-1">
      <value value="-1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration2">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic2">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells2">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDay-1">
      <value value="340"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDuration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidEfficiency">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AllowReinfestation">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReinfestation">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="3650"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow_RRes.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Constant&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="WeatherFile">
      <value value="&quot;WeatherExample.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HiveType">
      <value value="&quot;Langstroth&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;show nothing&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;drones&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddedPollen_kg">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;egg laying&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="BeeMapp_FILE">
      <value value="&quot;input_text_withDBR.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mileometer&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadBeeMappFile">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FrameType">
      <value value="&quot;Shallow frame&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ContinuousBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic2">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells2">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="Figure4and5_beeColonyWithMites_contEggs_noDBR" repetitions="10" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>StartProc</go>
    <final>clear-all
file-close-all</final>
    <timeLimit steps="730"/>
    <metric>current_seed</metric>
    <metric>droneEgglayingTime2</metric>
    <metric>droneEgglayingTime3</metric>
    <metric>droneEgglayingTime4</metric>
    <metric>droneEgglayingTime5</metric>
    <metric>day</metric>
    <metric>NewWorkerEggs</metric>
    <metric>NewDroneEggs</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>TotalIHbees + totalForagers</metric>
    <metric>TotalEggs + TotalLarvae + TotalPupae</metric>
    <metric>infectedBees</metric>
    <metric>TotalMites</metric>
    <metric>(PhoreticMites * (1 - PhoreticMitesHealthyRate))</metric>
    <metric>allMitesInMO</metric>
    <metric>mitesInfectedInMO</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <enumeratedValueSet variable="cellsDroneBroodFrame">
      <value value="3000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="workerEggsProportionOnDroneEgglayingDays">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDroneEgglayingDay">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDBR">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="propRemoveDronePupae">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="factorDrones">
      <value value="6.49"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="useDBRdaysAsDroneEgglayingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime2">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime3">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime4">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DroneBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay1">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay2">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay3">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay4">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay1-1">
      <value value="215"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration1">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic1">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells1">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood1">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay2-1">
      <value value="-1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration2">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic2">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells2">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDay-1">
      <value value="340"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDuration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidEfficiency">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AllowReinfestation">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReinfestation">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="3650"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow_RRes.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Constant&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="WeatherFile">
      <value value="&quot;WeatherExample.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HiveType">
      <value value="&quot;Langstroth&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;show nothing&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;drones&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddedPollen_kg">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;egg laying&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="BeeMapp_FILE">
      <value value="&quot;input_text_noDBR.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mileometer&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadBeeMappFile">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FrameType">
      <value value="&quot;Shallow frame&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ContinuousBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic2">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells2">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="Figure5and8_beeColonyWithMites_4removalDays_2weekGap" repetitions="10" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>StartProc</go>
    <final>clear-all
file-close-all</final>
    <timeLimit steps="730"/>
    <metric>current_seed</metric>
    <metric>droneEgglayingTime2</metric>
    <metric>droneEgglayingTime3</metric>
    <metric>droneEgglayingTime4</metric>
    <metric>droneEgglayingTime5</metric>
    <metric>day</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>TotalIHbees + totalForagers</metric>
    <metric>TotalEggs + TotalLarvae + TotalPupae</metric>
    <metric>infectedBees</metric>
    <metric>TotalMites</metric>
    <metric>(PhoreticMites * (1 - PhoreticMitesHealthyRate))</metric>
    <metric>allMitesInMO</metric>
    <metric>mitesInfectedInMO</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <enumeratedValueSet variable="cellsDroneBroodFrame">
      <value value="3000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="workerEggsProportionOnDroneEgglayingDays">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDroneEgglayingDay">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDBR">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="propRemoveDronePupae">
      <value value="0.8"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="factorDrones">
      <value value="6.49"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="useDBRdaysAsDroneEgglayingTime">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime2">
      <value value="120"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime3">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime4">
      <value value="150"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DroneBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay1">
      <value value="119"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay2">
      <value value="134"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay3">
      <value value="149"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay4">
      <value value="164"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay1-1">
      <value value="215"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration1">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic1">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells1">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood1">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay2-1">
      <value value="-1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration2">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic2">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells2">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDay-1">
      <value value="340"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDuration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidEfficiency">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AllowReinfestation">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReinfestation">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="3650"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow_RRes.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Constant&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="WeatherFile">
      <value value="&quot;WeatherExample.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HiveType">
      <value value="&quot;Langstroth&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;show nothing&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;drones&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddedPollen_kg">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;egg laying&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="BeeMapp_FILE">
      <value value="&quot;input_text_withDBR.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mileometer&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadBeeMappFile">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FrameType">
      <value value="&quot;Shallow frame&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ContinuousBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic2">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells2">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="Figure5_beeColonyWithMites_4removalDays_3weekGap" repetitions="10" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>StartProc</go>
    <final>clear-all
file-close-all</final>
    <timeLimit steps="730"/>
    <metric>current_seed</metric>
    <metric>droneEgglayingTime2</metric>
    <metric>droneEgglayingTime3</metric>
    <metric>droneEgglayingTime4</metric>
    <metric>droneEgglayingTime5</metric>
    <metric>day</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>TotalIHbees + totalForagers</metric>
    <metric>TotalEggs + TotalLarvae + TotalPupae</metric>
    <metric>infectedBees</metric>
    <metric>TotalMites</metric>
    <metric>(PhoreticMites * (1 - PhoreticMitesHealthyRate))</metric>
    <metric>allMitesInMO</metric>
    <metric>mitesInfectedInMO</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <enumeratedValueSet variable="cellsDroneBroodFrame">
      <value value="3000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="workerEggsProportionOnDroneEgglayingDays">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDroneEgglayingDay">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDBR">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="propRemoveDronePupae">
      <value value="0.8"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="factorDrones">
      <value value="6.49"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="useDBRdaysAsDroneEgglayingTime">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime2">
      <value value="127"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime3">
      <value value="149"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime4">
      <value value="171"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DroneBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay1">
      <value value="126"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay2">
      <value value="148"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay3">
      <value value="170"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay4">
      <value value="192"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay1-1">
      <value value="215"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration1">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic1">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells1">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood1">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay2-1">
      <value value="-1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration2">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic2">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells2">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDay-1">
      <value value="340"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDuration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidEfficiency">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AllowReinfestation">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReinfestation">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="3650"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow_RRes.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Constant&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="WeatherFile">
      <value value="&quot;WeatherExample.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HiveType">
      <value value="&quot;Langstroth&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;show nothing&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;drones&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddedPollen_kg">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;egg laying&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="BeeMapp_FILE">
      <value value="&quot;input_text_withDBR.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mileometer&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadBeeMappFile">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FrameType">
      <value value="&quot;Shallow frame&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ContinuousBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic2">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells2">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="Figure6_beeColonyWithMites_4removalDays_2weekGap_varyFactorDrones" repetitions="10" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>StartProc</go>
    <final>clear-all
file-close-all</final>
    <timeLimit steps="730"/>
    <metric>current_seed</metric>
    <metric>droneEgglayingTime2</metric>
    <metric>droneEgglayingTime3</metric>
    <metric>droneEgglayingTime4</metric>
    <metric>droneEgglayingTime5</metric>
    <metric>day</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>TotalIHbees + totalForagers</metric>
    <metric>TotalEggs + TotalLarvae + TotalPupae</metric>
    <metric>infectedBees</metric>
    <metric>TotalMites</metric>
    <metric>(PhoreticMites * (1 - PhoreticMitesHealthyRate))</metric>
    <metric>allMitesInMO</metric>
    <metric>mitesInfectedInMO</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <enumeratedValueSet variable="cellsDroneBroodFrame">
      <value value="3000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="workerEggsProportionOnDroneEgglayingDays">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDroneEgglayingDay">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDBR">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="propRemoveDronePupae">
      <value value="0.8"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="factorDrones">
      <value value="0"/>
      <value value="0.56"/>
      <value value="1.12"/>
      <value value="6.49"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="useDBRdaysAsDroneEgglayingTime">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime2">
      <value value="120"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime3">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime4">
      <value value="150"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DroneBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay1">
      <value value="119"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay2">
      <value value="134"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay3">
      <value value="149"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay4">
      <value value="164"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay1-1">
      <value value="215"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration1">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic1">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells1">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood1">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay2-1">
      <value value="-1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration2">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic2">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells2">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDay-1">
      <value value="340"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDuration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidEfficiency">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AllowReinfestation">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReinfestation">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="3650"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow_RRes.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Constant&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="WeatherFile">
      <value value="&quot;WeatherExample.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HiveType">
      <value value="&quot;Langstroth&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;show nothing&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;drones&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddedPollen_kg">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;egg laying&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="BeeMapp_FILE">
      <value value="&quot;input_text_withDBR.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mileometer&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadBeeMappFile">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FrameType">
      <value value="&quot;Shallow frame&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ContinuousBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic2">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells2">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="Figure6_beeColonyWithMites_contEggs_noDBR_varyFactorDrones" repetitions="10" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>StartProc</go>
    <final>clear-all
file-close-all</final>
    <timeLimit steps="730"/>
    <metric>current_seed</metric>
    <metric>droneEgglayingTime2</metric>
    <metric>droneEgglayingTime3</metric>
    <metric>droneEgglayingTime4</metric>
    <metric>droneEgglayingTime5</metric>
    <metric>day</metric>
    <metric>NewWorkerEggs</metric>
    <metric>NewDroneEggs</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>TotalIHbees + totalForagers</metric>
    <metric>TotalEggs + TotalLarvae + TotalPupae</metric>
    <metric>infectedBees</metric>
    <metric>TotalMites</metric>
    <metric>(PhoreticMites * (1 - PhoreticMitesHealthyRate))</metric>
    <metric>allMitesInMO</metric>
    <metric>mitesInfectedInMO</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <enumeratedValueSet variable="cellsDroneBroodFrame">
      <value value="3000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="workerEggsProportionOnDroneEgglayingDays">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDroneEgglayingDay">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDBR">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="propRemoveDronePupae">
      <value value="0.8"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="factorDrones">
      <value value="0"/>
      <value value="0.56"/>
      <value value="1.12"/>
      <value value="6.49"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="useDBRdaysAsDroneEgglayingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime2">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime3">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime4">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DroneBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay1">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay2">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay3">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay4">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay1-1">
      <value value="215"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration1">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic1">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells1">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood1">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay2-1">
      <value value="-1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration2">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic2">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells2">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDay-1">
      <value value="340"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDuration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidEfficiency">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AllowReinfestation">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReinfestation">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="3650"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow_RRes.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Constant&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="WeatherFile">
      <value value="&quot;WeatherExample.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HiveType">
      <value value="&quot;Langstroth&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;show nothing&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;drones&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddedPollen_kg">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;egg laying&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="BeeMapp_FILE">
      <value value="&quot;input_text_noDBR.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mileometer&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadBeeMappFile">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FrameType">
      <value value="&quot;Shallow frame&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ContinuousBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic2">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells2">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="Figure7_beeColonyWithMites_4removalDays_2weekGap_reinvasion" repetitions="10" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>StartProc</go>
    <final>clear-all
file-close-all</final>
    <timeLimit steps="730"/>
    <metric>current_seed</metric>
    <metric>droneEgglayingTime2</metric>
    <metric>droneEgglayingTime3</metric>
    <metric>droneEgglayingTime4</metric>
    <metric>droneEgglayingTime5</metric>
    <metric>day</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>TotalIHbees + totalForagers</metric>
    <metric>TotalEggs + TotalLarvae + TotalPupae</metric>
    <metric>infectedBees</metric>
    <metric>TotalMites</metric>
    <metric>(PhoreticMites * (1 - PhoreticMitesHealthyRate))</metric>
    <metric>allMitesInMO</metric>
    <metric>mitesInfectedInMO</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <enumeratedValueSet variable="cellsDroneBroodFrame">
      <value value="3000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="workerEggsProportionOnDroneEgglayingDays">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDroneEgglayingDay">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDBR">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="propRemoveDronePupae">
      <value value="0.8"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="factorDrones">
      <value value="6.49"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="useDBRdaysAsDroneEgglayingTime">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime2">
      <value value="120"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime3">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime4">
      <value value="150"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DroneBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay1">
      <value value="119"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay2">
      <value value="134"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay3">
      <value value="149"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay4">
      <value value="164"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay1-1">
      <value value="215"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration1">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic1">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells1">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood1">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay2-1">
      <value value="-1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration2">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic2">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells2">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDay-1">
      <value value="340"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDuration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidEfficiency">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AllowReinfestation">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReinfestation">
      <value value="0"/>
      <value value="5"/>
      <value value="10"/>
      <value value="20"/>
      <value value="30"/>
      <value value="40"/>
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="3650"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow_RRes.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Constant&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="WeatherFile">
      <value value="&quot;WeatherExample.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HiveType">
      <value value="&quot;Langstroth&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;show nothing&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;drones&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddedPollen_kg">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;egg laying&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="BeeMapp_FILE">
      <value value="&quot;input_text_DBR_withReinvasion.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mileometer&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadBeeMappFile">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FrameType">
      <value value="&quot;Shallow frame&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ContinuousBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic2">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells2">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="Figure7_beeColonyWithMites_contEggs_noDBR_reinvasion" repetitions="10" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>StartProc</go>
    <final>clear-all
file-close-all</final>
    <timeLimit steps="730"/>
    <metric>current_seed</metric>
    <metric>droneEgglayingTime2</metric>
    <metric>droneEgglayingTime3</metric>
    <metric>droneEgglayingTime4</metric>
    <metric>droneEgglayingTime5</metric>
    <metric>day</metric>
    <metric>NewWorkerEggs</metric>
    <metric>NewDroneEggs</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>TotalIHbees + totalForagers</metric>
    <metric>TotalEggs + TotalLarvae + TotalPupae</metric>
    <metric>infectedBees</metric>
    <metric>TotalMites</metric>
    <metric>(PhoreticMites * (1 - PhoreticMitesHealthyRate))</metric>
    <metric>allMitesInMO</metric>
    <metric>mitesInfectedInMO</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <enumeratedValueSet variable="cellsDroneBroodFrame">
      <value value="3000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="workerEggsProportionOnDroneEgglayingDays">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDroneEgglayingDay">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDBR">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="propRemoveDronePupae">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="factorDrones">
      <value value="6.49"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="useDBRdaysAsDroneEgglayingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime2">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime3">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime4">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DroneBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay1">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay2">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay3">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay4">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay1-1">
      <value value="215"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration1">
      <value value="10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic1">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells1">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood1">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay2-1">
      <value value="-1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration2">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic2">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells2">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDay-1">
      <value value="340"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDuration">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidEfficiency">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AllowReinfestation">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReinfestation">
      <value value="0"/>
      <value value="5"/>
      <value value="10"/>
      <value value="20"/>
      <value value="30"/>
      <value value="40"/>
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="3650"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow_RRes.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Constant&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="WeatherFile">
      <value value="&quot;WeatherExample.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HiveType">
      <value value="&quot;Langstroth&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;show nothing&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;drones&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddedPollen_kg">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;egg laying&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="BeeMapp_FILE">
      <value value="&quot;input_text_noDBR_withReinvasion.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mileometer&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadBeeMappFile">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FrameType">
      <value value="&quot;Shallow frame&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ContinuousBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic2">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells2">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
  <experiment name="Figure8and9_beeColonyWithMites_goodBeekeepingPractice" repetitions="10" runMetricsEveryStep="true">
    <setup>setup</setup>
    <go>StartProc</go>
    <final>clear-all
file-close-all</final>
    <timeLimit steps="1825"/>
    <metric>current_seed</metric>
    <metric>droneEgglayingTime2</metric>
    <metric>droneEgglayingTime3</metric>
    <metric>droneEgglayingTime4</metric>
    <metric>droneEgglayingTime5</metric>
    <metric>day</metric>
    <metric>NewWorkerEggs</metric>
    <metric>NewDroneEggs</metric>
    <metric>totalEggs</metric>
    <metric>totalLarvae</metric>
    <metric>totalPupae</metric>
    <metric>totalIHbees</metric>
    <metric>totalForagers</metric>
    <metric>TotalIHbees + totalForagers</metric>
    <metric>TotalEggs + TotalLarvae + TotalPupae</metric>
    <metric>infectedBees</metric>
    <metric>TotalMites</metric>
    <metric>(PhoreticMites * (1 - PhoreticMitesHealthyRate))</metric>
    <metric>allMitesInMO</metric>
    <metric>mitesInfectedInMO</metric>
    <metric>totalDroneEggs</metric>
    <metric>totalDroneLarvae</metric>
    <metric>totalDronePupae</metric>
    <metric>totalDrones</metric>
    <enumeratedValueSet variable="cellsDroneBroodFrame">
      <value value="3000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="workerEggsProportionOnDroneEgglayingDays">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDroneEgglayingDay">
      <value value="0.05"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEggsProportionNoDBR">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="propRemoveDronePupae">
      <value value="0.8"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Virus">
      <value value="&quot;DWV&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="factorDrones">
      <value value="6.49"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_HEALTHY">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_MITES_INFECTED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="useDBRdaysAsDroneEgglayingTime">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime2">
      <value value="120"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime3">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime4">
      <value value="150"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="droneEgglayingTime5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DroneBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay1">
      <value value="119"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay2">
      <value value="134"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay3">
      <value value="149"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay4">
      <value value="164"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemovalDay5">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay1-1">
      <value value="211"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration1">
      <value value="2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic1">
      <value value="0.4"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells1">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood1">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDay2-1">
      <value value="242"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidTreatmentDuration2">
      <value value="3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyPhoretic2">
      <value value="0.3"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidEfficiencyBroodcells2">
      <value value="0.1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="formicAcidKillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidVarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDay-1">
      <value value="339"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidTreatmentDuration">
      <value value="-10"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="oxalicAcidEfficiency">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReproductionModel">
      <value value="&quot;Martin&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AllowReinfestation">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MiteReinfestation">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="X_Days">
      <value value="3650"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadInfile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="INPUT_FILE">
      <value value="&quot;Input_2-1_FoodFlow_RRes.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Weather">
      <value value="&quot;Constant&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="WeatherFile">
      <value value="&quot;WeatherExample.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QueenAgeing">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_G_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeWeakColonies">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EggLaying_IH">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_POLLEN_GATHERING">
      <value value="600"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_BROODCELLS">
      <value value="2000099"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HiveType">
      <value value="&quot;Langstroth&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingDay">
      <value value="135"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ShowAllPlots">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SeasonalFoodFlow">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_INTERCEPT">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ForagingMap">
      <value value="&quot;show nothing&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="stopDead">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingPeriod">
      <value value="80"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ConstantHandlingTime">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RAND_SEED">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="N_INITIAL_BEES">
      <value value="10000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FeedBees">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_G">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot3">
      <value value="&quot;drones&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CRITICAL_COLONY_SIZE_WINTER">
      <value value="4000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot5">
      <value value="&quot;nectar availability [l]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_G">
      <value value="-40"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot7">
      <value value="&quot;mean trip duration&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="PollenIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddedPollen_kg">
      <value value="0.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SQUADRON_SIZE">
      <value value="100"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Swarming">
      <value value="&quot;No swarming&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot1">
      <value value="&quot;egg laying&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AlwaysDance">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_G">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="writeFile">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="AddPollen">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ProbLazinessWinterbees">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="RemainingHoney_kg">
      <value value="5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_G">
      <value value="500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MergeColoniesTH">
      <value value="5000"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DETECT_PROB_R">
      <value value="0.2"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DotDensity">
      <value value="0.01"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="Experiment">
      <value value="&quot;none&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_km_PER_DAY">
      <value value="7299"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="POLLEN_R_kg">
      <value value="1"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="details">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="BeeMapp_FILE">
      <value value="&quot;input_text_withDBR_formicAcid.txt&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="MAX_HONEY_STORE_kg">
      <value value="50"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyIdeal">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot8">
      <value value="&quot;foragers today [%]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HarvestingTH">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="SHIFT_R">
      <value value="30"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DANCE_SLOPE">
      <value value="1.16"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="modelledInsteadCalcDetectProb">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot4">
      <value value="&quot;mileometer&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="CONC_R">
      <value value="1.5"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_G_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ReadBeeMappFile">
      <value value="true"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="FrameType">
      <value value="&quot;Shallow frame&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TIME_NECTAR_GATHERING">
      <value value="1200"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot6">
      <value value="&quot;pollen availability [kg]&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="QUANTITY_R_l">
      <value value="20"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="HoneyHarvesting">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="DISTANCE_R">
      <value value="1500"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="GenericPlot2">
      <value value="&quot;colony structure workers&quot;"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="ContinuousBroodRemoval">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="VarroaTreatment">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDuration2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="TreatmentDay2">
      <value value="0"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="EfficiencyPhoretic2">
      <value value="0.115"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillOpenBrood2">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells">
      <value value="false"/>
    </enumeratedValueSet>
    <enumeratedValueSet variable="KillAllMitesInCells2">
      <value value="false"/>
    </enumeratedValueSet>
  </experiment>
</experiments>
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180
@#$#@#$#@
0
@#$#@#$#@
