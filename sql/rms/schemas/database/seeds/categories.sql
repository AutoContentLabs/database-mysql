-- File: categories.sql
-- Purpose: It was created to form the basis for use in the steps of data collection, 
-- processing, transformation, recording and analysis.
-- =========================================================

-- Top-level categories
INSERT INTO categories (parent_id, title, category_name, category_description)
VALUES
    (NULL, 'The Universe and Natural World', 'The Universe and Natural World', 'Exploration of cosmos, planets, and the Earth.'),
    (NULL, 'Human Society and Culture', 'Human Society and Culture', 'Study of human interactions, history, and social structures.'),
    (NULL, 'Human Needs and Activities', 'Human Needs and Activities', 'Essential activities and needs of human life.'),
    (NULL, 'Human Interaction and Social Structure', 'Human Interaction and Social Structure', 'Understanding human behavior and social systems.'),
    (NULL, 'Technology and Innovation', 'Technology and Innovation', 'Advancements in technology and its impact on society.'),
    (NULL, 'Creative Arts and Entertainment', 'Creative Arts and Entertainment', 'Expressions of creativity through various forms of art and entertainment.'),   
    (NULL, 'Leisure and Recreation', 'Leisure and Recreation', 'Activities for enjoyment and relaxation.'),
    (NULL, 'Man-made Constructs', 'Man-made Constructs', 'Structures and systems created by humans.'),
    (NULL, 'Environment and Sustainability', 'Environment and Sustainability', 'Efforts to protect and sustain the natural environment.'),
    (NULL, 'Learning and Education', 'Learning and Education', 'Structured education and self-learning topics.');


-- "The Universe and Natural World"
INSERT INTO categories (parent_id, title, category_name, category_description)
VALUES
    -- Cosmos and Astronomy
    ((SELECT category_id FROM categories WHERE category_name='The Universe and Natural World'), 'Cosmology', 'Cosmology', 'Study of the origin, evolution, and structure of the universe.'),
    ((SELECT category_id FROM categories WHERE category_name='The Universe and Natural World'), 'Astronomy', 'Astronomy', 'Observation and study of celestial objects and space.'),
    ((SELECT category_id FROM categories WHERE category_name='The Universe and Natural World'), 'Big Bang Theory', 'Big Bang Theory', 'Theoretical study of the universes origin.'),
    ((SELECT category_id FROM categories WHERE category_name='The Universe and Natural World'), 'Exoplanets', 'Exoplanets', 'Study of planets outside our Solar System.'),
    ((SELECT category_id FROM categories WHERE category_name='The Universe and Natural World'), 'Astrobiology', 'Astrobiology', 'Exploration of the possibility of life in the universe.'),
    ((SELECT category_id FROM categories WHERE category_name='The Universe and Natural World'), 'Astrophysics', 'Astrophysics', 'Study of the physical properties of celestial objects and phenomena.'),
    ((SELECT category_id FROM categories WHERE category_name='The Universe and Natural World'), 'Black Holes', 'Black Holes', 'Understanding black holes and their properties.'),
    ((SELECT category_id FROM categories WHERE category_name='The Universe and Natural World'), 'Dark Matter', 'Dark Matter', 'Study of dark matter and its impact on the universe.'),
    
    -- Earth Sciences
    ((SELECT category_id FROM categories WHERE category_name='The Universe and Natural World'), 'Earth Sciences', 'Earth Sciences', 'Comprehensive study of Earth and its processes.'),
    ((SELECT category_id FROM categories WHERE category_name='Earth Sciences'), 'Geology', 'Geology', 'Science of Earth’s structure, materials, and processes.'),
    ((SELECT category_id FROM categories WHERE category_name='Earth Sciences'), 'Meteorology', 'Meteorology', 'Study of the atmosphere and weather patterns.'),
    ((SELECT category_id FROM categories WHERE category_name='Earth Sciences'), 'Oceanography', 'Oceanography', 'Study of oceans and marine ecosystems.'),
    ((SELECT category_id FROM categories WHERE category_name='Earth Sciences'), 'Hydrology', 'Hydrology', 'Study of the Earth’s water cycle and resources.'),
    ((SELECT category_id FROM categories WHERE category_name='Earth Sciences'), 'Atmospheric Science', 'Atmospheric Science', 'Exploration of the Earths atmospheric layers and processes.'),
    
    -- Life Sciences
    ((SELECT category_id FROM categories WHERE category_name='The Universe and Natural World'), 'Life Sciences', 'Life Sciences', 'Study of biological organisms and ecosystems.'),
    ((SELECT category_id FROM categories WHERE category_name='Life Sciences'), 'Botany', 'Botany', 'Study of plants and their ecological importance.'),
    ((SELECT category_id FROM categories WHERE category_name='Life Sciences'), 'Zoology', 'Zoology', 'Study of animals and animal life.'),
    ((SELECT category_id FROM categories WHERE category_name='Life Sciences'), 'Microbiology', 'Microbiology', 'Study of microorganisms and their impacts on ecosystems.'),
    ((SELECT category_id FROM categories WHERE category_name='Life Sciences'), 'Evolutionary Biology', 'Evolutionary Biology', 'Study of evolutionary processes and adaptations.'),

    -- Environmental Concerns
    ((SELECT category_id FROM categories WHERE category_name='The Universe and Natural World'), 'Climate Change', 'Climate Change', 'Research on global warming and climate shifts.'),
    ((SELECT category_id FROM categories WHERE category_name='The Universe and Natural World'), 'Renewable Energy Sources', 'Renewable Energy Sources', 'Study of sustainable and eco-friendly energy solutions.');


