
-- BRANCHES
INSERT INTO branch_mgmt.branches(name, location) VALUES
    ('Sucursal Parque', '4ta calle, zona 1, Quetzaltenango'),
    ('Sucursal Centro 1', 'Diagonal 13, zona 1, Quetzaltenango'),
    ('Sucursal Centro 2', '15 avenida, 2-20, zona 1, Quetzaltenango');


--ADMINS
INSERT INTO branch_mgmt.admins(name, username, password, state) VALUES
    ('admin',       'admin',    '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', 'active'), -- pass: admin
    ('Mariam Key',  'key_mari', '22bf4e139d6413ec92d98f9e08ae3ec714beb91261b94f53ce096d262ba71e6b', 'active'); -- pass: mariamkey_pass


--CASHIERS
INSERT INTO branch_mgmt.cashiers(branch_id, name, username, password, state, checkout_number) VALUES
    (1, 'cashier1',         'cashier1', '6a79b51fec89db977e62d3b5aee3ea8b9de93cabf2446aae7d6f517db6d16178', 'active', 1), -- pass: cashier
    (1, 'Aileen Pritani',   'Pritani_', 'cc690ddfa30148760bb86d3a2992bdd802e9cee55bd84b2674b0f8cc9ce4355b', 'active', 3), -- pass: blue_potato
    (1, 'Mihai Benton',     'Mihai_ve', '650e9595236154547665929c8ff6c06a4e1f89bb63797649b3cfc5337d075be8', 'active', 2), -- pass: muffins
    (1, 'Bell Mertz',       'mertz_',   '17bfb20e0f7b3a7ebd896e192d4d137efd5bd4f5bd5759ff36023aed3f792bba', 'active', 5), -- pass: Amir94
    (1, 'Aniya Medhurst',   'anniya_M', '23c267883e7451541c151c0b66f6fbf90ff451f2e6707baccbb344c6f256ec23', 'active', 4), -- pass: Trystan91
    (1, 'Kellen Rohan',     'Kel.Prsn', '366c1ab53781381b00b2316f0276c23170a3252b8825902cff6e2f275bce4ec9', 'active', 6), -- pass: Rogelio59
    (1, 'Lexi Becker',      'Beckr44',  'd26cdc46e372a8f5c0b5eae54b00c3f3f98bcdd1cab881c4c62e32be6df8f50b', 'active', 7), -- pass: Cyril76
    (1, 'Tressie Collins',  'Tres_s',   '2013f5bfb6f0a911ad711c8d9db0086bb1d6345f0afc3ee3ef913013895b1bc3', 'active', 8), -- pass: LondonMante32
    (2, 'Ayden Dare',       'Dare.ayd', '5f9586436b4864554d11ee30d88081539bb91ebdfd04843b733ffd9d5da42872', 'active', 3), -- pass: Krystal_Bashirian37
    (2, 'Nicolas Bukridge', 'Ni_Buk93', '71e53c554ca63ac953b0b97ea54bf91c3630c118acd82e34fe00b6bbcd4c835a', 'active', 2), -- pass: Jerad22
    (2, 'Angelina Carroll', 'Carroll',  'c1d065a4dd8b4f74d5b7b19eb6508f41c51970637041e94517f7c83b28c3c306', 'active', 1), -- pass: Asia86
    (2, 'Verna Lubowitz',   'Verna.wtz','fed5a1bfc7b59c96145089c5ae7f4333c1a78d4ffbb1d00ee26a71291526bf10', 'active', 4), -- pass: Jovanyey64
    (2, 'Cory Hackett',     'Hack_co8', 'c1bf79d603cca8b0da6e94228ad3805d74a252194951f87fbc9a4f165791e363', 'active', 7), -- pass: Beattel85
    (2, 'Donny Wisoky',     'Wisk38',   'bfc9601f779eb4a270449c214d75989c46bed313c72c8abf5645fa7ebbef4975', 'active', 6), -- pass: AntonOConner
    (2, 'Remington Mann',   'Mann_re4', 'b8473abb692651f36d89c2c5d52b06f8ed7bfa763fd096e9cdde910bbaafa3b4', 'inactive', 2), -- pass: JessBrakus14
    (2, 'Toby Moore',       'Tobyy49',  'fa3234cdc1528d2d6652630d1d500f958b57c8d97fc170974a857fb2784e6a03', 'active', 5), -- pass: Burley17
    (3, 'Sonya Leannon',    'Leannon72','10baba723a94b7622f5384aa2ad0a642ade72e1b9e79e0332315344baf31d7f4', 'active', 6), -- pass: Sonyaa_
    (3, 'Gennaro West',     'west_gen', '05100dfd002ca61d5c0fed99ead5799c0588d112d6d38c28913805020cbb4b7b', 'active', 2), -- pass: Towne63
    (3, 'Lilian Nitzsche',  'Lili_ntz', 'd243b15c759c18f40a3885ae065cf67f3845e3dcc31c0d9676d69021e5e1fad3', 'active', 1), -- pass: Travis59
    (3, 'Orpha Murray',     'Mray_O32', 'b56ad9d7372fedf9bea25159baec09b9ebebdf33872713203dc92dd7ba1e2b9f', 'inactive', 4), -- pass: William_Brakus
    (3, 'Shana MacGyver',   'Sha_mg89', '0fe288962c869d21d665aeb7ef61bf0464d6ea2b93504a98f24c6fcc10034fd5', 'active', 4), -- pass: Demond14
    (3, 'Callie West',      'Llie_wz',  '9de14bafded0f087b44f078201c8324b018073c914b12650650bec2a7332e85e', 'active', 3), -- pass: Brenda70
    (3, 'Axel Hermiston',   'Axel_He29','0be7368acb9e3d79ae8a0534ba18b411bd3a3fae0d2d4f94007385f0a9db2c38', 'active', 7), -- pass: Maude29
    (3, 'Celestino Mayer',  'key_mayer','cea70552116071b4ea769c41150f7f76c0e7673bfd6dc62453d507e41af9b529', 'active', 8); -- pass: tomate


-- STORERS
INSERT INTO branch_mgmt.storers(branch_id, name, username, password, state) VALUES
    (1, 'storer1',          'storer1',  '9d5501910c4eb740fcee907dcbb3efdf3aa89df4c9af0740e7e179757c5244b1', 'active'), -- pass: storer
    (1, 'Reina Ohara',      'Reiya-o',  '404d5354e1c6378083556388fa1ef5725ce117f8ecc655b2a28a828cf0f07610', 'active'), -- pass: freddie
    (1, 'Samuel Sabbah',    'Sami_sb',  'bb8cf91626b761af345d44093b02c4766f3002402b7e04aa962d48aeae204d95', 'active'), -- pass: haibibi
    (2, 'Terrence Torres',  'Terry_t',  'a63c5fbfef6b16e0a553adc2eff9c906aaee4948eb7282a996598ba919abb807', 'active'), -- pass: 85sun_4
    (2, 'Kailani Rosales',  'Kail_ros', 'e00c7a35a91a47b41b4ab1625723befaef41bc7883c14dbfdb185fe95cdbdead', 'active'), -- pass: stargaze23
    (2, 'Antonio Alegre',   'Tony_al',  '54e655e33a89e3cad340ad9e88f1cec15116e29d48659096c2b562503c84e217', 'active'), -- pass: ji_nho47
    (3, 'Estella Armas',    'Estel.ara','3269c991b4d187e8eb702aeb0d58b77e3635d601d8597c9e3b5eb8c662ab2c50', 'active'); -- pass: ufopastel


-- INVENTORY
INSERT INTO branch_mgmt.inventory_emp(branch_id, name, username, password, state) VALUES
    (1, 'inv1',             'inv1',     '6f6c4525edd23dbf790c7a0380d585de79a8c91011820a8ac55a8b1ed3989f86', 'active'), -- pass: inve
    (1, 'Reymundo Leannon', 'Reymn21',  'c6dbfdcc00a0e673cb76b12f5daef528a87e6c9ae92f279e3bc925eee81ca558', 'active'), -- pass: Neoma_Yundt
    (1, 'Kaylah Crist',     'Kaylah_45','49d01406262c19cd69f86d1b9b02d11775c7c5b228055973842f3d52906cabb8', 'active'), -- pass: Scottie40
    (1, 'Mavis Balistreri', 'Balis_ma', 'cb5a0b722c7fa4ee0eb46abe13db8eac075889a36df3e9b402466ede23502788', 'inactive'), -- pass: LeoraReilly
    (1, 'Audra Batz',       'Batz_a78', '291b27de2b27cc0d7957eb25597f67ce23b467bed82ae77c3a658ac4bb5e3cd8', 'active'), -- pass: AmirMoen
    (1, 'Orryn Reynolds',   'Reyn_Oryn','fd1f15e6f3bca46750a01cc33ddb5a31404db82acca24fa1d4f7820dbb9cf94b', 'active'), -- pass: Alana_Kub
    (2, 'Salma Kshlerin',   'Ksh.Sal',  '06f07ec06f0e643e286ef10bce3ae03deb592562413f20b144b91ec555aadb27', 'active'), -- pass: Lura35
    (2, 'Clara Koch',       'Ko-Clra',  'b8ee3d7d0acba059a7773f7ef262ecd81f3b7e99f4196acc9af38c30bb332df3', 'active'), -- pass: Travis_Bechtelar48
    (2, 'Geo Ledner',       'Geo__l',   '0a1dea5e74d8150c0a028ba89e4f8479cfff3ea43d865c700f3d1142d4cd4bad', 'active'), -- pass: Chloe39
    (2, 'Annette Leannon',  '_Anne.ln', '8f623d2eb53c030bff9565188ebf8a54560f91855708caf8e8fe755c8926fdd1', 'active'), -- pass: NewtonDuBuque
    (2, 'Rylee Larson',     'rlee.lar', '3687dad30462f1923cdb80daeee356a8c0165cd1b3d56a74998d3c791314bd0c', 'active'), -- pass: ColePacocha78
    (3, 'Lydia Hoppe',      'Lyd-hop',  '5b93bece97f8bed13a36d4d6708068f5148e499bc8be4a3d5ffc9ba4d5f1df71', 'active'), -- pass: SantaBahringer74
    (3, 'Rhoda Swift',      'swift10',  'f12545790562cbf46e13900d71938a305711a2ea005d0384bb83104d5207cf46', 'inactive'), -- pass: Candida_Marvin44
    (3, 'Raoul Stamm',      'rl.stams', '1e4ae4fefd951bbffa3db3c8565ecb7ad6510228375f111a117331bae130b790', 'active'), -- pass: Amparo75
    (3, 'Juanita Runte',    'Runt24',   '4683cdc0e72d6cd036c7e0c0116c684d7a183703f76aec7f7d291dbc3c7aeadb', 'active'), -- pass: KrisSchimmel99
    (3, 'Earnestine Rice',  'Rice_ea3', '475229496c25762ac0d8a2f136cb3cc2ceb75737226caf0f6a1d6ee4fc646bfd', 'active'); -- pass: SavannaKreiger


