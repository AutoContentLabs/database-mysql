-- File: tags.sql
-- Purpose: Insert initial data into the tags table
-- Author: [Your Name]
-- Date: 2024-10-26
-- Version: 1.0
-- ===============================================
-- Script to Insert Initial Data into Tags Table
-- ===============================================
-- Insert initial data into the tags table
-- "The Universe and Natural World"
INSERT INTO
    tags (tag_name, tag_description)
VALUES
    (
        'cosmos',
        'The vast, seemingly infinite expanse that includes all of space and time.'
    ),
    (
        'space',
        'The physical universe beyond Earth, including planets, stars, and galaxies.'
    ),
    (
        'galaxies',
        'Massive systems composed of stars, gas, dust, and dark matter, bound together by gravity.'
    ),
    (
        'stars',
        'Luminous celestial bodies made of plasma, often forming in clusters within galaxies.'
    ),
    (
        'planets',
        'Large celestial bodies orbiting stars, capable of supporting life under certain conditions.'
    ),
    (
        'black_holes',
        'Regions of space where gravitational pull is so strong that nothing, not even light, can escape.'
    ),
    (
        'dark_matter',
        'A type of matter that does not emit light or energy, detectable only through its gravitational effects.'
    ),
    (
        'earth',
        'The third planet from the Sun and the only astronomical object known to harbor life.'
    ),
    (
        'geology',
        'The study of Earth’s solid material, including rocks, minerals, and the processes that shape them.'
    ),
    (
        'oceanography',
        'The study of the oceans, their composition, movement, and the life forms they support.'
    ),
    (
        'meteorology',
        'The science dealing with the atmosphere and its phenomena, including weather and climate.'
    ),
    (
        'ecology',
        'The study of interactions among organisms and their environment.'
    );

-- "Human Society and Culture"
INSERT INTO
    tags (tag_name, tag_description)
VALUES
    (
        'history',
        'The study of past events, particularly in human affairs.'
    ),
    (
        'ancient_history',
        'The study of historical events from the earliest recorded times to the early Middle Ages.'
    ),
    (
        'modern_history',
        'The study of historical events from the late 15th century to the present.'
    ),
    (
        'politics',
        'The activities associated with governance, including policy-making and administration.'
    ),
    (
        'governance',
        'The processes and systems by which organizations or countries are directed and controlled.'
    ),
    (
        'economics',
        'The social science that studies the production, distribution, and consumption of goods and services.'
    ),
    (
        'religion',
        'A system of beliefs, practices, and values often centered around spiritual experiences.'
    ),
    (
        'beliefs',
        'Convictions or acceptance that certain things are true or real.'
    ),
    (
        'law',
        'A system of rules created and enforced through social or governmental institutions.'
    ),
    (
        'justice',
        'The concept of moral rightness based on ethics, law, fairness, and equity.'
    ),
    (
        'sociology',
        'The study of social behavior, society, patterns of social relationships, and culture.'
    ),
    (
        'communication',
        'The process of exchanging information and ideas through various mediums.'
    ),
    (
        'cultural_studies',
        'An interdisciplinary field that examines cultural practices and their relation to power.'
    ),
    (
        'gender_studies',
        'An academic field that explores the role of gender in society and its impact on individuals.'
    );

-- "Technology and Innovation"
INSERT INTO
    tags (tag_name, tag_description)