-- "Human Society and Culture"
INSERT INTO categories (parent_id, title, category_name, category_description)
VALUES
    -- Anthropology and Sociology
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Anthropology', 'Anthropology', 'Study of human societies, cultures, and their development.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Sociology', 'Sociology', 'Analysis of social behavior, organization, and structures.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Archaeology', 'Archaeology', 'Study of human history and prehistory through excavations and artifacts.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Cultural Studies', 'Cultural Studies', 'Exploration of cultures and cultural practices.'),
    
    -- History and Civilization
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'World History', 'World History', 'Comprehensive study of global historical events and civilizations.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Ancient Civilizations', 'Ancient Civilizations', 'Study of ancient societies like Egypt, Mesopotamia, and Greece.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Modern History', 'Modern History', 'Examination of events from the 16th century to the present.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Medieval History', 'Medieval History', 'Exploration of historical events and societies during the Middle Ages.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Colonialism', 'Colonialism', 'Study of colonial expansion and its effects on societies.'),
    
    -- Cultural Diversity and Global Studies
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Globalization', 'Globalization', 'Study of increasing global interconnectedness and its impacts.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Cultural Identity', 'Cultural Identity', 'Exploration of the factors that shape individual and collective identity.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Multiculturalism', 'Multiculturalism', 'Study of diverse cultures coexisting in societies.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Gender Studies', 'Gender Studies', 'Analysis of gender roles, relations, and identities.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Race and Ethnicity', 'Race and Ethnicity', 'Exploration of race, ethnicity, and related social dynamics.'),
    
    -- Philosophy and Religion
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Philosophy', 'Philosophy', 'Study of fundamental questions about existence, knowledge, and ethics.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Ethics and Morality', 'Ethics and Morality', 'Exploration of moral principles and value systems.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Religious Studies', 'Religious Studies', 'Analysis of religions, beliefs, and spiritual practices.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Mythology', 'Mythology', 'Study of myths, legends, and folklore from different cultures.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Political Philosophy', 'Political Philosophy', 'Study of concepts like justice, liberty, and governance.'),

    -- Social Issues and Movements
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Human Rights', 'Human Rights', 'Examination of the rights and freedoms entitled to all humans.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Social Justice', 'Social Justice', 'Advocacy and analysis of equal rights and opportunities.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Activism and Advocacy', 'Activism and Advocacy', 'Efforts to promote, impede, or direct social, political, and environmental reform.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Environmental Justice', 'Environmental Justice', 'Focus on fair treatment of all people regarding environmental policies.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Society and Culture'), 'Public Policy', 'Public Policy', 'Study of governmental policies and their impact on society.');

