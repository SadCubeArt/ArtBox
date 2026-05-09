return {
    misc = {
        dictionary = {
            artb_bonk = "Bonk!",
            artb_collectable_shine = 'Enable Collectable Shine',
            artb_caught = "Caught!",
            artb_wow = "WOW!",
            artb_miss = "Miss!",
            artb_arts_crafts_pack = "艺术&创作包",
            artb_plus_art = "+1艺术",
            artb_plus_tag = "+1标签",
            artb_wood = "木制!",
            artb_wild = "百搭",
            artb_hungry="饥饿",
            artb_fed="喂食",
            artb_starved="饿坏了 :(",
            artb_protoplanet="原行星",
            artb_stolen="偷取!",
            artb_null_hand_toggle = "启动空值牌型",
            artb_menu = "切换自制菜单",
            artb_fill= "填满!",
            artb_empty= "空",
            artb_fired= "着火!",
            artb_bug= "Bug!",
            artb_molded= "黏土!",
            artb_stained="污渍!"
        },
        labels = {
            artb_ouroboros_seal = "衔尾蛇蜡封",
            artb_brick_seal = "积木蜡封",
            artb_button_seal = "纽扣蜡封",
        },
        poker_hand_descriptions={
            ["artb_null"] = {'5张无点数的牌'},
        },
        poker_hands={
            ["artb_null"] = "空值",
        },
    },
    descriptions = {
        Joker = {
            j_artb_collage = {
                name = '大学小丑',
                text = {
                    "当任意卡牌{C:attention}被摧毁{},",
                    "给予{C:chips}+#1#{}筹码, {C:mult}+#3#{}倍率,或者{X:mult,C:white}X#5#{}倍率",
                    "{C:inactive}(当前为: {C:chips}#2#{} {C:inactive}筹码/{C:mult}#4#{} {C:inactive}倍率/{X:mult,C:white}X#6#{} {C:inactive}倍率)"
                }
            },

            j_artb_halftone = {
                name = '半色调小丑',
                text = {
                    "如果打出的牌型是{C:attention}顺子{}",
                    "重新触发所有计分牌",
                }
            },

            j_artb_mitosis = {
                name = '有丝分裂',
                text = {
                    "{C:mult}+#1#{}倍率",
                    "当{C:attention}盲注{}被选中时,",
                    "创造一个该小丑的复制",
                    "{C:inactive}(必须有空间){}",
                }
            },

            j_artb_bat = {
                name = '棒球棍',
                text = {
                    "每{C:attention}回合{}第一次",
                    "打出的{C:attention}手牌{}如果",
                    "只有一张,摧毁它",
                }
            },

            j_artb_rubberhose = {
                name = '橡皮管小丑',
                text = { {
                    "打出的{C:clubs}梅花{}牌",
                    "在计分时，给予{C:mult}+#2#{}倍率",
                },
                {
                    "打出的{C:clubs}黑桃{}牌",
                    "在计分时，给予{C:chips}+#1#{}筹码",
                } }
            },

            j_artb_clawmachine = {
                name = '娃娃机',
                text = {
                    "当{C:attention}盲注{}被选中时,",
                    "{C:green}#1# / #2#{}概率",
                    "创建一个{C:attention}小丑收藏品{}",
                }
            },

            j_artb_rorschach = {
                name = '罗夏小丑',
                text = {
                    "所有打出的{C:clubs}梅花{}牌",
                    "在计分时变成{C:attention}百搭牌{}",
                }
            },

            j_artb_sadcube = {
                name = '悲伤立方',
                text = {
                    "每当任何概率触发{C:attention}失败{}",
                    "获得{C:money}$#1#{}",
                }
            },

            j_artb_transparent_joker = {
                name = '"透明"小丑',
                text = {
                    "打出的牌中每有一张",
                    "{C:attention}不计分{}的牌，给予",
                    "{C:mult}+#1#{}倍率"
                }
            },

            j_artb_minimalism = {
                name = '极简主义小丑',
                text = {
                    "如果打出的牌少于等于3张",
                    "重新触发所有计分牌",
                }
            },

            j_artb_wooden_joker = {
                name = '木制小丑',
                text = {
                    "重新触发最后一张",
                    "在手牌中的牌{C:attention}#1#{}次",
                }
            },

            j_artb_random = {
                name = '随机小丑',
                text = {
                    "当{C:attention}盲注{}被选中时,",
                    "将右边的所有{C:attention}小丑牌{}",
                    "变形成为随机相同",
                    "稀有度的随机小丑牌",
                }
            },

            j_artb_trixel = {
                name = '三角像素小丑',
                text = {
                    "如果打出的牌型是{C:attention}三条{}",
                    "给予这个小丑{C:mult}+#1#{}倍率",
                    "{C:inactive}(当前为:{C:mult}#2#{} {C:inactive}倍率)"
                }
            },

            j_artb_seven_nine = {
                name = '789',
                text = { {
                    "当{C:attention}7{} 和 {C:attention}9{} 一同打出计分时",
                    "摧毁所有的 {C:attention}9{}",
                },
                {
                    "这张牌每摧毁一个 {C:attention}9{}",
                    "所有 {C:attention}7{} 计分时给予{C:mult}+#2#{}倍率",
                    "{C:inactive}(当前为: {C:mult}+#1#{} {C:inactive}倍率)"
                } }
            },

            j_artb_collector = {
                name = '收藏家小丑',
                text = { {
                    "当{C:attention}盲注{}被选中时,",
                    "为右侧的一张{C:attention}小丑牌{}或",
                    "{C:attention}消耗牌{}增加{C:money}$#3#{}{C:attention}售卖价值{}",
                },
                {
                    "给予{X:mult,C:white}X#1#{}倍率",
                    "数值为你拥有的所有{C:attention}小丑牌{}",
                    "和{C:attention}消耗牌{}的{C:attention}售卖价值{}之和",
                    "{C:inactive}(当前为: {X:mult,C:white}X#2#{} {C:inactive}倍率)"
                } }
            },

            j_artb_origami = {
                name = '折纸小丑',
                text = { {
                    "每当{C:attention}盲注{}被选择时",
                    "创建一个{C:attention}艺术{}牌",
                    "{C:inactive}(必须有空间){}"
                } }
            },

            j_artb_clownfish = {
                name = '小丑鱼',
                text = { {
                    "{X:mult,C:white}X#2#{}倍率",
                    "每当回合结束时",
                    "如果没有卖出卡牌",
                    "则死亡",
                    "{C:inactive}(当前为: #1#){}"
                } }
            },

            j_artb_energy_drink = {
                name = '能量饮料',
                text = { {
                    "重新触发右侧的{C:attention}小丑牌{}",
                    "在{C:attention}#2#{}回合后消耗",
                } }
            },

            j_artb_lego_joker = {
                name = '乐高小丑',
                text = { {
                    "{C:attention}积木蜡封{}可以添加到",
                    "已有{C:attention}蜡封{}的卡牌上",
                    "{C:inactive}(最多堆叠 {C:attention}3{} {C:inactive}蜡封){}",
                },
                {
                    "获得一个{C:attention}积木蜡封收藏品{}",
                    "当获得这张小丑时",
                    "{C:inactive}(必须有空间){}"
                } }
            },

            j_artb_ascii = {
                name = '字符小丑',
                text = { {
                    "Each card in hand gives",
                    "{C:mult}+#1#{} Mult for its and every",
                    "unique rank to the left"
                }}
            },

            j_artb_gold_plating = {
                name = '镀金小丑',
                text = {{
                    "每个回合结束给予{C:money}$#1#{} {C:attention}售卖价值{}",
                },
                {
                    "卖出这张小丑会给予",
                    "右侧小丑相同的{C:attention}售卖价值{}",
                }}
            },

            j_artb_stained_glass = {
                name = '彩绘玻璃小丑',
                text = {{
                    "{C:attention}玻璃牌{}计分时创建一张",
                    "{C:attention}艺术牌{},碎裂时创建一个",
                    "{C:attention}创作标签{}"
                }}
            },

            j_artb_paint_chips = {
                name = '颜料筹码',
                text = {{
                    "{X:chips,C:white}X#2#{}筹码",
                    "{X:mult,C:white}X#1#{}倍率",
                }}
            },

            j_artb_heist = {
                name = '劫案小丑',
                text = {{
                    "当{C:attention}盲注{}被选中时,",
                    "偷取右侧小丑的{C:attention}售卖价值{}",
                },
                {
                    "给予等同于自身{C:attention}售卖价值{}",
                    "三倍的倍率",
                    "{C:inactive}(当前为: {C:mult}+#1#{} {C:inactive}倍率)"
                }}
            },

            j_artb_null_pointer = {
                name = '空指针',
                text = {{
                    "当{C:attention}获得{}或{C:attention}卖出{}时",
                    "用随机{C:attention}收藏品强化{}",
                    "填满所有空的消耗牌槽位",
                }}
            },

            j_artb_card_binder = {
                name = '集卡册',
                text = {{
                    "{C:attention}+#1#{}手牌上限",
                    "当不在{C:attention}盲注{}时"
                }}
            },

            j_artb_paint_bucket = {
                name = '颜料桶',
                text = {{
                    "与第一张计分牌{C:attention}点数{}相同的",
                    "{C:attention}#1#{}张牌给予随机{C:attention}强化{}",
                }}
            },

            j_artb_sparkledog = {
                name = '闪亮福瑞',
                text = {{
                    "{C:attention}牌组{}中每种{C:attention}强化{}, {C:attention}蜡封{}",
                    "和{C:attention}版本{}给予{C:chips}#1#{}筹码",
                    "{C:inactive}(当前为: {C:chips}#2#{} {C:inactive}筹码)"
                }}
            },

            j_artb_bug = {
                name = '瞧这只超酷的虫子',
                text = {{
                    "{C:attention}???{}计分时视为{C:attention}???{}",
                }}
            },

            j_artb_recursion = {
                name = '递归',
                text = {{
                    "每当一个{C:attention}Boss盲注{}被击败",
                    "创建一个{C:attention}递归标签{}"
                }}
            },

            j_artb_claymation = {
                name = '黏土小丑',
                text = {{
                    "回合开始时,从你的{C:attention}牌组{}中",
                    "抽一张{C:attention}黏土牌{}",
                }}
            },

            j_artb_stained_joker = {
                name = '污渍小丑',
                text = {{
                    "如果回合中{C:attention}首次弃牌{}",
                    "只有{C:attention}1{}张牌, 将其",
                    "强化为一张{C:attention}污渍牌{}",
                }}
            },

            j_artb_scalper = {
                name = '票贩小丑',
                text = {{
                    "每当进入商店时",
                    "将金钱设置为{C:money}$0{}",
                    "然后每失去{C:money}$#1#{}",
                    "创建一个{C:attention}小丑收藏品{}",
                }}
            },



        },
        collectable = {
            c_artb_joker_collectable = {
                name = '小丑收藏品',
                text = {
                    "持有时{C:attention}+1消耗牌槽位{}",
                    "如果你已经拥有一个",
                    "{C:attention}小丑收藏品{}摧毁它",
                    "并给予另外一个{C:money}+#1#{}售卖价值",
                }
            },

            c_artb_limited_edition_collectable = {
                name = '限量版本',
                text = {
                    "持有时{C:attention}+#2#消耗牌槽位{}",
                    "如果你已经拥有一个",
                    "{C:attention}限量版本{}摧毁它",
                    "并给予另外一个{C:money}+#1#{}售卖价值",
                    "和{C:attention}+1消耗牌槽位{}"
                }
            },
            c_artb_mod_collectable = {
                name = '修改收藏品',
                text = {
                    "给予{C:attention}1{}张选中卡牌{C:attention}#1#{}",
                }
            },

            c_artb_mod_collectable_empty = {
                name = '修改收藏品',
                text = {
                    "给予{C:attention}1{}张选中卡牌{C:attention}#1#{}",
                }
            },
            c_artb_gros_michel_collectable = {
                name = '米歇尔收藏品',
                text = {
                    "{C:mult}+#1#{}倍率",
                    "如果你已经拥有一个",
                    "{C:attention}米歇尔收藏品{}摧毁它",
                    "并给予另外一个{C:mult}+#2#{}倍率"
                }
            },
            c_artb_cavendish_collectable = {
                name = '卡文迪许收藏品',
                text = {
                    "{X:mult,C:white}X#1#{}倍率",
                    "如果你已经拥有一个",
                    "{C:attention}文迪许收藏品{}摧毁它",
                    "并给予另外一个{X:mult,C:white}X#2#{}倍率"
                }
            },

        },
        Tag = {
            tag_artb_creative = {
                name = "创作标签",
                text = {
                    "获得一个免费的",
                    "超级艺术&创作包"
                }
            },
            tag_artb_recursive = {
                name = "递归标签",
                text = {
                    "每个{C:attention}递归标签{}在本轮获得过",
                    "便给予一个随机{C:attention}标签{}",
                    "{C:inactive}(将获得{} {C:attention}#1#{}{C:inactive}){}"
                }
            }
        },
        art = {
            c_artb_art_paper = {
                name = '纸',
                text = {
                    "强化{C:attention}#1#{}张",
                    "选中的卡牌变成",
                    "{C:attention}皮纳塔牌{}",
                }
            },
            c_artb_art_art_block = {
                name = '灵感枯竭',
                text = {
                    "强化{C:attention}#1#{}张",
                    "选中的卡牌变成",
                    "{C:attention}污渍牌{}",
                }
            },
            c_artb_art_glitter = {
                name = '亮粉',
                text = {
                    '添加{C:attention}1{}张随机手牌',
                    '随机版本到手中'
                }
            },
            c_artb_art_blend = {
                name = '混合',
                text = {
                    '选择{C:attention}2{}张牌,',
                    '它们互相复制拥有的',
                    '{C:attention}强化{}, {C:attention}蜡封{}和{C:attention}版本{}',
                    '{C:inactive}不会覆盖已有的属性{}'
                }
            },

            c_artb_art_auction = {
                name = '拍卖',
                text = {
                    '摧毁{C:attention}1{}张选中的卡牌,',
                    '每个{C:attention}强化{}给予{C:money}$#3#{},',
                    '每个{C:attention}蜡封{}给予{C:money}$#2#{},',
                    '每个{C:attention}版本{}给予{C:money}$#1#{}'
                }
            },

            c_artb_art_appraisal = {
                name = '估值',
                text = {
                    '获得所有消耗牌的价值',
                    '{C:inactive}(最多{}{C:money}$30{}{C:inactive}){}',
                    '然后创建一个{C:attention}小丑收藏品{}',
                    '{C:inactive}(当前为: {}{C:money}$#2#{}{C:inactive}){}'
                }
            },

            c_artb_art_plastic = {
                name = '塑料',
                text = {
                    '给予{C:attention}1{}张选中牌',
                    '{C:mult}积木蜡封{}'
                }
            },

            c_artb_art_thread = {
                name = '丝线',
                text = {
                    '给予{C:attention}1{}张选中牌',
                    '纽扣蜡封'
                }
            },

            c_artb_art_swatch = {
                name = '色卡',
                text = {
                    '创建一个随机',
                    '{C:dark_edition}负片{}{C:attention}消耗牌{}',
                }
            },

            c_artb_art_carving = {
                name = '雕刻',
                text = {
                    "强化{C:attention}#1#{}张",
                    "选中牌变为",
                    "{C:attention}木制牌{}",
                }
            },

            c_artb_art_scissors = {
                name = '剪刀',
                text = {
                    '摧毁{C:attention}1{}张选中牌',
                    '然后创建一个它的',
                    '{C:attention}版本{}, {C:attention}蜡封{}{C:attention}强化{}收藏品',
                    '{C:inactive}(必须有空间){}'
                }
            },

            c_artb_art_imitation = {
                name = '模仿',
                text = {
                    '选择{C:attention}1{}张牌,',
                    '创建一个{C:attention}完美?{}',
                    '复制品',
                }
            },

            c_artb_art_sculpting = {
                name = '雕塑',
                text = {
                    "强化{C:attention}#1#{}张选中牌",
                    "变为{C:attention}大理石牌{}",
                }
            },

            c_artb_art_mystery_box = {
                name = '惊喜盒子',
                text = {
                    "用{C:attention}修改收藏品{}",
                    "填满所有消耗牌槽位",
                }
            },

            c_artb_art_still_life = {
                name = '写生',
                text = {
                    "创建一个",
                    "{C:attention}米歇尔收藏品{}",
                    "{C:inactive}(必须有空间，或者拥有{}",
                    "{C:inactive}另一个米歇尔收藏品){}"
                }
            },

            c_artb_art_pottery = {
                name = '陶艺',
                text = {
                    "强化{C:attention}#1#{}张选中牌",
                    "变为{C:attention}黏土牌{}",
                }
            },
        },
        Planet={
            c_artb_vesta={
                name="灶神星",
                text={
                    "{S:0.8}({S:0.8,V:1}lvl.#1#{S:0.8}){}升级",
                    "{C:attention}空值",
                    "{C:mult}+3{}倍率",
                    "{C:chips}+40{}筹码",
                },
            },
        },
        Spectral = {
            c_artb_infinity = {
                name = '无限',
                text = {
                    '为{C:attention}1{}选中牌',
                    '添加一个{C:dark_edition}衔尾蛇蜡封{}'
                }
            },
        },
        Enhanced = {
            m_artb_pinata = {
                name = '皮纳塔牌',
                text = {
                    '当这张牌{C:attention}被摧毁{}时,',
                    '获得{C:money}$#1#{}和一个随机',
                    '{C:attention}标签{}'
                }
            },
            m_artb_stained = {
                name = '污渍牌',
                text = {
                    "没有花色和数值,",
                    "当这张牌{C:attention}被丢弃{},",
                    "{C:green}#1# / #2#{}概率",
                    "创建一张{C:attention}艺术牌{},",
                    "{C:green}#3# / #4#{}概率",
                    "创建一个{C:attention}创作标签{}",
                }
            },
            m_artb_wood = {
                name = '木制牌',
                text = {
                    "当持有这张牌",
                    "每张计分牌{C:chips}+#1#{}筹码"
                }
            },

            m_artb_marble = {
                name = '大理石牌',
                text = {
                    "没有花色和数值,",
                    "在被打出{C:attention}4{}次后",
                    "给予{X:chips,C:white}X2{}筹码并且视作",
                    "{C:attention}人头牌{}",
                    "{C:inactive}(#2#/4){}"
                }
            },

            m_artb_clay = {
                name = '黏土牌',
                text = {
                    "抽到时永久{C:mult}+#1#{}倍率,",
                    "当这张牌被首次持有在手牌中时",
                    "如果分数{C:attention}着火{}失去所有效果",
                    "然后永久翻倍{C:attention}doubles{}倍率",
                }
            },
        },
        Voucher = {
            v_artb_booster_stack = {
                name = '补充包堆叠',
                text = {
                    "商店中{C:attention}+1 补充包{}槽位"
                },
            },
            v_artb_booster_ritual = {
                name = '补充包仪式',
                text = {
                    "每当你重掷,",
                    "商店中添加一个随机{C:attention}补充包{}"
                },
            },
            v_artb_pen_holder = {
                name = '笔筒',
                text = {
                    "{C:attention}+1{}消耗牌槽位",
                },
            },
            v_artb_used_supplies = {
                name = '废旧补给',
                text = {
                    "当一张牌被摧毁,",
                    '获得一张它的带有{C:attention}版本{}, {C:attention}蜡封{}和{C:attention}强化{}',
                    '的{C:dark_edition}负片{}收藏品',
                },
            },
        },

        Back = {
            b_artb_handmade = {
                name = "手工制品牌组",
                text = {
                    "开局时拥有",
                    "{C:attention,T:v_artb_pen_holder}#1#{}",
                    "和随机{C:attention}强化{},",
                    "{C:attention}蜡封{}和{C:attention}版本{}收藏品"
                }
            },

            b_artb_box = {
                name = "纸箱牌组",
                text = {
                    "开局时拥有",
                    "{C:attention,T:v_artb_booster_stack}#1#{}",
                    "和一个随机{C:attention,T:c_artb_joker_collectable}#2#{},"
                }
            },
        },
        Other = {
            artb_ouroboros_seal = {
                name = '衔尾蛇蜡封',
                text = {
                    '当这张牌{C:attention}被摧毁{}时,',
                    '一张额外复制洗入你的{C:attention}牌组{}'
                }
            },

            artb_brick_seal = {
                name = '积木蜡封',
                text = {
                    '这张牌计分时给予',
                    '{C:mult}+#1#{}额外倍率'
                }
            },

            artb_button_seal = {
                name = '纽扣蜡封',
                text = {
                    '计分时,手牌中的一张牌{C:attention}花色{}',
                    '变为与这张牌相同的{C:attention}花色{}'
                }
            },

            p_artb_arts_crafts_small_1 = {
                name = "艺术&创作包",
                text = {
                    "从{C:attention}#2#{}张中选择{C:attention}#1#{}张",
                    "{C:be5e6e)}艺术牌{}",
                },
            },

            p_artb_arts_crafts_small_2 = {
                name = "艺术&创作包",
                text = {
                    "从{C:attention}#2#{}张中选择{C:attention}#1#{}张",
                    "{C:be5e6e)}艺术牌{}",
                },
            },

            p_artb_arts_crafts_jumbo = {
                name = "巨型艺术&创作包",
                text = {
                    "从{C:attention}#2#{}张中选择{C:attention}#1#{}张",
                    "{C:be5e6e)}艺术牌{}",
                },
            },

            p_artb_arts_crafts_mega = {
                name = "超大艺术&创作包",
                text = {
                    "从{C:attention}#2#{}张中选择{C:attention}#1#{}张",
                    "{C:be5e6e)}艺术牌{}",
                },
            },
        },
    }
}