VALUES
    (
        'AI',
        'Artificial intelligence; the simulation of human intelligence processes by machines.'
    ),
    (
        'machine_learning',
        'A subset of AI that involves the development of algorithms that allow computers to learn from data.'
    ),
    (
        'blockchain',
        'A decentralized digital ledger technology that records transactions across many computers.'
    ),
    (
        'quantum_computing',
        'The use of quantum-mechanical phenomena to perform operations on data.'
    ),
    (
        'robotics',
        'The branch of technology that deals with the design, construction, operation, and application of robots.'
    ),
    (
        'cybersecurity',
        'The practice of protecting systems, networks, and programs from digital attacks.'
    ),
    (
        'software_development',
        'The process of designing, coding, testing, and maintaining software applications.'
    ),
    (
        'biotechnology',
        'The use of living systems and organisms to develop or create products.'
    ),
    (
        'nanotechnology',
        'The manipulation of matter on an atomic, molecular, and supramolecular scale.'
    ),
    (
        'automation',
        'The use of technology to perform tasks with minimal human intervention.'
    ),
    (
        'data_science',
        'The field that uses scientific methods, processes, algorithms, and systems to extract knowledge from data.'
    ),
    (
        'IoT',
        'Internet of Things; the interconnection of computing devices embedded in everyday objects.'
    ),
    (
        'cloud_computing',
        'The delivery of computing services over the internet to offer faster innovation, flexible resources, and economies of scale.'
    );

-- "Human Needs and Activities"
INSERT INTO
    tags (tag_name, tag_description)
VALUES
    (
        'health',
        'The state of physical, mental, and social well-being.'
    ),
    (
        'medicine',
        'The science and practice of diagnosing, treating, and preventing illness.'
    ),
    (
        'nutrition',
        'The process of providing or obtaining the food necessary for health and growth.'
    ),
    (
        'fitness',
        'The condition of being physically fit and healthy.'
    ),
    (
        'exercise',
        'Physical activity that enhances or maintains physical fitness and overall health.'
    ),
    (
        'education',
        'The process of receiving or giving systematic instruction, especially at a school or university.'
    ),
    (
        'work',
        'The activity involving mental or physical effort done in order to achieve a result.'
    ),
    (
        'careers',
        'An individual’s journey through learning, work, and other aspects of life.'
    ),
    (
        'housing',
        'The provision of shelter or living accommodations.'
    ),
    (
        'transportation',
        'The movement of people or goods from one place to another.'
    ),
    (
        'food_security',
        'The state of having reliable access to a sufficient quantity of affordable, nutritious food.'
    ),
    (
        'personal_finance',
        'The management of an individual’s financial activities, including budgeting and investing.'
    ),
    (
        'childcare',
        'The care of children, typically provided by parents or caregivers.'
    );

-- "Creative Arts and Entertainment"
INSERT INTO
    tags (tag_name, tag_description)
VALUES
    (
        'literature',
        'Written works, especially those considered of superior or lasting artistic merit.'
    ),
    (
        'music',
        'The art of arranging sounds in time to produce a composition through elements of melody, harmony, rhythm, and timbre.'
    ),
    (
        'visual_arts',
        'Art forms that are primarily visual in nature, such as painting, sculpture, and photography.'
    ),
    (
        'theater',
        'The branch of the performing arts that focuses on the presentation of plays.'
    ),
    (
        'film',
        'The art of making motion pictures, combining storytelling with visual images.'
    ),
    (
        'video_games',
        'Electronic games that involve interaction with a user interface to generate visual feedback on a two- or three-dimensional display.'
    ),
    (
        'dance',
        'A form of art that involves movement of the body, often rhythmically and to music.'
    ),
    (
        'photography',
        'The art or practice of capturing images using light and a camera.'
    ),
    (
        'comics',
        'Narrative artwork that combines images and text, often presented in a sequence.'
    ),
    (
        'fashion',
        'The popular style in clothing, accessories, and behavior.'
    );

-- "Human Interaction and Social Structure"
INSERT INTO
    tags (tag_name, tag_description)
VALUES
    (
        'psychology',
        'The scientific study of the mind and behavior.'
    ),
    (
        'anthropology',
        'The study of humans, human behavior, and societies, both past and present.'
    ),
    (
        'political_science',
        'The study of politics, government systems, and political behavior.'
    ),
    (
        'globalization',
        'The process by which businesses or other organizations develop international influence.'
    ),
    (
        'leisure',
        'Free time when one is not working or attending to other duties.'
    ),
    (
        'outdoor_activities',
        'Recreational activities that take place outside, typically in nature.'
    ),
    (
        'adventure',
        'Engaging in risky or exciting experiences, often involving exploration.'
    );