-- "Human Needs and Activities"
INSERT INTO categories (parent_id, title, category_name, category_description)
VALUES
    -- Basic Necessities
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Food and Nutrition', 'Food and Nutrition', 'Study of food sources, nutrition, and dietetics.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Shelter and Housing', 'Shelter and Housing', 'Exploration of housing, architecture, and shelter as a basic human need.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Clothing and Apparel', 'Clothing and Apparel', 'Study of clothing, fashion, and cultural significance of apparel.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Healthcare and Wellness', 'Healthcare and Wellness', 'Focus on healthcare systems, medical practices, and personal wellness.'),

    -- Physical and Mental Health
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Physical Fitness', 'Physical Fitness', 'Promotion of physical health through exercise and active living.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Mental Health', 'Mental Health', 'Study and practices related to psychological well-being.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Sleep and Rest', 'Sleep and Rest', 'Importance of sleep and rest for health and wellness.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Stress Management', 'Stress Management', 'Techniques and practices for managing stress and improving mental health.'),

    -- Financial and Economic Needs
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Employment and Careers', 'Employment and Careers', 'Exploration of job markets, career paths, and employment trends.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Personal Finance', 'Personal Finance', 'Study of personal finance management, budgeting, and investment.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Wealth and Resource Management', 'Wealth and Resource Management', 'Approaches to managing wealth and resources efficiently.'),

    -- Education and Skill Development
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Formal Education', 'Formal Education', 'Traditional educational systems and institutions.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Self-Improvement', 'Self-Improvement', 'Efforts for personal development, learning, and skill enhancement.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Professional Training', 'Professional Training', 'Specialized training and vocational education for career growth.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Literacy and Numeracy', 'Literacy and Numeracy', 'Basic educational skills necessary for daily life and professional development.'),

    -- Social and Interpersonal Needs
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Relationships', 'Relationships', 'Importance and dynamics of personal relationships and family.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Community Involvement', 'Community Involvement', 'Ways to engage with and contribute to local communities.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Recreation and Leisure', 'Recreation and Leisure', 'Activities for relaxation and enjoyment, essential for mental well-being.'),

    -- Safety and Security
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Personal Safety', 'Personal Safety', 'Strategies and measures to ensure personal safety and security.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Emergency Preparedness', 'Emergency Preparedness', 'Planning and preparation for emergencies and unexpected events.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Needs and Activities'), 'Legal Protection', 'Legal Protection', 'Understanding of legal rights and systems for personal security.');

-- "Human Interaction and Social Structure"
INSERT INTO categories (parent_id, title, category_name, category_description)
VALUES
    -- Social Institutions
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Family Structure', 'Family Structure', 'Exploration of family dynamics, roles, and societal impact.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Education Systems', 'Education Systems', 'Study of educational institutions and their impact on social structure.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Political Systems', 'Political Systems', 'Analysis of governance structures and political ideologies.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Economic Systems', 'Economic Systems', 'Understanding different economic models and their influence on society.'),

    -- Social Dynamics and Relationships
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Socialization', 'Socialization', 'Processes and mechanisms of social learning and behavior.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Group Behavior', 'Group Behavior', 'Study of interactions within groups and group dynamics.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Communication Styles', 'Communication Styles', 'Different modes and styles of human communication.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Cultural Norms and Values', 'Cultural Norms and Values', 'Exploration of shared beliefs, customs, and societal norms.'),

    -- Community and Identity
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Community Development', 'Community Development', 'Efforts and strategies to build and enhance communities.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Social Identity', 'Social Identity', 'How individuals and groups perceive themselves within a society.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Gender and Sexuality', 'Gender and Sexuality', 'Study of gender roles, identities, and sexual orientation.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Ethnicity and Race', 'Ethnicity and Race', 'Understanding race, ethnicity, and their societal impacts.'),

    -- Social Challenges and Change
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Social Inequality', 'Social Inequality', 'Issues related to disparity in wealth, opportunities, and social status.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Human Rights and Justice', 'Human Rights and Justice', 'Focus on human rights, legal justice, and equality.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Social Movements', 'Social Movements', 'Analysis of movements advocating for social change and justice.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Globalization', 'Globalization', 'Impact of global interconnectedness on local societies.'),

    -- Sociology and Psychology
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Sociology', 'Sociology', 'Study of social behavior, institutions, and society as a whole.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Psychology', 'Psychology', 'Understanding human behavior, thoughts, and emotions within social contexts.'),
    ((SELECT category_id FROM categories WHERE category_name='Human Interaction and Social Structure'), 'Social Psychology', 'Social Psychology', 'Study of how individuals influence and are influenced by social environments.');

