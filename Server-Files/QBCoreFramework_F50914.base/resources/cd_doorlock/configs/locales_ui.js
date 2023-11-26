window['locales'] = {
    main: {
        info: "Door management",
        version: "Doorlock 1.1.0",
        logo: `<svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 151.387 32.254"><path d="M0 16.023c0-5.71 3.7-9.517 9.274-9.517 4.707 0 8.2 2.838 8.548 6.956h-4.706a3.691 3.691 0 0 0-3.842-3.288c-2.975 0-4.429 2.32-4.429 5.849 0 3.945 1.73 5.918 4.36 5.918a3.738 3.738 0 0 0 3.911-3.322h4.706c-.484 4.153-3.495 6.991-8.617 6.991-5.641 0-9.2-3.842-9.2-9.587m18.575 0c0-5.779 3.737-9.517 9.379-9.517 5.605 0 9.344 3.738 9.344 9.517 0 5.814-3.739 9.587-9.344 9.587-5.642 0-9.379-3.773-9.379-9.587m13.877 0c0-3.737-1.8-5.849-4.5-5.849-2.907 0-4.534 2.354-4.534 5.849 0 3.808 1.8 5.918 4.534 5.918 2.906 0 4.5-2.354 4.5-5.918m5.603.069c0-5.744 2.976-9.586 8.029-9.586a6.6 6.6 0 0 1 5.434 2.63h.1C51.557 6.091 51.557 0 51.557 0h4.6v21.56a8.083 8.083 0 0 0 .623 3.53v.173h-4.773a4.651 4.651 0 0 1-.45-2.18h-.07a6.54 6.54 0 0 1-5.467 2.527c-4.811 0-7.96-3.531-7.96-9.518m13.739 0c0-3.771-1.765-5.918-4.43-5.918-2.8 0-4.464 2.354-4.464 5.918 0 3.669 1.765 5.849 4.43 5.849 2.872 0 4.464-2.319 4.464-5.849m6.19-.035c0-5.745 3.876-9.551 9.1-9.551 5.017 0 8.824 3.634 8.824 9.1 0 .45 0 .762-.034 1.489H62.835c0 3.183 1.9 4.844 4.5 4.844a3.688 3.688 0 0 0 3.841-2.56h4.533c-.485 3.634-4.152 6.229-8.479 6.229-5.467 0-9.24-4.118-9.24-9.552m13.255-1.938a3.941 3.941 0 0 0-4.152-3.945 4.03 4.03 0 0 0-4.223 3.945Zm5.187 4.915H80.9c0 1.938 1.488 3.149 3.564 3.149 1.973 0 3.116-.76 3.116-1.9 0-1.626-1.281-1.765-5.019-2.768-4.014-1.142-5.606-2.527-5.606-5.4 0-3.253 2.873-5.606 7.267-5.606 4.777 0 7.441 2.353 7.441 5.918H87.2c0-1.558-1.074-2.63-2.977-2.63-1.7 0-2.7.726-2.7 1.8 0 1.176.8 1.592 3.149 2.214 3.288.831 7.752 1.455 7.752 6.057 0 3.461-3.218 5.745-7.96 5.745-4.844 0-8.028-2.631-8.028-6.576M93.592 0h5.019v4.5h-5.019Zm.208 6.852h4.6v18.411h-4.6Zm6.92 19.104h4.6c.45 2.076 1.973 2.907 4.153 2.907 3.15 0 4.326-1.731 4.43-4.292l.1-2.561h-.139c-.761 1.592-3.218 2.63-5.607 2.63-4.844 0-8.063-3.668-8.063-9.136 0-5.4 3.219-9 8.133-9a6.1 6.1 0 0 1 5.3 2.63h.069l-.034-2.284h4.6v17.895c0 4.809-3.737 7.509-8.79 7.509-4.983 0-8.375-2.526-8.756-6.3m13.186-10.348c0-3.426-1.766-5.434-4.43-5.434-2.7 0-4.465 2.147-4.465 5.365 0 3.253 1.731 5.433 4.4 5.433 2.8 0 4.5-2.145 4.5-5.364m6.778-8.754h4.6v2.423h.068a6.489 6.489 0 0 1 5.364-2.769c4.672 0 6.749 3.115 6.749 7.371v11.386h-4.6V13.982c0-2.6-1.384-3.808-3.459-3.808-2.735 0-4.119 2.112-4.119 5.261v9.828h-4.6Zm19.202 14.027h11.5v4.384h-11.5z" style="fill:#fff"/></svg>`,
    
        alerts: {
            door_selected: ["Door", "successfully selected", "Door(s) successfully selected."],
            door_exists: "This door already exists - ",
            door_does_not_exist: "This door is not in the system. Please create one first.",
        },
    },
    camera: {
        move: "Mouse - Move",
        zoom: "Scroll - Zoom",
        reverse: "Reverse Camera - Middle mouse",
        exit: "Right click - Exit"
    },
    
    control: {
        search: "Search for doors",
        search_placeholder: "Door group or door name",
        search_by_name: "Search by name",
        search_by_group: "Search by group",
        found: ["Found", "result(s)"],
        
        number: "#",
        group: "Group",
        name: "Name",
        lock: "Lock",
        unlock: "Unlock",
        camera: "Camera",
        visit: "Visit",
        delete: "Delete",
        delete_group: "Delete group",

        previous: "Previous",
        next: "Next"
    },

    create: {
        alerts: {
            name_too_long: "The door name needs to be between 1 and 32 characters",
            name_out_of_scope: "The name includes illegal characters. (<strong>Allowed</strong> - Upper and lower case letters, numbers, <kbd>-</kbd>, <kbd>/</kbd>, <kbd>⎵</kbd>, <kbd>_</kbd>)",
            location_group_not_set: "You need to select a location group!",
            passcode_length_bad: "The length of the passcode can be from 0 to 8 numbers",
            passcode_out_of_scope: "The passcode can only have numbers",
            permissions_not_set: "For doors without a passcode you need to have at least one permission to set-up the door.",

            // Success
            door_updated: "Door successfully updated.",
            door_created: "Door successfully created.",
        },
        
        state_editing: "Editing",
        state_create: "Create a door",

        select_a_door: "Select a new door or pick one from the list",
        door_selection: "Door selection",
        door_single: "Single door",
        door_double: "Double door",
        door_garage: "Garage door",
        door_gate: "Gate",
        door_double_gate: "Double gate",
        door_edit: "Edit selected",

        button_update: "Update",
        button_submit: "Submit",
        button_delete: "Delete",
        button_cancel: "Cancel",
        button_clear: "Clear",

        all_doors: "All doors",
        location: "Location",

        copy: "Copy",
        paste: "Paste",

        form: {
            alerts: {
                location_group_has_doors: "Cannot remove a location group with doors attached to it!",
                location_group_exists: "This group already exists.",
                job_name_too_long: "The job/gang name needs to be between 1 and 32 characters",
                job_name_out_of_scope: "The job/gang name includes illegal characters. (<strong>Allowed</strong> - Upper and lower case letters)",
                job_grade_nan: "The job/gang grade needs to be a number!",
                job_grade_too_large: "The job/gang grade needs to be a number between 0 and 16!",
                
                identifier_too_long: "The identifier needs to be less than 64 characters"
            },
    
            helpers: {
                door_name: "The name which will identify the door",
                location_group: "A named group which contains doors from the same location. E.g MRPD",
                location_group_new: "Create new",
                location_group_select: "Select location group",
                location_group_none: "No groups",
                job: "The job/gang name (left), and the job/gang grade (right). E.g. police 0",
                identifier: "The identifier(s) of people which can access the door controls.",
                ace: "The ace identifier which will be allowed to access the door.",
                discord: "The discord role ID which will be allowed to access the door",
                sound: "The sound which will be played when a door is locked and unlocked.",
                sound_select: "Select the sound file",
                locked: "The default state of the door. Ticked = locked",
                lockpick: "Enables or disabled lockpicking. Ticket = enabled",
                secret: "If selected the door will not display a lock and remain hidden when approached.",
                camera: "Enables door camera usability.",
                passcode: "A passcode which will be used to unlock the door. If there is no passcode set the door will not require it.",
                distance: "The distance at which the door will become usable.",
                autolock: "The amount of time in seconds after which the door will automatically lock.",
                item: "The name of the item which will be allowed to open the door"
            },
    
            door_name: "Name",
            location_group: "Location group",
            permissions: "Permissions",
            job: ["Job/gang name", "Grade"],
            identifier: "Identifier",
            ace: "Ace",
            ace_placeholder: "doorlock.police",
            discord: "Discord",
            discord_placeholder: "779469416273281035",
            sound: "Sound",
            locked: "Locked",
            lockpick: "Lockpick",
            secret: "Secret",
            camera: "Camera",
            passcode: "Passcode",
            distance: "Distance",
            add: "Add",
            autolock: "Auto lock",
            item: "Item",
            item_placeholder: "Item name"
        },

        selection: {
            select: ["Press", "LMB", "to select a door"],
            cancel: ["Press", "RMB", "to cancel selection"],
            amount_selected: ["You have", "door(s) selected."],
        }
    },

    delete: {
        alerts: {
            success: "Successfully deleted"
        },
        notification: "This action will delete", // ... door name
        irreversible: "This action is irreversible!",
        are_you_sure: "Are you sure you want to delete this", // ... door / group
        yes: "Yes, I am sure!",
        no: "Cancel",

        type: ["door", "group"]
    },
    
    import: {
        select: "Select to import",
        select_helper: "Select a GABZ map to import its doors.",

        imported: "Imported",
        imported_helper: "Remove doors from a GABZ map for unused maps",  
        
        permissions: ["Default permissions", "When importing doors this job / grade will be used as a default.", "When importing doors this identifier will be used as a default."],
        
        
        job: "Job",
        grade: "Grade",

        identifier: "Identifier",

        no_permissions: "You need to add at least one permission in order to import doors."
    },

    navigation: {
        create_edit: "Create / Edit",
        control: "Control",
        import: "Import",
        settings: "Settings",
    },

    selector: {
        icon: `<i class="bi bi-eye-fill"></i>` // from https://icons.getbootstrap.com/
    },

    settings: {
        scale: "UI Scale",
        volume: "Sound volume"
    },

    permissions: {
        framework: "Job/gang",
        identifiers: "Identifier",
        aceperms: "Ace",
        discord: "Discord",
        passcode: "Passcode",
        items: "Items"
    }

}