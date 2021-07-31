INSERT INTO department (department_id, department_name, department_location)
VALUES (01, "CONTAINMENT SECTOR 1", "ANTARTICA"),
       (02, "CONTAINMENT SECTOR 2", "TIBET"),
       (03,"CONTAINMENT SECTOR 3", "BERMUDA"),
       (04,"CONTAINMENT SECTOR 4", "MOON"),
       (05,"CONTAINMENT SECTOR 5", "REDACTED"),
        (06,"RESEARCH & DEVELOPMENT" , "LONDON"),
        (07,"TRAINING - ADMINISTRATIVE", "LONDON"),
        (08,"TRAINING - COMBAT", "DALLAS"),
        (09,"F.E.A.R SQUADS", "REDACTED"),
        (10,"RECOVERY/ERASURE", "REDACTED"),
        (11,"PUBLIC RELATIONS", "NEW YORK"),
        (12,"ENGINEERING", "DALLAS"),
        (13,"INFO-WAR", "CALIFORNIA"),
        (14,"PSY-OP","NEW YORK"),
        (15,"ADMINISTRATION", "NEW YORK"),
        (16,"HUMAN RESOURCES - NA", "NEW YORK"),
        (17,"HUMAN RESOURCES - EU", "BERLIN"),
        (18,"HUMAN RESOURCES - ASIA", "HONG-KONG"),
        (19, "OCCULT REQUISITIONS", "BERLIN"),
        (20,"ARCHAEOLOGY", "EGYPT");