-- "Technology and Innovation"
INSERT INTO categories (parent_id, title, category_name, category_description)
VALUES
    -- General Technology
    ((SELECT category_id FROM categories WHERE category_name='Technology and Innovation'), 'Emerging Technologies', 'Emerging Technologies', 'Exploration of new and innovative technologies on the horizon.'),
    ((SELECT category_id FROM categories WHERE category_name='Technology and Innovation'), 'Information Technology', 'Information Technology', 'Study of computer systems, software, and data management.'),
    ((SELECT category_id FROM categories WHERE category_name='Technology and Innovation'), 'Artificial Intelligence', 'Artificial Intelligence', 'Understanding AI technologies and their applications in various fields.'),
    ((SELECT category_id FROM categories WHERE category_name='Technology and Innovation'), 'Blockchain Technology', 'Blockchain Technology', 'Analysis of blockchain applications and its impact on industries.'),

    -- Communication and Connectivity
    ((SELECT category_id FROM categories WHERE category_name='Technology and Innovation'), 'Telecommunications', 'Telecommunications', 'Study of communication systems and technologies.'),
    ((SELECT category_id FROM categories WHERE category_name='Technology and Innovation'), 'Internet of Things (IoT)', 'Internet of Things (IoT)', 'Understanding interconnected devices and their applications.'),
    ((SELECT category_id FROM categories WHERE category_name='Technology and Innovation'), '5G Technology', '5G Technology', 'Impact of 5G technology on communication and connectivity.'),

    -- Engineering and Design
    ((SELECT category_id FROM categories WHERE category_name='Technology and Innovation'), 'Engineering Innovations', 'Engineering Innovations', 'Advancements in engineering practices and technologies.'),
    ((SELECT category_id FROM categories WHERE category_name='Technology and Innovation'), 'Product Design', 'Product Design', 'Processes and methodologies in creating innovative products.'),
    ((SELECT category_id FROM categories WHERE category_name='Technology and Innovation'), 'Sustainable Technology', 'Sustainable Technology', 'Technologies that promote environmental sustainability and efficiency.'),

    -- Industry-Specific Technologies
    ((SELECT category_id FROM categories WHERE category_name='Technology and Innovation'), 'Healthcare Technology', 'Healthcare Technology', 'Technological advancements in healthcare and medical devices.'),
    ((SELECT category_id FROM categories WHERE category_name='Technology and Innovation'), 'Financial Technology (FinTech)', 'Financial Technology (FinTech)', 'Innovations in financial services and technology.'),
    ((SELECT category_id FROM categories WHERE category_name='Technology and Innovation'), 'Manufacturing Technology', 'Manufacturing Technology', 'Advancements in manufacturing processes and automation.'),

    -- Future Trends and Ethical Considerations
    ((SELECT category_id FROM categories WHERE category_name='Technology and Innovation'), 'Future Trends', 'Future Trends', 'Predictions and analysis of future technological advancements.'),
    ((SELECT category_id FROM categories WHERE category_name='Technology and Innovation'), 'Ethics in Technology', 'Ethics in Technology', 'Exploration of ethical issues related to technology and innovation.'),
    ((SELECT category_id FROM categories WHERE category_name='Technology and Innovation'), 'Digital Transformation', 'Digital Transformation', 'Impact of technology on business processes and culture.');

