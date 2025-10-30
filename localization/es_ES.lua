return {
    misc = {
        dictionary = {
            artb_bonk = "¡Bonk!",
            artb_collectable_shine = 'Activar Brillo de Coleccionables',
            artb_caught = "¡Atrapado!",
            artb_wow = "¡WOW!",
            artb_miss = "¡Falla!",
            artb_arts_crafts_pack = "Paquete de Arte",
            artb_plus_art = "+1 Arte",
            artb_plus_tag = "+1 Etiqueta",
            artb_wood = "¡Madera!",
            artb_wild = "Versátil",
            artb_hungry="Hambriento",
            artb_fed="Satisfecho :D",
            artb_starved="Adios :(",
            artb_protoplanet="Protoplaneta",
            artb_stolen="¡Robado!",
            artb_null_hand_toggle = "Activar Mano Nula",
            artb_menu = "Activar Menú de Personalizado",
            artb_fill= "¡Lleno!",
            artb_empty= "Vacío"
        },
        labels = {
            artb_Uroboros_seal = "Sello de Uroboros",
            artb_brick_seal = "Sello de Lego",
            artb_button_seal = "Sello de Botón",
        },
        poker_hand_descriptions={
            ["artb_null"] = {'5 Cartas sin Categoría'},
        },
        poker_hands={
            ["artb_null"] = "Nulo",
        },
    },
    descriptions = {
        Joker = {
            j_artb_collage = {
                name = 'Comodín Collage',
                text = {
                    "Cuando se {C:red}destruye{} una carta, gana",
                    "{C:chips}+#1#{} Fichas, {C:mult}+#3#{} Multi o {X:mult,C:white}X#5#{} Multi",
                    "{C:inactive,s:0.8}(Actualmente: {C:chips,s:0.8}#2#{} {C:inactive,s:0.8}Fichas/{C:mult,s:0.8}#4#{} {C:inactive,s:0.8}Multi/{X:mult,C:white,s:0.8}X#6#{} {C:inactive,s:0.8}Multi)"
                }
            },
            j_artb_halftone = {
                name = 'Comodín de Semitono',
                text = {
                    'Reactiva todas las cartas',
                    'si tu mano contiene',
                    'una {C:attention}Escalera'
                }
            },
            j_artb_mitosis = {
                name = 'Mitosis',
                text = {
                    "{C:mult}+#1#{} Multi, al seleccionar una",
                    "{C:attention}Ciega{} se crea una copia,",
                }
            },
            j_artb_bat = {
                name = 'Bate de Beísbol',
                text = {
                    "Si tu primera mano contiene",
                    "{C:attention}1{} sola carta, {C:red}destrúyela{}",
                }
            },
            j_artb_rubberhose = {
                name = 'Rubber Hose',
                text = { {
                    "Los {C:clubs}Tréboles{} otorgan",
                    "{C:mult}+#2#{} Multi al anotar",
                },
                {
                    "Las {C:spades}Espadas{} otorgan",
                    "{C:chips}+#1#{} Fichas al anotar",
                } }
            },
            j_artb_clawmachine = {
                name = 'Jueguito de Pinzas',
                text = {
                    "Al seleccionar la {C:attention}Ciega{} hay una",
                    "prob. de {C:green}#1# en #2#{} de obtener",
                    "un {C:attention}Comodín Coleccionable{}",
                }
            },
            j_artb_rorschach = {
                name = 'Comodín de Rorschach',
                text = {
                    "Los {C:clubs}Tréboles{} se convierten",
                    "en {C:attention}Cartas Versátiles{}",
                    "cuando anotan",
                }
            },
            j_artb_sadcube = {
                name = 'Sad Cube',
                text = {
                    "Gana {C:money}$#1#{} cuando cualquier",
                    "probabilidad {C:attention}falla{}",
                }
            },
            j_artb_transparent_joker = {
                name = 'Comodín.png',
                text = {
                    "Las Cartas anotadas",
                    "otorgan {C:mult}+#1#{} Multi por",
                    "cada {C:attention}carta sin anotar{}",
                    "en la mano jugada"
                }
            },
            j_artb_minimalism = {
                name = 'Comodín Minimalista',
                text = {
                    "{C:attention}Reactiva{} las cartas jugadas",
                    "si tu mano contiene {C:attention}3{} o",
                    "menos cartas anotadas",
                }
            },
            j_artb_wooden_joker = {
                name = 'Comodín de madera',
                text = {
                    "{C:attention}Reactiva{} la última carta en",
                    "mano activada {C:attention}#1#{} veces más",
                }
            },
            j_artb_random = {
                name = 'Comodín Misterioso',
                text = {
                    "Al seleccionar la {C:attention}Ciega{},",
                    "transforma todos los {C:attention}Comodínes{}",
                    "a su {C:attention}derecha{} en otros",
                    "Comodines de la misma rareza",
                }
            },
            j_artb_trixel = {
                name = 'Comodín de Trixéles',
                text = {
                    "Gana {C:mult}+#1#{} Multi si la mano",
                    "jugada es una {C:attention}Tercia{}",
                    "{C:inactive}(Actualmente: {C:mult}#2#{} {C:inactive}Multi)"
                }
            },
            j_artb_seven_nine = {
                name = '789',
                text = { {
                    "Anotar {C:attention}7{} y {C:attention}9{} en la",
                    "misma mano {C:red}destruye{}",
                    "todos los {C:attention}9{}",
                },
                {
                    "Los {C:attention}7{} anotados otorgan",
                    "{C:mult}+#2#{} Multi por cada {C:attention}9{} {C:red}destruido{}",
                    "por esta carta",
                    "{C:inactive}(Actualmente: {C:mult}+#1#{} {C:inactive}Multi)"
                } }
            },
            j_artb_collector = {
                name = 'Comodín Hobbista',
                text = { {
                    "Al seleccionar una {C:attention}Ciega{}",
                    "agrega {C:money}$#3#{} al {C:money}valor de venta{}",
                    "a un {C:attention}Comodín{} o {C:attention}Consumible{}",
                    "a su derecha",
                },
                {
                    "Otorga {X:mult,C:white}X#1#{} Multi igual al {C:money}valor{}",
                    "de venta{} total de todos tus",
                    "{C:attention}Comodines{} y {C:attention}Consumibles{}",
                    "{C:inactive}(Actualmente: {X:mult,C:white}X#2#{} {C:inactive}Multi)"
                } }
            },
            j_artb_origami = {
                name = 'Comodín de Origami',
                text = { {
                    "Crea una carta de {C:attention}Arte{}",
                    "cuando seleccionas una {C:attention}Ciega{}",
                    "{C:inactive}(Debe haber espacio){}"
                } }
            },
            j_artb_clownfish = {
                name = 'Pez Payaso',
                text = { {
                    "{X:mult,C:white}X#2#{} Multi",
                    "{s:0.8}Si no has vendido nada",
                    "{s:0.8}en esta ronda, se muere D:",
                    "{C:inactive,s:0.8}(Estado actual: #1#){}"
                } }
            },
            j_artb_energy_drink = {
                name = 'Bebida Energética',
                text = { {
                    "Reactiva el {C:attention}Comodín{} de",
                    "la dercha y se consume",
                    "en {C:attention}#2#{} ronda(s)",
                } }
            },
            j_artb_lego_joker = {
                name = 'Comodín Lego',
                text = { {
                    "Puedes apilar {C:attention}Sellos{}",
                    "{C:attention}de Lego{} en tus cartas",
                    "{C:inactive}(Máximo {C:attention}3{} {C:inactive}Sellos){}",
                },
                {
                    "Obtén un {C:attention}Coleccionable del{}",
                    "{C:attention}Sello de Lego{} cuando",
                    "compras este comodín",
                    "{C:inactive}(Debe haber espacio){}"
                } }
            },
            j_artb_ascii = {
                name = 'Comodín ASCII',
                text = { {
                    "Cada Carta en mano otorga",
                    "{C:mult}+#1#{} Multi y sube {C:mult}+#1#{} por",
                    "cada categoría única",
                    "en secuencia"
                }}
            },
            j_artb_gold_plating = {
                name = 'Chapado en Oro',
                text = {{
                    "Gana {C:money}$#1#{} de {C:money}valor de venta{}",
                    "al final de la ronda"
                },
                {
                    "Vende este comodín para",
                    "otorgar su {C:money}valor de venta{}",
                    "al comodín de la derecha"
                }}
            },
            j_artb_stained_glass = {
                name = 'Vidriera de Comodín',
                text = {{
                    "Las {C:attention}Cartas de Vidrio{} crean una",
                    "carta de {C:attention}Arte{} al anotar, y una",
                    "{C:attention}Etiqeuta creativa{} al {C:red}destruirse"
                }}
            },
            j_artb_paint_chips = {
                name = 'Fichas Pintadas',
                text = {{
                    "{X:chips,C:white}X#2#{} Fichas y",
                    "{X:mult,C:white}X#1#{} Multi",
                }}
            },
            j_artb_heist = {
                name = 'Atraco',
                text = {{
                    "Al seleccionar una {C:attention}Ciega{},",
                    "roba el {C:money}valor de venta{} del",
                    "comodín de la derecha"
                },
                {
                    "Otorga Multi igual a {C:attention}3{}",
                    "veces su {C:attention}valor de venta{}",
                    "{C:inactive}(Actualmente: {C:mult}+#1#{} {C:inactive}Multi)"
                }}
            },
            j_artb_null_pointer = {
                name = 'Null Pointer',
                text = {{
                    "Llena tus ranuras de consumibles",
                    "con {C:attention}coleccionables de mejoras{}",
                    "{C:attention}sin categoría{}",
                    "al {C:attention}comprarse{} o {C:attention}venderse{}"
                }}
            },
            j_artb_card_binder = {
                name = 'Libro de Cartas',
                text = {{
                    "{C:attention}+#1#{} al tamño de mano",
                    "fuera de las {C:attention}Ciegas{}"
                }}
            },
            j_artb_paint_bucket = {
                name = 'Balde de Pintura',
                text = {{
                    "Las próximas {C:attention}#1#{} mano(s)",
                    "otorgan una {C:attention}mejora{} a todas",
                    "de la misma categoría de la",
                    "{C:attention}primera{} carta anotada"
                }}
            },
            j_artb_sparkledog = {
                name = 'Chispitas el Perro',
                text = {{
                    "{C:chips}#1#{} Fichas por cada",
                    "{C:attention}mejora{}, {C:attention}sello{} y {C:attention}edición{}",
                    "únicos en tu {C:attention}Baraja{}",
                    "{C:inactive}(Actualmente: {C:chips}#2#{} {C:inactive}Fichas)"
                }}
            },
        },
        collectable = {
            c_artb_joker_collectable = {
                name = 'Comodín Coleccionable',
                text = {
                    "{C:attention}+1 ranura de consumibles{}",
                    "si ya tienes un {C:attention}Comodín{}",
                    "{C:attention}Coleccionable{}, {C:red}destrúyelo{} y otorga",
                    "{C:money}+#1#{} al valor de venta del nuevo",
                }
            },
            c_artb_limited_edition_collectable = {
                name = 'Edición Limitada',
                text = {
                    "{C:attention}+1 ranura de consumibles{}",
                    "si ya tienes una {C:attention}Edición{}",
                    "{C:attention}Limitada{}, {C:red}destrúyelo{} y otorga",
                    "{C:money}+#1#{} al valor de venta del nuevo",
                    "y {C:attention}+1 ranura de consumibles{}"
                }
            },
            c_artb_mod_collectable = {
                name = '{s:0.9}Modificador Coleccionable{}',
                text = {
                    "Aplica {C:attention}#1#{} a",
                    "{C:attention}1{} una carta seleccionada",
                }
            },
            c_artb_mod_collectable_empty = {
                name = '{s:0.9}Modificador Coleccionable{}',
                text = {
                    "Aplica {C:attention}???{} a {C:attention}1{} una",
                    "carta seleccionada",
                }
            },
            c_artb_gros_michel_collectable = {
                name = 'Gros Michel Coleccionable',
                text = {
                    "{C:mult}+#1#{} Multi, si ya tienes otro",
                    "{C:attention}Gros Michel Coleccionable{}",
                    "{C:red}destruyelo{} y otorga",
                    "{C:mult}+#2#{} Multi al nuevo",
                }
            },
            c_artb_cavendish_collectable = {
                name = 'Cavendish Coleccionable',
                text = {
                    "{X:mult,C:white}X#1#{} Multi, si ya tienes otro",
                    "{C:attention}Cavendish Coleccionable{}",
                    "{C:red}destruyelo{} y otorga",
                    "{X:mult,C:white}X#2#{} Multi al nuevo",
                }
            },
        },
        Tag = {
            tag_artb_creative = {
                name = "Etiqueta Creativa",
                text = {
                    "Otorga gratis un",
                    "{C:attention}Mega Paquete Artístico{}"
                }
            }
        },
        art = {
            c_artb_art_paper = {
                name = 'Papel',
                text = {
                    "Mejora {C:attention}#1#{} cartas seleccionadas",
                    "en {C:attention}Cartas Piñata{}",
                }
            },
            c_artb_art_art_block = {
                name = 'Bloqueo Artístico',
                text = {
                    "Mejora {C:attention}#1#{} cartas seleccionadas",
                    "en {C:attention}Cartas Manchadas{}",
                }
            },
            c_artb_art_glitter = {
                name = 'Brillantina',
                text = {
                    'Otorga una {C:dark_edition}edición{} a',
                    '{C:attention}1{} carta al azar en mano'
                }
            },
            c_artb_art_blend = {
                name = 'Mezclar',
                text = {
                    'Selecciona {C:attention}2{} cartas,',
                    'ambas cartas se copian sus',
                    '{C:attention}mejoras{}, {C:attention}sellos{} y {C:attention}ediciones{}',
                    '{C:inactive,s:0.8}ignora los modificadores ya aplicados{}'
                }
            },
            c_artb_art_auction = {
                name = 'Subasta',
                text = {
                    '{C:red}Destruye{} {C:attention}1{} carta seleccionada:',
                    'Ganas {C:money}$#3#{} por su {C:attention}mejora{},',
                    '{C:money}$#2#{} por su {C:attention}sello{} y',
                    '{C:money}$#1#{} por su {C:attention}edición{}'
                }
            },
            c_artb_art_appraisal = {
                name = 'Tasación',
                text = {
                    'Otorga el valor de venta de',
                    'tus consumibles {C:inactive}(máximo {C:money}$30{}){} y',
                    'crea un {C:attention}Comodín Coleccionable{}',
                    '{C:inactive}(Actualmente: {C:money}$#2#{}){}'
                }
            },
            c_artb_art_plastic = {
                name = 'Plástico',
                text = {
                    'Otorga un {C:mult}Sello de lego{}',
                    'a {C:attention}1{} carta seleccionada',
                }
            },
            c_artb_art_thread = {
                name = 'Hilo',
                text = {
                    'Otorga un {C:attention}Sello de Botón',
                    'a {C:attention}1{} carta seleccionada',
                }
            },
            c_artb_art_swatch = {
                name = 'Muestra de Color',
                text = {
                    'Crea un Consumible',
                    '{C:dark_edition}Negativo{} al azar',
                }
            },
            c_artb_art_carving = {
                name = 'Tallado',
                text = {
                    "Mejora {C:attention}#1#{} cartas seleccionadas",
                    "en {C:attention}cartas de madera{}",
                }
            },
            c_artb_art_scissors = {
                name = 'Tijeras',
                text = {
                    '{C:red}Destruye{} {C:attention}1{} carta seleccionada',
                    'y crea {C:attention}Coleccionables de su',
                    '{C:attention}mejora{}, {C:attention}sello{} y {C:attention}edición{}',
                    '{C:inactive}(Debe haber espacio){}'
                }
            },
            c_artb_art_imitation = {
                name = 'Imitación',
                text = {
                    'selecciona {C:attention}1{} carta y',
                    'crea una copa {C:attention}exacta?{}',
                }
            },
            c_artb_art_sculpting = {
                name = 'Esculpir',
                text = {
                    "Mejora {C:attention}#1#{} carta seleccionadas",
                    "a {C:attention}cartas de mármol{}",
                }
            },
            c_artb_art_mystery_box = {
                name = 'Cajita misteriosa',
                text = {
                    "Llena las ranuras de consumibles",
                    "con {C:attention}Modificadores Coleccionables{}",
                }
            },
            c_artb_art_still_life = {
                name = 'Sigue vivo',
                text = {
                    "Crea un {C:attention}Gros Michel Coleccionable{}",
                    "{C:inactive,s:0.8}(Debe haber espacio{}",
                    "{C:inactive,s:0.8}o tener un Gros Michel Coleccionable{}",
                }
            },
            c_artb_art_pottery = {
                name = 'Alfarería',
                text = {
                    "Mejora {C:attention}#1#{} carta seleccionadas",
                    "en {C:attention}cartas de arcilla{}",
                }
            },
        },
        Planet={
            c_artb_vesta={
                name="Vesta",
                text={
                    "{S:0.8}({S:0.8,V:1}lvl.#1#{S:0.8}){} Sube de nivel",
                    "{C:attention}Nulo",
                    "{C:mult}+3{} Multi y",
                    "{C:chips}+40{} fichas",
                },
            },
        },
        Spectral = {
            c_artb_infinity = {
                name = 'Infinidad',
                text = {
                    'Agrega un {C:dark_edition}Sello de Uroboros{}',
                    'a {C:attention}1{} carta seleccionada',
                }
            },
        },
        Enhanced = {
            m_artb_pinata = {
                name = 'Carta Piñata',
                text = {
                    '{C:red}Destruir{} esta carta',
                    'otorga {C:money}$#1#{} y una',
                    '{C:attention}etiqueta{} al azar'
                }
            },
            m_artb_stained = {
                name = 'Carta Manchada',
                text = {
                    "No tiene palo ni categoría,",
                    "Al {C:red}descartarse{}:",
                    "Prob. de {C:green}#1# en #2#{} de crear",
                    "una carta de {C:attention}Arte{} y",
                    "prob. de {C:green}#3# en #4#{} de crear",
                    "una etiqueta {C:attention}creativa{}",
                }
            },
            m_artb_wood = {
                name = 'Carta de Madera',
                text = {
                    "Si se encuentra en mano",
                    "al jugar las cartas",
                    "anotadas ganan",
                    "{C:chips}+#1#{} Fichas"
                }
            },
            m_artb_marble = {
                name = 'Carta de Marmol',
                text = {
                    "Sin palo ni categoría,",
                    "Otorga {X:chips,C:white}X2{} Fichas después",
                    "de jugarse {C:attention}4{} veces",
                    "{C:inactive}(#2#/4){}"
                }
            },
            m_artb_clay = {
                name = 'Carta de Arcilla',
                text = {
                    "{C:mult}+#1#{} Multi al sacarse,",
                    "la primera vez que este en mano",
                    "y la puntuación se {C:attention}queme{} pierde",
                    "su habilidad y {C:attention}duplica{} su Multi",
                }
            },
        },
        Voucher = {
            v_artb_booster_stack = {
                name = 'Pila de Paquetes',
                text = {
                    "{C:attention}+1 Ranura{} para",
                    "{C:attention}Paquetes Potenciadores"
                },
            },
            v_artb_booster_ritual = {
                name = 'Ritual Potenciador',
                text = {
                    "Al {C:green}renovar{} la tienda,",
                    "se agrega un {C:attention}Paquete Potenciador{}",
                },
            },
            v_artb_pen_holder = {
                name = 'Portalápices',
                text = {
                    "{C:attention}+1{} Ranura de Consumibles",
                },
            },
            v_artb_used_supplies = {
                name = 'Útiles Usados',
                text = {
                    "Cuando se {C:red}destruye{} una carta",
                    'crea una versión {C:dark_edition}negativa{} coleccionable de sus',
                    '{C:attention}edición{}, {C:attention}sello{} y {C:attention}mejora{}',
                },
            },
        },
        Back = {
            b_artb_handmade = {
                name = "Baraja Casera",
                text = {
                    "Empiezas con el vale",
                    "{C:attention,T:v_artb_pen_holder}#1#{} y con",
                    "coleccionables de una {C:attention}mejora{},",
                    "{C:attention}sello{} y {C:attention}edición{}"
                }
            },
            b_artb_box = {
                name = "Baraja de Cartón",
                text = {
                    "Empiezas con el vale",
                    "{C:attention,T:v_artb_booster_stack}#1#{} y un",
                    "{C:attention,T:c_artb_joker_collectable}#2#{},"
                }
            },
        },
        Other = {
            artb_Uroboros_seal = {
                name = 'Sello de Uroboros',
                text = {
                    'Al {C:red}destruirse{} esta carta, se añade',
                    'una copia exacta a tu {C:attention}bajara{}'
                }
            },
            artb_brick_seal = {
                name = 'Sello de Lego',
                text = {
                    'Obtiene {C:mult}+#1#{} Multi',
                    'al anotar',
                }
            },
            artb_button_seal = {
                name = 'Sello de Botón',
                text = {
                    'Al anotar, una carta',
                    'en mano cambia al {C:attention}palo{}',
                    'de la carta {C:attention}anotada{}'
                }
            },
            p_artb_arts_crafts_small_1 = {
                name = "Paquete de Artes",
                text = {
                    "Elige {C:attention}#1#{} de {C:attention}#2#{} cartas",
                    "de {C:be5e6e)}Arte{} para usar",
                    "inmediatamente"
                },
            },
            p_artb_arts_crafts_small_2 = {
                name = "Paquete de Artes",
                text = {
                    "Elige {C:attention}#1#{} de {C:attention}#2#{} cartas",
                    "de {C:be5e6e)}Arte{} para usar",
                    "inmediatamente"
                },
            },
            p_artb_arts_crafts_jumbo = {
                name = "Paquete de Artes Jumbo",
                text = {
                    "Elige {C:attention}#1#{} de {C:attention}#2#{} cartas",
                    "de {C:be5e6e)}Arte{} para usar",
                    "inmediatamente"
                },
            },
            p_artb_arts_crafts_mega = {
                name = "Mega Paquete de Artes",
                text = {
                    "Elige {C:attention}#1#{} de {C:attention}#2#{} cartas",
                    "de {C:be5e6e)}Arte{} para usar",
                    "inmediatamente"
                },
            },
        },
    }
}