-- "Leisure and Recreation"
INSERT INTO
    tags (tag_name, tag_description)
VALUES
    (
        'sports',
        'Physical activities that involve competition and skill, often played by teams.'
    ),
    (
        'travel',
        'The movement of people between distant geographical locations.'
    ),
    (
        'hobbies',
        'Activities done for pleasure and relaxation during free time.'
    ),
    (
        'gaming',
        'The act of playing video games for entertainment or competition.'
    ),
    (
        'gardening',
        'The practice of growing and cultivating plants as part of horticulture.'
    ),
    (
        'collecting',
        'The hobby of acquiring items of a particular type and maintaining them in a collection.'
    ),
    (
        'camping',
        'An outdoor activity involving staying overnight in a tent or other temporary shelter.'
    ),
    (
        'fishing',
        'The activity of catching fish for food, sport, or leisure.'
    ),
    (
        'amateur_sports',
        'Sports activities engaged in by non-professionals for enjoyment rather than financial gain.'
    );

-- "Man-made Constructs"
INSERT INTO
    tags (tag_name, tag_description)
VALUES
    (
        'architecture',
        'The art and science of designing buildings and other physical structures.'
    ),
    (
        'urban_planning',
        'The process of designing and regulating land use in urban areas.'
    ),
    (
        'civil_engineering',
        'The branch of engineering concerned with the design and construction of public works.'
    ),
    (
        'bridges',
        'Structures built to span physical obstacles, such as water or roads, for the purpose of providing passage.'
    ),
    (
        'tunnels',
        'Underground passageways created for transportation or utility purposes.'
    ),
    (
        'skyscrapers',
        'Tall, continuously habitable buildings of over 40 floors.'
    ),
    (
        'energy_systems',
        'Systems that produce, transmit, and consume energy in various forms.'
    ),
    (
        'water_management',
        'The activity of planning, developing, distributing, and managing the optimum use of water resources.'
    ),
    (
        'sustainable_buildings',
        'Structures designed to minimize environmental impact and maximize energy efficiency.'
    );

-- "Environment and Sustainability"
INSERT INTO
    tags (tag_name, tag_description)
VALUES
    (
        'climate_change',
        'Long-term shifts in temperatures and weather patterns, mainly caused by human activities.'
    ),
    (
        'renewable_energy',
        'Energy from sources that are naturally replenished, such as solar and wind.'
    ),
    (
        'conservation',
        'The responsible management of natural resources to prevent exploitation and destruction.'
    ),
    (
        'pollution',
        'The introduction of harmful substances or products into the environment.'
    ),
    (
        'waste_management',
        'The collection, transport, processing, and disposal of waste materials.'
    ),
    (
        'biodiversity',
        'The variety of life in the world or in a particular habitat or ecosystem.'
    ),
    (
        'deforestation',
        'The clearing of trees, transforming a forest into cleared land.'
    ),
    (
        'environmental_policy',
        'The commitment of an organization or government to improve environmental quality.'
    );

-- "Data and Information Systems"
INSERT INTO
    tags (tag_name, tag_description)
VALUES
    (
        'big_data',
        'Large and complex data sets that traditional data processing applications cannot handle.'
    ),
    (
        'database_management',
        'The software and practices involved in managing databases.'
    ),
    (
        'data_privacy',
        'The handling and protection of personal data collected by organizations.'
    ),
    (
        'data_visualization',
        'The graphical representation of information and data.'
    ),
    (
        'network_systems',
        'Interconnected systems that allow data exchange and communication.'
    ),
    (
        'distributed_systems',
        'Systems that consist of multiple components located on different networked computers.'
    );

-- ===============================================
-- Note:
-- Ensure the 'tags' table exists in your database
-- before executing this script.
-- ===============================================