-- "Creative Arts and Entertainment"
INSERT INTO categories (parent_id, title, category_name, category_description)
VALUES
    -- General Arts
    ((SELECT category_id FROM categories WHERE category_name='Creative Arts and Entertainment'), 'Visual Arts', 'Visual Arts', 'Forms of art that create visual works, such as painting and sculpture.'),
    ((SELECT category_id FROM categories WHERE category_name='Creative Arts and Entertainment'), 'Performing Arts', 'Performing Arts', 'Art forms such as theater, dance, and music performed live.'),
    ((SELECT category_id FROM categories WHERE category_name='Creative Arts and Entertainment'), 'Literary Arts', 'Literary Arts', 'Study of literature, poetry, and creative writing.'),
    
    -- Entertainment
    ((SELECT category_id FROM categories WHERE category_name='Creative Arts and Entertainment'), 'Film and Cinema', 'Film and Cinema', 'Exploration of film-making and the impact of cinema on society.'),
    ((SELECT category_id FROM categories WHERE category_name='Creative Arts and Entertainment'), 'Music', 'Music', 'Study of music genres, theory, and production.'),
    ((SELECT category_id FROM categories WHERE category_name='Creative Arts and Entertainment'), 'Theater', 'Theater', 'Exploration of theatrical performances and dramatic arts.'),
    ((SELECT category_id FROM categories WHERE category_name='Creative Arts and Entertainment'), 'Dance', 'Dance', 'Study of various dance forms and their cultural significance.'),
    
    -- Digital Arts
    ((SELECT category_id FROM categories WHERE category_name='Creative Arts and Entertainment'), 'Digital Art', 'Digital Art', 'Art created or presented using digital technology.'),
    ((SELECT category_id FROM categories WHERE category_name='Creative Arts and Entertainment'), 'Graphic Design', 'Graphic Design', 'Study of visual communication and design principles.'),
    ((SELECT category_id FROM categories WHERE category_name='Creative Arts and Entertainment'), 'Animation', 'Animation', 'Techniques of creating moving images and animated films.'),
    
    -- Cultural and Historical Aspects
    ((SELECT category_id FROM categories WHERE category_name='Creative Arts and Entertainment'), 'Cultural Arts', 'Cultural Arts', 'Study of arts as expressions of cultural identity.'),
    ((SELECT category_id FROM categories WHERE category_name='Creative Arts and Entertainment'), 'Art History', 'Art History', 'Exploration of historical developments in the arts.'),
    ((SELECT category_id FROM categories WHERE category_name='Creative Arts and Entertainment'), 'Art Criticism', 'Art Criticism', 'Analysis and evaluation of artistic works.');


-- "Leisure and Recreation"
INSERT INTO categories (parent_id, title, category_name, category_description)
VALUES
    -- Genel Boş Zaman Aktiviteleri
    ((SELECT category_id FROM categories WHERE category_name='Leisure and Recreation'), 'Outdoor Activities', 'Outdoor Activities', 'Activities that take place in natural environments, such as hiking and camping.'),
    ((SELECT category_id FROM categories WHERE category_name='Leisure and Recreation'), 'Sports and Games', 'Sports and Games', 'Various organized games and sports activities.'),
    ((SELECT category_id FROM categories WHERE category_name='Leisure and Recreation'), 'Travel and Tourism', 'Travel and Tourism', 'Exploration of travel destinations and tourism experiences.'),
    
    -- Hobi ve Eğlence
    ((SELECT category_id FROM categories WHERE category_name='Leisure and Recreation'), 'Arts and Crafts', 'Arts and Crafts', 'Creative activities involving making things by hand.'),
    ((SELECT category_id FROM categories WHERE category_name='Leisure and Recreation'), 'Gardening', 'Gardening', 'Cultivation of plants for enjoyment and aesthetics.'),
    ((SELECT category_id FROM categories WHERE category_name='Leisure and Recreation'), 'Reading and Literature', 'Reading and Literature', 'Exploration of books, literature, and the joy of reading.'),
    
    -- Eğlence Faaliyetleri
    ((SELECT category_id FROM categories WHERE category_name='Leisure and Recreation'), 'Entertainment and Events', 'Entertainment and Events', 'Attending concerts, festivals, and other social gatherings.'),
    ((SELECT category_id FROM categories WHERE category_name='Leisure and Recreation'), 'Fitness and Wellness', 'Fitness and Wellness', 'Activities promoting physical health and mental well-being.'),
    
    -- Aile ve Sosyal Aktiviteler
    ((SELECT category_id FROM categories WHERE category_name='Leisure and Recreation'), 'Family Activities', 'Family Activities', 'Engaging in activities that strengthen family bonds.'),
    ((SELECT category_id FROM categories WHERE category_name='Leisure and Recreation'), 'Social Clubs and Groups', 'Social Clubs and Groups', 'Participation in community and social organizations.');

