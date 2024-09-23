
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
INSERT INTO branch_mgmt.cashiers(branch_id, name, username, password, state) VALUES
    (1, 'cashier1',         'cashier1', '6a79b51fec89db977e62d3b5aee3ea8b9de93cabf2446aae7d6f517db6d16178', 'active'), -- pass: cashier
    (1, 'Aileen Pritani',   'Pritani_', 'cc690ddfa30148760bb86d3a2992bdd802e9cee55bd84b2674b0f8cc9ce4355b', 'active'), -- pass: blue_potato
    (1, 'Mihai Benton',     'Mihai_ve', '650e9595236154547665929c8ff6c06a4e1f89bb63797649b3cfc5337d075be8', 'active'), -- pass: muffins
    (1, 'Bell Mertz',       'mertz_',   '17bfb20e0f7b3a7ebd896e192d4d137efd5bd4f5bd5759ff36023aed3f792bba', 'active'), -- pass: Amir94
    (1, 'Aniya Medhurst',   'anniya_M', '23c267883e7451541c151c0b66f6fbf90ff451f2e6707baccbb344c6f256ec23', 'active'), -- pass: Trystan91
    (1, 'Kellen Rohan',     'Kel.Prsn', '366c1ab53781381b00b2316f0276c23170a3252b8825902cff6e2f275bce4ec9', 'active'), -- pass: Rogelio59
    (1, 'Lexi Becker',      'Beckr44',  'd26cdc46e372a8f5c0b5eae54b00c3f3f98bcdd1cab881c4c62e32be6df8f50b', 'active'), -- pass: Cyril76
    (1, 'Tressie Collins',  'Tres_s',   '2013f5bfb6f0a911ad711c8d9db0086bb1d6345f0afc3ee3ef913013895b1bc3', 'active'), -- pass: LondonMante32
    (2, 'Ayden Dare',       'Dare.ayd', '5f9586436b4864554d11ee30d88081539bb91ebdfd04843b733ffd9d5da42872', 'active'), -- pass: Krystal_Bashirian37
    (2, 'Nicolas Bukridge', 'Ni_Buk93', '71e53c554ca63ac953b0b97ea54bf91c3630c118acd82e34fe00b6bbcd4c835a', 'active'), -- pass: Jerad22
    (2, 'Angelina Carroll', 'Carroll',  'c1d065a4dd8b4f74d5b7b19eb6508f41c51970637041e94517f7c83b28c3c306', 'active'), -- pass: Asia86
    (2, 'Verna Lubowitz',   'Verna.wtz','fed5a1bfc7b59c96145089c5ae7f4333c1a78d4ffbb1d00ee26a71291526bf10', 'active'), -- pass: Jovanyey64
    (2, 'Cory Hackett',     'Hack_co8', 'c1bf79d603cca8b0da6e94228ad3805d74a252194951f87fbc9a4f165791e363', 'active'), -- pass: Beattel85
    (2, 'Donny Wisoky',     'Wisk38',   'bfc9601f779eb4a270449c214d75989c46bed313c72c8abf5645fa7ebbef4975', 'active'), -- pass: AntonOConner
    (2, 'Remington Mann',   'Mann_re4', 'b8473abb692651f36d89c2c5d52b06f8ed7bfa763fd096e9cdde910bbaafa3b4', 'inactive'), -- pass: JessBrakus14
    (2, 'Toby Moore',       'Tobyy49',  'fa3234cdc1528d2d6652630d1d500f958b57c8d97fc170974a857fb2784e6a03', 'active'), -- pass: Burley17
    (3, 'Sonya Leannon',    'Leannon72','10baba723a94b7622f5384aa2ad0a642ade72e1b9e79e0332315344baf31d7f4', 'active'), -- pass: Sonyaa_
    (3, 'Gennaro West',     'west_gen', '05100dfd002ca61d5c0fed99ead5799c0588d112d6d38c28913805020cbb4b7b', 'active'), -- pass: Towne63
    (3, 'Lilian Nitzsche',  'Lili_ntz', 'd243b15c759c18f40a3885ae065cf67f3845e3dcc31c0d9676d69021e5e1fad3', 'active'), -- pass: Travis59
    (3, 'Orpha Murray',     'Mray_O32', 'b56ad9d7372fedf9bea25159baec09b9ebebdf33872713203dc92dd7ba1e2b9f', 'inactive'), -- pass: William_Brakus
    (3, 'Shana MacGyver',   'Sha_mg89', '0fe288962c869d21d665aeb7ef61bf0464d6ea2b93504a98f24c6fcc10034fd5', 'active'), -- pass: Demond14
    (3, 'Callie West',      'Llie_wz',  '9de14bafded0f087b44f078201c8324b018073c914b12650650bec2a7332e85e', 'active'), -- pass: Brenda70
    (3, 'Axel Hermiston',   'Axel_He29','0be7368acb9e3d79ae8a0534ba18b411bd3a3fae0d2d4f94007385f0a9db2c38', 'active'), -- pass: Maude29
    (3, 'Celestino Mayer',  'key_mayer','cea70552116071b4ea769c41150f7f76c0e7673bfd6dc62453d507e41af9b529', 'active'); -- pass: tomate


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
  