INSERT INTO employees (first_name, last_name, job_title, role_id, department_name, salaries, manager,active_status)
VALUES ("John", "Smith", "CEO", 01 , "ADMINISTRATION", 1000000000, true, "MIA"),
        ("La'isha","REDACTED", "Director", 02, "CONTAINMENT SECTOR 1", 750000, true, "ACTIVE"),
        ("Crane", "REDACTED","Director",02, "CONTAINMENT SECTOR 2" , 750000, true, "ACTIVE"),
        ("Xin", "REDACTED", "Director", 02, "CONTAINMENT SECTOR 3" , 750000, true, "MIA"),
        ("Danielle", "REDACTED", "Director", 02, "CONTAINMENT SECTOR ", 750000 , true ,"ACTIVE"),
        ("Trinity", "REDACTED", "Director", 02, "CONTAINMENT SECTOR 5", 750000 , true ,"ACTIVE"),
        ("Cain", "Bazilvuel", "Director", 02, "RESEARCH & DEVELOPMENT", 750000 , true ,"MIA"),
        ("Jane", "Carter", "Director", 02, "TRAINING - ADMINISTRATIVE", 750000 , true ,"ACTIVE"),
        ("Wilmur", 'Streisand', "Director", 02, "TRAINING - COMBAT" ,750000, true, "ACTIVE"),
        ("Samuel", "Rain", "Director", 02 , "F.E.A.R SQUADS", 750000, true, "REDACTED"),
        ("Helena", "Strauss", "Director", 02, "RECOVERY/ERASURE", 750000, true, "ACTIVE"),
        ("Jerome","Roberts", "Director", 02, "PUBLIC RELATIONS", 750000, true, "ACTIVE"),
        ("Appella", "REDACTED","Director",02, "ENGINEERING" , 750000, true, "ACTIVE"),
        ("Charles", "Chunchen", "Director", 02, "INFO-WAR" , 750000, true, "MIA"),
        ("Haley", "Shen", "Director", 02, "PSY-OP", 750000 , true ,"KIA"),
        ("Jerry", "Harper", "Director", 02, "ADMINISTRATION", 750000 , true ,"ACTIVE"),
        ("Sully", "Santos", "Director", 02, "HUMAN RESOURCES - NA", 750000 , true ,"ACTIVE"),
        ("Tracey", "Carter", "Director", 02, "HUMAN RESOURCES - EU", 750000 , true ,"ACTIVE"),
        ("Gerald", 'Streisand', "Director", 02, "HUMAN RESOURCES - ASIA" ,750000, true, "ACTIVE"),
        ("Viktor", "Strauss", "Director", 02, "OCCULT REQUISITIONS", 750000, true, "ACTIVE"),
        ("Indiana", "Jones", "Director", 02, "ARCHAEOLOGY", 750000, true, "MIA"),

        ("REDACTED","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 1", 200000, false, "ACTIVE"),
        ("Holdt","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 1", 200000, false, "ACTIVE"),
        ("Eric","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 1", 200000, false, "KIA"),
        ("Sherry","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 1", 200000, false, "ACTIVE"),
        ("Mohammed","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 1", 200000, false, "ACTIVE"),
        ("REDACTED","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 2", 200000, false, "ACTIVE"),
        ("REDACTED","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 2", 200000, false, "ACTIVE"),
        ("Borje","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 2", 200000, false, "ACTIVE"),
        ("Bozidar","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 2", 200000, false, "ACTIVE"),
        ("Shannon","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 2", 200000, false, "ACTIVE"),
        ("Bozidar","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 3", 200000, false, "REDACTED"),
        ("Neophytos","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 3", 200000, false, "REDACTED"),
        ("Selena","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 3", 200000, false, "REDACTED"),
        ("Freyja","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 3", 200000, false, "REDACTED"),
        ("Aviyah","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 3", 200000, false, "REDACTED"),
        ("Julijana","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 4", 200000, false, "REDACTED"),
        ("Vivis","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 4", 200000, false, "ACTIVE"),
        ("Karin","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 4", 200000, false, "KIA"),
        ("Priamos","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR4", 200000, false, "KIA"),
        ("Juter","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 4", 200000, false, "REDACTED"),
         ("Fito","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 4", 200000, false, "ACTIVE"),
        ("Jitendra","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 4", 200000, false, "REDACTED"),
        ("walery","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 4", 200000, false, "REDACTED"),
        ("Abisai","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 4", 200000, false, "REDACTED"),
        ("Marinela","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 4", 200000, false, "REDACTED"),
        ("REDACTED","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 5", 200000, false, "REDACTED"),
        ("REDACTED","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 5", 200000, false, "REDACTED"),
        ("REDACTED","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 5", 200000, false, "REDACTED"),
        ("REDACTED","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 5", 200000, false, "REDACTED"),
        ("REDACTED","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 5", 200000, false, "REDACTED"),
         ("REDACTED","REDACTED", "Containment Specialist", 03, "CONTAINMENT SECTOR 5", 200000, false, "REDACTED"),

        ("Roosje","Viss", "Researcher", 04, "RESEARCH & DEVELOPMENT", 200000, false, "ACTIVE"),
        ("Shel","Harper", "Researcher", 04, "RESEARCH & DEVELOPMENT", 200000, false, "ACTIVE"),
        ("Shiela","Smith", "Researcher", 04, "RESEARCH & DEVELOPMENT", 200000, false, "ACTIVE"),
        ("Cebrian","Lee", "Researcher", 04, "RESEARCH & DEVELOPMENT", 200000, false, "ACTIVE"),
         ("Jason","Ma", "Researcher", 04, "RESEARCH & DEVELOPMENT", 200000, false, "REDACTED"),

        ("Demetria","Belos", "Trainer", 05, "TRAINING - ADMINISTRATIVE", 200000, false, "ACTIVE"),
        ("Ankit","Sumiri", "Trainer", 05, "TRAINING - ADMINISTRATIVE", 200000, false, "ACTIVE"),
        ("Nicol","Lee", "Trainer", 05, "TRAINING - COMBAT", 200000, false, "ACTIVE"),

        ("Kolya","REDACTED", "F.E.A.R", 03, "F.E.A.R SQUADS", 0, false, "ACTIVE"),
        ("Trym","REDACTED", "F.E.A.R", 03, "F.E.A.R SQUADS", 0, false, "ACTIVE"),
        ("Costanzo","REDACTED", "F.E.A.R", 03, "F.E.A.R SQUADS", 0, false, "ACTIVE"),
        ("Lilith","REDACTED", "F.E.A.R", 03, "F.E.A.R SQUADS", 0, false, "MIA"),
        ("Bira","REDACTED", "F.E.A.R", 03, "F.E.A.R SQUADS", 0, false, "ACTIVE"),
        ("Valeri","REDACTED", "F.E.A.R", 03, "F.E.A.R SQUADS", 0, false, "ACTIVE"),
        ("Georgiy","REDACTED", "F.E.A.R", 03, "F.E.A.R SQUADS", 0, false, "KIA"),
        ("Mariann","REDACTED", "F.E.A.R", 03, "F.E.A.R SQUADS", 0, false, "KIA"),
         ("Artur","REDACTED", "F.E.A.R", 03, "F.E.A.R SQUADS", 0, false, "KIA"),
        ("Ian","REDACTED", "F.E.A.R", 03, "F.E.A.R SQUADS", 0, false, "ACTIVE"),
        ("Oleg","REDACTED", "F.E.A.R", 03, "F.E.A.R SQUADS", 0, false, "ACTIVE"),
        ("Aniruddah","REDACTED", "F.E.A.R", 03, "F.E.A.R SQUADS", 0, false, "ACTIVE"),
        ("Lanre","REDACTED", "F.E.A.R", 03, "F.E.A.R SQUADS", 0, false, "ACTIVE"),
        ("Hurst","REDACTED", "F.E.A.R", 03, "F.E.A.R SQUADS", 0, false, "ACTIVE"),

        ("Teresa","Ophe", "Investigator", 05, "RECOVERY/ERASURE", 60000, false, "ACTIVE"),
        ("Mirko","Ophe", "Investigator", 05, "RECOVERY/ERASURE", 60000, false, "ACTIVE"),
        ("Cher","Ishnikov", "Investigator", 05, "RECOVERY/ERASURE", 60000, false, "ACTIVE"),

        ("Echo","REDACTED", "PR Specialist", 05, "PUBLIC RELATIONS", 50000, false, "ACTIVE"),

        ("Gualberto","Roberts", "Engineer", 04, "ENGINEERING", 150000, false, "ACTIVE"),
        ("Eir","Falger", "Engineer", 04, "ENGINEERING", 150000, false, "ACTIVE"),
        ("Hitachi","Muramasa", "Engineer", 04, "ENGINEERING", 150000, false, "ACTIVE"),
        ("Zeynaeb", "kalashkov", "Engineer", 04, "ENGINEERING", 150000, false, "ACTIVE"),

        ("Florian",'Smith', "Netrunner", 5, "INFO-WAR", 0, false, "Active"),
        ("REDACTED",'REDACTED', "Netrunner", 5, "INFO-WAR", 0, false, "Active"),
        ("REDACTED",'REDACTED', "Netrunner", 5, "INFO-WAR", 0, false, "Active"),
        ("Gary","Lucard", "Netrunner", 5, "INFO-WAR", 0, false, "MIA"),

        ("Akhil",'Ishmael', "Interrogator", 5, "PSY-OP", 70000, false, "Active"),
        ("Gille",'De Rais', "Interrogator", 5, "PSY-OP", 70000, false, "Active"),

        ("Sabah","ud Din", "Processor", 05, "ADMINISTRATION", 45000, false, "ACTIVE"),
        ("Cathalan","Isha", "Processor", 05, "ADMINISTRATION", 45000, false, "ACTIVE"),
        ("Sabine","Smith", "Processor", 05, "ADMINISTRATION", 45000, false, "ACTIVE"),
        ("Kalus","Joran", "Processor", 05, "ADMINISTRATION", 45000, false, "ACTIVE"),
        ("Gleb","Wayne", "Processor", 05, "ADMINISTRATION", 45000, false, "ACTIVE"),
        ("Jude","Carter", "Processor", 05, "ADMINISTRATION", 45000, false, "ACTIVE"),
        ("Thando","Belle", "Secretary", 05, "ADMINISTRATION", 45000, false, "ACTIVE"),
        ("John","Lang", "Secretary", 05, "ADMINISTRATION", 45000, false, "ACTIVE"),
         ("Arthur","Ma", "Liason", 05, "ADMINISTRATION", 45000, false, "ACTIVE"),
        ("Jason","Yuri", "Liason", 05,"ADMINISTRATION", 45000, false, "ACTIVE"),
        ("Antoine","Payne", "Janitor", 05, "ADMINISTRATION", 70000, false, "ACTIVE"),
        ("Sarah","REDACTED", "Intern", 05, "ADMINISTRATION", 0, false, "ACTIVE"),
        ("Teag","REDACTED", "Intern", 05, "ADMINISTRATION", 0, false, "REDACTED"),
        ("Potesha","REDACTED", "Intern", 05, "ADMINISTRATION", 0, false, "ACTIVE"),

        ("Harry", "Cains", "HR-Specialist", 05, "HUMAN RESOURCES - NA", 45000, false, "Active"),
        ("Christian", "Douge", "HR-Specialist", 05, "HUMAN RESOURCES - EU", 45000, false, "Active"),
         ("Hjal", "Finneist", "HR-Specialist", 05, "HUMAN RESOURCES - ASIA", 45000, false, "Active"),

          ("Kesha", "Douglas", "Retriever", 03, "OCCULT REQUISITIONS", 75000, false, "Active"),
           ("Nauk", "Voldenvair", "Retriever", 03, "OCCULT REQUISITIONS", 75000, false, "Active"),
            ("Isolde", "Kains", "Retriever", 03, "OCCULT REQUISITIONS", 75000, false, "Active"),

            ("Sanjay", "Leis", "Archaeologist", 04,"ARCHAEOLOGY",75000,false,"REDACTED"),
            ("Vulferam", "Eissen", "Archaeologist", 04,"ARCHAEOLOGY",75000,false,"REDACTED"),
            ("Gabriel", "Lucas", "Archaeologist", 04,"ARCHAEOLOGY",75000,false,"REDACTED"),
            ("Kristina", "Lucas", "Archaeologist", 04,"ARCHAEOLOGY",75000,false,"REDACTED");

INSERT INTO roles (job_title, role_id, role_department, salaries)
VALUE ("CEO", 01 , "BIGBOSS", 100000000),
        ("Director", 02, "Management" , 750000),
        ("Containment-Specialist",03, "Combat", 200000),
        ("Researcher",04, "Scientist", 200000),
        ("Trainer",05, "Support", 200000),
        ("F.E.A.R", 06 , "Combat", 0 ),
        ("Investigator", 07, "Support", 60000),
        ('PR-Specialist', 08, "Support", 50000),
        ("Engineer",09, "Scientist", 200000),
        ("Netrunner", 10, "Support", 0),
        ("Interrogator", 11, "Support", 200000),
        ("Processor", 12, "Support", 45000),
        ("Secretary", 13, "Support", 45000),
        ("Intern", 14, "Support", 0),
        ("Liason", 15, "Support", 45000),
        ("HR-Specialist", 16, "Support", 45000),
        ("Retriever", 17, "Combat", 75000),
        ("Archaeologist", 18, "Scientist", 75000);