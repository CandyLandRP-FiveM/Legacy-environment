Shared = Shared or {}
Shared.Documents = {
	["Repossesion Order"] = {
    type = "create",
    restriction = {job = {enable = false, jobs = {
      [""] = "",
      [""] = {0},
    }}, gang = {enable = false, gangs = {
      [""] = {0},
    }}, citizenid = {enable = false, id = {
      "",
    }}},
    title = "Repossesion Order",
    logo = "https://cdn.discordapp.com/attachments/633974153388490753/1030999165485989888/1519800440060-removebg-preview.png",
    from = "UNITED STATES DISTRICT COURT",
    description = "An order of repossesion issued by the United States District Court",
    disclaimer = "The recipient of this repossesion order is hereby ordered to return any goods stated in the below information areas",
    information = {
      { id = "i1", label = "Recipients Name", type = "text_input", placement = "(Recipients Name)", required = "true", value = "" },
      { id = "i2", label = "Case No:", type = "text_input", placement = "(Case No:)", required = "true", value = "" },
      { id = "i3", label = "Witness Name:", type = "text_input", placement = "(The name of the witness)", required = "true", value = "" },
      { id = "i4", label = "Witness Title:", type = "text_input", placement = "(The title of the witness)", required = "true", value = "" },
    },
    extended_information = {
      { id = "e1", label = "Location:", type = "text_input", placement = "(Location when signing)", required = "true", value = "" },
      { id = "e2", label = "Date and Time:", type = "text_input", placement = "(Time/Date of signing)", required = "true", value = "" },
      { id = "e3", label = "Repossesion Information:", type = "text_area", placement = "(Information of the repossesion here)", required = "false", value = "" },
    },
    terms_and_conditions = {
      {label = "You have 7 days following reciept of this letter to arrange/appeal this order. Failure to do so within the stated time frame will void any appeals related to this case"},
      {label = "Destroying this document after reciept is seen as destruction of government property"},
      {label = "Any attempt to transfer/sell/trade or otherwise, anything related to this Order of Repossesion is seen as a criminal act"},
      {label = "Refusal to accept this Order will NOT halt proceeedings taking place"},
    },
    sign = ""
  },
  ["Subpoena"] = {
    type = "create",
    restriction = {job = {enable = true, jobs = {
      ["lawyer"] = {0,1,2,3,4,5,6},
    }}, gang = {enable = false, gangs = {
      [""] = {0},
    }}, citizenid = {enable = false, id = {
      "",
    }}},
    title = "Subpoena",
    logo = "https://cdn.discordapp.com/attachments/633974153388490753/1030999165485989888/1519800440060-removebg-preview.png",
    from = "UNITED STATES DISTRICT COURT",
    description = "Please fill out all required fields",
    disclaimer = "Subpoena to produce documents, information, or objects or to permit inspection of premises in any civil action",
    information = {
      { id = "i1", label = "Plaintiff", type = "text_input", placement = "(Plaintiffs Name)", required = "true", value = "" },
      { id = "i2", label = "Defendant", type = "text_input", placement = "(Defendants Name)", required = "true", value = "" },
      { id = "i3", label = "Case #", type = "text_input", placement = "(The Case this is linked to)", required = "true", value = "" },
      { id = "i4", label = "To:", type = "text_input", placement = "(Name of person to whom this subpeona is directed)", required = "true", value = "" },
    },
    extended_information = {
      { id = "e1", label = "Location:", type = "text_input", placement = "(Location when signing)", required = "true", value = "" },
      { id = "e2", label = "Date and Time:", type = "text_input", placement = "(Time/Date of signing)", required = "true", value = "" },
      { id = "e3", label = "Attornet's Name", type = "text_input", placement = "(The name of the Attorney)", required = "true", value = "" },
      { id = "e4", label = "Requested Items/Information:", type = "text_area", placement = "(What is it that is being requested in the subpoena)", required = "false", value = "" },
    },
    terms_and_conditions = {
      {label = "You have 7 days following reciept of this letter to arrange/appeal this order. Failure to do so within the stated time frame will void any appeals related to this case"},
      {label = "Destroying this document after reciept is seen as destruction of government property"},
      {label = "Any attempt to transfer/sell/trade or otherwise, anything related to this Order of Subpeona is seen as a criminal act"},
      {label = "Refusal to accept this Order will NOT halt proceeedings taking place"},
    },
    sign = ""
  },
  ["Background Check"] = {
    type = "create",
    restriction = {job = {enable = true, jobs = {
      ["police"] = {0,1,2,3,4,5,6,7},
    }}, gang = {enable = false, gangs = {
      [""] = {0},
    }}, citizenid = {enable = false, id = {
      "",
    }}},
    title = "Background Check",
    logo = "https://cdn.discordapp.com/attachments/1136347425989206107/1165765888369234043/R_29_513x486.png",
    from = "LOS SANTOS POLICE DEPARTMENT",
    description = "A criminal background check",
    disclaimer = "This document is only valid for 1 weeks after signing",
    information = {
      { id = "i1", label = "Recipients Name:", type = "text_input", placement = "(Recipients Name)", required = "true", value = "" },
      { id = "i2", label = "Officer Name:", type = "text_input", placement = "(Officer Name)", required = "true", value = "" },
      { id = "i3", label = "Reason for Background Check", type = "text_input", placement = "(Recipients reason for the background check)", required = "true", value = "" },
      { id = "i4", label = "Date of Inquiry: ", type = "text_input", placement = "(The specific date when the background check was requested or conducted.)", required = "true", value = "" },
    },
    extended_information = {
      { id = "e1", label = "Aliases/Nicknames:", type = "text_input", placement = "(Any other names the individual might have gone by in the past.)", required = "true", value = "" },
      { id = "e2", label = "Type of Check:", type = "text_input", placement = "(Whether it's a criminal background check, financial background check, employment history check, etc.)", required = "true", value = "" },
      { id = "e3", label = "Results Summary:", type = "text_area", placement = "(A brief summary or initial findings of the background check.)", required = "false", value = "" },
    },
    terms_and_conditions = {
      {label = "This document is only valid for 1 weeks after signing"},
      {label = ""},
      {label = ""},
      {label = ""},
    },
    sign = ""
  },
  ["Death Certificate"] = {
    type = "create",
    restriction = {job = {enable = true, jobs = {
      ["ambulance"] = {0,1,2,3,4},
    }}, gang = {enable = false, gangs = {
      [""] = {0},
    }}, citizenid = {enable = false, id = {
      "",
    }}},
    title = "Death Certificate",
    logo = "https://cdn.discordapp.com/attachments/1165773958747000833/1165783222874013847/EMS_513x486.png",
    from = "LOS SANTOS EMERGENCY MEDICAL SERVICES",
    description = "Please fill out all required fields",
    disclaimer = "This certificate is for official use only. Verify details with relevant authorities before making legal or financial decisions. Unauthorized use or distribution is prohibited.",
    information = {
      { id = "i1", label = "Full Name of the Deceased:", type = "text_input", placement = "(The complete legal name of the person who has died)", required = "true", value = "" },
      { id = "i2", label = "Date of Death:", type = "text_input", placement = "(The exact date when the individual passed away)", required = "true", value = "" },
      { id = "i3", label = "Date of Birth:", type = "text_input", placement = "(The birthdate of the deceased)", required = "true", value = "" },
      { id = "i4", label = "Cause of Death:", type = "text_area", placement = "(A brief description or medical diagnosis indicating the cause of death. This might be further divided into immediate cause, underlying causes, and any contributing factors)", required = "true", value = "" },
    },
    extended_information = {
      { id = "e1", label = "Manner of Death:", type = "text_input", placement = "(Whether the death was natural, accidental, suicide, homicide, or undetermined)", required = "true", value = "" },
      { id = "e2", label = "Burial/Disposition:", type = "text_input", placement = "(Information about where and when the body was buried, cremated, or otherwise disposed of)", required = "true", value = "" },
      { id = "e3", label = "Registration Number:", type = "text_input", placement = "(A unique number assigned to the death certificate for official records.)", required = "true", value = "" },
      { id = "e4", label = "Additional Information:", type = "text_area", placement = "(Some death certificates might also include details about an autopsy (if performed), the duration of the final illness, and other relevant medical or situational details)", required = "false", value = "" },
    },
    terms_and_conditions = {
      {label = "This death certificate is an official record issued by Los Santos Emergency Medical Services. Any alterations or modifications to the original document will render it void."},
      {label = "All information on this certificate is based on records available at the time of issuance. Parties relying on this document should verify details with the issuing authority."},
      {label = "Reproduction, distribution, or use of this certificate for fraudulent purposes is strictly prohibited and may result in legal action."},
      {label = "Any disputes related to this certificate will be governed by the laws of Los Santos."},
    },
    sign = ""
  },
  ["Perscription"] = {
    type = "create",
    restriction = {job = {enable = true, jobs = {
      ["ambulance"] = {3,4},
    }}, gang = {enable = false, gangs = {
      [""] = {0},
    }}, citizenid = {enable = false, id = {
      "",
    }}},
    title = "Perscription",
    logo = "https://cdn.discordapp.com/attachments/1165773958747000833/1165783222874013847/EMS_513x486.png",
    from = "LOS SANTOS EMERGENCY MEDICAL SERVICES",
    description = "Please fill out all required fields",
    disclaimer = "This prescription is issued for the named patient only and is valid for the specified medication and dosage. Unauthorized use, duplication, or distribution is prohibited and may result in legal consequences. Always consult with a healthcare professional before making any changes to medication.",
    information = {
      { id = "i1", label = "Doctor's Name:", type = "text_input", placement = "(Doctors Full Name)", required = "true", value = "" },
      { id = "i2", label = "Patient's Name:", type = "text_input", placement = "(Patients Full Name)", required = "true", value = "" },
      { id = "i3", label = "Patients State ID", type = "text_input", placement = "(State ID of Patient)", required = "true", value = "" },
      { id = "i4", label = "Medication Details:", type = "text_area", placement = "(Details of Medication IE Name of medication, Dosage, Form, Quantitiy, instructions for use, duaration and refills if any)", required = "true", value = "" },
    },
    extended_information = {
      { id = "e1", label = "Pharmacy Notes:", type = "text_input", placement = "(Any additional notes or instructions for the pharmacist)", required = "true", value = "" },
      { id = "e2", label = "Date of Prescription:", type = "text_input", placement = "(The date when the prescription was issued)", required = "true", value = "" },
      { id = "e3", label = "Diagnosis or Condition: ", type = "text_input", placement = "(A brief description of the medical condition or diagnosis for which the medication is being prescribed. This provides context for both the patient and the pharmacist.)", required = "true", value = "" },
      { id = "e4", label = "Warnings or Cautions:", type = "text_area", placement = "(Any specific warnings related to the medication, such as potential side effects, interactions with other drugs, or activities to avoid while on the medication.)", required = "false", value = "" },
    },
    terms_and_conditions = {
      {label = "This prescription is intended solely for the named patient. Use by any other individual is unauthorized and may result in medical complications or legal consequences."},
      {label = "The prescription is valid only for the specified medication, dosage, and duration. Any changes or substitutions must be approved by the prescribing physician."},
      {label = "Refills are permitted only up to the number indicated on the prescription. Any additional refills beyond the specified limit require a new prescription from the doctor."},
      {label = "Medications should be stored as per the instructions provided, away from children and pets. Unused or expired medications should be disposed of safely and should not be flushed or thrown in regular trash."},
    },
    sign = ""
  },
  ["Psychiatric Hold"] = {
    type = "create",
    restriction = {job = {enable = true, jobs = {
      ["ambulance"] = {3,4},
    }}, gang = {enable = false, gangs = {
      [""] = {0},
    }}, citizenid = {enable = false, id = {
      "",
    }}},
    title = "Psychiatric Hold",
    logo = "https://cdn.discordapp.com/attachments/1165773958747000833/1165783222874013847/EMS_513x486.png",
    from = "LOS SANTOS EMERGENCY MEDICAL SERVICES",
    description = "Please fill out all required fields",
    disclaimer = "This Psychiatric hold is based on observed behaviors indicating potential harm. It's a protective measure, not a definitive mental health judgment, and adheres to all applicable laws while upholding individual rights and confidentiality.",
    information = {
      { id = "i1", label = "Doctor's Name:", type = "text_input", placement = "(Doctors Full Name)", required = "true", value = "" },
      { id = "i2", label = "Patient's Name:", type = "text_input", placement = "(Patients Full Name)", required = "true", value = "" },
      { id = "i3", label = "Patients State ID", type = "text_input", placement = "(State ID of Patient)", required = "true", value = "" },
      { id = "i4", label = "Observations:", type = "text_area", placement = "(Detailed notes from the officer or medical professional who initiated the hold, describing the individual's behavior, statements, or actions.)", required = "true", value = "" },
    },
    extended_information = {
      { id = "e1", label = "Location of Detainment:", type = "text_input", placement = "(location or facility where the individual will be held for evaluation.)", required = "true", value = "" },
      { id = "e2", label = "Duration:", type = "text_input", placement = "(Specify the 72-hour duration, with start and end times/dates.)", required = "true", value = "" },
      { id = "e3", label = "Recommendations:", type = "text_input", placement = "(Any immediate recommendations for the individual's care or evaluation, such as a need for medication, isolation, or counseling.)", required = "true", value = "" },
      { id = "e4", label = "Reason for Hold:", type = "text_area", placement = "(A brief description of the behavior or statements that led to the decision for the hold. This could be categorized as: Danger to self, Danger to others or Gravely Disabled)", required = "false", value = "" },
    },
    terms_and_conditions = {
      {label = "The 5150 hold is initiated based on clear evidence of potential harm to oneself or others, or inability to provide for one's basic personal needs due to mental impairment."},
      {label = " The hold is valid for a maximum of 72 hours, during which the individual will undergo psychiatric evaluation. Extensions or releases prior to this duration are at the discretion of the evaluating medical professional."},
      {label = "The individual under the hold has the right to be treated with dignity, to be informed of their status and rights, and to communicate with legal counsel or designated family members."},
      {label = "All information and observations related to the 5150 hold are confidential and will be shared only with authorized medical and legal personnel. Unauthorized dissemination may result in legal consequences."},
    },
    sign = ""
  },
  ["Arrest Warrant"] = {
    type = "create",
    restriction = {job = {enable = true, jobs = {
      ["lawyer"] = {5,6},
    }}, gang = {enable = false, gangs = {
      [""] = {0},
    }}, citizenid = {enable = false, id = {
      "",
    }}},
    title = "Arrest Warrant",
    logo = "https://cdn.discordapp.com/attachments/633974153388490753/1030999165485989888/1519800440060-removebg-preview.png",
    from = "UNITED STATES DISTRICT COURT",
    description = "Please fill out all required fields",
    disclaimer = "This warrant is based on information available at issuance. Adherence to its terms is mandatory. Non-compliance may lead to legal repercussions.",
    information = {
      { id = "i1", label = "Suspect's Name:", type = "text_input", placement = "(Suspect's Name)", required = "true", value = "" },
      { id = "i2", label = "Alias/Nickname:", type = "text_input", placement = "(Enter Alias or Nickname if any)", required = "true", value = "" },
      { id = "i3", label = "Occupation:", type = "text_input", placement = "(Enter Occupation)", required = "true", value = "" },
      { id = "i4", label = "Known Associates: ", type = "text_area", placement = "(Enter names of known associates or affiliations)", required = "true", value = "" },
    },
    extended_information = {
      { id = "e1", label = "Evidence", type = "text_area", placement = "(Enter Details of Evidence or Reason for Warrant)", required = "true", value = "" },
      { id = "e2", label = "Requesting officers Name", type = "text_area", placement = "(Requesting Officers Name))", required = "true", value = "" },
      { id = "e3", label = "Warrant Information", type = "text_area", placement = "(what are you looking to do/obtain from this warrant)", required = "true", value = "" },
      { id = "e4", label = "Affidavit", type = "text_area", placement = "(Details of the sworn statement or affidavit that provides the basis for the issuance of the warrant. This is typically a detailed account of the evidence and reasons the officer believes a warrant is necessary.)", required = "true", value = "" },
      { id = "e5", label = "Special Instructions", type = "text_area", placement = "(Any special instructions for executing the warrant, such as Warrant must be executed between 6 am and 10 pm, Notify local police department before execution, etc.)", required = "true", value = "" },
    },
    terms_and_conditions = {
      {label = "The issuance of this arrest warrant is based on established probable cause, indicating that the named individual has committed a specific crime. The requesting officer or agency must provide sufficient evidence or testimony to support this claim."},
      {label = "The arrest warrant authorizes law enforcement officers to arrest the named individual for the specific charges listed. Officers must not exceed the scope of the warrant, and any search or seizure conducted in conjunction with the arrest must adhere to legal standards."},
      {label = "The arrest warrant must be executed within the timeframe specified by the issuing authority. If not executed within this period, the warrant may need to be renewed or may become invalid."},
      {label = "Upon executing the arrest warrant, the arresting officers must inform the individual of their rights, including the right to remain silent and the right to legal representation. The individual must be treated in accordance with the law, ensuring their safety and dignity."},
    },
    sign = ""
  },
  ["Bench Warrant"] = {
    type = "create",
    restriction = {job = {enable = true, jobs = {
      ["lawyer"] = {5,6},
    }}, gang = {enable = false, gangs = {
      [""] = {0},
    }}, citizenid = {enable = false, id = {
      "",
    }}},
    title = " Bench Warrant",
    logo = "https://cdn.discordapp.com/attachments/633974153388490753/1030999165485989888/1519800440060-removebg-preview.png",
    from = "UNITED STATES DISTRICT COURT",
    description = "Please fill out all required fields",
    disclaimer = "When a bench warrant is issued, law enforcement officers are authorized to locate, arrest, and bring the individual directly to court. It's important to note that bench warrants, unlike other types of warrants, are typically not issued based on suspicions of new criminal activity but rather for failing to meet court-related obligations.",
    information = {
      { id = "i1", label = "Suspect's Name:", type = "text_input", placement = "(Suspect's Name)", required = "true", value = "" },
      { id = "i2", label = "Alias/Nickname:", type = "text_input", placement = "(Enter Alias or Nickname if any)", required = "true", value = "" },
      { id = "i3", label = "Occupation:", type = "text_input", placement = "(Enter Occupation)", required = "true", value = "" },
      { id = "i4", label = "Known Associates: ", type = "text_area", placement = "(Enter names of known associates or affiliations)", required = "true", value = "" },
    },
    extended_information = {
      { id = "e1", label = "Evidence", type = "text_area", placement = "(Enter Details of Evidence or Reason for Warrant)", required = "true", value = "" },
      { id = "e2", label = "Warrant Information", type = "text_area", placement = "(what are you looking to do/obtain from this warrant)", required = "true", value = "" },
      { id = "e3", label = "Reason for Bench Warrant", type = "text_area", placement = "(Failure to Appear, Probation/parole Violations, Unpaid fines or court fees and Failure to attend Court-ordered programs)", required = "false", value = "" },
      { id = "e5", label = "Special Instructions", type = "text_area", placement = "(Any special instructions for executing the warrant, such as Warrant must be executed between 6 am and 10 pm, Notify local police department before execution, etc.)", required = "true", value = "" },
    },
    terms_and_conditions = {
      {label = "The requesting officer must provide verifiable evidence of the individual's non-compliance with court orders or directives, such as missed court dates, unpaid fines, or uncompleted court-mandated programs."},
      {label = "Upon approval of the bench warrant, law enforcement officers are authorized to arrest the individual named in the warrant at any location, without further notice."},
      {label = "Once arrested on a bench warrant, the individual must be brought before the court that issued the warrant to address the reason for non-compliance and determine further legal actions."},
      {label = "The bench warrant remains active until the individual complies with the court's directives or the warrant is withdrawn by the court. It is the responsibility of the requesting officer to inform the court once the conditions leading to the warrant's issuance have been resolved."},
    },
    sign = ""
  },
  ["Warrant Request"] = {
    type = "create",
    restriction = {job = {enable = true, jobs = {
      ["police"] = "all",
    }}, gang = {enable = false, gangs = {
      [""] = {0},
    }}, citizenid = {enable = false, id = {
      "",
    }}},
    title = "Warrant Request",
    logo = "https://cdn.discordapp.com/attachments/1136347425989206107/1165765888369234043/R_29_513x486.png",
    from = "LOS SANTOS POLICE DEPARTMENT",
    description = "Please fill out all required fields",
    disclaimer = "This warrant Request is not a warrant, it must be given to a DA to review and then signed off by a judge+",
    information = {
      { id = "i1", label = "Suspect's Name:", type = "text_input", placement = "(Suspect's Name)", required = "true", value = "" },
      { id = "i2", label = "Alias/Nickname:", type = "text_input", placement = "(Enter Alias or Nickname if any)", required = "true", value = "" },
      { id = "i3", label = "Occupation:", type = "text_input", placement = "(Enter Occupation)", required = "true", value = "" },
      { id = "i4", label = "Known Associates:", type = "text_area", placement = "(Enter names of known associates or affiliations)", required = "true", value = "" },
    },
    extended_information = {
      { id = "e1", label = "Warrant Type", type = "text_input", placement = "(Search Warrant, Arrest Warrant)", required = "true", value = "" },
      { id = "e2", label = "Evidence", type = "text_area", placement = "(Enter Details of Evidence or Reason for Warrant)", required = "true", value = "" },
      { id = "e3", label = "Requesting officers Name", type = "text_area", placement = "(Requesting Officers Name)", required = "true", value = "" },
      { id = "e4", label = "Warrant Information", type = "text_area", placement = "(what are you looking to do/obtain from this warrant)", required = "true", value = "" },
      { id = "e5", label = "Location to be Searched", type = "text_area", placement = "(if applicable - Adress, Description of location and Specific Areas to be searched)", required = "false", value = "" },
      { id = "e6", label = "Items to be Seized ", type = "text_area", placement = "(if applicable - List specific items or categories of items that are to be seized, e.g., Firearms, Electronic Devices, Documents related to the warrant)", required = "false", value = "" },
      { id = "e7", label = "Affidavit", type = "text_area", placement = "(Details of the sworn statement or affidavit that provides the basis for the issuance of the warrant. This is typically a detailed account of the evidence and reasons the officer believes a warrant is necessary.)", required = "true", value = "" },
    },
    terms_and_conditions = {
      {label = "The requesting officer affirms that all information provided in this request is accurate, complete, and based on credible sources or firsthand observations. Any intentional misrepresentation may result in legal consequences and potential disciplinary actions."},
      {label = "The details of this warrant request, including potential evidence and sources, shall remain confidential until the warrant is approved and executed. Unauthorized disclosure may compromise the investigation and legal proceedings."},
      {label = "Before submission to the judge, this request must be reviewed and endorsed by the District Attorney (DA) to ensure its legal validity and that it meets the standards for probable cause."},
      {label = "If the warrant is approved and signed by a judge, the requesting officer is responsible for its timely and lawful execution, adhering strictly to the scope and limitations set by the warrant."},
    },
    sign = ""
  },
  ["Search Warrant"] = {
    type = "create",
    restriction = {job = {enable = true, jobs = {
      ["lawyer"] = {5,6},
    }}, gang = {enable = false, gangs = {
      [""] = {0},
    }}, citizenid = {enable = false, id = {
      "",
    }}},
    title = "Search Warrant",
    logo = "https://cdn.discordapp.com/attachments/633974153388490753/1030999165485989888/1519800440060-removebg-preview.png",
    from = "UNITED STATES DISTRICT COURT",
    description = "Please fill out all required fields",
    disclaimer = "This warrant is based on information available at issuance. Adherence to its terms is mandatory. Non-compliance may lead to legal repercussions.",
    information = {
      { id = "i1", label = "Suspect's Name:", type = "text_input", placement = "(Suspect's Name)", required = "true", value = "" },
      { id = "i2", label = "Alias/Nickname:", type = "text_input", placement = "(Enter Alias or Nickname if any)", required = "true", value = "" },
      { id = "i3", label = "Occupation:", type = "text_input", placement = "(Enter Occupation)", required = "true", value = "" },
      { id = "i4", label = "Known Associates: ", type = "text_area", placement = "(Enter names of known associates or affiliations)", required = "true", value = "" },
    },
    extended_information = {
      { id = "e1", label = "Evidence", type = "text_area", placement = "(Enter Details of Evidence or Reason for Warrant)", required = "true", value = "" },
      { id = "e2", label = "Requesting officers Name", type = "text_area", placement = "(Requesting Officers Name))", required = "true", value = "" },
      { id = "e3", label = "Warrant Information", type = "text_area", placement = "(what are you looking to do/obtain from this warrant)", required = "true", value = "" },
      { id = "e4", label = "Location to be Searched", type = "text_area", placement = "(Adress, Description of location and Specific Areas to be searched)", required = "false", value = "" },
      { id = "e5", label = "Items to be Seized", type = "text_area", placement = "(List specific items or categories of items that are to be seized, e.g., Firearms, Electronic Devices, Documents related to the warrant)", required = "true", value = "" },
      { id = "e6", label = "Special Instructions", type = "text_area", placement = "(Any special instructions for executing the warrant, such as Warrant must be executed between 6 am and 10 pm, Notify local police department before execution, etc.)", required = "true", value = "" },
    },
    terms_and_conditions = {
      {label = "The search shall be limited to the areas and items specified in this warrant. Any deviation from the specified areas or items may render any evidence obtained inadmissible in court."},
      {label = "During the execution of this warrant, officers shall take all necessary precautions to ensure the safety and rights of individuals not named in the warrant. Any individuals present at the location during the execution of the warrant shall be treated with respect and dignity."},
      {label = "Upon completion of the search, a detailed inventory of all items seized shall be made. This inventory shall be attached to the warrant and returned to the issuing authority within a specified period, typically within 10 days."},
      {label = "This warrant must be executed within a specific time frame, typically within 30 days from the date of issuance. Any search or seizure conducted after this period may be deemed unlawful unless a valid extension has been granted by the issuing authority."},
    },
    sign = ""
  },
  ["Bill of Sale"] = {
    type = "create",
    restriction = {job = {enable = true, jobs = {
      ["pdm"] = {0,1,2,3,4},
    }}, gang = {enable = false, gangs = {
      [""] = {0},
    }}, citizenid = {enable = false, id = {
      "",
    }}},
    title = "Bill of Sale",
    logo = "https://cdn.discordapp.com/attachments/1155373776721158144/1168790464435081216/PDM_2.png?ex=65530bf1&is=654096f1&hm=9d714f7b04f935a26e4b196089162592ce2919dc549b047c183596525cbd578a&",
    from = "PREMIUM DELUX MOTORSPORT",
    description = "Sales Contract",
    disclaimer = "All Sales are Final",
    information = {
      { id = "i1", label = "Recipients Name", type = "text_input", placement = "(Recipients Name)", required = "true", value = "" },
      { id = "i2", label = "Vehicle:", type = "text_input", placement = "(Vehicle)", required = "true", value = "" },
      { id = "i3", label = "Sales Persons Name:", type = "text_input", placement = "(The name of the witness)", required = "true", value = "" },
      { id = "i4", label = "Sales Persons Title:", type = "text_input", placement = "(The title of the witness)", required = "true", value = "" },
    },
    extended_information = {
      { id = "e1", label = "Evidence", type = "text_area", placement = "(Enter Details of Evidence or Reason for Warrant)", required = "true", value = "" },
      { id = "e2", label = "Requesting officers Name", type = "text_area", placement = "(Requesting Officers Name))", required = "true", value = "" },
      { id = "e3", label = "Warrant Information", type = "text_area", placement = "(what are you looking to do/obtain from this warrant)", required = "true", value = "" },
      { id = "e4", label = "Location to be Searched", type = "text_area", placement = "(Adress, Description of location and Specific Areas to be searched)", required = "false", value = "" },
      { id = "e5", label = "Items to be Seized", type = "text_area", placement = "(List specific items or categories of items that are to be seized, e.g., Firearms, Electronic Devices, Documents related to the warrant)", required = "true", value = "" },
      { id = "e6", label = "Special Instructions", type = "text_area", placement = "(Any special instructions for executing the warrant, such as Warrant must be executed between 6 am and 10 pm, Notify local police department before execution, etc.)", required = "true", value = "" },
    },
    terms_and_conditions = {
      {label = "Tax, Tag and Title are included in final price"},
    },
    sign = ""
  },
}
