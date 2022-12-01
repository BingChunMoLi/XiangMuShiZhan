/*
 Navicat Premium Data Transfer

 Source Server         : mysql.rds.aliyuncs.com_3306
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : mysql.rds.aliyuncs.com_3306
 Source Schema         : lol

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 01/12/2022 01:16:27
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for hero
-- ----------------------------
DROP TABLE IF EXISTS `hero`;
CREATE TABLE `hero`
(
    `hero_id`    int(11)                                                  NULL DEFAULT NULL,
    `name`       varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci   NULL DEFAULT NULL,
    `title`      varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci   NULL DEFAULT NULL,
    `hero_type1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci   NULL DEFAULT NULL,
    `hero_type2` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci   NULL DEFAULT NULL,
    `difficulty` int(11)                                                  NULL DEFAULT NULL,
    `img_code`   varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `introduce`  varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `video`      varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB
  AUTO_INCREMENT = 32
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hero
-- ----------------------------
INSERT INTO `hero`
VALUES (1, '盖伦', '德玛西亚之力', '战士', '坦克', 2, '/image/HERO/1/gailun.png',
        '作为一名自豪而高贵的勇士，盖伦将自己当做无畏先锋中的普通一员参与战斗。他既受到同袍手足的爱戴，也受到敌人对手的尊敬——尤其作为尊贵的冕卫家族的子嗣，他被委以重任，守卫德玛西亚的疆土和理想。他身披抵御魔法的重甲，手持阔剑，时刻准\r\n备着用正义的钢铁风暴在战场上正面迎战一切操纵魔法的狂人。\r\n',
        '/video/Hero/Hero/gailun.webm');
INSERT INTO `hero`
VALUES (2, '艾希', '寒冰射手', '射手', '辅助', 2, '/image/HERO/2/aixi.png',
        '作为阿瓦罗萨部族的战母，寒冰血脉的艾希率领着北方人数最多的部落。她克己、智慧、忠于理想，但并不适应自己作为领袖的角色，艾希与自己血脉中蕴藏的先祖魔法相通，挽起了臻冰打造的长弓。她的族人相信她就是神话中的女英雄阿瓦罗萨的转世，在人们的追随下，艾希希望夺回那些属于部族的古代领土，从而让弗雷尔卓德再次实现统一。',
        '/video/Hero/Hero/hanbingsheshou.webm');
INSERT INTO `hero`
VALUES (3, '流浪', '符文法师', '法师', '战士', 3, '/image/HERO/3/ruizi.png',
        '瑞兹是符文之地广为人知的最老练的法师之一。他生于远古，饱经风霜，肩负着不可承受之重任。这位大法师的武器，是他无可摧折的决心和丰富的秘法学识，他一生都在寻找着世界符文 ——它们是令这世界从无到有、万物成形的原生魔法所留下的碎片。他一定要找到所有这些神秘的字符，以免落入恶人之手，因为瑞兹知道它们可能给符文之地带来怎样的浩劫。',
        '/video/Hero/Hero/fuwenfashi.webm');
INSERT INTO `hero`
VALUES (4, '易\r\n', '无极剑圣', '刺客', '战士', 2, '/image/HERO/4/yi.png',
        '易大师锤炼身体、磨砺心智，直至身心合一。尽管他将暴力作为不得已的选择，但他优雅迅猛的剑法总是让这一手段显得尤为快捷。作为无极之道最后的门徒，易大师致力于这个门派的传承，用七度洞悉目镜搜寻着最有资格的人，寻找潜在的新弟子。',
        '/video/Hero/Hero/yi.webm');
INSERT INTO `hero`
VALUES (5, '阿利斯塔\r\n', '牛头酋长', '坦克', '辅助', 3, '/image/HERO/5/alisita.png',
        '阿利斯塔一直都是威名远扬的巨力勇士，他要为自己被屠杀的氏族向诺克萨斯帝国复仇。虽然他曾被奴役，并被迫成为斗兽场中的角斗士，但他坚不可摧的意志使他免于沦为真正的野兽。现在，挣脱了奴役枷锁的他继续以受苦之人和弱者的名义战斗。他的愤怒，还有犄角、蹄子和拳头，都是他的武器。',
        '/video/Hero/Hero/niumo.webm');
INSERT INTO `hero`
VALUES (6, '阿兹尔', '沙漠皇帝', '法师', '战士', 4, '/image/HERO/6/shamohuangdi.png',
        '阿兹尔是上古时期恕瑞玛的一位凡人皇帝，一位站在不朽神话巅峰的自豪之人。但他的狂妄引来了旁人的背叛，在最伟大胜利降临的那一刻将他杀害。而现在，数千年后，他重获新生并成为了力量无边的飞升者。阿兹尔的城市已经从黄沙之下崛起，他要让恕瑞玛恢复曾经的荣光。',
        '/video/Hero/Hero/arzier.webm');
INSERT INTO `hero`
VALUES (7, '费德提克', '末日使者', '法师\r\n', '辅助\r\n', 3, '/image/HERO/7/feidetike.png',
        '费德提克是一个骇人的活体稻草人，一个徘徊在黑暗中的憎恶之物，他挥舞着一把镰刀并捕食着粗心的生物们。在群鸦们的凶蛮啄杀的协助下，费德提克会先品味猎物们的恐惧，然后再于飓风般的羽毛与溅血的利喙之中取走猎物们的性命。',
        '/video/Hero/Hero/morshizhe.webm');
INSERT INTO `hero`
VALUES (8, '艾克\r\n', '时间刺客', '刺客', '战士', 4, '/image/HERO/8/aike.png',
        '艾克是一名来自祖安不良街区的奇才。他可以操纵时间，从而让任何处境都变得对自己有利。通过使用他自己的发明——Z型驱动——他可以探索其他平行现实的分支并创造最完美的条件。尽管他酷爱这种自由，但只要他的朋友们遇到了威胁，他就会不顾一切地去保护他们。在旁观者眼里，艾克总是能初次尝试就完成不可能之举，屡试不爽。 ',
        '/video/Hero/Hero/aike.webm');
INSERT INTO `hero`
VALUES (9, '卡萨丁', '虚空行者', '刺客', '法师\r\n', 3, '/image/HERO/9/kesading.png',
        '在世界上最黑暗的地方，卡萨丁切出了一道燃烧的裂口，他知道自己已经时日无多。他曾是恕瑞玛地区的向导和冒险家，后来选择在恕瑞玛南方平静的部落中安家落户——直到那一天，他的村庄被虚空吞噬。卡萨丁发誓要报仇雪恨，于是整合了许多秘法器物和禁忌之术，以便应对前方的险阻。最后，卡萨丁动身前往艾卡西亚的废土，准备面对任何虚空的造物，寻找那位自封的先知，马尔扎哈。',
        '/video/Hero/Hero/kasading.webm');
INSERT INTO `hero`
VALUES (10, '卡兹克', '虚空掠夺者\r\n', '刺客', '战士', 4, '/image/HERO/10/kazike.png',
        '虚空在成长，虚空在不断适应。在众多虚空生物中，没有哪种比卡兹克更能体现这一特性。进化的动力让这种恐怖不断变异，本能地求生并弑杀强者。只要它遇到了障碍，就会进化出新的、更有效的方法反制并杀掉猎物。卡兹克最初只是个愚钝的野兽，然而它的智力和它的形态一样获得了发展。现在，这只生物会提前计划狩猎行动，甚至懂得在猎物心中制造最真实的恐惧。',
        '/video/Hero/Hero/kazike.webm');
INSERT INTO `hero`
VALUES (11, '艾翁', '翠神', '辅助', '法师', 4, '/image/HERO/11/aiwong.png',
        '半人半树的艾翁?荆足常在符文之地的丛林中游荡，所经之处无不生机盎然。他知晓自然界的种种秘密，无论是飞禽走兽还是游鱼虫孑，都与他交谊深厚。在逍遥四野的途中，艾翁会向路遇的人传授奇特的智慧，或是培植丰茂的丛林。时不时地，他也会向口风不严的蝴蝶托付自己所知的秘密。',
        '/video/Hero/Hero/aiwong.webm');
INSERT INTO `hero`
VALUES (12, '奥拉夫', '狂战士', '战士', '坦克\r\n', 4, '/image/HERO/12/aolafu.png',
        '奥拉夫是一股无坚不摧的毁灭之力，战斧在手的他别无所求，只想光荣地死在战斗中。奥拉夫来自弗雷尔卓德的海岸半岛洛克法，他曾在一次占卜预言中听闻自己将安详地死去——这是懦夫的命运，也是对他们族人的莫大侮辱。于是，为了追寻另外一种结局，他在狂怒的驱动下在这片土地上暴跳横行，屠杀了数十名伟大的战士和传说中的野兽，希望能够找到能够阻止自己的对手。如今他是凛冬之爪部族残酷的执法者，希望在即将到来的大战中找到自己的终结。',
        '/video/Hero/Hero/aolafu.webm');
INSERT INTO `hero`
VALUES (13, '亚索', '疾风剑豪', '战士', '刺客', 4, '/image/HERO/13/yasuo.png',
        '亚索是一个百折不屈的艾欧尼亚人，也是一名身手敏捷的御风剑客。这位生性自负的年轻人，被误认为杀害长老的凶手——由于无法证明自己的清白，他出于自卫而杀死了自己的哥哥。虽然长老死亡的真相已然大白，亚索还是无法原谅自己的所作所为。他在家园的土地上流浪，只有疾风指引着他的剑刃。',
        '/video/Hero/Hero/yasuo.webm');
INSERT INTO `hero`
VALUES (14, '德莱厄斯\r\n', '诺克萨斯之手', '战士', '坦克\r\n', 3, '/image/HERO/14/delaiesi.png',
        '提到诺克萨斯力量的象征，帝国上下没有人能比德莱厄斯这名久经沙场的指挥官更加适合。他从无名小卒逐渐成长为诺克萨斯之手，劈开了无数敌人的身躯 —— 其中也不乏诺克萨斯自己人。他从不怀疑自己执行的公义，也从不会在举起战斧后迟疑。作为崔法利军团的领导者，德莱厄斯的任何对手都不用指望他手下留情。',
        '/video/Hero/Hero/kelaiesi.webm');
INSERT INTO `hero`
VALUES (15, '提莫', '迅捷斥候', '射手', '刺客', 3, '/image/HERO/15/timo.png',
        '不惧艰难险阻、不惧坎坷危途，提莫怀着无比的热情和欢欣的精神探索着整个世界。作为一个约德尔人，他对自己的道德观坚定不移，同时对班德尔斥候的信条感到自豪，有的时候，他的热忱甚至会让他无法看到，自己行为会在更大的意义上导致什么样的后果。虽然有的人认为这支斥候小队是否真正存在还有待商榷，但有一件事是肯定的：提莫的信念绝不容小觑。',
        '/video/Hero/Hero/timo.webm');
INSERT INTO `hero`
VALUES (16, '布兰德', '复仇焰魂', '法师', '辅助', 4, '/image/HERO/16/bulande.png',
        '基根·诺和曾经是一名普通弗雷尔卓德部族居民，现在则变成了另一种生物，布兰德。他的身世警醒着后人，被更强大的力量所诱惑会带来什么后果。基根为了追寻传说中的世界符文，背叛了自己的同伴并将符文据为己有，就在那一瞬间，这个人彻底消失了。他的灵魂被彻底燃尽，他的身躯成为了活体烈焰的容器，如今，布兰德游荡在瓦洛兰，寻觅着其他的符文。他曾遭受的苦难，凡人活上十几辈子也未必能够经历，而他发誓此仇必报。',
        '/video/Hero/Hero/huonan.webm');
INSERT INTO `hero`
VALUES (17, '赵信', '德邦总管', '战士', '刺客', 3, '/image/HERO/31/zhaoxin.png',
        '赵信是效忠于光盾王朝的坚毅勇士。他曾经沦落于诺克萨斯的角斗场，在无数次角斗中得以幸存。被德玛西亚军队解救以后，他便发誓为这群勇敢的解放者贡献生命和忠诚。最称手的三爪长枪相伴，赵信现在为自己的第二祖国而战，一往无前，暴虎冯河。',
        '/video/Hero/Hero/zhaoxin.webm');
INSERT INTO `hero`
VALUES (18, '凯南\r\n', '狂暴之心', '法师', '射手\r\n', 3, '/image/HERO/17/kainan.png',
        '凯南不仅是捍卫艾欧尼亚均衡的迅猛如雷电的执法者，而且还是均衡教派中唯一的一名约德尔人。虽然他身体小巧，浑身绒毛，但他能用手里剑的风暴和无限的热情迎接任何敌人的威胁。他和自己的师父慎一起在精神领域巡逻，使用雷电的能量痛击敌人。',
        '/video/Hero/Hero/kainan.webm');
INSERT INTO `hero`
VALUES (19, '艾瑞莉娅', '刀锋舞者', '战士', '刺客\r\n', 4, '/image/HERO/18/daofengwuzhe.png',
        '诺克萨斯对艾欧尼亚的占领催生了许多英雄，但没有谁像纳沃利的艾瑞莉娅一般令人意外。她将家乡的古老舞艺化为战技，以精心修习的优雅身姿操控着致命的刀丛。在她证明了自己的战斗实力后，被众人推举为反抗军的领袖和首脑，为了守卫家园而奋斗至今。',
        '/video/Hero/Hero/aoruiliya.webm');
INSERT INTO `hero`
VALUES (20, '李青', '盲僧\r\n', '战士', '刺客\r\n', 5, '/image/HERO/19/mangseng.png',
        '李青是艾欧尼亚古老武术的大师，讲原则、重信义的他能将神龙之灵的精粹运用自如，助他面对任何挑战。虽然他多年前便已双目失明，但这位武僧依然献出自己的全部力量，用生命捍卫家园，抵御任何胆敢打破这里神圣均衡的人。所有因他安静冥想的举动而掉以轻心的敌人都将品尝他燃烧的拳头和炽烈的回旋踢。',
        '/video/Hero/Hero/mangseng.webm');
INSERT INTO `hero`
VALUES (21, '维迦', '邪恶小法师', '法师', '辅助', 3, '/image/HERO/20/xioafa.png',
        '维迦是热衷于黑暗巫术的大师。几乎没有哪个凡人敢碰的恐怖力量，他却能敞开怀抱。作为拥有自由精神的班德尔城居民，他渴望突破约德尔魔法的边界，于是转而研究那些被隐藏数千年的秘法文字。现在他已经变成了一个偏执的生物，对宇宙的奥秘无限向往。人们总会低估维迦的力量。虽然维迦发自心底地觉得自己是邪恶的，不过他的一些心底的原则也的确会让人质疑他的深层动机。',
        '/video/Hero/Hero/weijia.webm');
INSERT INTO `hero`
VALUES (22, '薇恩', '暗夜猎手', '射手', '刺客', 4, '/image/HERO/21/weien.png',
        '肖娜·薇恩是一位无情的德玛西亚怪物猎手。终其一生，她都在寻找杀害她全家的恶魔。她的手臂上装着十字弩，心中燃烧着熊熊的复仇怒火，从暗影中射出圣银弩箭的风暴，薇恩只有在杀死那些为黑暗魔法所控制的人和生物时，才能真正感到愉悦。',
        '/video/Hero/Hero/weien.webm');
INSERT INTO `hero`
VALUES (23, '菲奥娜', '无双剑姬', '战士', '刺客', 4, '/image/HERO/22/feiouna.png',
        '菲奥娜是全瓦洛兰最可怕的决斗家。她以雷厉风行、狡黠聪慧闻名于世，同样著名的还有她舞弄自己蓝钢佩剑的矫健。菲奥娜出生在德玛西亚王国的劳伦特家族，她从父亲的手中接管了家业，并在一场丑闻风波中将家族拯救于于灭亡的边缘。虽然劳伦特家威严不再，但菲奥娜却一直在不懈地努力，希望重振家族荣耀，让劳伦特这个名字重回德玛西亚名望贵族之列。',
        '/video/Hero/Hero/feiaona.webm');
INSERT INTO `hero`
VALUES (24, '亚托克斯\r\n', '暗裔剑魔', '战士', '坦克\r\n', 3, '/image/HERO/23/jiamo.png',
        '亚托克斯和他的同胞们曾是恕瑞玛对抗虚空之地时满载荣耀的守护者一族，最终却变成了符文之地的一个更大的威胁，并且仅被击败于被诡诈的致命巫术。但在被囚禁了数个世纪后，亚托克斯率先找到重获自由之法，那就是对那些蠢得妄图尝试挥舞那把含有他灵魂精华的神奇武器的愚妄之徒进行腐蚀和转化。现在，凭借偷来的血肉躯体，他以一种近似他之前形态的凶残外表行走于符文之地中，寻求着一次毁天灭地且久未兑现的复仇。',
        '/video/Hero/Hero/jianmo.webm');
INSERT INTO `hero`
VALUES (25, '拉克丝\r\n', '光辉女郎', '法师', '辅助', 3, '/image/HERO/24/lakesi.png',
        '拉克珊娜·冕卫出身自德玛西亚，一个将魔法视为禁忌的封闭国度。只要一提起魔法，人们总是带着恐惧和怀疑。所以拥有折光之力的她，在童年的成长过程中始终担心被人发现进而遭到放逐，一直强迫自己隐瞒力量，以此保住家族的贵族地位。虽然如此，拉克丝的乐观和顽强让她学会拥抱自己独特的天赋，现在的她正在秘密地运用自己的能力为祖国效力。',
        '/video/Hero/Hero/lakesi.webm');
INSERT INTO `hero`
VALUES (26, '墨菲特\r\n', '熔岩巨兽', '坦克', '战士', 3, '/image/HERO/25/mofeite.png',
        '墨菲特是一个庞大的岩石生物，为了给混乱的世界赐予秩序而不懈奋斗。他诞生之初的身份是一个石仆，侍奉着一块超乎凡人理解的石碑，名为“独石”。他用万钧元素之力维护自己的先祖，但最终遭遇了失败。在随后的毁灭中，墨菲特成为了唯一的幸存者。如今他忍受着符文之地的脆弱凡人和他们流水一般多变的性情，同时想尽办法给自己寻找一个存于世上的新位置，让自己不愧为同胞中的最后一员。',
        '/video/Hero/Hero/mofeite.webm');
INSERT INTO `hero`
VALUES (27, '纳尔', '迷失之牙', '战士', '坦克', 4, '/image/HERO/26/naer.png',
        '纳尔是一个原始约德尔人，讨人喜爱的小个子突然发起脾气来，就会变成一头巨大的野兽，脑海中只剩下破坏的念头。纳尔被臻冰冻结了数千年，如今他重获自由。这个面目全非的世界，在他充满好奇的眼里处处都是新鲜奇妙。因为纳尔在危险中会特别兴奋，所以他会随便抓起任何东西丢向自己的敌人，无论是他的骨齿回力标，还是手边的大房子。',
        '/video/Hero/Hero/naer.webm');
INSERT INTO `hero`
VALUES (28, '泰隆\r\n', '刀锋之影', '刺客', '战士', 4, '/image/HERO/27/tailong.png',
        '泰隆是黑暗中的匕首，是绝无仁慈的杀手，他出手前不会有任何警告，不会留任何退路，也不会引起任何警觉。泰隆在诺克萨斯的野蛮街巷中深深烙印了自己危险的名号，在这里他被迫为了生存而战斗、杀戮、偷窃。后来恶名昭彰的杜·克卡奥家族收养了他，现在他为帝国的指挥部贡献自己的夺命手段，暗杀敌人的领袖、军官和英雄，当然也包括任何得罪了最高长官们的诺克萨斯蠢货。',
        '/video/Hero/Hero/daofeng.webm');
INSERT INTO `hero`
VALUES (29, '雷克顿\r\n', '荒漠屠夫', '战士', '坦克', 4, '/image/HERO/28/leikedun.png',
        '雷克顿是一位来自恕瑞玛炙热沙漠中的面目可怖、野蛮狂怒的飞升者。他曾经是帝国最受尊敬的战士，带领恕瑞玛的军队取得过无数次胜利。然而，在帝国陨落以后，雷克顿被困在了沙漠之下，慢慢地，在世界变迁的同时，雷克顿丧失了理智。现在他重获自由，但却被一个执念吞噬：找到并杀死他的哥哥内瑟斯，因为疯狂之中的他坚信内瑟斯是害他经受数百年黑暗束缚的罪魁祸首。',
        '/video/out.webm');
INSERT INTO `hero`
VALUES (30, '努努和威朗普', '雪原双子', '坦克', '战士', 3, '/image/HERO/29/nunu.png',
        '很久以前，曾有个小男孩，他要证明自己是个英雄，于是决定去杀掉一头凶猛的怪兽——但他却发现这个怪兽其实是个孤独的魔法雪人，而且他需要的只是一个朋友。雪人和男孩被古老的力量所连结，也因对雪球的共同爱好而玩到一起。努努和威朗普如今在弗雷尔卓德的土地上肆意撒欢打滚，为想象中的冒险注入鲜活的生命力。他们希望能够在前面的某个地方找到努努的母亲。如果他们能拯救她，或许他们就真的是英雄了。',
        '/video/Hero/Hero/nunu.webm');
INSERT INTO `hero`
VALUES (31, '派克\r\n', '血港鬼影', '辅助', '刺客', 4, '/image/HERO/30/paike.png',
        '在比尔吉沃特的屠宰码头，颇有名气的鱼叉手派克葬身在一条巨大的琢珥鱼腹内……然而，他却回来了。他在家乡的阴街陋巷中徘徊着，用超自然的手段干脆残忍地解决那些鱼肉他人的恶棍——一座因捕猎怪物而自豪的城市如今发觉自己却成了狩猎的目标。',
        '/video/Hero/Hero/paike.webm');

-- ----------------------------
-- Table structure for skill
-- ----------------------------
DROP TABLE IF EXISTS `skill`;
CREATE TABLE `skill`
(
    `skill_id`    int(11)                                                  NULL DEFAULT NULL,
    `hero_id`     int(11)                                                  NULL DEFAULT NULL,
    `name`        varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci   NULL DEFAULT NULL,
    `place`       varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci   NULL DEFAULT NULL,
    `description` varchar(5000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `img_code`    varchar(700) CHARACTER SET utf8 COLLATE utf8_general_ci  NULL DEFAULT NULL
) ENGINE = InnoDB
  AUTO_INCREMENT = 156
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of skill
-- ----------------------------
INSERT INTO `skill`
VALUES (1001, 1, '坚韧', '被动', '如果盖伦近期没有受到伤害或者被敌方技能命中，那么他会每秒回复若干百分比的总生命值。',
        '/image/HERO/1/1/Garen_Passive.png');
INSERT INTO `skill`
VALUES (1002, 1, '致命打击', 'Q',
        '盖伦的移动速度获得爆发性提升，同时移除身上的所有减速效果。他的下次攻击将打击敌人的要害部位，造成额外伤害并将目标沉默。',
        '/image/HERO/1/1/GarenQ.png');
INSERT INTO `skill`
VALUES (1003, 1, '勇气', 'W',
        '盖伦被动地通过击杀敌人来提升护甲和魔法抗性。他也可以激活这个技能来暂时获得一层护盾和韧性，并在接下来的较长持续时间里获得较弱的伤害减免效果。\r\n',
        '/image/HERO/1/1/GarenW.png');
INSERT INTO `skill`
VALUES (1004, 1, '审判', 'E', '盖伦快速地旋转身体挥舞大剑，并对邻近敌人造成物理伤害。\r\n\r\n',
        '/image/HERO/1/1/GarenE.png');
INSERT INTO `skill`
VALUES (1005, 1, '德玛西亚正义', 'R', '盖伦召唤德玛西亚之力，试图处决一名敌方英雄。', '/image/HERO/1/1/GarenR.png');
INSERT INTO `skill`
VALUES (1006, 2, '冰霜射击', '被动',
        '艾希的攻击会让目标减速，并使艾希对这些目标造成更高伤害。\r\n艾希的暴击不会造成额外伤害，但会对目标施加一个强化版减速效果。\r\n',
        '/image/HERO/2/2/Ashe_P.png');
INSERT INTO `skill`
VALUES (1007, 2, '射手的专注', 'Q',
        '艾希会在攻击时聚集【全神贯注】效果。在【全神贯注】到达最大值时，艾希就能施放【射手的专注】来消耗掉所有【全神贯注】效果，以临时提升她的攻击速度，并在持续期间将她的普攻转变为一阵强力的飓风箭阵。',
        '/image/HERO/2/2/AsheQ.png');
INSERT INTO `skill`
VALUES (1008, 2, '万箭齐发', 'W', '艾希向前方的锥形范围射出9支箭，对敌人造成额外伤害。该技能也会触发冰霜射击的效果。',
        '/image/HERO/2/2/Volley.png');
INSERT INTO `skill`
VALUES (1009, 2, '鹰击长空', 'E', '艾希将她的猎鹰之灵派去执行侦查任务，可派往地图上的任意地点。',
        '/image/HERO/2/2/AsheSpiritOfTheHawk.png');
INSERT INTO `skill`
VALUES (1010, 2, '魔法水晶箭', 'R',
        '艾希射出一支沿直线飞行的魔法水晶箭。如果水晶箭命中了一名敌方英雄，那么它会对该英雄造成伤害和晕眩效果，晕眩时长取决于水晶箭的飞行距离。此外，该英雄附近的敌方单位会受到伤害和减速效果。',
        '/image/HERO/2/2/EnchantedCrystalArrow.png');
INSERT INTO `skill`
VALUES (1011, 3, '奥术专精', '被动',
        '瑞兹的技能会造成基于他法力值加成的额外伤害，并且他的最大法力值会基于他的法术强度来获得百分比的提升。',
        '/image/HERO/3/3/Ryze_P.png');
INSERT INTO `skill`
VALUES (1012, 3, '超负荷', 'Q',
        '瑞兹的其它基础技能会重置【超负荷】的冷却时间并且充能一层符文。当瑞兹带着2层符文施放【超负荷】时，他会获得短暂的爆发性移动速度加成。\r\n\r\n施放时，瑞兹会沿直线扔出一团纯粹能量，来对命中的第一个敌人造成伤害。如果目标身上有【涌动】效果，那么【超负荷】会造成额外伤害并弹射至附近带有【涌动】效果的敌人身上。\r\n',
        '/image/HERO/3/3/RyzeQ.png');
INSERT INTO `skill`
VALUES (1013, 3, '符能禁锢', 'W',
        '瑞兹将一个目标陷入一个符文牢笼中，来对其造成伤害和减速效果。如果目标身上带有【涌动】效果，那么减速效果会替换为禁锢效果。',
        '/image/HERO/3/3/RyzeW.png');
INSERT INTO `skill`
VALUES (1014, 3, '法术涌动', 'E',
        '瑞兹放出一颗纯净魔法能量球，对一名敌人造成伤害并对附近的敌人造成减益效果。瑞兹的技能可以对带有该减益的敌人造成额外效果。',
        '/image/HERO/3/3/RyzeE.png');
INSERT INTO `skill`
VALUES (1015, 3, '曲境折跃', 'R',
        '【超负荷】对带有【涌动】效果的目标造成更多伤害。\r\n\r\n施放时，瑞兹会创造一个传送门来通向一个附近的位置。在若干秒后，站在传送门附近的友军会被传送至目标位置。\r\n',
        '/image/HERO/3/3/RyzeR.png');
INSERT INTO `skill`
VALUES (1016, 4, '双重打击', '被动', '易大师每攻击数次，就会同时对目标进行2次打击。', '/image/HERO/4/4/WujuStyle.png');
INSERT INTO `skill`
VALUES (1017, 4, '阿尔法突袭', 'Q',
        '易以肉眼难以发觉的速度穿梭于战场，对多个敌人造成物理伤害，同时处于不可被选取的状态下。阿尔法突袭可以暴击，并对野怪造成额外物理伤害。普通攻击可以减少阿尔法突袭的冷却时间。',
        '/image/HERO/4/4/AlphaStrike.png');
INSERT INTO `skill`
VALUES (1018, 4, '冥想', 'W',
        '易通过集中念力来活化他的身体，从而回复生命值，并暂时减少所受的伤害。此外，易还会为双重打击充能，并暂停无极剑道和高原血统的持续时长。',
        '/image/HERO/4/4/Meditate.png');
INSERT INTO `skill`
VALUES (1019, 4, '无极剑道', 'E', '提供额外真实伤害至普攻', '/image/HERO/4/4/MasterYi_Passive1.png');
INSERT INTO `skill`
VALUES (1020, 4, '高原血统', 'R',
        '易以超乎想象的身法进行移动，短时间内提升移动速度和攻击速度，并免疫减速效果。该技能激活期间，易在击杀掉一名敌方英雄的同时，会延长该技能的持续时间。在击杀和助攻后，也会被动地减少易其它技能的冷却时间。',
        '/image/HERO/4/4/Highlander.png');
INSERT INTO `skill`
VALUES (1021, 5, '凯旋怒吼', '被动',
        '在阿利斯塔晕眩或强制位移敌方英雄，或是在附近敌人死亡时，他会为他的怒吼积攒充能。当完全充能时，他会治疗自身和附近的所有友方英雄。',
        '/image/HERO/5/5/Alistar_E.png');
INSERT INTO `skill`
VALUES (1022, 5, '大地粉碎', 'Q', '阿利斯塔锤击地面，对附近的敌人造成魔法伤害并使他们浮空。',
        '/image/HERO/5/5/Pulverize.png');
INSERT INTO `skill`
VALUES (1023, 5, '野蛮冲撞', 'W', '阿利斯塔冲撞目标，对其造成伤害并击退目标。', '/image/HERO/5/5/Headbutt.png');
INSERT INTO `skill`
VALUES (1024, 5, '践踏', 'E',
        '阿利斯塔践踏附近的敌方单位，无视单位的碰撞体积并在他伤害到一名敌方英雄时获得一层充能。在满层充能时，阿利斯塔的下次对敌方英雄发起的普攻将造成额外魔法伤害和晕眩效果。',
        '/image/HERO/5/5/AlistarE.png');
INSERT INTO `skill`
VALUES (1025, 5, '坚定意志', 'R',
        '阿利斯塔发出野性的咆哮，移除身上所有控制效果，并且持续时间内所受的物理和魔法伤害将减少。',
        '/image/HERO/5/5/FerociousHowl.png');
INSERT INTO `skill`
VALUES (1026, 6, '恕瑞玛的传承', '被动', '阿兹尔可以从友方或敌方防御塔的废墟中召唤太阳圆盘。',
        '/image/HERO/6/6/Azir_Passive.png');
INSERT INTO `skill`
VALUES (1027, 6, '狂沙猛攻', 'Q',
        '阿兹尔把所有黄沙士兵派往一个地点。黄沙士兵会对沿途的所有敌人造成魔法伤害，并施加持续1秒的减速效果。',
        '/image/HERO/6/6/AzirQ.png');
INSERT INTO `skill`
VALUES (1028, 6, '沙兵现身', 'W',
        '阿兹尔召唤一个黄沙士兵来为他攻击附近的敌方单位。如果敌方单位在士兵的攻击距离内，那么士兵会代替阿兹尔进行普攻。士兵的攻击会对一条直线上的敌人造成魔法伤害。这个技能还会被动为阿兹尔和他的士兵们提供攻击速度加成。',
        '/image/HERO/6/6/AzirW.png');
INSERT INTO `skill`
VALUES (1029, 6, '流沙移形', 'E',
        '阿兹尔暂时套上一层护盾并冲向他的一个黄沙士兵，伤害敌人。如果他命中了一位敌方英雄，那么他就会准备好一个新的黄沙士兵并中断他的位移。',
        '/image/HERO/6/6/AzirE.png');
INSERT INTO `skill`
VALUES (1030, 6, '禁军之墙', 'R', '阿兹尔召唤一道由禁军组成的人墙向前冲锋，对敌人造成伤害和击退效果。',
        '/image/HERO/6/6/AzirR.png');
INSERT INTO `skill`
VALUES (1031, 7, '恐惧降临', '被动',
        '在站立不动或引导技能状态下持续1.5秒，就会用【恐惧降临】强化费德提克。定身类控制效果会重置它的计时器。【恐惧降临】提供移动速度，但在费德提克开始移动后仅持续1.5秒。',
        '/image/HERO/7/7/FiddleSticks_Passive.png');
INSERT INTO `skill`
VALUES (1032, 7, '恐惧', 'Q', '恐惧目标，让目标以受损的速度逃离费德提克。', '/image/HERO/7/7/Terrify.png');
INSERT INTO `skill`
VALUES (1033, 7, '生命吸取', 'W', '费德提克偷取敌人的生命能量，造成持续伤害同时治疗自己。', '/image/HERO/7/7/Drain.png');
INSERT INTO `skill`
VALUES (1034, 7, '黑暗之风', 'E', '一阵风袭击一个敌方单位，溅射周围敌方单位，对其造成伤害并沉默。',
        '/image/HERO/7/7/FiddlesticksDarkWind.png');
INSERT INTO `skill`
VALUES (1035, 7, '群鸦风暴', 'R', '一群杀人鸦盘旋于费德提克身边，每秒对范围内的所有敌方单位造成伤害。',
        '/image/HERO/7/7/Crowstorm.png');
INSERT INTO `skill`
VALUES (1036, 8, 'Z型驱动共振', '被动',
        '艾克的Z型驱动会让他的技能和普攻充盈着时光能量。第三次命中将会造成额外伤害，如果目标是一名英雄，那么艾克自己会获得移动加速效果。',
        '/image/HERO/8/8/Ekko_P.png');
INSERT INTO `skill`
VALUES (1037, 8, '时间卷曲器', 'Q',
        '艾克扔出一个时光手雷，这个手雷会在命中一个敌方英雄后扩展为一个时间扭曲的力场，对场内的所有敌方单位造成伤害和减速效果。然后它会在短暂的延迟后返回到艾克手上，返回途中会对沿途的敌人造成伤害。',
        '/image/HERO/8/8/EkkoQ.png');
INSERT INTO `skill`
VALUES (1038, 8, '时光交错', 'W',
        '艾克的普攻对低生命值的敌人造成额外魔法伤害。他可以施放【时光交错】来分离这条时间线，制造一个不稳定的异常时间点，这个时间点会在数秒后对范围内的敌人造成减速效果。如果艾克进入了这个异常时间点，那么他会获得护盾并让范围内的敌人因悬浮在时间中而陷入晕眩状态。',
        '/image/HERO/8/8/EkkoW.png');
INSERT INTO `skill`
VALUES (1039, 8, '相位俯冲', 'E',
        '艾克在为Z型驱动充能的同时灵巧地滚动。他的下次攻击将造成魔法伤害并扭曲时间，并让他传送到他的攻击目标旁。',
        '/image/HERO/8/8/EkkoE.png');
INSERT INTO `skill`
VALUES (1040, 8, '时空断裂', 'R',
        '艾克打破他的时间线，变得不可被选取并回溯到一个更加有利的时间点上。他会回到几秒前的位置，并治疗这几秒内所受的伤势。在完成传送后，传送终点区域附近的敌人都会受到巨量伤害。',
        '/image/HERO/8/8/EkkoR.png');
INSERT INTO `skill`
VALUES (1041, 9, '虚空之石', '被动', '卡萨丁所受的魔法伤害减少15%，并无视单位的碰撞体积。',
        '/image/HERO/9/9/Kassadin_Passive.png');
INSERT INTO `skill`
VALUES (1042, 9, '虚无法球', 'Q',
        '卡萨丁向目标发射虚空能量法球，造成伤害并打断目标的技能引导。满溢的能量会在他身边环绕，提供一个可吸收魔法伤害的临时护盾。',
        '/image/HERO/9/9/NullLance.png');
INSERT INTO `skill`
VALUES (1043, 9, '虚空之刃', 'W',
        '被动：卡萨丁的普通攻击会造成额外魔法伤害。主动：卡萨丁的下次普通攻击会造成显著的额外魔法伤害并回复法力值。',
        '/image/HERO/9/9/NetherBlade.png');
INSERT INTO `skill`
VALUES (1044, 9, '能量脉冲', 'E',
        '附近有单位施放法术技能时，卡萨丁将吸收能量，当充能完毕后，吸收的能量可转化为脉冲，对面前锥形区域内敌人造成伤害并减速。',
        '/image/HERO/9/9/ForcePulse.png');
INSERT INTO `skill`
VALUES (1045, 9, '虚空行走', 'R',
        '卡萨丁传送到附近区域，对区域内的敌方单位造成伤害。 在一段时间内连续施放虚空行走技能会消耗更多的法力值，但也会造成额外伤害。',
        '/image/HERO/9/9/RiftWalk.png');
INSERT INTO `skill`
VALUES (1046, 10, '无形威胁', '被动',
        '附近陷入孤立无援状态的敌人会被标记出来。卡兹克的技能会与孤立无援的目标产生交互作用。\r\n\r\n当卡兹克没有被敌方队伍所看见时，他会获得无形威胁，使他的下次对敌方英雄发动的普通攻击造成额外魔法伤害，并使目标减速数秒。\r\n',
        '/image/HERO/10/10/Khazix_P.png');
INSERT INTO `skill`
VALUES (1047, 10, '品尝恐惧', 'Q',
        '对目标造成物理伤害。对孤立无援的目标造成的伤害会提高。如果他选择进化收割利爪的话，这个技能会在对抗孤立无援的目标时返还一部分冷却时间。卡兹克也会提升他的普通攻击和品尝恐惧的距离。',
        '/image/HERO/10/10/KhazixQ.png');
INSERT INTO `skill`
VALUES (1048, 10, '虚空突刺', 'W',
        '卡兹克发射爆炸性的尖刺，对命中的敌人造成物理伤害。卡兹克如果在爆炸范围内，则会回复生命值。如果他选择进化刺鞘的话，虚空突刺现在会呈锥形发射三个尖刺，减速被命中的敌人并使被命中的敌方英雄显形2秒。孤立无援的目标会被减速额外的幅度。',
        '/image/HERO/10/10/KhazixW.png');
INSERT INTO `skill`
VALUES (1049, 10, '跃击', 'E',
        '卡兹克跳向一个区域，在着陆时造成物理伤害。如果他选择进化虫翼的话，跃击的距离会提升200并在击杀和助攻时重置冷却时间。',
        '/image/HERO/10/10/KhazixE.png');
INSERT INTO `skill`
VALUES (1050, 10, '虚空来袭', 'R',
        '每升一级此技能都会允许卡兹克进化他的一项技能，给予该技能独特的附加效果。在激活【虚空来袭】时，会使卡兹克变成隐形状态，触发无形威胁并提升移动速度。如果他选择进化动态遮蔽的话，【虚空来袭】获得已提升的隐形持续时间，以及一次额外的使用次数。',
        '/image/HERO/10/10/KhazixR.png');
INSERT INTO `skill`
VALUES (1051, 11, '森林之友', '被动',
        '艾翁无法攻击非史诗野怪，也无法被非史诗野怪攻击。艾翁可以在野怪营地创造神奇的小植被，小植被可以持续成长。当小植被完全成长后，艾翁就可以送走野怪来获得金币和经验。在5级以后，艾翁可以与友军们分享增益效果。',
        '/image/HERO/11/11/IvernP.png');
INSERT INTO `skill`
VALUES (1052, 11, '根深敌固', 'Q',
        '艾翁召唤出一束荆棘，对命中的敌方单位造成伤害和禁锢效果。艾翁的友军可以突进到禁锢目标附近。',
        '/image/HERO/11/11/IvernQ.png');
INSERT INTO `skill`
VALUES (1053, 11, '揠苗助攻', 'W', '在草丛中，艾翁的攻击将造成额外魔法伤害。艾翁可以激活这个技能来创造一块草丛。',
        '/image/HERO/11/11/IvernW.png');
INSERT INTO `skill`
VALUES (1054, 11, '种豆得瓜', 'E', '艾翁在一个友军身上放置一个护盾，护盾会在短暂延迟后爆炸，减速并伤害敌人。',
        '/image/HERO/11/11/IvernE.png');
INSERT INTO `skill`
VALUES (1055, 11, '小菊！', 'R',
        '艾翁召唤他的护卫好友——小菊——来与他并肩战斗。小菊如果连续攻击相同英雄三次，就会释放出一道冲击波。',
        '/image/HERO/11/11/IvernR.png');
INSERT INTO `skill`
VALUES (1056, 12, '狂战之怒', '被动', '奥拉夫每损失1%的生命值，就会增加1%的攻击速度。',
        '/image/HERO/12/12/Olaf_Passive.png');
INSERT INTO `skill`
VALUES (1057, 12, '逆流投掷', 'Q',
        '奥拉夫将战斧投至目标区域，对所有被战斧穿过的敌人造成伤害并减速。如果奥拉夫捡起斧头，那么该技能冷却时间就会减少4.5秒。',
        '/image/HERO/12/12/OlafAxeThrowCast.png');
INSERT INTO `skill`
VALUES (1058, 12, '残暴打击', 'W', '奥拉夫的攻击速度得到提升，并获得生命偷取，且他损失的生命值越多，所受的治疗效果也越多。',
        '/image/HERO/12/12/OlafFrenziedStrikes.png');
INSERT INTO `skill`
VALUES (1059, 12, '鲁莽挥击', 'E',
        '奥拉夫以破釜沉舟之势发动进攻，对目标造成真实伤害（不受护甲与魔抗减免），同时，自身也会根据敌方所受的伤害而受到真实伤害的反噬。',
        '/image/HERO/12/12/OlafRecklessStrike.png');
INSERT INTO `skill`
VALUES (1060, 12, '诸神黄昏', 'R', '奥拉夫暂时免疫控制技能。', '/image/HERO/12/12/OlafRagnarok.png');
INSERT INTO `skill`
VALUES (1061, 13, '浪客之道', '被动',
        '亚索的暴击几率翻倍。此外，亚索会在移动时积攒一层护盾。护盾会在他受到来自英雄或野怪的伤害时触发。',
        '/image/HERO/13/13/Yasuo_Passive.png');
INSERT INTO `skill`
VALUES (1062, 13, '斩钢闪', 'Q',
        '向前出剑，呈直线造成伤害。\r\n\r\n在命中时，斩钢闪会获得一层旋风烈斩效果，持续数秒。在积攒2层旋风烈斩效果后，斩钢闪会形成一阵能够击飞敌人的旋风。\r\n\r\n斩钢闪被视为普通攻击，并且可以从所有作用于普攻的东西上获得收益。\r\n',
        '/image/HERO/13/13/YasuoQ1Wrapper.png');
INSERT INTO `skill`
VALUES (1063, 13, '风之障壁', 'W', '形成一个持续4秒的气流之墙，来阻挡敌方的飞行道具。', '/image/HERO/13/13/YasuoW.png');
INSERT INTO `skill`
VALUES (1064, 13, '踏前斩', 'E',
        '向目标敌人突进，造成魔法伤害。每次施法都会使你的下一次突进的基础伤害提升，直到抵达上限。\r\n\r\n在若干秒内无法对相同敌人重复施放。\r\n\r\n如果在突进的过程中施放斩钢闪，那么斩钢闪就会呈环状出剑。\r\n',
        '/image/HERO/13/13/YasuoE.png');
INSERT INTO `skill`
VALUES (1065, 13, '狂风绝息斩', 'R',
        '闪烁到一个被击飞的敌方英雄身边，造成物理伤害，并使范围内的所有被击飞的敌人滞留在空中。获得满额的剑意值，但会重置旋风烈斩的层数。\r\n\r\n在接下来的若干秒里，亚索的暴击会获得显著的额外护甲穿透加成值。\r\n',
        '/image/HERO/13/13/YasuoR.png');
INSERT INTO `skill`
VALUES (1066, 14, '出血', '被动', '德莱厄斯的攻击和伤害技能会导致敌人流血，在5秒里持续造成物理伤害，最多叠加5次。',
        '/image/HERO/14/14/Darius_PassiveBuff.png');
INSERT INTO `skill`
VALUES (1067, 14, '大杀四方', 'Q',
        '德莱厄斯积蓄力量，然后狂野地舞动巨斧，形成一个圆环。被斧刃击中的敌人，会比被斧柄击中的敌人受到更多的伤害。德莱厄斯还会获得治疗效果，治疗效果的数额基于被斧刃命中的敌方英雄人数。',
        '/image/HERO/14/14/DariusCleave.png');
INSERT INTO `skill`
VALUES (1068, 14, '致残打击', 'W',
        '德莱厄斯的下一次攻击会打向敌人的大动脉。在目标流血不止的同时，目标的移动速度也会被减缓。',
        '/image/HERO/14/14/DariusNoxianTacticsONH.png');
INSERT INTO `skill`
VALUES (1069, 14, '无情铁手', 'E',
        '德莱厄斯磨利他的巨斧，被动地让他的物理伤害无视目标一部分护甲。在主动施放时，德莱厄斯会用斧头上的钩子横扫他的敌人，并将他们拉到德莱厄斯身边。',
        '/image/HERO/14/14/DariusAxeGrabCone.png');
INSERT INTO `skill`
VALUES (1070, 14, '诺克萨斯断头台', 'R',
        '德莱厄斯跃向目标英雄并进行致命打击，造成真实伤害。目标身上的每层出血效果都会提升这个技能的伤害。如果诺克萨斯断头台完成了一次击杀，那么它的冷却时间会暂时被重置。',
        '/image/HERO/14/14/DariusExecute.png');
INSERT INTO `skill`
VALUES (1071, 15, '游击队军备', '被动',
        '如果提莫在短时间内静止站立且不受任何伤害，就会进入无定期的隐形状态。如果提莫在草丛中，他就能在移动的同时进入并保持隐形状态。离开隐形状态后，提莫会获得“出奇制胜”的增益效果，提升攻击速度，持续3秒。',
        '/image/HERO/15/15/Teemo_P.png');
INSERT INTO `skill`
VALUES (1072, 15, '致盲吹箭', 'Q', '用一团强力的毒液来侵蚀一名敌人的视野，对目标单位造成伤害并使目标致盲一段时间。',
        '/image/HERO/15/15/BlindingDart.png');
INSERT INTO `skill`
VALUES (1073, 15, '小莫快跑', 'W',
        '提莫动如脱兔，提升移动速度，直到被敌方英雄或防御塔击中为止。提莫可以通过冲刺来获得额外移动速度，且短时间内不会因被击中而使加速效果中止。',
        '/image/HERO/15/15/MoveQuick.png');
INSERT INTO `skill`
VALUES (1074, 15, '毒性射击', 'E', '提莫每次攻击附带毒液伤害，造成持续性伤害，持续4秒。',
        '/image/HERO/15/15/ToxicShot.png');
INSERT INTO `skill`
VALUES (1075, 15, '种蘑菇', 'R',
        '提莫投掷一个可爆炸的毒性陷阱，需要消耗提莫背包里的一个蘑菇。陷阱会在被敌方踩中时爆炸，释放出一团毒云，对附近的敌人造成减速效果和持续伤害。如果提莫把一个蘑菇扔到另一个蘑菇上，那么这个蘑菇会进行弹跳，获得额外的施放距离。',
        '/image/HERO/15/15/TeemoRCast.png');
INSERT INTO `skill`
VALUES (1076, 16, '炽热之焰', '被动',
        '布兰德的技能会对他的目标施加【烈焰焚身】效果，在4秒里持续造成伤害，最多可叠加3次。如果布兰德击杀了身上带有【烈焰焚身】的敌人，那么他会回复法力值。当【炽热之焰】在一名英雄或大型野怪身上叠至满层时，它会变得不稳定。它会在2秒内爆炸，在目标附近的区域施加法术特效并造成大量伤害。',
        '/image/HERO/16/16/BrandP.png');
INSERT INTO `skill`
VALUES (1077, 16, '火焰烙印', 'Q',
        '布兰德向前方放出一团可造成魔法伤害的火球。如果目标带有【烈焰焚身】效果，那么【Q火焰烙印】将使目标晕眩1.5秒。',
        '/image/HERO/16/16/BrandQ.png');
INSERT INTO `skill`
VALUES (1078, 16, '烈焰之柱', 'W',
        '在短暂的延迟后，布兰德会在目标区域创造一根烈焰之柱，来对范围内的敌方单位造成魔法伤害。带有【烈焰焚身】效果的单位会额外受到25%伤害。',
        '/image/HERO/16/16/BrandW.png');
INSERT INTO `skill`
VALUES (1079, 16, '烈火燃烧', 'E',
        '布兰德在目标身上引发一阵强力的爆裂，对目标造成魔法伤害。如果目标带有【烈焰焚身】效果，那么【E烈火燃烧】还会扩散至目标附近的敌人。',
        '/image/HERO/16/16/BrandE.png');
INSERT INTO `skill`
VALUES (1080, 16, '烈焰风暴', 'R',
        '布兰德释放一颗破坏力极强的火焰之种，在每次弹跳时造成魔法伤害，最多可弹跳5次。弹跳会优先以带有即将满层的【炽热之焰】效果的英雄为目标。如果目标带有【烈焰焚身】效果，那么【R烈焰风暴】将使目标短暂减速。',
        '/image/HERO/16/16/BrandR.png');
INSERT INTO `skill`
VALUES (1081, 17, '果决', '被动', '每第三次攻击造成额外伤害并治疗赵信自身。', '/image/HERO/31/31/XinZhaoP.png');
INSERT INTO `skill`
VALUES (1082, 17, '三重爪击', 'Q', '赵信的下3次普攻将造成额外伤害并且第三次攻击将击飞目标。',
        '/image/HERO/31/31/XinZhaoQ.png');
INSERT INTO `skill`
VALUES (1083, 17, '风斩电刺', 'W', '赵信用他的长枪斩击他的前方，之后将长枪向前刺击，并使被击中的敌人减速。',
        '/image/HERO/31/31/XinZhaoW.png');
INSERT INTO `skill`
VALUES (1084, 17, '无畏冲锋', 'E', '赵信对一名敌人发起冲锋，对范围内的所有敌人造成伤害并使他们暂时减速。',
        '/image/HERO/31/31/XinZhaoE.png');
INSERT INTO `skill`
VALUES (1085, 17, '新月护卫', 'R',
        '赵信对附近的敌人造成基于目标当前生命值的伤害，并击退未被挑战的目标。赵信会创造出一个圆环，且自身不会受到来自圆环之外的敌人所造成的伤害。',
        '/image/HERO/31/31/XinZhaoR.png');
INSERT INTO `skill`
VALUES (1086, 18, '忍法！雷缚印', '被动',
        '凯南的技能会对敌人施加一层持续6秒的【忍法！雷缚印】。当一名敌人身上的【忍法！雷缚印】达到3层时，就会被晕眩1.25秒，与此同时，凯南会恢复25能量值。\r\n\r\n如果在6秒内再次触发的话，晕眩时长会减少0.5秒。\r\n',
        '/image/HERO/17/17/Kennen_Passive.png');
INSERT INTO `skill`
VALUES (1087, 18, '奥义！千鸟', 'Q', '凯南向目标区域投掷手里剑，对第一个目标造成伤害并附加【忍法！雷缚印】。',
        '/image/HERO/17/17/KennenShurikenHurlMissile1.png');
INSERT INTO `skill`
VALUES (1088, 18, '奥义！电刃', 'W',
        '凯南连续攻击附加额外伤害并对目标造成一层【忍法！雷缚印】，主动释放会对所有带有【忍法！雷缚印】的敌人造成闪电伤害，并额外附加一层【忍法！雷缚印】。',
        '/image/HERO/17/17/KennenBringTheLight.png');
INSERT INTO `skill`
VALUES (1089, 18, '奥义！雷铠', 'E',
        '凯南变身为一个闪电形态，高速移动并可以穿越单位。对碰到的所有敌人造成伤害并施加一层【忍法！雷缚印】。凯南会在进入这个形态时获得移动速度，并在离开时获得攻击速度。',
        '/image/HERO/17/17/KennenLightningRush.png');
INSERT INTO `skill`
VALUES (1090, 18, '秘奥义！万雷天牢引', 'R', '凯南召唤出一团风暴，会对周围的所有敌方英雄造成魔法伤害。',
        '/image/HERO/17/17/KennenShurikenStorm.png');
INSERT INTO `skill`
VALUES (1091, 19, '艾欧尼亚热诚', '被动',
        '当艾瑞莉娅用技能命中敌人时，她会获得可叠加的攻击速度加成。这个效果在满层时还会为艾瑞莉娅提供攻击附伤。',
        '/image/HERO/18/18/Irelia_Passive.png');
INSERT INTO `skill`
VALUES (1092, 19, '利刃冲击', 'Q',
        '艾瑞莉娅向前突进以打击她的目标，并治疗自身。如果目标被标记或死于利刃冲击，那么它的冷却时间会刷新。',
        '/image/HERO/18/18/IreliaQ.png');
INSERT INTO `skill`
VALUES (1093, 19, '距破之舞', 'W',
        '艾瑞莉娅开始蓄力以进行一次打击，蓄力越久则打击造成的伤害越多。在蓄力期间她所受的物理伤害降低。',
        '/image/HERO/18/18/IreliaW.png');
INSERT INTO `skill`
VALUES (1094, 19, '比翼双刃', 'E', '艾瑞莉娅放出两柄相互聚拢的利刃。利刃之间被击中的敌人会受到伤害、晕眩效果并被标记。',
        '/image/HERO/18/18/IreliaE.png');
INSERT INTO `skill`
VALUES (1095, 19, '先锋之刃', 'R',
        '艾瑞莉娅发射庞大数量的利刃，它们会在命中一名敌方英雄时向外爆开。被利刃命中的敌人会受到伤害并被标记。然后利刃会形成一道刃墙，在敌人穿过时造成伤害、和减速效果。',
        '/image/HERO/18/18/IreliaR.png');
INSERT INTO `skill`
VALUES (1096, 20, '疾风骤雨', '被动', '在李青使用一次技能后，他的下两次攻击会获得攻速加成，且回复能量。',
        '/image/HERO/19/19/LeeSinPassive.png');
INSERT INTO `skill`
VALUES (1097, 20, '天音波/回音击', 'Q',
        '天音波：李青发出刺耳的声波定位敌人，对首个敌人造成物理伤害。如果天音波击中敌人，李青在接下来3秒可施放回音击。\r\n\\n回音击：李青冲向被天音波击中的敌人，造成基于该目标已损失生命值的物理伤害。\r\n',
        '/image/HERO/19/19/BlindMonkQOne.png');
INSERT INTO `skill`
VALUES (1098, 20, '金钟罩/铁布衫', 'W',
        '金钟罩：李青冲向友军，提供护盾保护自己。如果目标友军是英雄，那么李青和目标都会获得护盾。施放金钟罩后3秒内，李青可施放铁布衫。\\n\r\n铁布衫：李青艰苦卓绝的训练让他能在战斗中激发潜能。李青可以在4秒内获得额外生命偷取和法术吸血。\r\n',
        '/image/HERO/19/19/BlindMonkWOne.png');
INSERT INTO `skill`
VALUES (1099, 20, '天雷破/摧筋断骨', 'E',
        '天雷破：李青撞击地面，施放冲击波，造成魔法伤害并使命中的敌方单位显形。如果天雷破击中敌人，李青可以在接下来的3秒内施放摧筋断骨。\\n\r\n摧筋断骨：李青致残被天雷破给伤害到的敌人，减少敌人的移动速度，持续4秒。持续期间受影响单位的移动速度会逐渐恢复正常。\r\n',
        '/image/HERO/19/19/BlindMonkEOne.png');
INSERT INTO `skill`
VALUES (1100, 20, '猛龙摆尾', 'R',
        '李青用强力的回旋踢击退敌方英雄，对目标以及被目标撞到的任何敌人造成物理伤害。 被目标撞到的敌人会被短暂击飞。这项技艺是春哥教他的，不过李青不能将玩家的英雄踢到地图外面去。',
        '/image/HERO/19/19/BlindMonkRKick.png');
INSERT INTO `skill`
VALUES (1101, 21, '超凡邪力', '被动',
        '维迦是最强大的恶魔，甚至能对符文之地之心发起攻击——并且他只会越来越强大！用技能攻击一名敌人、击杀单位或拆毁防御塔都会为维迦永久提升法术强度加成。',
        '/image/HERO/20/20/Veigar_Entropy.png');
INSERT INTO `skill`
VALUES (1102, 21, '黑暗祭祀', 'Q',
        '维迦释放一束黑暗能量，对最先被命中的两个敌人造成魔法伤害。被这个能量束所击杀的单位，会永久地为维迦提供一些法术强度。',
        '/image/HERO/20/20/VeigarDarkMatter.png');
INSERT INTO `skill`
VALUES (1103, 21, '黑暗物质', 'W',
        '维迦召唤一大团黑暗物质轰击目标区域，落地造成魔法伤害。【超凡邪力】的层数会缩短这个技能的冷却时间。',
        '/image/HERO/20/20/VeigarBalefulStrike.png');
INSERT INTO `skill`
VALUES (1104, 21, '扭曲空间', 'E',
        '在短暂的延迟后，维迦在目标区域创造一个能够维持3秒的扭曲空间，穿过此区域边界的敌人将会受到短时间的晕眩效果。',
        '/image/HERO/20/20/VeigarEventHorizon.png');
INSERT INTO `skill`
VALUES (1105, 21, '能量爆裂', 'R', '引爆目标敌方英雄，造成大量魔法伤害，并基于目标已损失生命值提升伤害。',
        '/image/HERO/20/20/VeigarR.png');
INSERT INTO `skill`
VALUES (1106, 22, '暗夜猎手', '被动', '薇恩毫不留情的猎杀世间邪恶，向附近敌方英雄移动时增加30点移动速度。',
        '/image/HERO/21/21/Vayne_NightHunter.png');
INSERT INTO `skill`
VALUES (1107, 22, '闪避突袭', 'Q', '薇恩进行翻滚，并小心地填充她的下一发射击。她的下次攻击造成额外伤害。',
        '/image/HERO/21/21/VayneTumble.png');
INSERT INTO `skill`
VALUES (1108, 22, '圣银弩箭', 'W',
        '薇恩用稀有金属制作弩箭，让邪恶敌人中毒。对同一目标的第3次攻击或技能施放会对其造成额外真实伤害，数值相当于目标最大生命值的一定百分比。',
        '/image/HERO/21/21/VayneSilveredBolts.png');
INSERT INTO `skill`
VALUES (1109, 22, '恶魔审判', 'E',
        '薇恩从背部展开一张重弩，并且朝她的目标发射一根巨型弩箭，将目标击退并造成伤害。如果目标与地形产生碰撞，那么目标会被贯穿，对其造成额外伤害和晕眩效果。',
        '/image/HERO/21/21/VayneCondemn.png');
INSERT INTO `skill`
VALUES (1110, 22, '终极时刻', 'R',
        '薇恩准备进行史诗般的对决，她的攻击力得到提高，能在闪避突袭期间进入隐形状态，闪避突袭的冷却时间缩短，并且暗夜猎手（被动）提供更多移动速度。',
        '/image/HERO/21/21/VayneInquisition.png');
INSERT INTO `skill`
VALUES (1111, 23, '决斗之舞', '被动',
        '菲奥娜对附近一名敌方英雄发起挑战，并发现其身上的一处破绽。如果她成功击中该破绽，她会得到额外奖励，并会发现下一处破绽。',
        '/image/HERO/22/22/Fiora_P.png');
INSERT INTO `skill`
VALUES (1112, 23, '破空斩', 'Q', '菲奥娜向一个方向冲刺，并刺击一个附近的敌人，造成物理伤害并施加攻击特效。',
        '/image/HERO/22/22/FioraQ.png');
INSERT INTO `skill`
VALUES (1113, 23, '劳伦特心眼刀', 'W',
        '菲奥娜在短时间内对所有即将到来的伤害和限制效果进行招架，然后朝着一个方向进行刺击。这个刺击会减速命中的第一个敌方英雄，如果菲奥娜用这个技能格挡掉一个禁锢类效果，那么刺击会造成晕眩效果而非减速效果。',
        '/image/HERO/22/22/FioraW.png');
INSERT INTO `skill`
VALUES (1114, 23, '夺命连刺', 'E',
        '菲奥娜的下两次攻击将获得攻击速度加成。第一次攻击会使目标减速，而第二次攻击必定会产生暴击。',
        '/image/HERO/22/22/FioraE.png');
INSERT INTO `skill`
VALUES (1115, 23, '无双挑战', 'R',
        '菲奥娜显示出一个敌方英雄身上的所有四处破绽，并在目标附近时获得移动速度加成。如果菲奥娜命中了所有4处破绽，或者目标在死前至少被命中了1处破绽，那么菲奥娜和范围内的友军就会在接下来的几秒里持续获得治疗效果。',
        '/image/HERO/22/22/FioraR.png');
INSERT INTO `skill`
VALUES (1116, 24, '赐死剑气', '被动',
        '每过一段时间，亚托克斯的下次普攻会造成额外物理伤害，并治疗亚托克斯，治疗量基于目标的最大生命值。',
        '/image/HERO/23/23/Aatrox_Passive.png');
INSERT INTO `skill`
VALUES (1117, 24, '暗裔利刃', 'Q', '亚托克斯向下猛砸他的巨剑，并造成物理伤害。他可以挥击三次，每次都有一个不同的范围效果。',
        '/image/HERO/23/23/AatroxQ.png');
INSERT INTO `skill`
VALUES (1118, 24, '恶火束链', 'W',
        '亚托克斯猛砸地面，对命中的第一个敌人造成伤害。英雄和大型野怪需要快速离开被影响的区域，否则就会被拖拽到中心并再次受到伤害。',
        '/image/HERO/23/23/AatroxW.png');
INSERT INTO `skill`
VALUES (1119, 24, '暗影冲决', 'E', '被动效果：亚托克斯会在对敌方英雄造成伤害时治疗自身。主动效果：他会朝一个方向突进。',
        '/image/HERO/23/23/AatroxE.png');
INSERT INTO `skill`
VALUES (1120, 24, '大灭', 'R',
        '亚托克斯现出他的恶魔形态，恐惧附近的敌方小兵，并获得攻击力、治疗效果提升、以及移动速度。如果他参与了一次击杀，这个效果就会延长。',
        '/image/HERO/23/23/AatroxR.png');
INSERT INTO `skill`
VALUES (1121, 25, '光芒四射', '被动',
        '拉克丝的伤害类技能会对敌人施加【启明】效果，持续6秒。拉克丝的下一次攻击将会消耗【启明】效果，来对目标造成额外魔法伤害（基于拉克丝等级）。',
        '/image/HERO/24/24/LuxIlluminatingFraulein.png');
INSERT INTO `skill`
VALUES (1122, 25, '光之束缚', 'Q', '拉克丝释放一个光球，束缚并伤害最多两个敌方单位。',
        '/image/HERO/24/24/LuxLightBinding.png');
INSERT INTO `skill`
VALUES (1123, 25, '曲光屏障', 'W', '拉克丝掷出她的魔杖，魔杖所触及的友方单位会有光环环绕，保护他们免受敌方伤害。',
        '/image/HERO/24/24/LuxPrismaticWave.png');
INSERT INTO `skill`
VALUES (1124, 25, '透光奇点', 'E',
        '朝一个区域发射一个不规则的扭曲之光，减速附近敌人。拉克丝可以引爆它，对敌人造成区域性伤害。',
        '/image/HERO/24/24/LuxLightStrikeKugel.png');
INSERT INTO `skill`
VALUES (1125, 25, '终极闪光', 'R',
        '在积蓄能量之后，拉克丝发射一束光波，对该区域所有目标造成伤害。此外，该技能触发拉克丝的被动技能并刷新光芒四射减益的持续时间。',
        '/image/HERO/24/24/LuxMaliceCannon.png');
INSERT INTO `skill`
VALUES (1126, 26, '花岗岩护盾', '被动',
        '墨菲特被岩石护盾保护，最多吸收最大生命值10%的伤害，若10秒内未受到攻击，护盾将重置。',
        '/image/HERO/25/25/Malphite_GraniteShield.png');
INSERT INTO `skill`
VALUES (1127, 26, '地震碎片', 'Q',
        '通过使用他的原初元素魔法，墨菲特发出一块大地碎片穿过他敌人处的地面，在碰撞时造成伤害并且偷取移动速度3秒。',
        '/image/HERO/25/25/SeismicShard.png');
INSERT INTO `skill`
VALUES (1128, 26, '雷霆拍击', 'W',
        '墨菲特的攻击蕴含着如此惊人的力道以至于它引发了一次音爆。在接下来的数秒里，他的攻击会在他面前引发余波。',
        '/image/HERO/25/25/Obduracy.png');
INSERT INTO `skill`
VALUES (1129, 26, '大地震颤', 'E',
        '墨菲特锤击地面，放射出冲击波对目标造成基础伤害，并根据墨菲特的护甲值附加额外伤害，同时暂时减低目标攻击速度。',
        '/image/HERO/25/25/Landslide.png');
INSERT INTO `skill`
VALUES (1130, 26, '势不可挡', 'R', '墨菲特冲击目标区域，将所有敌人抛向空中，造成魔法伤害并晕眩。',
        '/image/HERO/25/25/UFSlash.png');
INSERT INTO `skill`
VALUES (1131, 27, '狂怒基因', '被动',
        '被动技能\r\n在战斗时，纳尔会产生怒气。在怒气到达最大值时，他的下一个技能将使他变形成巨型纳尔，获得强化的生存能力并能使用新的技能。\r\n',
        '/image/HERO/26/26/Gnar_Passive.png');
INSERT INTO `skill`
VALUES (1132, 27, '投掷回力标 / 投掷顽石', 'Q',
        '纳尔扔出一个回力标，对敌人造成伤害和减速效果，直到开始折返为止。如果纳尔接住了折返的回力标，那么这个技能的冷却时间就会减少。\\n\r\n\r\n巨型纳尔扔出一颗石头，石头会在命中第一个敌人后停下，对这个敌人附近的所有敌方单位造成伤害和减速效果。巨型纳尔可以通过拾取这颗石头来减少这个技能的冷却时间。\r\n',
        '/image/HERO/26/26/GnarQ.png');
INSERT INTO `skill`
VALUES (1133, 27, '亢奋 / 痛殴', 'W',
        '纳尔的攻击和施法会让他亢奋起来，造成额外伤害并为他提供移动速度加成。\\n\r\n\r\n巨型纳尔已经过于暴怒，所以用不着亢奋了，因此他会用后脚暴跳，并猛击他面前的区域，使区域内的所有敌人晕眩。\r\n',
        '/image/HERO/26/26/GnarW.png');
INSERT INTO `skill`
VALUES (1134, 27, '轻跳 / 猛踏', 'E',
        '纳尔跳到一个区域，并在落到任何单位上后，弹跳到更远的区域。\\n\r\n巨型纳尔体积太大，无法弹跳，但落地后会使地面震颤，对区域内的敌人造成伤害。\r\n',
        '/image/HERO/26/26/GnarE.png');
INSERT INTO `skill`
VALUES (1135, 27, '呐啊！', 'R',
        '巨型纳尔将身边的所有东西都朝着一个选定的方向投掷，对他们造成伤害和减速效果。被投到墙上的敌人会被晕眩，并承受额外的伤害。',
        '/image/HERO/26/26/GnarR.png');
INSERT INTO `skill`
VALUES (1136, 28, '刀锋之末', '被动',
        '泰隆的技能会创伤英雄和史诗级野怪，可叠加3层。当泰隆用普攻攻击一个带有3层创伤效果的目标时，目标会流血，持续受到重度伤害。',
        '/image/HERO/27/27/TalonP.png');
INSERT INTO `skill`
VALUES (1137, 28, '诺克萨斯式外交', 'Q',
        '泰隆戳刺目标单位。如果目标在近战距离之内，那么这次攻击会造成致命伤害。如果目标在近战距离之外，那么泰隆将会跃向他的目标然后戳刺目标。如果这个技能击杀了泰隆的目标，那么就会返还给泰隆一些生命值和冷却时间。',
        '/image/HERO/27/27/TalonQ.png');
INSERT INTO `skill`
VALUES (1138, 28, '斩草除根', 'W',
        '泰隆放出一排匕首，随后匕首会返回泰隆处，匕首每次穿过敌人时都会造成物理伤害。返程的匕首会造成额外伤害并使被命中的目标减速。',
        '/image/HERO/27/27/TalonW.png');
INSERT INTO `skill`
VALUES (1139, 28, '刺客之道', 'E',
        '泰隆翻越任何地形或建筑物，有一个最大距离。这个技能的冷却时间很短，但是需要很长一段时间后才能再次翻越已经翻越过的地形。',
        '/image/HERO/27/27/TalonE.png');
INSERT INTO `skill`
VALUES (1140, 28, '暗影突袭', 'R',
        '泰隆散出一圈刀刃并变为隐形状态，同时获得额外移动速度。当泰隆从隐形状态下现身时，刀刃会汇聚向泰隆处。刀刃的每段移动，都会让暗影突袭对被至少一枚刀刃命中的敌人造成物理伤害。',
        '/image/HERO/27/27/TalonR.png');
INSERT INTO `skill`
VALUES (1141, 29, '怒之领域', '被动',
        '雷克顿每次主动攻击都能获得怒气。这些怒气能强化他的技能。此外，雷克顿在低生命值时能获得额外怒气。',
        '/image/HERO/28/28/Renekton_Passive.png');
INSERT INTO `skill`
VALUES (1142, 29, '暴君狂击', 'Q',
        '雷克顿挥动他的武器，对周围所有目标造成中等水平物理伤害，并根据造成的伤害来治疗自己。如果他有50点以上怒气，那么此技能的伤害和治疗效果会得到提升。',
        '/image/HERO/28/28/RenektonCleave.png');
INSERT INTO `skill`
VALUES (1143, 29, '冷酷捕猎', 'W',
        '雷克顿两次挥击目标，对其造成中等水平物理伤害并晕眩其0.75秒。如果雷克顿有50点以上怒气，他会三次挥击目标，摧毁目标身上的伤害护盾，对其造成高额物理伤害，并晕眩其1.5秒。',
        '/image/HERO/28/28/RenektonPreExecute.png');
INSERT INTO `skill`
VALUES (1144, 29, '横冲直撞', 'E',
        '雷克顿冲向前方，对沿途的敌人造成伤害。如果雷克顿有50点以上怒气，就会造成额外伤害，并减少沿途敌人的护甲值。',
        '/image/HERO/28/28/RenektonSliceAndDice.png');
INSERT INTO `skill`
VALUES (1145, 29, '终极统治', 'R',
        '雷克顿转换为暴君形态，获得额外生命值，并对周围敌人造成伤害。此形态的雷克顿定时获得怒气。',
        '/image/HERO/28/28/RenektonReignOfTheTyrant.png');
INSERT INTO `skill`
VALUES (1146, 30, '弗雷尔卓德的召唤', '被动',
        '努努提升威朗普和一名附近友军的攻击速度和移动速度，并使威朗普的普攻可以伤害目标周围的敌人。',
        '/image/HERO/29/29/NunuPassive.png');
INSERT INTO `skill`
VALUES (1147, 30, '吞噬', 'Q', '威朗普撕咬一个小兵、野怪或敌方英雄，造成巨大伤害并回复自己的生命值。',
        '/image/HERO/29/29/NunuQ.png');
INSERT INTO `skill`
VALUES (1148, 30, '史上最大雪球！', 'W', '威朗普滚起一个雪球，它的尺寸和速度将随着滚动时间而增长。雪球会伤害并击飞敌人。',
        '/image/HERO/29/29/NunuW.png');
INSERT INTO `skill`
VALUES (1149, 30, '雪球飞射', 'E',
        '努努掷出多个雪球以伤害敌人。当他完成后，威朗普就会禁锢被雪球命中过的任何英雄或大型野怪。',
        '/image/HERO/29/29/NunuE.png');
INSERT INTO `skill`
VALUES (1150, 30, '绝对零度', 'R', '努努和威朗普在一个区域内创造一阵强大的暴风雪，来减速敌人并在结束时造成巨额伤害。',
        '/image/HERO/29/29/NunuR.png');
INSERT INTO `skill`
VALUES (1151, 31, '溺水之幸', '被动',
        '当派克消失在敌人视野外时，他可从所受的来自敌方英雄的伤害中回复显著的生命值。派克无法从任何来源（装备、符文等）中获得额外最大生命值加成，而是会获得攻击力作为替代。',
        '/image/HERO/30/30/PykePassive.png');
INSERT INTO `skill`
VALUES (1152, 31, '透骨尖钉', 'Q', '派克要么戳刺他前方的一名敌人，要么将一名敌人拽向他。', '/image/HERO/30/30/PykeQ.png');
INSERT INTO `skill`
VALUES (1153, 31, '幽潭潜行', 'W', '派克进入伪装状态并获得显著的移动速度加成，此移速加成会逐渐衰减。',
        '/image/HERO/30/30/PykeW.png');
INSERT INTO `skill`
VALUES (1154, 31, '魅影浪洄', 'E', '派克突进并在身后留下一个幻影。幻影将会返回派克身边，并晕眩沿途的敌人。',
        '/image/HERO/30/30/PykeE.png');
INSERT INTO `skill`
VALUES (1155, 31, '涌泉之恨', 'R', '派克进行闪烁以处决低血量的敌人，并且如果处决成功还能再次',
        '/image/HERO/30/30/PykeR.png');

-- ----------------------------
-- Table structure for sysdiagrams
-- ----------------------------
DROP TABLE IF EXISTS `sysdiagrams`;
CREATE TABLE `sysdiagrams`
(
    `name`         varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `principal_id` int(11)                                                 NULL DEFAULT NULL,
    `diagram_id`   int(11)                                                 NULL DEFAULT NULL,
    `version`      int(11)                                                 NULL DEFAULT NULL,
    `definition`   longblob                                                NULL
) ENGINE = InnoDB
  AUTO_INCREMENT = 1
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`
(
    `num`      int(11)                                                NULL DEFAULT NULL,
    `name`     varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB
  AUTO_INCREMENT = 5
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users`
VALUES (1, 'username', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8');
INSERT INTO `users`
VALUES (33, 'zhaodongxu', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8');
INSERT INTO `users`
VALUES (34, 'maxiaobao', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8');
INSERT INTO `users`
VALUES (35, 'asd234234', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8');

-- ----------------------------
-- Table structure for usert
-- ----------------------------
DROP TABLE IF EXISTS `usert`;
CREATE TABLE `usert`
(
    `num`         int(11)                                                NULL DEFAULT NULL,
    `people_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `sex`         varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `age`         varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `form`        varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
    `live`        varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB
  AUTO_INCREMENT = 4
  CHARACTER SET = utf8
  COLLATE = utf8_general_ci
  ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usert
-- ----------------------------
INSERT INTO `usert`
VALUES (1, 'darker', '男', '18', '河南', '看风景');
INSERT INTO `usert`
VALUES (33, 'b', NULL, NULL, NULL, NULL);
INSERT INTO `usert`
VALUES (34, 'a', NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