-- PRODUCTS
INSERT INTO product_mgmt.products (name, price, description) VALUES

    ('The Legend of Zelda: Breath of the Wild',         54.99,      'Una aventura épica de mundo abierto donde Link explora Hyrule, resuelve puzzles y combate enemigos'),
    ('DualShock 4 Wireless Controller',                 59.99,      'Controlador inalámbrico para PlayStation 4, con botones sensibles al movimiento y touchpad'),
    ('Xbox Game Pass Ultimate',                         74.25,      'Suscripción que brinda acceso a cientos de juegos para Xbox y PC, incluyendo títulos nuevos'),
    ('Logitech G502 Gaming Mouse',                     345.75,      'Mouse con sensor avanzado, botones programables y diseño ergonómico para juegos'),
    ('HyperX Cloud II Gaming Headset',                  99.99,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas'),
    ('Minecraft',                                       24.00,      'Juego de construcción y aventura donde los jugadores pueden crear mundos infinitos'),
    ('Nintendo Switch Pro Controller',                1499.00,      'Controlador inalámbrico para Nintendo Switch, con controles de movimiento y mayor precisión'),
    ('Razer BlackWidow  Mechanical Gaming Keyboard',   734.50,      'Teclado mecánico con switches Razer Green para respuesta táctil y retroalimentación'),
    ('Final Fantasy VII Remake',                        85.36,      'Reimaginación del clásico RPG, con gráficos mejorados y una historia profunda'),
    ('SteelSeries QcK Gaming Mouse Pad',                45.68,      'Alfombrilla de mouse con superficie microtexturizada para precisión y seguimiento'),
    ('Assassins Creed Valhalla',                       124.25,      'Juego de acción y aventura ambientado en la era vikinga, con exploración, combate y misiones'),
    ('Cyberpunk 2077',                                 148.25,      'Juego de rol futurista en un mundo abierto, con personalización de personaje y libertad de elección'),
    ('Red Dead Redemption 2',                           14.25,      'Western de mundo abierto con una historia épica, personajes memorables y gráficos impresionantes'),
    ('Nintendo Switch Lite',                           126.47,      'Consola portátil con pantalla integrada, ideal para jugar en cualquier lugar'),
    ('PlayStation 5 Digital Edition',                  125.23,      'Consola de última generación con almacenamiento SSD y gráficos avanzados'),
    ('Halo Infinite',                                   69.48,      'Shooter en primera persona con intensos combates, vehículos y una campaña cooperativa'),
    ('Horizon Forbidden West',                          78.25,      'Aventura de acción con robots gigantes y un mundo postapocalíptico'),
    ('FIFA 23',                                        124.50,      'Simulador de fútbol con modos de juego en línea y offline, actualizaciones de equipos y jugadores'),
    ('Call of Duty: Modern Warfare II',                 36.25,      'Shooter militar con intensa acción, modos multijugador y una campaña emocionante'),
    ('Elden Ring',                                      86.25,      'Juego de rol de acción con un mundo abierto desafiante, combate intenso y exploración'),
    ('GTA V',                                           46.14,      'Juego de mundo abierto con crimen, acción y humor, con actualizaciones en línea'),
    ('Super Mario Odyssey',                            156.20,      'Aventura de plataformas en 3D donde Mario explora mundos coloridos y resuelve puzzles.'),
    ('Xbox Elite Wireless Controller Series 2',        123.25,      'Controlador inalámbrico para Xbox con botones intercambiables, gatillos ajustables y diseño ergonómico.'),
    ('PlayStation Plus Subscription',                   78.36,      'Suscripción que brinda acceso a juegos multijugador en línea, descuentos y juegos mensuales.'),
    ('Astro A50 Wireless Gaming Headset',               45.69,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('Corsair K95 RGB Platinum Mechanical Keyboard',   564.45,      'Teclado mecánico con switches Cherry MX Speed Silver, iluminación RGB personalizable y teclas macro.'),
    ('Fortnite V-Bucks (5000)',                         14.97,      'Moneda virtual para comprar cosméticos y artículos en el juego Fortnite.'),
    ('Overwatch 2',                                     86.25,      'Shooter heroico con personajes únicos, modos de juego competitivos y cooperativos.'),
    ('The Last of Us Part II',                          95.14,      'Juego de acción y aventura postapocalíptico con una historia intensa y personajes memorables.'),
    ('Persona 5 Royal',                                 79.99,      'Juego de rol japonés con una historia profunda, personajes carismáticos y combate estratégico.'),
    ('Ghost of Tsushima',                               26.48,      'Juego de acción y aventura ambientado en la era feudal japonesa, con exploración, combate y misiones.'),
    ('Sekiro: Shadows Die Twice',                       37.50,      'Juego de acción y aventura con combate desafiante, sigilo y exploración.'),
    ('Resident Evil Village',                           65.23,      'Juego de terror y supervivencia con criaturas horripilantes y una historia intensa.'),
    ('Marvel’s Spider-Man: Miles Morales',              45.69,      'Juego de acción y aventura donde Miles Morales toma el manto de Spider-Man en Nueva York.'),
    ('Fall Guys: Ultimate Knockout',                    55.55,      'Juego de batalla royale con personajes divertidos y obstáculos desafiantes.'),
    ('Razer Naga Pro Wireless Gaming Mouse',           364.50,      'Mouse con botones programables, sensor avanzado y diseño ergonómico para juegos.'),
    ('SteelSeries Arctis Pro Wireless Headset',        780.00,      'Auriculares con sonido de alta fidelidad, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('Borderlands 3',                                   48.95,      'Juego de disparos cooperativo con humor, caos y una gran cantidad de botín.'),
    ('Apex Legends (Coins)',                            25.30,      'Moneda virtual para comprar cosméticos y artículos en el juego Apex Legends.'),
    ('The Sims 4',                                      20.50,      'Simulador de vida donde los jugadores pueden crear personajes, construir casas y vivir sus propias historias.'),
    ('Diablo IV',                                       46.15,      'Juego de rol de acción con demonios, exploración y combate intenso.'),
    ('NBA 2K24',                                        55.39,      'Juego de rol de acción con demonios, exploración y combate intenso.'),
    ('Razer Kraken X Gaming Headset',                  499.99,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('Alienware AW2521H Gaming Monitor',              1650.00,      'Monitor de juegos con resolución 240Hz, tecnología G-SYNC y diseño elegante.'),
    ('Turtle Beach Stealth 700 Wireless Headset',      745.25,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('Genshin Impact (Genesis Crystals)',               75.69,      'Moneda virtual para comprar personajes, armas y otros artículos en el juego Genshin Impact.'),
    ('PUBG: Battlegrounds',                             15.99,      'Battle royale con intenso combate, vehículos y estrategia.'),
    ('League of Legends RP (1380)',                     37.25,      'Moneda virtual para comprar campeones, aspectos y otros artículos en el juego League of Legends.'),
    ('Valorant Points (1000)',                          12.10,      'Moneda virtual para comprar agentes, armas y otros artículos en el juego Valorant.'),
    ('Rainbow Six Siege',                               42.26,      'Shooter táctico con operadores especializados, mapas destructibles y juego en equipo.'),
    ('Death Stranding Directors Cut',                   54.45,      'Juego de acción y aventura con una historia única, exploración y construcción de infraestructura.'),
    ('Doom Eternal',                                    65.56,      'Shooter en primera persona con demonios, gore y combate frenético.'),
    ('Far Cry 6',                                       25.99,      'Juego de acción y aventura con una historia política, exploración y combate.'),
    ('Mass Effect Legendary Edition',                  145.25,      'Recopilación de los tres primeros juegos de Mass Effect, con gráficos mejorados y contenido adicional.'),
    ('Star Wars Jedi: Survivor',                       115.25,      'Juego de acción y aventura con una historia épica, combate con sable de luz y exploración.'),
    ('F1 2023',                                         95.50,      'Simulador de carreras de Fórmula 1 con modos de juego en línea y offline.'),
    ('Need for Speed Heat',                             73.25,      'Juego de carreras con acción policial, personalización de coches y conducción nocturna.'),
    ('NVIDIA GeForce RTX 3080',                        850.00,      'Tarjeta gráfica de alta gama con arquitectura Ampere, ray tracing y DLSS.'),
    ('Intel Core i9-12900K',                           745.35,      'Procesador de escritorio de alto rendimiento con 16 núcleos y 24 hilos.'),
    ('MSI GeForce GTX 1660 Super',                     675.25,      'Tarjeta gráfica de gama media con arquitectura Turing y rendimiento sólido.'),
    ('Corsair Vengeance RGB Pro RAM (16GB)',           440.00,      'Módulos de memoria RAM con iluminación RGB personalizable y rendimiento confiable.'),
    ('ASUS ROG Strix Gaming Laptop',                 14475.00,      'Portátil para juegos con potente procesador, tarjeta gráfica dedicada y pantalla de alta frecuencia de actualización.'),
    ('Razer Blade 15 Laptop',                        10675.00,      'Portátil para juegos con diseño elegante, procesador de alta gama y tarjeta gráfica dedicada.'),
    ('Logitech G733 Wireless Gaming Headset',          630.30,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('Kingston A2000 NVMe SSD (1TB)',                  675.25,      'Unidad de almacenamiento SSD con altas velocidades de lectura y escritura.'),
    ('Razer Huntsman Mini Gaming Keyboard',            135.50,      'Teclado mecánico con switches ópticos, iluminación RGB personalizable y diseño compacto.'),
    ('NZXT H510 Elite PC Case',                        129.99,      'Caja de PC con diseño moderno, soporte para refrigeración líquida y panel de vidrio templado.'),
    ('Seagate FireCuda 2TB Gaming SSHD',               149.99,      'Disco duro híbrido con almacenamiento de alta capacidad y velocidades de lectura y escritura mejoradas.'),
    ('Corsair K70 RGB TKL Keyboard',                   179.99,      'Teclado mecánico con switches Cherry MX Speed Silver, iluminación RGB personalizable y diseño compacto.'),
    ('Razer Basilisk V3 Gaming Mouse',                  79.99,      'Mouse con sensor avanzado, botones programables y diseño ergonómico para juegos.'),
    ('WD_BLACK 5TB P10 Game Drive',                    129.99,      'Disco duro externo con almacenamiento de alta capacidad y velocidades de transferencia rápidas.'),
    ('Elgato Stream Deck',                             149.99,      'Controlador de transmisión con botones personalizables para automatizar tareas y optimizar la experiencia de streaming.'),
    ('Blue Yeti X Professional Microphone',            179.99,      'Micrófono USB con calidad de estudio, cuatro patrones de captación y control de ganancia.'),
    ('Astro Gaming A40 TR Headset',                    199.99,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('XBOX Series S',                                  299.99,      'Consola de juegos de próxima generación con gráficos avanzados y almacenamiento SSD.'),
    ('Samsung Odyssey G7 Gaming Monitor',              799.99,      'Monitor curvo con resolución 4K, tasa de refresco de 240Hz y tecnología HDR.'),
    ('Alienware Aurora R12 Gaming Desktop',           1499.99,      'Ordenador de sobremesa para juegos con procesador de alta gama, tarjeta gráfica potente y componentes de calidad.'),
    ('Nintendo Switch OLED Model',                     349.99,      'Consola portátil con pantalla OLED de alta calidad, batería mejorada y soporte para juegos en línea.'),
    ('Razer Wolverine Ultimate Controller',            129.99,      'Controlador para Xbox con botones remapeables, gatillos ajustables y diseño ergonómico.'),
    ('Sony PULSE 3D Wireless Headset',                  99.99,      'Auriculares inalámbricos para PlayStation 5 con sonido envolvente 3D y micrófono con cancelación de ruido.'),
    ('Corsair HS60 Pro Gaming Headset',                 79.99,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('SteelSeries Aerox 3 Wireless',                    69.99,      'Mouse inalámbrico con diseño ligero, sensor avanzado y botones programables.'),
    ('Logitech G920 Racing Wheel',                     299.99,      'Volante de carreras con fuerza de retroalimentación, pedales y cambio de marchas.'),
    ('Thrustmaster T300 RS Racing Wheel',              399.99,      'Volante de carreras con fuerza de retroalimentación, pedales y cambio de marchas.'),
    ('XBOX Rechargeable Battery Pack',                  29.99,      'Batería recargable para el controlador de Xbox Series X/S.'),
    ('PlayStation VR2',                                549.99,      'Casco de realidad virtual para PlayStation 5 con resolución 4K y seguimiento de ojos.'),
    ('Valve Index VR Kit',                             999.99,      'Kit de realidad virtual con auriculares de alta resolución, controladores de precisión y base de seguimiento.'),
    ('Meta Quest 2',                                   299.99,      'Casco de realidad virtual independiente con seguimiento de manos y conexión inalámbrica.'),
    ('Acer Predator XB273K Gaming Monitor',           1299.99,      'Monitor de juegos con resolución 4K, tasa de refresco de 144Hz y tecnología Mini-LED.'),
    ('HyperX Alloy Origins Mechanical Keyboard',       109.99,      'Teclado mecánico con switches Cherry MX Red, iluminación RGB personalizable y diseño compacto.'),
    ('TCL 55in 4K UHD Smart TV',                        599.99,      'Televisor inteligente con resolución 4K, tecnología HDR y acceso a aplicaciones de streaming.'),
    ('Nacon Revolution Unlimited Pro Controller',      129.99,      'Controlador para Xbox con botones remapeables, gatillos ajustables y diseño ergonómico.'),
    ('PowerA Enhanced Wireless Controller',             49.99,      'Controlador para Xbox con diseño ergonómico y botones de acceso rápido.'),
    ('Sony DualSense Edge Wireless Controller',        209.99,      'Controlador para PlayStation 5 con botones remapeables, gatillos ajustables y diseño ergonómico.'),
    ('Thrustmaster T.Flight Hotas 4',                  129.99,      'Joystick y palanca de gases para juegos de vuelo con fuerza de retroalimentación.'),
    ('Razer Seiren Mini Microphone',                    59.99,      'Micrófono USB con calidad de estudio y diseño compacto.'),
    ('The Witcher 3: Wild Hunt',                        39.99,      'Juego de rol de mundo abierto con una historia épica, personajes memorables y combate desafiante.'),
    ('Razer DeathAdder V2 Gaming Mouse',                69.99,      'Mouse con sensor avanzado, botones programables y diseño ergonómico para juegos.'),
    ('PlayStation 4 Slim',                             299.99,      'Consola de juegos con gráficos de alta definición y una amplia biblioteca de juegos.'),
    ('Xbox Series X',                                  499.99,      'Consola de juegos de próxima generación con gráficos avanzados, almacenamiento SSD y compatibilidad con juegos anteriores.'),
    ('Kingdom Hearts III',                              59.99,      'Juego de rol de acción con personajes icónicos de Disney y Square Enix.'),
    ('Monster Hunter: World',                           59.99,      'Juego de caza de monstruos con exploración, combate y personalización de personajes.'),
    ('Logitech G Pro X Gaming Headset',                129.99,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('Acer Nitro XV272U Gaming Monitor',               399.99,      'Monitor de juegos con resolución 4K, tasa de refresco de 144Hz y tecnología HDR.'),
    ('Corsair Dark Core RGB/SE Wireless Gaming Mouse',  79.99,      'Mouse con sensor avanzado, botones programables y diseño ergonómico para juegos.'),
    ('Resident Evil 3 Remake',                          49.99,      'Remake del clásico juego de terror y supervivencia con gráficos mejorados y nuevas mecánicas de juego.'),
    ('Nier Automata',                                   39.99,      'Juego de acción y aventura con una historia única, combate desafiante y elementos de RPG.'),
    ('Call of Duty: Black Ops Cold War',                59.99,      'Shooter militar con intensa acción, modos multijugador y una campaña emocionante.'),
    ('Deathloop',                                       59.99,      'Juego de acción y aventura con un bucle temporal, combate desafiante y exploración.'),
    ('Hitman 3',                                        59.99,      'Juego de sigilo y acción con misiones en diferentes lugares del mundo y una historia intrigante.'),
    ('CyberPowerPC Gamer Xtreme VR Gaming PC',        1499.99,      'Ordenador de sobremesa para juegos con procesador de alta gama, tarjeta gráfica potente y componentes de calidad.'),
    ('Logitech G560 LIGHTSYNC RGB Gaming Speakers',    249.99,      'Altavoces con iluminación RGB personalizable y sonido envolvente.'),
    ('ROG Strix Go 2.4 Wireless Headset',              129.99,      'Auriculares inalámbricos con sonido de alta calidad, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('Redragon K552 Mechanical Gaming Keyboard',        59.99,      'Teclado mecánico con switches Cherry MX Brown, iluminación RGB personalizable y diseño compacto.'),
    ('Assassins Creed Odyssey',                        49.99,      'Juego de acción y aventura ambientado en la antigua Grecia, con exploración, combate y misiones.'),
    ('Shadow of the Tomb Raider',                       49.99,      'Juego de aventura y acción con exploración, combate y resolución de puzzles.'),
    ('Star Wars: Battlefront II',                       39.99,      'Shooter en primera persona con acción intensa, modos multijugador y personajes icónicos de Star Wars.'),
    ('Mortal Kombat 11',                                59.99,      'Juego de lucha con personajes icónicos, combate brutal y modos de juego en línea y offline.'),
    ('Dishonored 2',                                    39.99,      'Juego de sigilo y acción con poderes sobrenaturales, exploración y decisiones con consecuencias.'),
    ('Corsair Scimitar RGB Elite Gaming Mouse',         79.99,      'Mouse con botones programables, sensor avanzado y diseño ergonómico para juegos.'),
    ('Tom Clancys The Division 2',                     49.99,      'Shooter en tercera persona con juego cooperativo, personalización de personajes y combate intenso.'),
    ('HyperX Cloud Alpha S Gaming Headset',            129.99,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('Razer Blade Stealth 13 Ultrabook Laptop',       1499.99,      'Portátil para juegos con diseño elegante, procesador de alta gama y tarjeta gráfica dedicada.'),
    ('Seagate 1TB Game Drive for Xbox',                 79.99,      'Disco duro externo con almacenamiento de alta capacidad y velocidades de transferencia rápidas.'),
    ('Gigabyte AORUS 15G Gaming Laptop',              1699.99,      'Portátil para juegos con potente procesador, tarjeta gráfica dedicada y pantalla de alta frecuencia de actualización.'),
    ('Intel Core i7-12700K',                           449.99,      'Procesador de escritorio de alto rendimiento con 12 núcleos y 20 hilos.'),
    ('ASUS TUF Gaming VG27AQ Monitor',                 499.99,      'Monitor de juegos con resolución 4K, tasa de refresco de 144Hz y tecnología HDR.'),
    ('MSI Optix MAG272C Curved Gaming Monitor',        399.99,      'Monitor curvo con resolución 1080p, tasa de refresco de 144Hz y tecnología HDR.'),
    ('Razer Cynosa V2 Gaming Keyboard',                 59.99,      'Teclado de membrana con iluminación RGB personalizable y diseño compacto.'),
    ('Logitech C920 HD Pro Webcam',                     79.99,      'Cámara web con resolución 1080p, enfoque automático y corrección de luz.'),
    ('Corsair Virtuoso RGB Wireless XT Headset',       199.99,      'Auriculares inalámbricos con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('Cooler Master MasterBox Q300L PC Case',           79.99,      'Caja de PC con diseño compacto, soporte para refrigeración líquida y panel de vidrio templado.'),
    ('Asus ROG Swift PG279Q Gaming Monitor',           999.99,      'Monitor de juegos con resolución 4K, tasa de refresco de 165Hz y tecnología G-SYNC.'),
    ('Turtle Beach Recon 70 Gaming Headset',            49.99,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('Logitech G815 LIGHTSYNC RGB Mech. Keyboard',     149.99,      'Teclado mecánico con switches Cherry MX Brown, iluminación RGB personalizable y diseño compacto.'),
    ('MSI GF75 Thin Gaming Laptop',                    999.99,      'Portátil para juegos con potente procesador, tarjeta gráfica dedicada y pantalla de alta frecuencia de actualización.'),
    ('Acer Predator Helios 300 Gaming Laptop',         999.99,      'Portátil para juegos con potente procesador, tarjeta gráfica dedicada y pantalla de alta frecuencia de actualización.'),
    ('CyberpowerPC Syber C Gaming Console',            299.99,      'Consola de juegos de próxima generación con gráficos avanzados y almacenamiento SSD.'),
    ('ROCCAT Kone AIMO Gaming Mouse',                   79.99,      'Mouse con sensor avanzado, botones programables y diseño ergonómico para juegos.'),
    ('AMD Ryzen 9 5900X Processor',                    549.99,      'Procesador de escritorio de alto rendimiento con 12 núcleos y 24 hilos.'),
    ('Turtle Beach Elite Pro 2 Gaming Headset',        149.99,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('Razer Basilisk X HyperSpeed Wireless Mouse',      69.99,      'Mouse inalámbrico con sensor avanzado, botones programables y diseño ergonómico.'),
    ('Asus ROG Strix Flare RGB Mech. Keyboard',        129.99,      'Teclado mecánico con switches Cherry MX Red, iluminación RGB personalizable y diseño compacto.'),
    ('BenQ Zowie EC2 Gaming Mouse',                     69.99,      'Mouse con sensor avanzado, botones programables y diseño ergonómico para juegos.'),
    ('Intel Core i5-12600K',                           299.99,      'Procesador de escritorio de alto rendimiento con 6 núcleos y 12 hilos.'),
    ('Crucial Ballistix 32GB DDR4 RAM',                199.99,      'Módulos de memoria RAM con rendimiento confiable y overclocking.'),
    ('WD_BLACK SN750 1TB NVMe SSD',                    149.99,      'Unidad de almacenamiento SSD con altas velocidades de lectura y escritura.'),
    ('Razer Wolverine Tournament Edition Controller',  129.99,      'Controlador para Xbox con botones remapeables, gatillos ajustables y diseño ergonómico.'),
    ('Thrustmaster Ferrari 458 Spider Racing Wheel',   399.99,      'Volante de carreras con fuerza de retroalimentación, pedales y cambio de marchas.'),
    ('ASUS Dual GeForce RTX 3070',                     699.99,      'Tarjeta gráfica de gama alta con arquitectura Ampere, ray tracing y DLSS.'),
    ('Oculus Rift S',                                  399.99,      'Casco de realidad virtual con seguimiento de posición y controladores de movimiento.'),
    ('HP Omen 30L Gaming Desktop',                    1299.99,      'Ordenador de sobremesa para juegos con procesador de alta gama, tarjeta gráfica potente y componentes de calidad.'),
    ('Sabrent Rocket 4 Plus 2TB NVMe SSD',             249.99,      'Unidad de almacenamiento SSD con altas velocidades de lectura y escritura.'),
    ('Samsung T7 Portable SSD 1TB',                     99.99,      'Disco duro externo con almacenamiento de alta capacidad y velocidades de transferencia rápidas.'),
    ('MSI GP66 Leopard Gaming Laptop',                1599.99,      'Portátil para juegos con potente procesador, tarjeta gráfica dedicada y pantalla de alta frecuencia de actualización.'),
    ('Cooler Master Hyper 212 RGB CPU Cooler',          49.99,      'Disipador de calor con iluminación RGB personalizable y rendimiento confiable.'),
    ('G.SKILL Trident Z RGB Series 16GB RAM',          149.99,      'Módulos de memoria RAM con iluminación RGB personalizable y rendimiento confiable.'),
    ('ASUS ROG Strix LC 240 RGB Liquid CPU Cooler',    129.99,      'Enfriador líquido con radiador de 240mm, iluminación RGB personalizable y rendimiento eficiente.'),
    ('Philips Momentum 436M6VBPAB 43 4K HDR Monitor', 899.99,      'Monitor de juegos con resolución 4K, tasa de refresco de 144Hz y tecnología HDR.'),
    ('Thermaltake Toughpower GF1 850W Power Supply',   129.99,      'Fuente de alimentación con certificación 80 PLUS Gold y eficiencia energética.'),
    ('Gigabyte GeForce RTX 3060 Gaming OC',            499.99,      'Tarjeta gráfica de gama media con arquitectura Ampere, ray tracing y DLSS.'),
    ('Razer Seiren X USB Microphone',                   69.99,      'Micrófono USB con calidad de estudio y diseño compacto.'),
    ('HyperX Cloud Stinger Core Gaming Headset',        49.99,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('NZXT Kraken X73 360mm Liquid Cooler',            179.99,      'Enfriador líquido con radiador de 360mm, iluminación RGB personalizable y rendimiento eficiente.'),
    ('ASRock Phantom Gaming D Radeon RX 580 8GB',      249.99,      'Tarjeta gráfica de gama media con arquitectura GCN y rendimiento sólido.'),
    ('Logitech G604 LIGHTSPEED Wireless Gaming Mouse',  99.99,      'Mouse inalámbrico con sensor avanzado, botones programables y diseño ergonómico.'),
    ('Corsair iCUE H150i RGB Pro XT Liquid Cooler',    249.99,      'Enfriador líquido con radiador de 360mm, iluminación RGB personalizable y rendimiento eficiente.'),
    ('Sceptre 24in Curved 75Hz Gaming LED Monitor',     149.99,      'Monitor curvo con resolución 1080p, tasa de refresco de 75Hz y tecnología FreeSync.'),
    ('Razer Ornata Chroma Gaming Keyboard',             79.99,      'Teclado de membrana con iluminación RGB personalizable y diseño compacto.'),
    ('SteelSeries Arctis 7 Wireless Gaming Headset',   129.99,      'Auriculares inalámbricos con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('Logitech G203 Lightsync Gaming Mouse',            39.99,      'Mouse con sensor avanzado, botones programables y diseño ergonómico para juegos.'),
    ('Redragon K530 Draconic 60% Wireless Keyboard',    69.99,      'Teclado mecánico con switches Cherry MX Brown, iluminación RGB personalizable y diseño compacto.'),
    ('BenQ MOBIUZ EX2510 Gaming Monitor',              249.99,      'Monitor de juegos con resolución 1080p, tasa de refresco de 240Hz y tecnología HDR.'),
    ('Corsair Ironclaw RGB Wireless Gaming Mouse',      69.99,      'Mouse con sensor avanzado, botones programables y diseño ergonómico para juegos.'),
    ('MSI MPG Z490 Gaming Edge Motherboard',           229.99,      'Placa base con chipset Z490, soporte para overclocking y iluminación RGB personalizable.'),
    ('Corsair HS70 Pro Wireless Gaming Headset',        79.99,      'Auriculares inalámbricos con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('Logitech G432 Wired Gaming Headset',              59.99,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('Playseat Evolution Gaming Chair',                299.99,      'Silla de gaming con diseño ergonómico, ajuste de altura y reposabrazos ajustables.'),
    ('AKRacing Core Series EX Gaming Chair',           249.99,      'Silla de gaming con diseño ergonómico, ajuste de altura y reposabrazos ajustables.'),
    ('ASUS VG279Q 27in Full HD Gaming Monitor',         299.99,      'Monitor de juegos con resolución 1080p, tasa de refresco de 165Hz y tecnología G-SYNC.'),
    ('AOC CU34G2X 34in Curved Gaming Monitor',          499.99,      'Monitor curvo con resolución 1440p, tasa de refresco de 144Hz y tecnología FreeSync Premium Pro.'),
    ('Samsung 980 Pro 2TB PCIe 4.0 NVMe SSD',          299.99,      'Unidad de almacenamiento SSD con altas velocidades de lectura y escritura.'),
    ('Logitech G29 Driving Force Racing Wheel',        299.99,      'Volante de carreras con fuerza de retroalimentación, pedales y cambio de marchas.'),
    ('Thrustmaster T.16000M FCS HOTAS',                149.99,      'Joystick y palanca de gases para juegos de vuelo con fuerza de retroalimentación.'),
    ('Nacon Daija Arcade Stick',                       199.99,      'Joystick de arcade con diseño clásico y botones personalizables.'),
    ('NZXT H710i ATX Mid Tower Case',                  129.99,      'Caja de PC con diseño moderno, soporte para refrigeración líquida y panel de vidrio templado.'),
    ('Thermaltake View 71 Temp. Glass RGB Case',       249.99,      'Caja de PC con diseño premium, soporte para refrigeración líquida y iluminación RGB personalizable.'),
    ('AMD Radeon RX 6800 XT',                          799.99,      'Tarjeta gráfica de gama alta con arquitectura RDNA 2, ray tracing y DLSS.'),
    ('Sennheiser GAME ONE Gaming Headset',             179.99,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('Cooler Master SK621 60% Wireless Mech. Keyboard', 89.99,      'Teclado mecánico con switches Cherry MX Red, iluminación RGB personalizable y diseño compacto.'),
    ('Alienware AW3418DW 34in Curved Gaming Monitor',  1299.99,      'Monitor curvo con resolución 3440x1440, tasa de refresco de 120Hz y tecnología G-SYNC.'),
    ('SteelSeries Rival 3 Wireless Gaming Mouse',       49.99,      'Mouse inalámbrico con sensor avanzado, botones programables y diseño ergonómico.'),
    ('ASUS ROG Swift PG259QN 360Hz Gaming Monitor',   1199.99,      'Monitor de juegos con resolución 1080p, tasa de refresco de 360Hz y tecnología G-SYNC.'),
    ('MSI MPG Sekira 500X PC Case',                    129.99,      'Caja de PC con diseño moderno, soporte para refrigeración líquida y panel de vidrio templado.'),
    ('Razer Kiyo Pro Streaming Camera',                199.99,      'Cámara web con resolución 1080p, enfoque automático y corrección de luz.'),
    ('EVGA GeForce RTX 3090 FTW3 Ultra Gaming',       1799.99,      'Tarjeta gráfica de gama alta con arquitectura Ampere, ray tracing y DLSS.'),
    ('ASUS VG278QR 27in Gaming Monitor',                299.99,      'Monitor de juegos con resolución 1080p, tasa de refresco de 165Hz y tecnología G-SYNC.'),
    ('Lenovo Legion 5 Pro Gaming Laptop',             1499.99,      'Portátil para juegos con potente procesador, tarjeta gráfica dedicada y pantalla de alta frecuencia de actualización.'),
    ('Thermaltake ToughRAM RGB DDR4 16GB RAM',          99.99,      'Módulos de memoria RAM con iluminación RGB personalizable y rendimiento confiable.'),
    ('Razer Huntsman V2 Analog Gaming Keyboard',       149.99,      'Teclado mecánico con switches ópticos, iluminación RGB personalizable y diseño compacto.'),
    ('Cooler Master V750 Gold Power Supply',           129.99,      'Fuente de alimentación con certificación 80 PLUS Gold y eficiencia energética.'),
    ('Elgato Wave:3 Premium USB Microphone',           129.99,      'Micrófono USB con calidad de estudio, cuatro patrones de captación y control de ganancia.'),
    ('Acer Predator XB271HU 27in WQHD Gaming Monitor',  499.99,      'Monitor de juegos con resolución 1440p, tasa de refresco de 144Hz y tecnología G-SYNC.'),
    ('Gigabyte AORUS 17G Gaming Laptop',              1999.99,      'Portátil para juegos con potente procesador, tarjeta gráfica dedicada y pantalla de alta frecuencia de actualización.'),
    ('Samsung 970 EVO Plus 2TB NVMe SSD',              249.99,      'Unidad de almacenamiento SSD con altas velocidades de lectura y escritura.'),
    ('Corsair HS50 Pro Stereo Gaming Headset',          69.99,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('Razer BlackShark V2 X Gaming Headset',            59.99,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('AOC C32G1 32in Curved Gaming Monitor',           399.99,      'Monitor curvo con resolución 1440p, tasa de refresco de 144Hz y tecnología FreeSync.'),
    ('ASUS ROG Strix Z490-E Gaming Motherboard',       249.99,      'Placa base con chipset Z490, soporte para overclocking y iluminación RGB personalizable.'),
    ('HP Omen X 27in 240Hz Gaming Monitor',             599.99,      'Monitor de juegos con resolución 1080p, tasa de refresco de 240Hz y tecnología G-SYNC.'),
    ('Razer Sphex V3 Ultra-Thin Gaming Mouse Mat',      19.99,      'Alfombrilla de mouse con superficie microtexturizada para precisión y seguimiento.'),
    ('SteelSeries QcK Prism Cloth Gaming Mouse Pad',    24.99,      'Alfombrilla de mouse con iluminación RGB personalizable y superficie microtexturizada.'),
    ('Logitech G305 LIGHTSPEED Wireless Gaming Mouse',  39.99,      'Mouse inalámbrico con sensor avanzado, botones programables y diseño ergonómico.'),
    ('Razer Nari Ultimate Wireless Gaming Headset',    149.99,      'Auriculares inalámbricos con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas'),
    ('ASRock B550 Phantom Gaming-ITX/AX Motherboard',  149.99,      'Placa base con chipset B550, soporte para overclocking y iluminación RGB personalizable.'),
    ('ASUS ROG Crosshair VIII Dark Hero Motherboard',  399.99,      'Placa base de alta gama con chipset X570, soporte para overclocking extremo y iluminación RGB personalizable.'),
    ('Corsair Vengeance LPX 32GB DDR4 RAM',            199.99,      'Módulos de memoria RAM con rendimiento confiable y overclocking.'),
    ('Logitech G600 MMO Gaming Mouse',                  79.99,      'Mouse con botones programables, sensor avanzado y diseño ergonómico para juegos.'),
    ('Sennheiser GSP 300 Gaming Headset',               99.99,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('ASUS ROG Delta S Gaming Headset',                149.99,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('ASUS TUF Gaming VG259QM 24.5in Monitor',         399.99,      'Monitor de juegos con resolución 1080p, tasa de refresco de 280Hz y tecnología G-SYNC.'),
    ('Razer Kishi Mobile Game Controller',              79.99,      'Controlador para teléfonos inteligentes con botones y gatillos analógicos.'),
    ('SteelSeries Arctis Pro + GameDAC Wired Headset', 249.99,      'Auriculares con sonido envolvente, micrófono con cancelación de ruido y DAC externo para audio de alta calidad.'),
    ('TCL 32in 1080p Roku Smart TV',                   199.99,      'Televisor inteligente con resolución 1080p, tecnología HDR y acceso a aplicaciones de streaming.'),
    ('Corsair K100 RGB Mechanical Gaming Keyboard',    199.99,      'Teclado mecánico con switches Cherry MX Speed Silver, iluminación RGB personalizable y teclas macro.'),
    ('MSI MAG CoreLiquid 240R Liquid Cooler',          129.99,      'Enfriador líquido con radiador de 240mm, iluminación RGB personalizable y rendimiento eficiente.'),
    ('Samsung Odyssey G9 49in Curved Gaming Monitor', 1499.99,      'Monitor curvo con resolución 5120x1440, tasa de refresco de 240Hz y tecnología HDR.'),
    ('Gigabyte GeForce GTX 1650 Windforce OC',         199.99,      'Tarjeta gráfica de gama media con arquitectura Turing y rendimiento sólido.'),
    ('Razer Turret Wireless Keyboard & Mouse Combo',   199.99,      'Combo de teclado y mouse inalámbrico con diseño ergonómico y iluminación RGB personalizable.'),
    ('Dell Alienware m15 R6 Gaming Laptop',           1499.99,      'Portátil para juegos con potente procesador, tarjeta gráfica dedicada y pantalla de alta frecuencia de actualización.'),
    ('Sony PlayStation 4 Pro',                         399.99,      'Consola de juegos con gráficos de alta definición y una amplia biblioteca de juegos.'),
    ('Toshiba Canvio 2TB Portable External Hard Drive', 99.99,      'Disco duro externo con almacenamiento de alta capacidad y velocidades de transferencia rápidas.'),
    ('Seagate Expansion 4TB External Hard Drive',      129.99,      'Disco duro externo con almacenamiento de alta capacidad y velocidades de transferencia rápidas.'),
    ('Elgato 4K60 Pro MK.2 Capture Card',              299.99,      'Tarjeta de captura para grabar y transmitir contenido de juegos en 4K a 60fps.'),
    ('ASUS ROG Strix Scope RX Gaming Keyboard',        149.99,      'Teclado mecánico con switches Cherry MX Red, iluminación RGB personalizable y diseño compacto.'),
    ('Razer Deathstalker V2 Pro Wireless Keyboard',    149.99,      'Teclado mecánico con switches ópticos, iluminación RGB personalizable y diseño compacto.'),
    ('Logitech MX Master 3S Wireless Mouse',            99.99,      'Mouse con sensor avanzado, botones programables y diseño ergonómico para productividad y gaming.'),
    ('HyperX Cloud II Wireless Gaming Headset',         99.99,      'Auriculares inalámbricos con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('Asus ROG Zephyrus G15 Gaming Laptop',           1699.99,      'Portátil para juegos con potente procesador, tarjeta gráfica dedicada y pantalla de alta frecuencia de actualización.'),
    ('Corsair Dark Core Pro RGB Wireless Gaming Mouse', 79.99,      'Mouse con sensor avanzado, botones programables y diseño ergonómico para juegos.'),
    ('HP Omen 15 Gaming Laptop',                      1299.99,      'Portátil para juegos con potente procesador, tarjeta gráfica dedicada y pantalla de alta frecuencia de actualización.'),
    ('SteelSeries Apex Pro Mechanical Keyboard',       149.99,      'Teclado mecánico con switches ajustables, iluminación RGB personalizable y diseño compacto.'),
    ('Cooler Master MM710 Gaming Mouse',                39.99,      'Mouse ultraligero con sensor avanzado y botones programables.'),
    ('Razer Kraken Ultimate Gaming Headset',           129.99,      'Auriculares inalámbricos con sonido envolvente, micrófono con cancelación de ruido y comodidad para sesiones largas.'),
    ('HyperX Pulsefire Surge RGB Gaming Mouse',         49.99,      'Mouse con sensor avanzado, iluminación RGB personalizable y diseño ergonómico.');


  
-- INVENTORIES
SELECT insert_inventory (1,     11,     9,      'Area A, pasillo 1, estante 1',     'risus quis diam luctus lobortis.');
SELECT insert_inventory (1,     145,    16,     'Area B, pasillo 2, estante 2',     'facilisis vitae, orci. Phasellus dapibus');
SELECT insert_inventory (1,     14,    14,     'Area C, pasillo 3, estante 3',     'dignissim pharetra. Nam ac nulla.');
SELECT insert_inventory (1,     48,     10,     'Area D, pasillo 4, estante 4',     'leo, in lobortis tellus justo');
SELECT insert_inventory (1,     51,     19,     'Area F, pasillo 5, estante 5',     'Nam interdum enim non nisi');
SELECT insert_inventory (1,     156,    19,     'Area G, pasillo 6, estante 1',     'id, ante. Nunc mauris sapien,');
SELECT insert_inventory (1,     35,     12,     'Area H, pasillo 7, estante 2',     'diam. Duis mi enim, condimentum');
SELECT insert_inventory (1,     62,     23,     'Area A, pasillo 8, estante 3',     'neque tellus, imperdiet non, vestibulum');
SELECT insert_inventory (1,     143,    1,      'Area B, pasillo 9, estante 4',     'Maecenas malesuada fringilla est. Mauris');
SELECT insert_inventory (1,     115,    7,      'Area C, pasillo 1, estante 5',     'erat semper rutrum. Fusce dolor');
SELECT insert_inventory (1,     41,     12,     'Area D, pasillo 2, estante 1',     'ultrices a, auctor non, feugiat');
SELECT insert_inventory (1,     45,     3,      'Area E, pasillo 3, estante 2',     'odio tristique pharetra. Quisque ac');
SELECT insert_inventory (1,     192,    12,     'Area F, pasillo 4, estante 3',     'pede. Cras vulputate velit eu');
SELECT insert_inventory (1,     169,    2,      'Area G, pasillo 5, estante 4',     'sem elit, pharetra ut, pharetra');
SELECT insert_inventory (1,     108,    17,     'Area A, pasillo 6, estante 5',     'convallis in, cursus et, eros.');
SELECT insert_inventory (1,     116,    7,      'Area B, pasillo 7, estante 1',     'ut, pharetra sed, hendrerit a,');
SELECT insert_inventory (1,     103,    21,     'Area C, pasillo 8, estante 2',     'tellus. Suspendisse sed dolor. Fusce');
SELECT insert_inventory (1,     230,    20,     'Area D, pasillo 9, estante 3',     'dui. Fusce diam nunc, ullamcorper');
SELECT insert_inventory (1,     190,    2,      'Area E, pasillo 1, estante 4',     'Fusce dolor quam, elementum at,');
SELECT insert_inventory (1,     189,    1,      'Area F, pasillo 2, estante 5',     'justo. Proin non massa non');
SELECT insert_inventory (1,     134,    17,     'Area G, pasillo 3, estante 1',     'tempus scelerisque, lorem ipsum sodales');
SELECT insert_inventory (1,     55,     9,      'Area H, pasillo 4, estante 2',     'Proin sed turpis nec mauris');
SELECT insert_inventory (1,     155,    8,      'Area A, pasillo 5, estante 3',     'non magna. Nam ligula elit,');
SELECT insert_inventory (1,     211,    12,     'Area B, pasillo 6, estante 4',     'urna. Ut tincidunt vehicula risus.');
SELECT insert_inventory (1,     166,    12,     'Area X, pasillo 7, estante 5',     'enim, gravida sit amet, dapibus');
SELECT insert_inventory (1,     202,    23,     'Area S, pasillo 8, estante 1',     'Quisque nonummy ipsum non arcu.');
SELECT insert_inventory (1,     12,     7,      'Area R, pasillo 9, estante 2',     'eu tellus. Phasellus elit pede,');
SELECT insert_inventory (1,     197,    2,      'Area G, pasillo 0, estante 3',     'Cras sed leo. Cras vehicula');
SELECT insert_inventory (1,     182,    3,      'Area G, pasillo 0, estante 4',     'ipsum. Suspendisse sagittis. Nullam vitae');
SELECT insert_inventory (1,     224,    6,      'Area K, pasillo 1, estante 1',     'laoreet, libero et tristique pellentesque');
SELECT insert_inventory (1,     161,    5,      'Area Y, pasillo 2, estante 2',     'congue turpis. In condimentum. Donec');
SELECT insert_inventory (1,     145,    8,      'Area R, pasillo 3, estante 3',     'orci luctus et ultrices posuere');
SELECT insert_inventory (1,     193,    7,      'Area X, pasillo 4, estante 4',     'primis in faucibus orci luctus');
SELECT insert_inventory (1,     128,    15,     'Area A, pasillo 5, estante 5',     'taciti sociosqu ad litora torquent');
SELECT insert_inventory (1,     127,    24,     'Area W, pasillo 6, estante 1',     'pharetra. Nam ac nulla. In');
SELECT insert_inventory (1,     39,     1,      'Area E, pasillo 8, estante 2',     'Fusce aliquam, enim nec tempus');
SELECT insert_inventory (1,     126,    17,     'Area I, pasillo 3, estante 4',     'odio. Etiam ligula tortor, dictum');
SELECT insert_inventory (1,     46,     16,     'Area D, pasillo 4, estante 5',     'libero at auctor ullamcorper, nisl');
SELECT insert_inventory (1,     97,     7,      'Area T, pasillo 6, estante 1',     'Nullam lobortis quam a felis');
SELECT insert_inventory (1,     157,    23,     'Area I, pasillo 7, estante 2',     'eros turpis non enim. Mauris');
SELECT insert_inventory (1,     147,    15,     'Area O, pasillo 2, estante 3',     'vel est tempor bibendum. Donec');
SELECT insert_inventory (1,     9,      5,      'Area D, pasillo 4, estante 4',     'senectus et netus et malesuada');
SELECT insert_inventory (1,     166,    11,     'Area F, pasillo 4, estante 5',     'diam vel arcu. Curabitur ut');
SELECT insert_inventory (1,     218,    18,     'Area H, pasillo 5, estante 1',     'at risus. Nunc ac sem');
SELECT insert_inventory (1,     206,    22,     'Area J, pasillo 6, estante 2',     'ante. Nunc mauris sapien, cursus');
SELECT insert_inventory (1,     144,    6,      'Area L, pasillo 7, estante 3',     'risus. Donec nibh enim, gravida');
SELECT insert_inventory (1,     143,    22,     'Area Q, pasillo 2, estante 4',     'a, auctor non, feugiat nec,');
SELECT insert_inventory (1,     94,     5,      'Area P, pasillo 1, estante 1',     'Praesent interdum ligula eu enim.');
SELECT insert_inventory (1,     96,     10,     'Area X, pasillo 3, estante 2',     'tristique ac, eleifend vitae, erat.');
SELECT insert_inventory (1,     83,     4,      'Area S, pasillo 5, estante 3',     'nonummy ipsum non arcu. Vivamus');
SELECT insert_inventory (1,     161,    2,      'Area F, pasillo 7, estante 4',     'libero. Donec consectetuer mauris id');
SELECT insert_inventory (1,     159,    23,     'Area E, pasillo 9, estante 5',     'et magnis dis parturient montes,');
SELECT insert_inventory (1,     139,    4,      'Area F, pasillo 0, estante 1',     'ligula eu enim. Etiam imperdiet');
SELECT insert_inventory (1,     216,    11,     'Area M, pasillo 0, estante 2',     'a feugiat tellus lorem eu');
SELECT insert_inventory (1,     207,    6,      'Area N, pasillo 9, estante 3',     'diam vel arcu. Curabitur ut');
SELECT insert_inventory (1,     58,     17,     'Area M, pasillo 8, estante 4',     'risus. Morbi metus. Vivamus euismod');
SELECT insert_inventory (1,     130,    1,      'Area N, pasillo 7, estante 5',     'rutrum urna, nec luctus felis');
SELECT insert_inventory (1,     221,    6,      'Area J, pasillo 6, estante 1',     'nisl. Quisque fringilla euismod enim.');
SELECT insert_inventory (1,     95,     14,     'Area L, pasillo 7, estante 2',     'in magna. Phasellus dolor elit,');
SELECT insert_inventory (1,     19,     20,     'Area U, pasillo 5, estante 3',     'eu tempor erat neque non');
SELECT insert_inventory (1,     151,    9,      'Area I, pasillo 5, estante 4',     'enim commodo hendrerit. Donec porttitor');
SELECT insert_inventory (1,     160,    2,      'Area O, pasillo 4, estante 5',     'hendrerit a, arcu. Sed et');
SELECT insert_inventory (1,     213,    11,     'Area X, pasillo 4, estante 1',     'bibendum. Donec felis orci, adipiscing');
SELECT insert_inventory (1,     35,     4,      'Area D, pasillo 4, estante 3',     'Donec est. Nunc ullamcorper, velit');
SELECT insert_inventory (1,     177,    23,     'Area A, pasillo 3, estante 4',     'feugiat metus sit amet ante.');
SELECT insert_inventory (1,     47,     11,     'Area Q, pasillo 2, estante 1',     'ipsum cursus vestibulum. Mauris magna.');
SELECT insert_inventory (1,     4,      25,     'Area A, pasillo 1, estante 2',     'est ac facilisis facilisis, magna');
SELECT insert_inventory (1,     10,     11,     'Area G, pasillo 4, estante 3',     'vulputate, nisi sem semper erat,');
SELECT insert_inventory (1,     81,     20,     'Area T, pasillo 6, estante 4',     'vitae diam. Proin dolor. Nulla');
SELECT insert_inventory (1,     204,    14,     'Area E, pasillo 7, estante 5',     'faucibus lectus, a sollicitudin orci');
SELECT insert_inventory (1,     54,     14,     'Area E, pasillo 8, estante 1',     'ut erat. Sed nunc est,');
SELECT insert_inventory (1,     120,    1,      'Area U, pasillo 8, estante 2',     'ut, pharetra sed, hendrerit a,');
SELECT insert_inventory (1,     135,    13,     'Area U, pasillo 7, estante 3',     'sit amet ornare lectus justo');
SELECT insert_inventory (1,     23,     12,     'Area U, pasillo 5, estante 4',     'gravida non, sollicitudin a, malesuada');
SELECT insert_inventory (1,     237,    19,     'Area I, pasillo 7, estante 5',     'arcu. Aliquam ultrices iaculis odio.');
SELECT insert_inventory (1,     212,    5,      'Area A, pasillo 2, estante 3',     'Quisque porttitor eros nec tellus.');
SELECT insert_inventory (1,     172,    3,      'Area G, pasillo 1, estante 4',     'varius et, euismod et, commodo');
SELECT insert_inventory (1,     174,    11,     'Area F, pasillo 2, estante 5',     'magnis dis parturient montes, nascetur');
SELECT insert_inventory (1,     238,    14,     'Area A, pasillo 3, estante 2',     'Sed nec metus facilisis lorem');
SELECT insert_inventory (1,     44,     13,     'Area T, pasillo 5, estante 4',     'elit sed consequat auctor, nunc');
SELECT insert_inventory (1,     73,     16,     'Area R, pasillo 7, estante 1',     'in consectetuer ipsum nunc id');
SELECT insert_inventory (1,     195,    4,      'Area E, pasillo 7, estante 2',     'lacus. Quisque purus sapien, gravida');
SELECT insert_inventory (1,     138,    17,     'Area B, pasillo 8, estante 3',     'id nunc interdum feugiat. Sed');
SELECT insert_inventory (1,     34,     17,     'Area N, pasillo 7, estante 4',     'nunc sed libero. Proin sed');
SELECT insert_inventory (1,     225,    5,      'Area C, pasillo 3, estante 4',     'ipsum primis in faucibus orci');
SELECT insert_inventory (1,     65,     4,      'Area B, pasillo 7, estante 5',     'ante lectus convallis est, vitae');
SELECT insert_inventory (1,     167,    24,     'Area X, pasillo 2, estante 1',     'sed consequat auctor, nunc nulla');
SELECT insert_inventory (1,     158,    13,     'Area Z, pasillo 2, estante 2',     'lorem. Donec elementum, lorem ut');
SELECT insert_inventory (1,     186,    14,     'Area T, pasillo 3, estante 3',     'tristique ac, eleifend vitae, erat.');
SELECT insert_inventory (1,     64,     9,      'Area D, pasillo 4, estante 4',     'blandit congue. In scelerisque scelerisque');
SELECT insert_inventory (1,     59,     9,      'Area G, pasillo 5, estante 5',     'diam. Duis mi enim, condimentum');
SELECT insert_inventory (1,     114,    12,     'Area I, pasillo 6, estante 1',     'penatibus et magnis dis parturient');
SELECT insert_inventory (1,     6,      4,      'Area U, pasillo 2, estante 2',     'nulla. Integer urna. Vivamus molestie');
SELECT insert_inventory (1,     180,    9,      'Area L, pasillo 3, estante 3',     'interdum feugiat. Sed nec metus');
SELECT insert_inventory (1,     175,    23,     'Area P, pasillo 3, estante 2',     'in, tempus eu, ligula. Aenean');
SELECT insert_inventory (1,     165,    14,     'Area I, pasillo 9, estante 3',     'congue. In scelerisque scelerisque dui.');
SELECT insert_inventory (1,     123,    2,      'Area K, pasillo 7, estante 4',     'et arcu imperdiet ullamcorper. Duis');
SELECT insert_inventory (1,     76,     7,      'Area P, pasillo 8, estante 5',     'tellus, imperdiet non, vestibulum nec,');


SELECT insert_inventory (2,     92,     13,     'Area A, pasillo 1, estante 1',     'purus ac tellus. Suspendisse sed');
SELECT insert_inventory (2,     96,     3,      'Area B, pasillo 2, estante 2',     'ipsum. Suspendisse sagittis. Nullam vitae');
SELECT insert_inventory (2,     12,     16,     'Area C, pasillo 3, estante 3',     'aliquam eu, accumsan sed, facilisis');
SELECT insert_inventory (2,     148,    19,     'Area D, pasillo 4, estante 4',     'Nullam velit dui, semper et,');
SELECT insert_inventory (2,     25,     3,      'Area F, pasillo 5, estante 5',     'lacus. Etiam bibendum fermentum metus.');
SELECT insert_inventory (2,     15,     20,     'Area G, pasillo 6, estante 1',     'Phasellus nulla. Integer vulputate, risus');
SELECT insert_inventory (2,     122,    19,     'Area H, pasillo 7, estante 2',     'Mauris magna. Duis dignissim tempor');
SELECT insert_inventory (2,     34,     11,     'Area B, pasillo 9, estante 4',     'vehicula aliquet libero. Integer in');
SELECT insert_inventory (2,     82,     11,     'Area C, pasillo 1, estante 5',     'non, dapibus rutrum, justo. Praesent');
SELECT insert_inventory (2,     198,    2,      'Area F, pasillo 4, estante 3',     'enim non nisi. Aenean eget');
SELECT insert_inventory (2,     69,     24,     'Area G, pasillo 5, estante 4',     'non, vestibulum nec, euismod in,');
SELECT insert_inventory (2,     133,    3,      'Area A, pasillo 6, estante 5',     'magna. Phasellus dolor elit, pellentesque');
SELECT insert_inventory (2,     219,    12,     'Area B, pasillo 7, estante 1',     'est. Mauris eu turpis. Nulla');
SELECT insert_inventory (2,     97,     8,      'Area D, pasillo 9, estante 3',     'diam. Duis mi enim, condimentum');
SELECT insert_inventory (2,     103,    3,      'Area F, pasillo 2, estante 5',     'rutrum. Fusce dolor quam, elementum');
SELECT insert_inventory (2,     238,    24,     'Area G, pasillo 3, estante 1',     'parturient montes, nascetur ridiculus mus.');
SELECT insert_inventory (2,     204,    13,     'Area H, pasillo 4, estante 2',     'mi pede, nonummy ut, molestie');
SELECT insert_inventory (2,     104,    7,      'Area B, pasillo 6, estante 4',     'In mi pede, nonummy ut,');
SELECT insert_inventory (2,     42,     7,      'Area X, pasillo 7, estante 5',     'dignissim magna a tortor. Nunc');
SELECT insert_inventory (2,     235,    7,      'Area R, pasillo 9, estante 2',     'ut quam vel sapien imperdiet');
SELECT insert_inventory (2,     85,     19,     'Area G, pasillo 0, estante 3',     'tincidunt nibh. Phasellus nulla. Integer');
SELECT insert_inventory (2,     112,    12,     'Area G, pasillo 0, estante 4',     'felis, adipiscing fringilla, porttitor vulputate,');
SELECT insert_inventory (2,     31,     20,     'Area K, pasillo 1, estante 1',     'augue ut lacus. Nulla tincidunt,');
SELECT insert_inventory (2,     212,    13,     'Area R, pasillo 3, estante 3',     'blandit congue. In scelerisque scelerisque');
SELECT insert_inventory (2,     201,    10,     'Area X, pasillo 4, estante 4',     'sagittis lobortis mauris. Suspendisse aliquet');
SELECT insert_inventory (2,     205,    13,     'Area A, pasillo 5, estante 5',     'vel pede blandit congue. In');
SELECT insert_inventory (2,     109,    16,     'Area W, pasillo 6, estante 1',     'sociosqu ad litora torquent per');
SELECT insert_inventory (2,     242,    3,      'Area E, pasillo 8, estante 2',     'accumsan interdum libero dui nec');
SELECT insert_inventory (2,     3,      24,     'Area U, pasillo 9, estante 3',     'eget magna. Suspendisse tristique neque');
SELECT insert_inventory (2,     195,    9,      'Area I, pasillo 3, estante 4',     'tincidunt congue turpis. In condimentum.');
SELECT insert_inventory (2,     166,    24,     'Area D, pasillo 4, estante 5',     'elementum purus, accumsan interdum libero');
SELECT insert_inventory (2,     26,     23,     'Area I, pasillo 7, estante 2',     'Nulla facilisi. Sed neque. Sed');
SELECT insert_inventory (2,     237,    8,      'Area O, pasillo 2, estante 3',     'erat. Sed nunc est, mollis');
SELECT insert_inventory (2,     17,     4,      'Area F, pasillo 4, estante 5',     'ut dolor dapibus gravida. Aliquam');
SELECT insert_inventory (2,     116,    13,     'Area H, pasillo 5, estante 1',     'Nunc commodo auctor velit. Aliquam');
SELECT insert_inventory (2,     218,    12,     'Area J, pasillo 6, estante 2',     'eget metus eu erat semper');
SELECT insert_inventory (2,     118,    19,     'Area L, pasillo 7, estante 3',     'eleifend. Cras sed leo. Cras');
SELECT insert_inventory (2,     207,    7,      'Area Q, pasillo 2, estante 4',     'euismod enim. Etiam gravida molestie');
SELECT insert_inventory (2,     194,    13,     'Area P, pasillo 1, estante 1',     'amet metus. Aliquam erat volutpat.');
SELECT insert_inventory (2,     20,     7,      'Area X, pasillo 3, estante 2',     'sodales nisi magna sed dui.');
SELECT insert_inventory (2,     1,      11,     'Area S, pasillo 5, estante 3',     'Nam ligula elit, pretium et,');
SELECT insert_inventory (2,     27,     5,      'Area F, pasillo 7, estante 4',     'leo elementum sem, vitae aliquam');
SELECT insert_inventory (2,     55,     17,     'Area E, pasillo 9, estante 5',     'Nulla facilisi. Sed neque. Sed');
SELECT insert_inventory (2,     243,    6,      'Area F, pasillo 0, estante 1',     'id enim. Curabitur massa. Vestibulum');
SELECT insert_inventory (2,     138,    20,     'Area M, pasillo 0, estante 2',     'dignissim pharetra. Nam ac nulla.');
SELECT insert_inventory (2,     168,    8,      'Area N, pasillo 9, estante 3',     'odio, auctor vitae, aliquet nec,');
SELECT insert_inventory (2,     180,    9,      'Area M, pasillo 8, estante 4',     'amet massa. Quisque porttitor eros');
SELECT insert_inventory (2,     7,      10,     'Area N, pasillo 7, estante 5',     'ornare lectus justo eu arcu.');
SELECT insert_inventory (2,     70,     14,     'Area J, pasillo 6, estante 1',     'neque et nunc. Quisque ornare');
SELECT insert_inventory (2,     223,    22,     'Area L, pasillo 7, estante 2',     'Morbi vehicula. Pellentesque tincidunt tempus');
SELECT insert_inventory (2,     234,    20,     'Area U, pasillo 5, estante 3',     'nibh vulputate mauris sagittis placerat.');
SELECT insert_inventory (2,     2,      21,     'Area I, pasillo 5, estante 4',     'quis accumsan convallis, ante lectus');
SELECT insert_inventory (2,     157,    3,      'Area O, pasillo 4, estante 5',     'eget massa. Suspendisse eleifend. Cras');
SELECT insert_inventory (2,     88,     11,     'Area X, pasillo 4, estante 1',     'Duis mi enim, condimentum eget,');
SELECT insert_inventory (2,     163,    6,      'Area S, pasillo 4, estante 2',     'quis accumsan convallis, ante lectus');
SELECT insert_inventory (2,     53,     23,     'Area D, pasillo 4, estante 3',     'vitae velit egestas lacinia. Sed');
SELECT insert_inventory (2,     167,    4,      'Area A, pasillo 3, estante 4',     'porta elit, a feugiat tellus');
SELECT insert_inventory (2,     169,    23,     'Area Q, pasillo 2, estante 1',     'accumsan convallis, ante lectus convallis');
SELECT insert_inventory (2,     83,     8,      'Area A, pasillo 1, estante 2',     'scelerisque neque. Nullam nisl. Maecenas');
SELECT insert_inventory (2,     129,    9,      'Area G, pasillo 4, estante 3',     'Aenean gravida nunc sed pede.');
SELECT insert_inventory (2,     111,    11,     'Area T, pasillo 6, estante 4',     'tempus non, lacinia at, iaculis');
SELECT insert_inventory (2,     6,      14,     'Area E, pasillo 7, estante 5',     'enim consequat purus. Maecenas libero');
SELECT insert_inventory (2,     57,     11,     'Area E, pasillo 8, estante 1',     'mattis velit justo nec ante.');
SELECT insert_inventory (2,     106,    6,      'Area U, pasillo 8, estante 2',     'Quisque ac libero nec ligula');
SELECT insert_inventory (2,     162,    19,     'Area U, pasillo 7, estante 3',     'Nam tempor diam dictum sapien.');
SELECT insert_inventory (2,     37,     12,     'Area U, pasillo 5, estante 4',     'nibh sit amet orci. Ut');
SELECT insert_inventory (2,     244,    14,     'Area I, pasillo 7, estante 5',     'non massa non ante bibendum');
SELECT insert_inventory (2,     192,    10,     'Area D, pasillo 9, estante 1',     'sollicitudin adipiscing ligula. Aenean gravida');
SELECT insert_inventory (2,     227,    17,     'Area F, pasillo 6, estante 2',     'a, scelerisque sed, sapien. Nunc');
SELECT insert_inventory (2,     146,    13,     'Area A, pasillo 2, estante 3',     'Mauris eu turpis. Nulla aliquet.');
SELECT insert_inventory (2,     50,     4,      'Area G, pasillo 1, estante 4',     'Nulla semper tellus id nunc');
SELECT insert_inventory (2,     174,    7,      'Area F, pasillo 2, estante 5',     'senectus et netus et malesuada');
SELECT insert_inventory (2,     177,    16,     'Area S, pasillo 1, estante 1',     'auctor velit. Aliquam nisl. Nulla');
SELECT insert_inventory (2,     191,    10,     'Area A, pasillo 3, estante 2',     'laoreet posuere, enim nisl elementum');
SELECT insert_inventory (2,     74,     11,     'Area S, pasillo 6, estante 3',     'Suspendisse tristique neque venenatis lacus.');
SELECT insert_inventory (2,     47,     19,     'Area T, pasillo 5, estante 4',     'semper tellus id nunc interdum');
SELECT insert_inventory (2,     228,    24,     'Area R, pasillo 7, estante 1',     'dolor. Donec fringilla. Donec feugiat');
SELECT insert_inventory (2,     41,     8,      'Area E, pasillo 7, estante 2',     'arcu. Curabitur ut odio vel');
SELECT insert_inventory (2,     206,    18,     'Area N, pasillo 7, estante 4',     'commodo tincidunt nibh. Phasellus nulla.');
SELECT insert_inventory (2,     107,    9,      'Area M, pasillo 8, estante 5',     'Curabitur sed tortor. Integer aliquam');
SELECT insert_inventory (2,     159,    9,      'Area C, pasillo 3, estante 4',     'imperdiet dictum magna. Ut tincidunt');
SELECT insert_inventory (2,     28,     23,     'Area V, pasillo 5, estante 4',     'leo. Cras vehicula aliquet libero.');
SELECT insert_inventory (2,     29,     23,     'Area B, pasillo 7, estante 5',     'magna. Lorem ipsum dolor sit');
SELECT insert_inventory (2,     226,    24,     'Area X, pasillo 2, estante 1',     'odio tristique pharetra. Quisque ac');
SELECT insert_inventory (2,     140,    9,      'Area Z, pasillo 2, estante 2',     'sed pede nec ante blandit');
SELECT insert_inventory (2,     115,    3,      'Area D, pasillo 4, estante 4',     'risus. Nulla eget metus eu');
SELECT insert_inventory (2,     229,    4,      'Area G, pasillo 5, estante 5',     'consequat dolor vitae dolor. Donec');
SELECT insert_inventory (2,     48,     6,      'Area U, pasillo 2, estante 2',     'lobortis augue scelerisque mollis. Phasellus');
SELECT insert_inventory (2,     59,     8,      'Area L, pasillo 3, estante 3',     'neque. Sed eget lacus. Mauris');
SELECT insert_inventory (2,     71,     1,      'Area K, pasillo 4, estante 4',     'fringilla cursus purus. Nullam scelerisque');


SELECT insert_inventory (3,     50,     1,      'Area I, pasillo 9, estante 3',     'euismod enim. Etiam gravida molestie');
SELECT insert_inventory (3,     141,    12,     'Area K, pasillo 7, estante 4',     'Suspendisse commodo tincidunt nibh. Phasellus');
SELECT insert_inventory (3,     18,     3,      'Area P, pasillo 8, estante 5',     'id risus quis diam luctus');
SELECT insert_inventory (3,     25,     11,     'Area J, pasillo 6, estante 2',     'fermentum arcu. Vestibulum ante ipsum');
SELECT insert_inventory (3,     107,    2,      'Area L, pasillo 7, estante 3',     'nibh. Donec est mauris, rhoncus');
SELECT insert_inventory (3,     180,    20,     'Area Q, pasillo 2, estante 4',     'velit eu sem. Pellentesque ut');
SELECT insert_inventory (3,     22,     12,     'Area P, pasillo 1, estante 1',     'orci lobortis augue scelerisque mollis.');
SELECT insert_inventory (3,     10,     19,     'Area X, pasillo 3, estante 2',     'libero mauris, aliquam eu, accumsan');
SELECT insert_inventory (3,     163,    23,     'Area S, pasillo 5, estante 3',     'vel, faucibus id, libero. Donec');
SELECT insert_inventory (3,     198,    8,      'Area F, pasillo 7, estante 4',     'metus. In nec orci. Donec');
SELECT insert_inventory (3,     28,     19,     'Area E, pasillo 9, estante 5',     'Donec consectetuer mauris id sapien.');
SELECT insert_inventory (3,     132,    21,     'Area F, pasillo 0, estante 1',     'et malesuada fames ac turpis');
SELECT insert_inventory (3,     171,    21,     'Area M, pasillo 0, estante 2',     'enim nec tempus scelerisque, lorem');
SELECT insert_inventory (3,     172,    8,      'Area N, pasillo 9, estante 3',     'vulputate, posuere vulputate, lacus. Cras');
SELECT insert_inventory (3,     114,    17,     'Area M, pasillo 8, estante 4',     'a mi fringilla mi lacinia');
SELECT insert_inventory (3,     153,    10,     'Area N, pasillo 7, estante 5',     'sed dolor. Fusce mi lorem,');
SELECT insert_inventory (3,     134,    20,     'Area J, pasillo 6, estante 1',     'enim consequat purus. Maecenas libero');
SELECT insert_inventory (3,     157,    19,     'Area L, pasillo 7, estante 2',     'elit, pretium et, rutrum non,');
SELECT insert_inventory (3,     195,    16,     'Area U, pasillo 5, estante 3',     'Suspendisse dui. Fusce diam nunc,');
SELECT insert_inventory (3,     47,     13,     'Area I, pasillo 5, estante 4',     'Sed congue, elit sed consequat');
SELECT insert_inventory (3,     54,     18,     'Area X, pasillo 4, estante 1',     'est. Mauris eu turpis. Nulla');
SELECT insert_inventory (3,     99,     5,      'Area S, pasillo 4, estante 2',     'quam a felis ullamcorper viverra.');
SELECT insert_inventory (3,     192,    20,     'Area D, pasillo 4, estante 3',     'Fusce fermentum fermentum arcu. Vestibulum');
SELECT insert_inventory (3,     213,    21,     'Area A, pasillo 3, estante 4',     'pede nec ante blandit viverra.');
SELECT insert_inventory (3,     73,     19,     'Area Q, pasillo 2, estante 1',     'pretium neque. Morbi quis urna.');
SELECT insert_inventory (3,     82,     12,     'Area A, pasillo 1, estante 2',     'nisl. Maecenas malesuada fringilla est.');
SELECT insert_inventory (3,     218,    6,      'Area T, pasillo 6, estante 4',     'dui, in sodales elit erat');
SELECT insert_inventory (3,     164,    8,      'Area E, pasillo 7, estante 5',     'Vestibulum ante ipsum primis in');
SELECT insert_inventory (3,     113,    20,     'Area E, pasillo 8, estante 1',     'lacus. Cras interdum. Nunc sollicitudin');
SELECT insert_inventory (3,     215,    6,      'Area U, pasillo 8, estante 2',     'Donec nibh enim, gravida sit');
SELECT insert_inventory (3,     46,     14,     'Area U, pasillo 7, estante 3',     'Mauris blandit enim consequat purus.');
SELECT insert_inventory (3,     68,     16,     'Area U, pasillo 5, estante 4',     'mauris, aliquam eu, accumsan sed,');
SELECT insert_inventory (3,     142,    24,     'Area I, pasillo 7, estante 5',     'luctus, ipsum leo elementum sem,');
SELECT insert_inventory (3,     104,    3,      'Area D, pasillo 9, estante 1',     'Curabitur vel lectus. Cum sociis');
SELECT insert_inventory (3,     119,    19,     'Area F, pasillo 6, estante 2',     'sem mollis dui, in sodales');
SELECT insert_inventory (3,     31,     20,     'Area A, pasillo 2, estante 3',     'diam nunc, ullamcorper eu, euismod');
SELECT insert_inventory (3,     184,    6,      'Area G, pasillo 1, estante 4',     'lectus pede et risus. Quisque');
SELECT insert_inventory (3,     120,    15,     'Area S, pasillo 1, estante 1',     'Donec est mauris, rhoncus id,');
SELECT insert_inventory (3,     85,     16,     'Area A, pasillo 3, estante 2',     'sociis natoque penatibus et magnis');
SELECT insert_inventory (3,     91,     18,     'Area S, pasillo 6, estante 3',     'Aliquam erat volutpat. Nulla facilisis.');
SELECT insert_inventory (3,     26,     20,     'Area T, pasillo 5, estante 4',     'pede. Suspendisse dui. Fusce diam');
SELECT insert_inventory (3,     161,    12,     'Area B, pasillo 8, estante 3',     'posuere, enim nisl elementum purus,');
SELECT insert_inventory (3,     240,    12,     'Area M, pasillo 8, estante 5',     'mi lorem, vehicula et, rutrum');
SELECT insert_inventory (3,     219,    11,     'Area C, pasillo 3, estante 4',     'vehicula et, rutrum eu, ultrices');
SELECT insert_inventory (3,     169,    14,     'Area V, pasillo 5, estante 4',     'mi lorem, vehicula et, rutrum');
SELECT insert_inventory (3,     57,     11,     'Area B, pasillo 7, estante 5',     'imperdiet non, vestibulum nec, euismod');
SELECT insert_inventory (3,     235,    2,      'Area X, pasillo 2, estante 1',     'nibh vulputate mauris sagittis placerat.');
SELECT insert_inventory (3,     220,    7,      'Area Z, pasillo 2, estante 2',     'ac, eleifend vitae, erat. Vivamus');
SELECT insert_inventory (3,     165,    22,     'Area T, pasillo 3, estante 3',     'dolor. Donec fringilla. Donec feugiat');
SELECT insert_inventory (3,     102,    9,      'Area A, pasillo 2, estante 4',     'taciti sociosqu ad litora torquent');
SELECT insert_inventory (3,     228,    2,      'Area D, pasillo 4, estante 4',     'Nullam velit dui, semper et,');
SELECT insert_inventory (3,     149,    16,     'Area G, pasillo 5, estante 5',     'sollicitudin commodo ipsum. Suspendisse non');
SELECT insert_inventory (3,     155,    13,     'Area I, pasillo 6, estante 1',     'Ut tincidunt vehicula risus. Nulla');
SELECT insert_inventory (3,     224,    19,     'Area U, pasillo 2, estante 2',     'ligula. Donec luctus aliquet odio.');
SELECT insert_inventory (3,     72,     14,     'Area L, pasillo 1, estante 1',     'nisi magna sed dui. Fusce');
SELECT insert_inventory (3,     30,     13,     'Area K, pasillo 7, estante 4',     'nibh. Quisque nonummy ipsum non');
SELECT insert_inventory (3,     51,     20,     'Area P, pasillo 8, estante 5',     'amet orci. Ut sagittis lobortis');
SELECT insert_inventory (3,     221,    19,     'Area U, pasillo 5, estante 4',     'faucibus ut, nulla. Cras eu');
SELECT insert_inventory (3,     189,    21,     'Area I, pasillo 7, estante 5',     'ante dictum mi, ac mattis');
SELECT insert_inventory (3,     79,     13,     'Area D, pasillo 9, estante 1',     'id nunc interdum feugiat. Sed');
SELECT insert_inventory (3,     133,    23,     'Area F, pasillo 6, estante 2',     'luctus et ultrices posuere cubilia');
SELECT insert_inventory (3,     124,    7,      'Area G, pasillo 1, estante 4',     'Nulla aliquet. Proin velit. Sed');
SELECT insert_inventory (3,     3,      7,      'Area F, pasillo 2, estante 5',     'lobortis. Class aptent taciti sociosqu');
SELECT insert_inventory (3,     115,    6,      'Area S, pasillo 1, estante 1',     'risus. Nulla eget metus eu');
SELECT insert_inventory (3,     27,     21,     'Area A, pasillo 3, estante 2',     'aliquet. Proin velit. Sed malesuada');
SELECT insert_inventory (3,     158,    25,     'Area S, pasillo 6, estante 3',     'consectetuer euismod est arcu ac');
SELECT insert_inventory (3,     11,     5,      'Area T, pasillo 5, estante 4',     'erat semper rutrum. Fusce dolor');
SELECT insert_inventory (3,     199,    9,      'Area E, pasillo 7, estante 2',     'eget metus. In nec orci.');
SELECT insert_inventory (3,     20,     4,      'Area B, pasillo 8, estante 3',     'at, velit. Cras lorem lorem,');
SELECT insert_inventory (3,     160,    23,     'Area N, pasillo 7, estante 4',     'fames ac turpis egestas. Aliquam');
SELECT insert_inventory (3,     190,    20,     'Area M, pasillo 8, estante 5',     'vitae purus gravida sagittis. Duis');
SELECT insert_inventory (3,     52,     14,     'Area C, pasillo 3, estante 4',     'nibh. Donec est mauris, rhoncus');
SELECT insert_inventory (3,     197,    8,      'Area V, pasillo 5, estante 4',     'nonummy ultricies ornare, elit elit');
SELECT insert_inventory (3,     2,      22,     'Area X, pasillo 2, estante 1',     'facilisis lorem tristique aliquet. Phasellus');
SELECT insert_inventory (3,     129,    10,     'Area T, pasillo 3, estante 3',     'Curabitur vel lectus. Cum sociis');
SELECT insert_inventory (3,     16,     18,     'Area G, pasillo 5, estante 5',     'Nam tempor diam dictum sapien.');
SELECT insert_inventory (3,     100,    5,      'Area I, pasillo 6, estante 1',     'Mauris eu turpis. Nulla aliquet.');
SELECT insert_inventory (3,     75,     17,     'Area U, pasillo 2, estante 2',     'nisl. Maecenas malesuada fringilla est.');
SELECT insert_inventory (3,     81,     2,      'Area L, pasillo 3, estante 3',     'Vivamus nisi. Mauris nulla. Integer');
SELECT insert_inventory (3,     116,    23,     'Area K, pasillo 4, estante 4',     'vel sapien imperdiet ornare. In');
SELECT insert_inventory (3,     245,    12,     'Area L, pasillo 1, estante 1',     'sed pede. Cum sociis natoque');
SELECT insert_inventory (3,     105,    16,     'Area U, pasillo 2, estante 2',     'a neque. Nullam ut nisi');
SELECT insert_inventory (3,     168,    15,     'Area L, pasillo 3, estante 3',     'ornare sagittis felis. Donec tempor,');


-- CLIENTS
INSERT INTO  sales_mgmt.clients (nit, name, phone_number, card, points) VALUES 
    (35305039,  'Steven Burgess',       27076448,   'none',     0),
    (31723093,  'Irma Diaz',            51415189,   'gold',     122),
    (18184182,  'Blake Hatfield',       15795786,   'common',   77),
    (75064431,  'Teagan Hester',        7963192,    'platinum', 31),
    (58545073,  'Mufutau Russo',        84763732,   'none',     0),
    (13415956,  'Emerald Stevenson',    42879461,   'gold',     323),
    (89568276,  'Priscilla Daugherty',  78289493,   'gold',     40),
    (80726725,  'Abbot Wiggins',        86967875,   'diamond',  33),
    (40051741,  'Zelda Guzman',         69021221,   'common',   96),
    (48429059,  'Shellie Sharp',        12995220,   'none',     0),
    (48404897,  'Keegan Eaton',         82825356,   'none',     0),
    (23489277,  'Stacy Kaufman',        39689291,   'diamond',  4),
    (82938764,  'Joel Holden',          38409563,   'common',   77),
    (15040392,  'Michelle Mccormick',   32185234,   'platinum', 768),
    (47095647,  'Zeph Pace',            89980553,   'none',     0),
    (34043553,  'Kay Dean',             42519400,   'diamond',  818),
    (79251331,  'Ingrid Carson',        54587015,   'common',   88),
    (89194607,  'Castor Nielsen',       37511951,   'diamond',  55),
    (64162911,  'Madonna Powers',       99739008,   'none',     0),
    (35041984,  'Kennan Brock',         58568659,   'none',     0),
    (21358979,  'Jameson Sherman',      73523044,   'common',   43),
    (89571700,  'Hamilton Miranda',     37641573,   'none',     0),
    (35326075,  'Patience Roman',       46887922,   'platinum', 9),
    (55984886,  'Genevieve Cantrell',   26367843,   'platinum', 128),
    (30946176,  'Jillian Cash',         83274600,   'gold',     8),
    (48980933,  'Damian Francis',       97131189,   'diamond',  75),
    (24171492,  'Fritz Baxter',         79368559,   'common',   79),
    (31117690,  'Dustin Porter',        78662907,   'diamond',  41),
    (52077269,  'Jolene Duke',          30555696,   'gold',     72),
    (86912992,  'Natalie Clements',     52757370,   'common',   423),
    (19585083,  'Carly Stanton',        45051955,   'common',   91),
    (31136311,  'Regina Carr',          33814802,   'platinum', 198),
    (55178297,  'Maggy Houston',        71388018,   'gold',     16),
    (10313848,  'Daniel Gould',         86525750,   'platinum', 347),
    (35357580,  'Xandra Wong',          54942689,   'gold',     45);   