-- "Man-made Constructs"
INSERT INTO categories (parent_id, title, category_name, category_description)
VALUES
    -- Genel Yapılar
    ((SELECT category_id FROM categories WHERE category_name='Man-made Constructs'), 'Architecture', 'Architecture', 'The art and science of designing and constructing buildings and other structures.'),
    ((SELECT category_id FROM categories WHERE category_name='Man-made Constructs'), 'Infrastructure', 'Infrastructure', 'The basic physical systems and structures needed for the operation of a society.'),
    
    -- Ulaşım ve İletişim
    ((SELECT category_id FROM categories WHERE category_name='Man-made Constructs'), 'Transportation Systems', 'Transportation Systems', 'Systems and methods for the movement of people and goods.'),
    ((SELECT category_id FROM categories WHERE category_name='Man-made Constructs'), 'Communication Networks', 'Communication Networks', 'Systems for communication, including telecommunication and the internet.'),
    
    -- Teknolojik Yapılar
    ((SELECT category_id FROM categories WHERE category_name='Man-made Constructs'), 'Manufacturing and Industry', 'Manufacturing and Industry', 'Processes and structures related to the production of goods.'),
    ((SELECT category_id FROM categories WHERE category_name='Man-made Constructs'), 'Urban Development', 'Urban Development', 'Planning and development of urban areas and cities.'),
    
    -- Sanayi ve Altyapı
    ((SELECT category_id FROM categories WHERE category_name='Man-made Constructs'), 'Energy Systems', 'Energy Systems', 'Systems for producing, distributing, and consuming energy.'),
    ((SELECT category_id FROM categories WHERE category_name='Man-made Constructs'), 'Waste Management', 'Waste Management', 'Systems for managing waste and recycling.'),
    
    -- Ekonomik Yapılar
    ((SELECT category_id FROM categories WHERE category_name='Man-made Constructs'), 'Financial Institutions', 'Financial Institutions', 'Organizations that provide financial services to individuals and businesses.'),
    ((SELECT category_id FROM categories WHERE category_name='Man-made Constructs'), 'Legal Systems', 'Legal Systems', 'Frameworks and institutions for law and governance.');


