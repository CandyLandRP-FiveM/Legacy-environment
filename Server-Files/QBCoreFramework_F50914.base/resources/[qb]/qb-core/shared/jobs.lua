QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.QBJobsStatus = false -- true: integrate qb-jobs into the whole of qb-core | false: treat qb-jobs as an add-on resource.
QBShared.Jobs = {} -- All of below has been migrated into qb-jobs
if QBShared.QBJobsStatus then return end
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Civilian',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Freelancer',
                payment = 10
            },
        },
	},
	['police'] = {
		label = 'Law Enforcement',
        type = "leo",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 200
            },
			['1'] = {
                name = 'Officer',
                payment = 275
            },
			['2'] = {
                name = 'Corporal',
                payment = 300
            },
            ['3'] = {
                name = 'Sergeant',
                payment = 325
            },
			['4'] = {
                name = 'Lieutenant',
                payment = 350
            },
            ['5'] = {
                name = 'Captain',
                isboss = true,
                payment = 375
            },
            ['6'] = {
                name = 'Ass Chief',
				isboss = true,
                payment = 400
            },
            ['7'] = {
                name = 'Chief',
				isboss = true,
                payment = 425
            },
        },
	},
	['ambulance'] = {
		label = 'EMS',
        type = 'ems',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 200
            },
			['1'] = {
                name = 'EMT',
                payment = 275   
            },
			['2'] = {
                name = 'Paramedic',
                payment = 300
            },
			['3'] = {
                name = 'Head Paramedic',
                payment = 325
            },
			['4'] = {
                name = 'Doctor',
                payment = 375
            },
            ['5'] = {
                name = 'Medical Administrator',
				isboss = true,
                payment = 400
            },
            ['6'] = {
                name = 'Medical Director',
				isboss = true,
                payment = 425
            },
        },
	},
	['realestate'] = {
		label = 'Real Estate',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['1'] = {
                name = 'House Sales',
                payment = 125 
            },
			['2'] = {
                name = 'Business Sales',
                payment = 150
            },
			['3'] = {
                name = 'Broker',
                payment = 175
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 200
            },
        },
	},
	['taxi'] = {
		label = 'Taxi',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['1'] = {
                name = 'Driver',
                payment = 75
            },
			['2'] = {
                name = 'Event Driver',
                payment = 100
            },
			['3'] = {
                name = 'Sales',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
    ['farmer'] = {
		label = 'farmer',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['1'] = {
                name = 'farmer',
                payment = 75
            },
			['2'] = {
                name = 'Harvester',
                payment = 100
            },
			['3'] = {
                name = 'Sales',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
    ['beekeeper'] = {
		label = 'beekeeper',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['1'] = {
                name = 'keeper',
                payment = 75
            },
			['2'] = {
                name = 'farmer',
                payment = 100
            },
			['3'] = {
                name = 'harvester',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
    ['bus'] = {
		label = 'Bus',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
		},
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 75
            },
			['2'] = {
                name = 'Business Sales',
                payment = 100
            },
			['3'] = {
                name = 'Finance',
                isboss = true,
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['mechanic'] = {
		label = 'Mechanic',
        type = "mechanic",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 50
            },
			['1'] = {
                name = 'Novice',
                payment = 75
            },
			['2'] = {
                name = 'Experienced',
                payment = 100
            },
			['3'] = {
                name = 'Advanced',
                payment = 125
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 150
            },
        },
	},
	['lawyer'] = {
		label = 'Department of Justice',
		defaultDuty = false,
		offDutyPay = true,
		grades = {
            ['0'] = {
                name = 'Para-Legal',
                payment = 200
            },
            ['1'] = {
                name = 'Criminal Defense',
                payment = 300
            },
            ['2'] = {
                name = 'Prosecutor',
                payment = 300
            },
            ['3'] = {
                name = 'Assistant DA',
                payment = 350
            },
            ['4'] = {
                name = 'District Attorney',
                isboss = true,
                payment = 375
            },
            ['5'] = {
                name = 'Judge',
                payment = 400
            },
            ['6'] = {
                name = 'Attorney General',
                isboss = true,
                payment = 425
            },
        },
    },    
	['cityhall'] = {
		label = 'City Hall',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Secretary',
                payment = 200
            },
            ['1'] = {
                name = 'Deputy Mayor',
                isboss = true,
                payment = 400
            },
            ['3'] = {
                name = 'Mayor',
                isboss = true,
                payment = 425
            },
        },
	},
    ['reporter'] = {
		label = 'Reporter',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Journalist',
                payment = 50
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 50
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 50
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 50
            },
        },
	},
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 50
            },    
        },
	},
	['floki'] = {
		label = 'floki',
        type = "mechanic",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Mechanic',
                payment = 200
            },
            ['1'] = {
                name = 'Advanced Mechanic',
                payment = 225
            },
            ['2'] = {
                name = 'Sales',
                payment = 250
            },
            ['3'] = {
                name = 'Manager',
                isboss = true,
                payment = 275
            },
            ['4'] = {
                name = 'Owner',
                isboss = true,
                payment = 300  
            },
        },
    },                           
	['autoexotics'] = {
		label = 'Auto Exotics',
        type = "mechanic",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
			['0'] = {
                name = 'Mechanic',
                payment = 200
            },
            ['1'] = {
                name = 'Advanced Mechanic',
                payment = 225
            },
            ['2'] = {
                name = 'Head Mechanic',
                payment = 250
            },
            ['3'] = {
                name = 'Manager',
                isboss = true,
                payment = 275
            },
            ['4'] = {
                name = 'Owner',
                isboss = true,
                payment = 300
            }, 
        },
	},
	['coolbeans'] = {
		label = 'Cool Beans',
        type = "bakery",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['1'] = {
                name = 'Line Cook',
                payment = 125
            },
			['2'] = {
                name = 'Shift Lead',
                payment = 150
            },
			['3'] = {
                name = 'Manager',
				isboss = true,
                payment = 200
            },
            ['4'] = {
                name = 'Owner',
				isboss = true,
                payment = 250
            },
        },
	},
	['upandatom'] = {
		label = 'Up And Atoms',
        type = "food",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['1'] = {
                name = 'Line Cook',
                payment = 125
            },
			['2'] = {
                name = 'Shift Lead',
                payment = 150
            },
			['3'] = {
                name = 'Manager',
				isboss = true,
                payment = 200
            },
            ['4'] = {
                name = 'Owner',
				isboss = true,
                payment = 250
            },
		},
	},
	['pdm'] = {
		label = 'pdm',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 200
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 225
            },
			['2'] = {
                name = 'Business Sales',
                payment = 250
            },
			['3'] = {
                name = 'Manager',
                isboss = true,
                payment = 275
            },
			['4'] = {
                name = 'Owner',
				isboss = true,
                payment = 300
            },
        },
	},
	['nachodaddy'] = {
		label = 'Nacho Daddys Taqueria',
        type = "food",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['1'] = {
                name = 'Line Cook',
                payment = 125
            },
			['2'] = {
                name = 'Shift Lead',
                payment = 150
            },
			['3'] = {
                name = 'Manager',
				isboss = true,
                payment = 200
            },
            ['4'] = {
                name = 'Owner',
				isboss = true,
                payment = 250
            },  
        },
    },
	['phaq'] = {
		label = 'Pha Q',
        type = "food",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['1'] = {
                name = 'Line Cook',
                payment = 125
            },
			['2'] = {
                name = 'Shift Lead',
                payment = 150
            },
			['3'] = {
                name = 'Manager',
				isboss = true,
                payment = 200
            },
            ['4'] = {
                name = 'Owner',
				isboss = true,
                payment = 250
            },
        },
	},
    ['pinkcage'] = {
		label = 'Pink Cage Bar',
        type = "food",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['1'] = {
                name = 'Line Cook',
                payment = 125
            },
			['2'] = {
                name = 'Shift Lead',
                payment = 150
            },
			['3'] = {
                name = 'Manager',
				isboss = true,
                payment = 200
            },
            ['4'] = {
                name = 'Owner',
				isboss = true,
                payment = 250
            }, 
        },
	},
    ['cyber'] = {
		label = 'Cyber Performance',
        type = "mechanic",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
			['0'] = {
                name = 'Mechanic',
                payment = 200
            },
            ['1'] = {
                name = 'Advanced Mechanic',
                payment = 225
            },
            ['2'] = {
                name = 'Head Mechanic',
                payment = 250
            },
            ['3'] = {
                name = 'Manager',
                isboss = true,
                payment = 275
            },
            ['4'] = {
                name = 'Owner',
                isboss = true,
                payment = 300
            },    
        },
	},
    ['tavern'] = {
		label = 'Mirror Park Tavern',
        type = "food",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['1'] = {
                name = 'Line Cook',
                payment = 125
            },
			['2'] = {
                name = 'Shift Lead',
                payment = 150
            },
			['3'] = {
                name = 'Manager',
				isboss = true,
                payment = 200
            },
            ['4'] = {
                name = 'Owner',
				isboss = true,
                payment = 250
            },
        },
	},
    ['petshop'] = {
		label = 'Mirror Park Pet Shop',
        type = "pets",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['2'] = {
                name = 'Sales',
                payment = 125
            },
			['3'] = {
                name = 'Shift Lead',
                payment = 150
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 200
            },
            ['5'] = {
                name = 'Owner',
				isboss = true,
                payment = 250
            },
        },
	},
    ['arcade'] = {
		label = 'Arcade',
        type = "fun",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 100
            },
			['2'] = {
                name = 'Sales',
                payment = 125
            },
			['3'] = {
                name = 'Shift Lead',
                payment = 150
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 200
            },
            ['5'] = {
                name = 'Owner',
				isboss = true,
                payment = 250
            },
        },
	},
    ['rental'] = {
		label = 'Rental',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Sales',
                payment = 50
            },    
        },
	},
    ['moore'] = {
		label = 'Moore Club',
        type = "club",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Bar Tender',
                payment = 100
            },
			['1'] = {
                name = 'Dancer',
                payment = 125
            },
			['2'] = {
                name = 'Shift Lead',
                payment = 150
            },
			['3'] = {
                name = 'Manager',
				isboss = true,
                payment = 200
            },
            ['4'] = {
                name = 'Owner',
				isboss = true,
                payment = 250
            },
        },
	},
    ['rws'] = {
		label = 'Rons Wholesale Supplier',
        type = "sales",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
			['0'] = {
                name = 'Recruit',
                payment = 200
            },
            ['1'] = {
                name = 'General Labor',
                payment = 225
            },
            ['2'] = {
                name = 'Supervisor',
                payment = 250
            },
            ['3'] = {
                name = 'Logistics Coordinator',
                isboss = true,
                payment = 275
            },
            ['4'] = {
                name = 'Owner',
                isboss = true,
                payment = 300
            },    
        },
	},
    ['pawn'] = {
		label = 'Njords Silver and Gold',
        type = "sales",
		defaultDuty = false,
		offDutyPay = false,
		grades = {
			['0'] = {
                name = 'Recruit',
                payment = 200
            },
            ['1'] = {
                name = 'Sales',
                payment = 225
            },
            ['2'] = {
                name = 'Senior Sales',
                payment = 250
            },
            ['3'] = {
                name = 'Manager',
                isboss = true,
                payment = 275
            },
            ['4'] = {
                name = 'Owner',
                isboss = true,
                payment = 300
            },    
        },
	},
}      