-- "Environment and Sustainability"
INSERT INTO categories (parent_id, title, category_name, category_description)
VALUES
    -- Genel Çevre
    ((SELECT category_id FROM categories WHERE category_name='Environment and Sustainability'), 'Environmental Science', 'Environmental Science', 'Study of the interactions between the physical, chemical, and biological components of the environment.'),
    
    -- Ekosistemler
    ((SELECT category_id FROM categories WHERE category_name='Environment and Sustainability'), 'Ecosystem Management', 'Ecosystem Management', 'Sustainable management of ecosystems to maintain biodiversity and ecosystem services.'),
    
    -- İklim Değişikliği
    ((SELECT category_id FROM categories WHERE category_name='Environment and Sustainability'), 'Climate Change', 'Climate Change', 'Study of climate variations, their causes, and impacts on the environment and society.'),
    
    -- Sürdürülebilir Enerji
    ((SELECT category_id FROM categories WHERE category_name='Environment and Sustainability'), 'Sustainable Energy', 'Sustainable Energy', 'Energy sources that are renewable and have minimal impact on the environment.'),
    
    -- Atık Yönetimi
    ((SELECT category_id FROM categories WHERE category_name='Environment and Sustainability'), 'Waste Management', 'Waste Management', 'Processes for managing waste materials and promoting recycling.'),
    
    -- Koruma ve Biyolojik Çeşitlilik
    ((SELECT category_id FROM categories WHERE category_name='Environment and Sustainability'), 'Conservation Biology', 'Conservation Biology', 'Study of the preservation of biodiversity and the management of natural resources.'),
    
    -- Sürdürülebilir Tarım
    ((SELECT category_id FROM categories WHERE category_name='Environment and Sustainability'), 'Sustainable Agriculture', 'Sustainable Agriculture', 'Farming practices that maintain the health of the environment and ecosystems.'),
    
    -- Su Yönetimi
    ((SELECT category_id FROM categories WHERE category_name='Environment and Sustainability'), 'Water Resource Management', 'Water Resource Management', 'Management of water resources to ensure sustainability and accessibility.'),
    
    -- Çevresel Politikalar
    ((SELECT category_id FROM categories WHERE category_name='Environment and Sustainability'), 'Environmental Policies', 'Environmental Policies', 'Regulations and policies aimed at protecting the environment and promoting sustainability.');

-- "Learning and Education"
INSERT INTO categories (parent_id, title, category_name, category_description)
VALUES
    -- Eğitim Yöntemleri
    ((SELECT category_id FROM categories WHERE category_name='Learning and Education'), 'Teaching Methods', 'Teaching Methods', 'Various pedagogical approaches and techniques used in education.'),
    
    -- Eğitim Teknolojisi
    ((SELECT category_id FROM categories WHERE category_name='Learning and Education'), 'Educational Technology', 'Educational Technology', 'Use of technology to enhance teaching and learning processes.'),
    
    -- Ömür Boyu Öğrenme
    ((SELECT category_id FROM categories WHERE category_name='Learning and Education'), 'Lifelong Learning', 'Lifelong Learning', 'Continuous, self-motivated pursuit of knowledge for personal or professional development.'),
    
    -- Özel Eğitim
    ((SELECT category_id FROM categories WHERE category_name='Learning and Education'), 'Special Education', 'Special Education', 'Education tailored to meet the needs of students with disabilities.'),
    
    -- Eğitim Politikası
    ((SELECT category_id FROM categories WHERE category_name='Learning and Education'), 'Education Policy', 'Education Policy', 'Guidelines and regulations governing educational systems and institutions.'),
    
    -- Yüksek Öğrenim
    ((SELECT category_id FROM categories WHERE category_name='Learning and Education'), 'Higher Education', 'Higher Education', 'Post-secondary education, including colleges and universities.'),
    
    -- Okul Öncesi Eğitim
    ((SELECT category_id FROM categories WHERE category_name='Learning and Education'), 'Early Childhood Education', 'Early Childhood Education', 'Education focused on children from birth to eight years old.'),
    
    -- Eğitim Değerlendirmesi
    ((SELECT category_id FROM categories WHERE category_name='Learning and Education'), 'Assessment and Evaluation', 'Assessment and Evaluation', 'Methods of evaluating student learning and educational programs.'),
    
    -- Çevrimiçi Öğrenme
    ((SELECT category_id FROM categories WHERE category_name='Learning and Education'), 'Online Learning', 'Online Learning', 'Education delivered via the internet, often through courses and programs.'),
    
    -- Yabancı Dil Eğitimi
    ((SELECT category_id FROM categories WHERE category_name='Learning and Education'), 'Foreign Language Education', 'Foreign Language Education', 'Teaching and learning of foreign languages.');
