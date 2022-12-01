/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : SQL Server
 Source Server Version : 15002000
 Source Host           : localhost:1433
 Source Catalog        : LOL
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15002000
 File Encoding         : 65001

 Date: 01/12/2022 00:56:54
*/


-- ----------------------------
-- Table structure for Hero
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Hero]') AND type IN ('U'))
DROP TABLE [dbo].[Hero]
    GO

CREATE TABLE [dbo].[Hero]
(
    [
    hero_id]
    int
    IDENTITY
(
    1,
    1
) NOT NULL,
    [name] varchar
(
    50
) COLLATE Chinese_PRC_CI_AS NULL,
    [title] varchar
(
    50
) COLLATE Chinese_PRC_CI_AS NULL,
    [hero_type1] varchar
(
    50
) COLLATE Chinese_PRC_CI_AS NULL,
    [hero_type2] varchar
(
    50
) COLLATE Chinese_PRC_CI_AS NULL,
    [difficulty] int NULL,
    [img_code] text COLLATE Chinese_PRC_CI_AS NULL,
    [introduce] text COLLATE Chinese_PRC_CI_AS NULL,
    [video] text COLLATE Chinese_PRC_CI_AS NULL
    )
    GO

ALTER TABLE [dbo].[Hero] SET (LOCK_ESCALATION = TABLE)
    GO


-- ----------------------------
-- Records of Hero
-- ----------------------------
SET IDENTITY_INSERT[dbo].[Hero] ON
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'1', N'盖伦', N'德玛西亚之力', N'战士', N'坦克', N'2', N'/image/HERO/1/gailun.png', N'作为一名自豪而高贵的勇士，盖伦将自己当做无畏先锋中的普通一员参与战斗。他既受到同袍手足的爱戴，也受到敌人对手的尊敬——尤其作为尊贵的冕卫家族的子嗣，他被委以重任，守卫德玛西亚的疆土和理想。他身披抵御魔法的重甲，手持阔剑，时刻准
备着用正义的钢铁风暴在战场上正面迎战一切操纵魔法的狂人。
', N'/video/Hero/Hero/gailun.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'2', N'艾希', N'寒冰射手', N'射手', N'辅助', N'2', N'/image/HERO/2/aixi.png', N'作为阿瓦罗萨部族的战母，寒冰血脉的艾希率领着北方人数最多的部落。她克己、智慧、忠于理想，但并不适应自己作为领袖的角色，艾希与自己血脉中蕴藏的先祖魔法相通，挽起了臻冰打造的长弓。她的族人相信她就是神话中的女英雄阿瓦罗萨的转世，在人们的追随下，艾希希望夺回那些属于部族的古代领土，从而让弗雷尔卓德再次实现统一。', N'/video/Hero/Hero/hanbingsheshou.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'3', N'流浪', N'符文法师', N'法师', N'战士', N'3', N'/image/HERO/3/ruizi.png', N'瑞兹是符文之地广为人知的最老练的法师之一。他生于远古，饱经风霜，肩负着不可承受之重任。这位大法师的武器，是他无可摧折的决心和丰富的秘法学识，他一生都在寻找着世界符文 ——它们是令这世界从无到有、万物成形的原生魔法所留下的碎片。他一定要找到所有这些神秘的字符，以免落入恶人之手，因为瑞兹知道它们可能给符文之地带来怎样的浩劫。', N'/video/Hero/Hero/fuwenfashi.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'4', N'易
', N'无极剑圣', N'刺客', N'战士', N'2', N'/image/HERO/4/yi.png', N'易大师锤炼身体、磨砺心智，直至身心合一。尽管他将暴力作为不得已的选择，但他优雅迅猛的剑法总是让这一手段显得尤为快捷。作为无极之道最后的门徒，易大师致力于这个门派的传承，用七度洞悉目镜搜寻着最有资格的人，寻找潜在的新弟子。', N'/video/Hero/Hero/yi.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'5', N'阿利斯塔
', N'牛头酋长', N'坦克', N'辅助', N'3', N'/image/HERO/5/alisita.png', N'阿利斯塔一直都是威名远扬的巨力勇士，他要为自己被屠杀的氏族向诺克萨斯帝国复仇。虽然他曾被奴役，并被迫成为斗兽场中的角斗士，但他坚不可摧的意志使他免于沦为真正的野兽。现在，挣脱了奴役枷锁的他继续以受苦之人和弱者的名义战斗。他的愤怒，还有犄角、蹄子和拳头，都是他的武器。', N'/video/Hero/Hero/niumo.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'6', N'阿兹尔', N'沙漠皇帝', N'法师', N'战士', N'4', N'/image/HERO/6/shamohuangdi.png', N'阿兹尔是上古时期恕瑞玛的一位凡人皇帝，一位站在不朽神话巅峰的自豪之人。但他的狂妄引来了旁人的背叛，在最伟大胜利降临的那一刻将他杀害。而现在，数千年后，他重获新生并成为了力量无边的飞升者。阿兹尔的城市已经从黄沙之下崛起，他要让恕瑞玛恢复曾经的荣光。', N'/video/Hero/Hero/arzier.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'7', N'费德提克', N'末日使者', N'法师
', N'辅助
', N'3', N'/image/HERO/7/feidetike.png', N'费德提克是一个骇人的活体稻草人，一个徘徊在黑暗中的憎恶之物，他挥舞着一把镰刀并捕食着粗心的生物们。在群鸦们的凶蛮啄杀的协助下，费德提克会先品味猎物们的恐惧，然后再于飓风般的羽毛与溅血的利喙之中取走猎物们的性命。', N'/video/Hero/Hero/morshizhe.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'8', N'艾克
', N'时间刺客', N'刺客', N'战士', N'4', N'/image/HERO/8/aike.png', N'艾克是一名来自祖安不良街区的奇才。他可以操纵时间，从而让任何处境都变得对自己有利。通过使用他自己的发明——Z型驱动——他可以探索其他平行现实的分支并创造最完美的条件。尽管他酷爱这种自由，但只要他的朋友们遇到了威胁，他就会不顾一切地去保护他们。在旁观者眼里，艾克总是能初次尝试就完成不可能之举，屡试不爽。 ', N'/video/Hero/Hero/aike.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'9', N'卡萨丁', N'虚空行者', N'刺客', N'法师
', N'3', N'/image/HERO/9/kesading.png', N'在世界上最黑暗的地方，卡萨丁切出了一道燃烧的裂口，他知道自己已经时日无多。他曾是恕瑞玛地区的向导和冒险家，后来选择在恕瑞玛南方平静的部落中安家落户——直到那一天，他的村庄被虚空吞噬。卡萨丁发誓要报仇雪恨，于是整合了许多秘法器物和禁忌之术，以便应对前方的险阻。最后，卡萨丁动身前往艾卡西亚的废土，准备面对任何虚空的造物，寻找那位自封的先知，马尔扎哈。', N'/video/Hero/Hero/kasading.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'10', N'卡兹克', N'虚空掠夺者
', N'刺客', N'战士', N'4', N'/image/HERO/10/kazike.png', N'虚空在成长，虚空在不断适应。在众多虚空生物中，没有哪种比卡兹克更能体现这一特性。进化的动力让这种恐怖不断变异，本能地求生并弑杀强者。只要它遇到了障碍，就会进化出新的、更有效的方法反制并杀掉猎物。卡兹克最初只是个愚钝的野兽，然而它的智力和它的形态一样获得了发展。现在，这只生物会提前计划狩猎行动，甚至懂得在猎物心中制造最真实的恐惧。', N'/video/Hero/Hero/kazike.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'11', N'艾翁', N'翠神', N'辅助', N'法师', N'4', N'/image/HERO/11/aiwong.png', N'半人半树的艾翁?荆足常在符文之地的丛林中游荡，所经之处无不生机盎然。他知晓自然界的种种秘密，无论是飞禽走兽还是游鱼虫孑，都与他交谊深厚。在逍遥四野的途中，艾翁会向路遇的人传授奇特的智慧，或是培植丰茂的丛林。时不时地，他也会向口风不严的蝴蝶托付自己所知的秘密。', N'/video/Hero/Hero/aiwong.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'12', N'奥拉夫', N'狂战士', N'战士', N'坦克
', N'4', N'/image/HERO/12/aolafu.png', N'奥拉夫是一股无坚不摧的毁灭之力，战斧在手的他别无所求，只想光荣地死在战斗中。奥拉夫来自弗雷尔卓德的海岸半岛洛克法，他曾在一次占卜预言中听闻自己将安详地死去——这是懦夫的命运，也是对他们族人的莫大侮辱。于是，为了追寻另外一种结局，他在狂怒的驱动下在这片土地上暴跳横行，屠杀了数十名伟大的战士和传说中的野兽，希望能够找到能够阻止自己的对手。如今他是凛冬之爪部族残酷的执法者，希望在即将到来的大战中找到自己的终结。', N'/video/Hero/Hero/aolafu.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'13', N'亚索', N'疾风剑豪', N'战士', N'刺客', N'4', N'/image/HERO/13/yasuo.png', N'亚索是一个百折不屈的艾欧尼亚人，也是一名身手敏捷的御风剑客。这位生性自负的年轻人，被误认为杀害长老的凶手——由于无法证明自己的清白，他出于自卫而杀死了自己的哥哥。虽然长老死亡的真相已然大白，亚索还是无法原谅自己的所作所为。他在家园的土地上流浪，只有疾风指引着他的剑刃。', N'/video/Hero/Hero/yasuo.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'14', N'德莱厄斯
', N'诺克萨斯之手', N'战士', N'坦克
', N'3', N'/image/HERO/14/delaiesi.png', N'提到诺克萨斯力量的象征，帝国上下没有人能比德莱厄斯这名久经沙场的指挥官更加适合。他从无名小卒逐渐成长为诺克萨斯之手，劈开了无数敌人的身躯 —— 其中也不乏诺克萨斯自己人。他从不怀疑自己执行的公义，也从不会在举起战斧后迟疑。作为崔法利军团的领导者，德莱厄斯的任何对手都不用指望他手下留情。', N'/video/Hero/Hero/kelaiesi.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'15', N'提莫', N'迅捷斥候', N'射手', N'刺客', N'3', N'/image/HERO/15/timo.png', N'不惧艰难险阻、不惧坎坷危途，提莫怀着无比的热情和欢欣的精神探索着整个世界。作为一个约德尔人，他对自己的道德观坚定不移，同时对班德尔斥候的信条感到自豪，有的时候，他的热忱甚至会让他无法看到，自己行为会在更大的意义上导致什么样的后果。虽然有的人认为这支斥候小队是否真正存在还有待商榷，但有一件事是肯定的：提莫的信念绝不容小觑。', N'/video/Hero/Hero/timo.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'16', N'布兰德', N'复仇焰魂', N'法师', N'辅助', N'4', N'/image/HERO/16/bulande.png', N'基根·诺和曾经是一名普通弗雷尔卓德部族居民，现在则变成了另一种生物，布兰德。他的身世警醒着后人，被更强大的力量所诱惑会带来什么后果。基根为了追寻传说中的世界符文，背叛了自己的同伴并将符文据为己有，就在那一瞬间，这个人彻底消失了。他的灵魂被彻底燃尽，他的身躯成为了活体烈焰的容器，如今，布兰德游荡在瓦洛兰，寻觅着其他的符文。他曾遭受的苦难，凡人活上十几辈子也未必能够经历，而他发誓此仇必报。', N'/video/Hero/Hero/huonan.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'17', N'赵信', N'德邦总管', N'战士', N'刺客', N'3', N'/image/HERO/31/zhaoxin.png', N'赵信是效忠于光盾王朝的坚毅勇士。他曾经沦落于诺克萨斯的角斗场，在无数次角斗中得以幸存。被德玛西亚军队解救以后，他便发誓为这群勇敢的解放者贡献生命和忠诚。最称手的三爪长枪相伴，赵信现在为自己的第二祖国而战，一往无前，暴虎冯河。', N'/video/Hero/Hero/zhaoxin.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'18', N'凯南
', N'狂暴之心', N'法师', N'射手
', N'3', N'/image/HERO/17/kainan.png', N'凯南不仅是捍卫艾欧尼亚均衡的迅猛如雷电的执法者，而且还是均衡教派中唯一的一名约德尔人。虽然他身体小巧，浑身绒毛，但他能用手里剑的风暴和无限的热情迎接任何敌人的威胁。他和自己的师父慎一起在精神领域巡逻，使用雷电的能量痛击敌人。', N'/video/Hero/Hero/kainan.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'19', N'艾瑞莉娅', N'刀锋舞者', N'战士', N'刺客
', N'4', N'/image/HERO/18/daofengwuzhe.png', N'诺克萨斯对艾欧尼亚的占领催生了许多英雄，但没有谁像纳沃利的艾瑞莉娅一般令人意外。她将家乡的古老舞艺化为战技，以精心修习的优雅身姿操控着致命的刀丛。在她证明了自己的战斗实力后，被众人推举为反抗军的领袖和首脑，为了守卫家园而奋斗至今。', N'/video/Hero/Hero/aoruiliya.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'20', N'李青', N'盲僧
', N'战士', N'刺客
', N'5', N'/image/HERO/19/mangseng.png', N'李青是艾欧尼亚古老武术的大师，讲原则、重信义的他能将神龙之灵的精粹运用自如，助他面对任何挑战。虽然他多年前便已双目失明，但这位武僧依然献出自己的全部力量，用生命捍卫家园，抵御任何胆敢打破这里神圣均衡的人。所有因他安静冥想的举动而掉以轻心的敌人都将品尝他燃烧的拳头和炽烈的回旋踢。', N'/video/Hero/Hero/mangseng.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'21', N'维迦', N'邪恶小法师', N'法师', N'辅助', N'3', N'/image/HERO/20/xioafa.png', N'维迦是热衷于黑暗巫术的大师。几乎没有哪个凡人敢碰的恐怖力量，他却能敞开怀抱。作为拥有自由精神的班德尔城居民，他渴望突破约德尔魔法的边界，于是转而研究那些被隐藏数千年的秘法文字。现在他已经变成了一个偏执的生物，对宇宙的奥秘无限向往。人们总会低估维迦的力量。虽然维迦发自心底地觉得自己是邪恶的，不过他的一些心底的原则也的确会让人质疑他的深层动机。', N'/video/Hero/Hero/weijia.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'22', N'薇恩', N'暗夜猎手', N'射手', N'刺客', N'4', N'/image/HERO/21/weien.png', N'肖娜·薇恩是一位无情的德玛西亚怪物猎手。终其一生，她都在寻找杀害她全家的恶魔。她的手臂上装着十字弩，心中燃烧着熊熊的复仇怒火，从暗影中射出圣银弩箭的风暴，薇恩只有在杀死那些为黑暗魔法所控制的人和生物时，才能真正感到愉悦。', N'/video/Hero/Hero/weien.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'23', N'菲奥娜', N'无双剑姬', N'战士', N'刺客', N'4', N'/image/HERO/22/feiouna.png', N'菲奥娜是全瓦洛兰最可怕的决斗家。她以雷厉风行、狡黠聪慧闻名于世，同样著名的还有她舞弄自己蓝钢佩剑的矫健。菲奥娜出生在德玛西亚王国的劳伦特家族，她从父亲的手中接管了家业，并在一场丑闻风波中将家族拯救于于灭亡的边缘。虽然劳伦特家威严不再，但菲奥娜却一直在不懈地努力，希望重振家族荣耀，让劳伦特这个名字重回德玛西亚名望贵族之列。', N'/video/Hero/Hero/feiaona.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'24', N'亚托克斯
', N'暗裔剑魔', N'战士', N'坦克
', N'3', N'/image/HERO/23/jiamo.png', N'亚托克斯和他的同胞们曾是恕瑞玛对抗虚空之地时满载荣耀的守护者一族，最终却变成了符文之地的一个更大的威胁，并且仅被击败于被诡诈的致命巫术。但在被囚禁了数个世纪后，亚托克斯率先找到重获自由之法，那就是对那些蠢得妄图尝试挥舞那把含有他灵魂精华的神奇武器的愚妄之徒进行腐蚀和转化。现在，凭借偷来的血肉躯体，他以一种近似他之前形态的凶残外表行走于符文之地中，寻求着一次毁天灭地且久未兑现的复仇。', N'/video/Hero/Hero/jianmo.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'25', N'拉克丝
', N'光辉女郎', N'法师', N'辅助', N'3', N'/image/HERO/24/lakesi.png', N'拉克珊娜·冕卫出身自德玛西亚，一个将魔法视为禁忌的封闭国度。只要一提起魔法，人们总是带着恐惧和怀疑。所以拥有折光之力的她，在童年的成长过程中始终担心被人发现进而遭到放逐，一直强迫自己隐瞒力量，以此保住家族的贵族地位。虽然如此，拉克丝的乐观和顽强让她学会拥抱自己独特的天赋，现在的她正在秘密地运用自己的能力为祖国效力。', N'/video/Hero/Hero/lakesi.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'26', N'墨菲特
', N'熔岩巨兽', N'坦克', N'战士', N'3', N'/image/HERO/25/mofeite.png', N'墨菲特是一个庞大的岩石生物，为了给混乱的世界赐予秩序而不懈奋斗。他诞生之初的身份是一个石仆，侍奉着一块超乎凡人理解的石碑，名为“独石”。他用万钧元素之力维护自己的先祖，但最终遭遇了失败。在随后的毁灭中，墨菲特成为了唯一的幸存者。如今他忍受着符文之地的脆弱凡人和他们流水一般多变的性情，同时想尽办法给自己寻找一个存于世上的新位置，让自己不愧为同胞中的最后一员。', N'/video/Hero/Hero/mofeite.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'27', N'纳尔', N'迷失之牙', N'战士', N'坦克', N'4', N'/image/HERO/26/naer.png', N'纳尔是一个原始约德尔人，讨人喜爱的小个子突然发起脾气来，就会变成一头巨大的野兽，脑海中只剩下破坏的念头。纳尔被臻冰冻结了数千年，如今他重获自由。这个面目全非的世界，在他充满好奇的眼里处处都是新鲜奇妙。因为纳尔在危险中会特别兴奋，所以他会随便抓起任何东西丢向自己的敌人，无论是他的骨齿回力标，还是手边的大房子。', N'/video/Hero/Hero/naer.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'28', N'泰隆
', N'刀锋之影', N'刺客', N'战士', N'4', N'/image/HERO/27/tailong.png', N'泰隆是黑暗中的匕首，是绝无仁慈的杀手，他出手前不会有任何警告，不会留任何退路，也不会引起任何警觉。泰隆在诺克萨斯的野蛮街巷中深深烙印了自己危险的名号，在这里他被迫为了生存而战斗、杀戮、偷窃。后来恶名昭彰的杜·克卡奥家族收养了他，现在他为帝国的指挥部贡献自己的夺命手段，暗杀敌人的领袖、军官和英雄，当然也包括任何得罪了最高长官们的诺克萨斯蠢货。', N'/video/Hero/Hero/daofeng.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'29', N'雷克顿
', N'荒漠屠夫', N'战士', N'坦克', N'4', N'/image/HERO/28/leikedun.png', N'雷克顿是一位来自恕瑞玛炙热沙漠中的面目可怖、野蛮狂怒的飞升者。他曾经是帝国最受尊敬的战士，带领恕瑞玛的军队取得过无数次胜利。然而，在帝国陨落以后，雷克顿被困在了沙漠之下，慢慢地，在世界变迁的同时，雷克顿丧失了理智。现在他重获自由，但却被一个执念吞噬：找到并杀死他的哥哥内瑟斯，因为疯狂之中的他坚信内瑟斯是害他经受数百年黑暗束缚的罪魁祸首。', N'/video/out.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'30', N'努努和威朗普', N'雪原双子', N'坦克', N'战士', N'3', N'/image/HERO/29/nunu.png', N'很久以前，曾有个小男孩，他要证明自己是个英雄，于是决定去杀掉一头凶猛的怪兽——但他却发现这个怪兽其实是个孤独的魔法雪人，而且他需要的只是一个朋友。雪人和男孩被古老的力量所连结，也因对雪球的共同爱好而玩到一起。努努和威朗普如今在弗雷尔卓德的土地上肆意撒欢打滚，为想象中的冒险注入鲜活的生命力。他们希望能够在前面的某个地方找到努努的母亲。如果他们能拯救她，或许他们就真的是英雄了。', N'/video/Hero/Hero/nunu.webm')
    GO

INSERT INTO [dbo].[Hero] ([hero_id], [name], [title], [hero_type1], [hero_type2], [difficulty], [img_code], [
                           introduce], [video])
VALUES (N'31', N'派克
', N'血港鬼影', N'辅助', N'刺客', N'4', N'/image/HERO/30/paike.png', N'在比尔吉沃特的屠宰码头，颇有名气的鱼叉手派克葬身在一条巨大的琢珥鱼腹内……然而，他却回来了。他在家乡的阴街陋巷中徘徊着，用超自然的手段干脆残忍地解决那些鱼肉他人的恶棍——一座因捕猎怪物而自豪的城市如今发觉自己却成了狩猎的目标。', N'/video/Hero/Hero/paike.webm')
    GO

SET IDENTITY_INSERT[dbo].[Hero] OFF GO


-- ----------------------------
-- Table structure for Skill
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Skill]') AND type IN ('U'))
DROP TABLE [dbo].[Skill]
    GO

CREATE TABLE [dbo].[Skill]
(
    [
    skill_id]
    int
    IDENTITY
(
    1001,
    1
) NOT NULL,
    [hero_id] int NULL,
    [name] varchar
(
    50
) COLLATE Chinese_PRC_CI_AS NULL,
    [place] text COLLATE Chinese_PRC_CI_AS NULL,
    [description] text COLLATE Chinese_PRC_CI_AS NULL,
    [img_code] text COLLATE Chinese_PRC_CI_AS NULL
    )
    GO

ALTER TABLE [dbo].[Skill] SET (LOCK_ESCALATION = TABLE)
    GO


-- ----------------------------
-- Records of Skill
-- ----------------------------
SET IDENTITY_INSERT[dbo].[Skill] ON
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1001', N'1', N'坚韧', N'被动', N'如果盖伦近期没有受到伤害或者被敌方技能命中，那么他会每秒回复若干百分比的总生命值。', N'/image/HERO/1/1/Garen_Passive.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1002', N'1', N'致命打击', N'Q', N'盖伦的移动速度获得爆发性提升，同时移除身上的所有减速效果。他的下次攻击将打击敌人的要害部位，造成额外伤害并将目标沉默。', N'/image/HERO/1/1/GarenQ.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1003', N'1', N'勇气', N'W', N'盖伦被动地通过击杀敌人来提升护甲和魔法抗性。他也可以激活这个技能来暂时获得一层护盾和韧性，并在接下来的较长持续时间里获得较弱的伤害减免效果。
', N'/image/HERO/1/1/GarenW.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1004', N'1', N'审判', N'E', N'盖伦快速地旋转身体挥舞大剑，并对邻近敌人造成物理伤害。

', N'/image/HERO/1/1/GarenE.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1005', N'1', N'德玛西亚正义', N'R', N'盖伦召唤德玛西亚之力，试图处决一名敌方英雄。', N'/image/HERO/1/1/GarenR.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1006', N'2', N'冰霜射击', N'被动', N'艾希的攻击会让目标减速，并使艾希对这些目标造成更高伤害。
艾希的暴击不会造成额外伤害，但会对目标施加一个强化版减速效果。
', N'/image/HERO/2/2/Ashe_P.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1007', N'2', N'射手的专注', N'Q', N'艾希会在攻击时聚集【全神贯注】效果。在【全神贯注】到达最大值时，艾希就能施放【射手的专注】来消耗掉所有【全神贯注】效果，以临时提升她的攻击速度，并在持续期间将她的普攻转变为一阵强力的飓风箭阵。', N'/image/HERO/2/2/AsheQ.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1008', N'2', N'万箭齐发', N'W', N'艾希向前方的锥形范围射出9支箭，对敌人造成额外伤害。该技能也会触发冰霜射击的效果。', N'/image/HERO/2/2/Volley.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1009', N'2', N'鹰击长空', N'E', N'艾希将她的猎鹰之灵派去执行侦查任务，可派往地图上的任意地点。', N'/image/HERO/2/2/AsheSpiritOfTheHawk.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1010', N'2', N'魔法水晶箭', N'R', N'艾希射出一支沿直线飞行的魔法水晶箭。如果水晶箭命中了一名敌方英雄，那么它会对该英雄造成伤害和晕眩效果，晕眩时长取决于水晶箭的飞行距离。此外，该英雄附近的敌方单位会受到伤害和减速效果。', N'/image/HERO/2/2/EnchantedCrystalArrow.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1011', N'3', N'奥术专精', N'被动', N'瑞兹的技能会造成基于他法力值加成的额外伤害，并且他的最大法力值会基于他的法术强度来获得百分比的提升。', N'/image/HERO/3/3/Ryze_P.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1012', N'3', N'超负荷', N'Q', N'瑞兹的其它基础技能会重置【超负荷】的冷却时间并且充能一层符文。当瑞兹带着2层符文施放【超负荷】时，他会获得短暂的爆发性移动速度加成。

施放时，瑞兹会沿直线扔出一团纯粹能量，来对命中的第一个敌人造成伤害。如果目标身上有【涌动】效果，那么【超负荷】会造成额外伤害并弹射至附近带有【涌动】效果的敌人身上。
', N'/image/HERO/3/3/RyzeQ.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1013', N'3', N'符能禁锢', N'W', N'瑞兹将一个目标陷入一个符文牢笼中，来对其造成伤害和减速效果。如果目标身上带有【涌动】效果，那么减速效果会替换为禁锢效果。', N'/image/HERO/3/3/RyzeW.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1014', N'3', N'法术涌动', N'E', N'瑞兹放出一颗纯净魔法能量球，对一名敌人造成伤害并对附近的敌人造成减益效果。瑞兹的技能可以对带有该减益的敌人造成额外效果。', N'/image/HERO/3/3/RyzeE.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1015', N'3', N'曲境折跃', N'R', N'【超负荷】对带有【涌动】效果的目标造成更多伤害。

施放时，瑞兹会创造一个传送门来通向一个附近的位置。在若干秒后，站在传送门附近的友军会被传送至目标位置。
', N'/image/HERO/3/3/RyzeR.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1016', N'4', N'双重打击', N'被动', N'易大师每攻击数次，就会同时对目标进行2次打击。', N'/image/HERO/4/4/WujuStyle.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1017', N'4', N'阿尔法突袭', N'Q', N'易以肉眼难以发觉的速度穿梭于战场，对多个敌人造成物理伤害，同时处于不可被选取的状态下。阿尔法突袭可以暴击，并对野怪造成额外物理伤害。普通攻击可以减少阿尔法突袭的冷却时间。', N'/image/HERO/4/4/AlphaStrike.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1018', N'4', N'冥想', N'W', N'易通过集中念力来活化他的身体，从而回复生命值，并暂时减少所受的伤害。此外，易还会为双重打击充能，并暂停无极剑道和高原血统的持续时长。', N'/image/HERO/4/4/Meditate.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1019', N'4', N'无极剑道', N'E', N'提供额外真实伤害至普攻', N'/image/HERO/4/4/MasterYi_Passive1.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1020', N'4', N'高原血统', N'R', N'易以超乎想象的身法进行移动，短时间内提升移动速度和攻击速度，并免疫减速效果。该技能激活期间，易在击杀掉一名敌方英雄的同时，会延长该技能的持续时间。在击杀和助攻后，也会被动地减少易其它技能的冷却时间。', N'/image/HERO/4/4/Highlander.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1021', N'5', N'凯旋怒吼', N'被动', N'在阿利斯塔晕眩或强制位移敌方英雄，或是在附近敌人死亡时，他会为他的怒吼积攒充能。当完全充能时，他会治疗自身和附近的所有友方英雄。', N'/image/HERO/5/5/Alistar_E.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1022', N'5', N'大地粉碎', N'Q', N'阿利斯塔锤击地面，对附近的敌人造成魔法伤害并使他们浮空。', N'/image/HERO/5/5/Pulverize.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1023', N'5', N'野蛮冲撞', N'W', N'阿利斯塔冲撞目标，对其造成伤害并击退目标。', N'/image/HERO/5/5/Headbutt.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1024', N'5', N'践踏', N'E', N'阿利斯塔践踏附近的敌方单位，无视单位的碰撞体积并在他伤害到一名敌方英雄时获得一层充能。在满层充能时，阿利斯塔的下次对敌方英雄发起的普攻将造成额外魔法伤害和晕眩效果。', N'/image/HERO/5/5/AlistarE.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1025', N'5', N'坚定意志', N'R', N'阿利斯塔发出野性的咆哮，移除身上所有控制效果，并且持续时间内所受的物理和魔法伤害将减少。', N'/image/HERO/5/5/FerociousHowl.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1026', N'6', N'恕瑞玛的传承', N'被动', N'阿兹尔可以从友方或敌方防御塔的废墟中召唤太阳圆盘。', N'/image/HERO/6/6/Azir_Passive.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1027', N'6', N'狂沙猛攻', N'Q', N'阿兹尔把所有黄沙士兵派往一个地点。黄沙士兵会对沿途的所有敌人造成魔法伤害，并施加持续1秒的减速效果。', N'/image/HERO/6/6/AzirQ.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1028', N'6', N'沙兵现身', N'W', N'阿兹尔召唤一个黄沙士兵来为他攻击附近的敌方单位。如果敌方单位在士兵的攻击距离内，那么士兵会代替阿兹尔进行普攻。士兵的攻击会对一条直线上的敌人造成魔法伤害。这个技能还会被动为阿兹尔和他的士兵们提供攻击速度加成。', N'/image/HERO/6/6/AzirW.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1029', N'6', N'流沙移形', N'E', N'阿兹尔暂时套上一层护盾并冲向他的一个黄沙士兵，伤害敌人。如果他命中了一位敌方英雄，那么他就会准备好一个新的黄沙士兵并中断他的位移。', N'/image/HERO/6/6/AzirE.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1030', N'6', N'禁军之墙', N'R', N'阿兹尔召唤一道由禁军组成的人墙向前冲锋，对敌人造成伤害和击退效果。', N'/image/HERO/6/6/AzirR.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1031', N'7', N'恐惧降临', N'被动', N'在站立不动或引导技能状态下持续1.5秒，就会用【恐惧降临】强化费德提克。定身类控制效果会重置它的计时器。【恐惧降临】提供移动速度，但在费德提克开始移动后仅持续1.5秒。', N'/image/HERO/7/7/FiddleSticks_Passive.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1032', N'7', N'恐惧', N'Q', N'恐惧目标，让目标以受损的速度逃离费德提克。', N'/image/HERO/7/7/Terrify.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1033', N'7', N'生命吸取', N'W', N'费德提克偷取敌人的生命能量，造成持续伤害同时治疗自己。', N'/image/HERO/7/7/Drain.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1034', N'7', N'黑暗之风', N'E', N'一阵风袭击一个敌方单位，溅射周围敌方单位，对其造成伤害并沉默。', N'/image/HERO/7/7/FiddlesticksDarkWind.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1035', N'7', N'群鸦风暴', N'R', N'一群杀人鸦盘旋于费德提克身边，每秒对范围内的所有敌方单位造成伤害。', N'/image/HERO/7/7/Crowstorm.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1036', N'8', N'Z型驱动共振', N'被动', N'艾克的Z型驱动会让他的技能和普攻充盈着时光能量。第三次命中将会造成额外伤害，如果目标是一名英雄，那么艾克自己会获得移动加速效果。', N'/image/HERO/8/8/Ekko_P.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1037', N'8', N'时间卷曲器', N'Q', N'艾克扔出一个时光手雷，这个手雷会在命中一个敌方英雄后扩展为一个时间扭曲的力场，对场内的所有敌方单位造成伤害和减速效果。然后它会在短暂的延迟后返回到艾克手上，返回途中会对沿途的敌人造成伤害。', N'/image/HERO/8/8/EkkoQ.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1038', N'8', N'时光交错', N'W', N'艾克的普攻对低生命值的敌人造成额外魔法伤害。他可以施放【时光交错】来分离这条时间线，制造一个不稳定的异常时间点，这个时间点会在数秒后对范围内的敌人造成减速效果。如果艾克进入了这个异常时间点，那么他会获得护盾并让范围内的敌人因悬浮在时间中而陷入晕眩状态。', N'/image/HERO/8/8/EkkoW.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1039', N'8', N'相位俯冲', N'E', N'艾克在为Z型驱动充能的同时灵巧地滚动。他的下次攻击将造成魔法伤害并扭曲时间，并让他传送到他的攻击目标旁。', N'/image/HERO/8/8/EkkoE.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1040', N'8', N'时空断裂', N'R', N'艾克打破他的时间线，变得不可被选取并回溯到一个更加有利的时间点上。他会回到几秒前的位置，并治疗这几秒内所受的伤势。在完成传送后，传送终点区域附近的敌人都会受到巨量伤害。', N'/image/HERO/8/8/EkkoR.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1041', N'9', N'虚空之石', N'被动', N'卡萨丁所受的魔法伤害减少15%，并无视单位的碰撞体积。', N'/image/HERO/9/9/Kassadin_Passive.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1042', N'9', N'虚无法球', N'Q', N'卡萨丁向目标发射虚空能量法球，造成伤害并打断目标的技能引导。满溢的能量会在他身边环绕，提供一个可吸收魔法伤害的临时护盾。', N'/image/HERO/9/9/NullLance.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1043', N'9', N'虚空之刃', N'W', N'被动：卡萨丁的普通攻击会造成额外魔法伤害。主动：卡萨丁的下次普通攻击会造成显著的额外魔法伤害并回复法力值。', N'/image/HERO/9/9/NetherBlade.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1044', N'9', N'能量脉冲', N'E', N'附近有单位施放法术技能时，卡萨丁将吸收能量，当充能完毕后，吸收的能量可转化为脉冲，对面前锥形区域内敌人造成伤害并减速。', N'/image/HERO/9/9/ForcePulse.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1045', N'9', N'虚空行走', N'R', N'卡萨丁传送到附近区域，对区域内的敌方单位造成伤害。 在一段时间内连续施放虚空行走技能会消耗更多的法力值，但也会造成额外伤害。', N'/image/HERO/9/9/RiftWalk.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1046', N'10', N'无形威胁', N'被动', N'附近陷入孤立无援状态的敌人会被标记出来。卡兹克的技能会与孤立无援的目标产生交互作用。

当卡兹克没有被敌方队伍所看见时，他会获得无形威胁，使他的下次对敌方英雄发动的普通攻击造成额外魔法伤害，并使目标减速数秒。
', N'/image/HERO/10/10/Khazix_P.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1047', N'10', N'品尝恐惧', N'Q', N'对目标造成物理伤害。对孤立无援的目标造成的伤害会提高。如果他选择进化收割利爪的话，这个技能会在对抗孤立无援的目标时返还一部分冷却时间。卡兹克也会提升他的普通攻击和品尝恐惧的距离。', N'/image/HERO/10/10/KhazixQ.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1048', N'10', N'虚空突刺', N'W', N'卡兹克发射爆炸性的尖刺，对命中的敌人造成物理伤害。卡兹克如果在爆炸范围内，则会回复生命值。如果他选择进化刺鞘的话，虚空突刺现在会呈锥形发射三个尖刺，减速被命中的敌人并使被命中的敌方英雄显形2秒。孤立无援的目标会被减速额外的幅度。', N'/image/HERO/10/10/KhazixW.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1049', N'10', N'跃击', N'E', N'卡兹克跳向一个区域，在着陆时造成物理伤害。如果他选择进化虫翼的话，跃击的距离会提升200并在击杀和助攻时重置冷却时间。', N'/image/HERO/10/10/KhazixE.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1050', N'10', N'虚空来袭', N'R', N'每升一级此技能都会允许卡兹克进化他的一项技能，给予该技能独特的附加效果。在激活【虚空来袭】时，会使卡兹克变成隐形状态，触发无形威胁并提升移动速度。如果他选择进化动态遮蔽的话，【虚空来袭】获得已提升的隐形持续时间，以及一次额外的使用次数。', N'/image/HERO/10/10/KhazixR.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1051', N'11', N'森林之友', N'被动', N'艾翁无法攻击非史诗野怪，也无法被非史诗野怪攻击。艾翁可以在野怪营地创造神奇的小植被，小植被可以持续成长。当小植被完全成长后，艾翁就可以送走野怪来获得金币和经验。在5级以后，艾翁可以与友军们分享增益效果。', N'/image/HERO/11/11/IvernP.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1052', N'11', N'根深敌固', N'Q', N'艾翁召唤出一束荆棘，对命中的敌方单位造成伤害和禁锢效果。艾翁的友军可以突进到禁锢目标附近。', N'/image/HERO/11/11/IvernQ.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1053', N'11', N'揠苗助攻', N'W', N'在草丛中，艾翁的攻击将造成额外魔法伤害。艾翁可以激活这个技能来创造一块草丛。', N'/image/HERO/11/11/IvernW.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1054', N'11', N'种豆得瓜', N'E', N'艾翁在一个友军身上放置一个护盾，护盾会在短暂延迟后爆炸，减速并伤害敌人。', N'/image/HERO/11/11/IvernE.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1055', N'11', N'小菊！', N'R', N'艾翁召唤他的护卫好友——小菊——来与他并肩战斗。小菊如果连续攻击相同英雄三次，就会释放出一道冲击波。', N'/image/HERO/11/11/IvernR.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1056', N'12', N'狂战之怒', N'被动', N'奥拉夫每损失1%的生命值，就会增加1%的攻击速度。', N'/image/HERO/12/12/Olaf_Passive.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1057', N'12', N'逆流投掷', N'Q', N'奥拉夫将战斧投至目标区域，对所有被战斧穿过的敌人造成伤害并减速。如果奥拉夫捡起斧头，那么该技能冷却时间就会减少4.5秒。', N'/image/HERO/12/12/OlafAxeThrowCast.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1058', N'12', N'残暴打击', N'W', N'奥拉夫的攻击速度得到提升，并获得生命偷取，且他损失的生命值越多，所受的治疗效果也越多。', N'/image/HERO/12/12/OlafFrenziedStrikes.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1059', N'12', N'鲁莽挥击', N'E', N'奥拉夫以破釜沉舟之势发动进攻，对目标造成真实伤害（不受护甲与魔抗减免），同时，自身也会根据敌方所受的伤害而受到真实伤害的反噬。', N'/image/HERO/12/12/OlafRecklessStrike.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1060', N'12', N'诸神黄昏', N'R', N'奥拉夫暂时免疫控制技能。', N'/image/HERO/12/12/OlafRagnarok.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1061', N'13', N'浪客之道', N'被动', N'亚索的暴击几率翻倍。此外，亚索会在移动时积攒一层护盾。护盾会在他受到来自英雄或野怪的伤害时触发。', N'/image/HERO/13/13/Yasuo_Passive.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1062', N'13', N'斩钢闪', N'Q', N'向前出剑，呈直线造成伤害。

在命中时，斩钢闪会获得一层旋风烈斩效果，持续数秒。在积攒2层旋风烈斩效果后，斩钢闪会形成一阵能够击飞敌人的旋风。

斩钢闪被视为普通攻击，并且可以从所有作用于普攻的东西上获得收益。
', N'/image/HERO/13/13/YasuoQ1Wrapper.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1063', N'13', N'风之障壁', N'W', N'形成一个持续4秒的气流之墙，来阻挡敌方的飞行道具。', N'/image/HERO/13/13/YasuoW.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1064', N'13', N'踏前斩', N'E', N'向目标敌人突进，造成魔法伤害。每次施法都会使你的下一次突进的基础伤害提升，直到抵达上限。

在若干秒内无法对相同敌人重复施放。

如果在突进的过程中施放斩钢闪，那么斩钢闪就会呈环状出剑。
', N'/image/HERO/13/13/YasuoE.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1065', N'13', N'狂风绝息斩', N'R', N'闪烁到一个被击飞的敌方英雄身边，造成物理伤害，并使范围内的所有被击飞的敌人滞留在空中。获得满额的剑意值，但会重置旋风烈斩的层数。

在接下来的若干秒里，亚索的暴击会获得显著的额外护甲穿透加成值。
', N'/image/HERO/13/13/YasuoR.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1066', N'14', N'出血', N'被动', N'德莱厄斯的攻击和伤害技能会导致敌人流血，在5秒里持续造成物理伤害，最多叠加5次。', N'/image/HERO/14/14/Darius_PassiveBuff.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1067', N'14', N'大杀四方', N'Q', N'德莱厄斯积蓄力量，然后狂野地舞动巨斧，形成一个圆环。被斧刃击中的敌人，会比被斧柄击中的敌人受到更多的伤害。德莱厄斯还会获得治疗效果，治疗效果的数额基于被斧刃命中的敌方英雄人数。', N'/image/HERO/14/14/DariusCleave.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1068', N'14', N'致残打击', N'W', N'德莱厄斯的下一次攻击会打向敌人的大动脉。在目标流血不止的同时，目标的移动速度也会被减缓。', N'/image/HERO/14/14/DariusNoxianTacticsONH.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1069', N'14', N'无情铁手', N'E', N'德莱厄斯磨利他的巨斧，被动地让他的物理伤害无视目标一部分护甲。在主动施放时，德莱厄斯会用斧头上的钩子横扫他的敌人，并将他们拉到德莱厄斯身边。', N'/image/HERO/14/14/DariusAxeGrabCone.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1070', N'14', N'诺克萨斯断头台', N'R', N'德莱厄斯跃向目标英雄并进行致命打击，造成真实伤害。目标身上的每层出血效果都会提升这个技能的伤害。如果诺克萨斯断头台完成了一次击杀，那么它的冷却时间会暂时被重置。', N'/image/HERO/14/14/DariusExecute.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1071', N'15', N'游击队军备', N'被动', N'如果提莫在短时间内静止站立且不受任何伤害，就会进入无定期的隐形状态。如果提莫在草丛中，他就能在移动的同时进入并保持隐形状态。离开隐形状态后，提莫会获得“出奇制胜”的增益效果，提升攻击速度，持续3秒。', N'/image/HERO/15/15/Teemo_P.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1072', N'15', N'致盲吹箭', N'Q', N'用一团强力的毒液来侵蚀一名敌人的视野，对目标单位造成伤害并使目标致盲一段时间。', N'/image/HERO/15/15/BlindingDart.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1073', N'15', N'小莫快跑', N'W', N'提莫动如脱兔，提升移动速度，直到被敌方英雄或防御塔击中为止。提莫可以通过冲刺来获得额外移动速度，且短时间内不会因被击中而使加速效果中止。', N'/image/HERO/15/15/MoveQuick.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1074', N'15', N'毒性射击', N'E', N'提莫每次攻击附带毒液伤害，造成持续性伤害，持续4秒。', N'/image/HERO/15/15/ToxicShot.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1075', N'15', N'种蘑菇', N'R', N'提莫投掷一个可爆炸的毒性陷阱，需要消耗提莫背包里的一个蘑菇。陷阱会在被敌方踩中时爆炸，释放出一团毒云，对附近的敌人造成减速效果和持续伤害。如果提莫把一个蘑菇扔到另一个蘑菇上，那么这个蘑菇会进行弹跳，获得额外的施放距离。', N'/image/HERO/15/15/TeemoRCast.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1076', N'16', N'炽热之焰', N'被动', N'布兰德的技能会对他的目标施加【烈焰焚身】效果，在4秒里持续造成伤害，最多可叠加3次。如果布兰德击杀了身上带有【烈焰焚身】的敌人，那么他会回复法力值。当【炽热之焰】在一名英雄或大型野怪身上叠至满层时，它会变得不稳定。它会在2秒内爆炸，在目标附近的区域施加法术特效并造成大量伤害。', N'/image/HERO/16/16/BrandP.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1077', N'16', N'火焰烙印', N'Q', N'布兰德向前方放出一团可造成魔法伤害的火球。如果目标带有【烈焰焚身】效果，那么【Q火焰烙印】将使目标晕眩1.5秒。', N'/image/HERO/16/16/BrandQ.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1078', N'16', N'烈焰之柱', N'W', N'在短暂的延迟后，布兰德会在目标区域创造一根烈焰之柱，来对范围内的敌方单位造成魔法伤害。带有【烈焰焚身】效果的单位会额外受到25%伤害。', N'/image/HERO/16/16/BrandW.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1079', N'16', N'烈火燃烧', N'E', N'布兰德在目标身上引发一阵强力的爆裂，对目标造成魔法伤害。如果目标带有【烈焰焚身】效果，那么【E烈火燃烧】还会扩散至目标附近的敌人。', N'/image/HERO/16/16/BrandE.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1080', N'16', N'烈焰风暴', N'R', N'布兰德释放一颗破坏力极强的火焰之种，在每次弹跳时造成魔法伤害，最多可弹跳5次。弹跳会优先以带有即将满层的【炽热之焰】效果的英雄为目标。如果目标带有【烈焰焚身】效果，那么【R烈焰风暴】将使目标短暂减速。', N'/image/HERO/16/16/BrandR.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1081', N'17', N'果决', N'被动', N'每第三次攻击造成额外伤害并治疗赵信自身。', N'/image/HERO/31/31/XinZhaoP.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1082', N'17', N'三重爪击', N'Q', N'赵信的下3次普攻将造成额外伤害并且第三次攻击将击飞目标。', N'/image/HERO/31/31/XinZhaoQ.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1083', N'17', N'风斩电刺', N'W', N'赵信用他的长枪斩击他的前方，之后将长枪向前刺击，并使被击中的敌人减速。', N'/image/HERO/31/31/XinZhaoW.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1084', N'17', N'无畏冲锋', N'E', N'赵信对一名敌人发起冲锋，对范围内的所有敌人造成伤害并使他们暂时减速。', N'/image/HERO/31/31/XinZhaoE.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1085', N'17', N'新月护卫', N'R', N'赵信对附近的敌人造成基于目标当前生命值的伤害，并击退未被挑战的目标。赵信会创造出一个圆环，且自身不会受到来自圆环之外的敌人所造成的伤害。', N'/image/HERO/31/31/XinZhaoR.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1086', N'18', N'忍法！雷缚印', N'被动', N'凯南的技能会对敌人施加一层持续6秒的【忍法！雷缚印】。当一名敌人身上的【忍法！雷缚印】达到3层时，就会被晕眩1.25秒，与此同时，凯南会恢复25能量值。

如果在6秒内再次触发的话，晕眩时长会减少0.5秒。
', N'/image/HERO/17/17/Kennen_Passive.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1087', N'18', N'奥义！千鸟', N'Q', N'凯南向目标区域投掷手里剑，对第一个目标造成伤害并附加【忍法！雷缚印】。', N'/image/HERO/17/17/KennenShurikenHurlMissile1.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1088', N'18', N'奥义！电刃', N'W', N'凯南连续攻击附加额外伤害并对目标造成一层【忍法！雷缚印】，主动释放会对所有带有【忍法！雷缚印】的敌人造成闪电伤害，并额外附加一层【忍法！雷缚印】。', N'/image/HERO/17/17/KennenBringTheLight.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1089', N'18', N'奥义！雷铠', N'E', N'凯南变身为一个闪电形态，高速移动并可以穿越单位。对碰到的所有敌人造成伤害并施加一层【忍法！雷缚印】。凯南会在进入这个形态时获得移动速度，并在离开时获得攻击速度。', N'/image/HERO/17/17/KennenLightningRush.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1090', N'18', N'秘奥义！万雷天牢引', N'R', N'凯南召唤出一团风暴，会对周围的所有敌方英雄造成魔法伤害。', N'/image/HERO/17/17/KennenShurikenStorm.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1091', N'19', N'艾欧尼亚热诚', N'被动', N'当艾瑞莉娅用技能命中敌人时，她会获得可叠加的攻击速度加成。这个效果在满层时还会为艾瑞莉娅提供攻击附伤。', N'/image/HERO/18/18/Irelia_Passive.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1092', N'19', N'利刃冲击', N'Q', N'艾瑞莉娅向前突进以打击她的目标，并治疗自身。如果目标被标记或死于利刃冲击，那么它的冷却时间会刷新。', N'/image/HERO/18/18/IreliaQ.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1093', N'19', N'距破之舞', N'W', N'艾瑞莉娅开始蓄力以进行一次打击，蓄力越久则打击造成的伤害越多。在蓄力期间她所受的物理伤害降低。', N'/image/HERO/18/18/IreliaW.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1094', N'19', N'比翼双刃', N'E', N'艾瑞莉娅放出两柄相互聚拢的利刃。利刃之间被击中的敌人会受到伤害、晕眩效果并被标记。', N'/image/HERO/18/18/IreliaE.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1095', N'19', N'先锋之刃', N'R', N'艾瑞莉娅发射庞大数量的利刃，它们会在命中一名敌方英雄时向外爆开。被利刃命中的敌人会受到伤害并被标记。然后利刃会形成一道刃墙，在敌人穿过时造成伤害、和减速效果。', N'/image/HERO/18/18/IreliaR.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1096', N'20', N'疾风骤雨', N'被动', N'在李青使用一次技能后，他的下两次攻击会获得攻速加成，且回复能量。', N'/image/HERO/19/19/LeeSinPassive.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1097', N'20', N'天音波/回音击', N'Q', N'天音波：李青发出刺耳的声波定位敌人，对首个敌人造成物理伤害。如果天音波击中敌人，李青在接下来3秒可施放回音击。
\n回音击：李青冲向被天音波击中的敌人，造成基于该目标已损失生命值的物理伤害。
', N'/image/HERO/19/19/BlindMonkQOne.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1098', N'20', N'金钟罩/铁布衫', N'W', N'金钟罩：李青冲向友军，提供护盾保护自己。如果目标友军是英雄，那么李青和目标都会获得护盾。施放金钟罩后3秒内，李青可施放铁布衫。\n
铁布衫：李青艰苦卓绝的训练让他能在战斗中激发潜能。李青可以在4秒内获得额外生命偷取和法术吸血。
', N'/image/HERO/19/19/BlindMonkWOne.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1099', N'20', N'天雷破/摧筋断骨', N'E', N'天雷破：李青撞击地面，施放冲击波，造成魔法伤害并使命中的敌方单位显形。如果天雷破击中敌人，李青可以在接下来的3秒内施放摧筋断骨。\n
摧筋断骨：李青致残被天雷破给伤害到的敌人，减少敌人的移动速度，持续4秒。持续期间受影响单位的移动速度会逐渐恢复正常。
', N'/image/HERO/19/19/BlindMonkEOne.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1100', N'20', N'猛龙摆尾', N'R', N'李青用强力的回旋踢击退敌方英雄，对目标以及被目标撞到的任何敌人造成物理伤害。 被目标撞到的敌人会被短暂击飞。这项技艺是春哥教他的，不过李青不能将玩家的英雄踢到地图外面去。', N'/image/HERO/19/19/BlindMonkRKick.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1101', N'21', N'超凡邪力', N'被动', N'维迦是最强大的恶魔，甚至能对符文之地之心发起攻击——并且他只会越来越强大！用技能攻击一名敌人、击杀单位或拆毁防御塔都会为维迦永久提升法术强度加成。', N'/image/HERO/20/20/Veigar_Entropy.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1102', N'21', N'黑暗祭祀', N'Q', N'维迦释放一束黑暗能量，对最先被命中的两个敌人造成魔法伤害。被这个能量束所击杀的单位，会永久地为维迦提供一些法术强度。', N'/image/HERO/20/20/VeigarDarkMatter.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1103', N'21', N'黑暗物质', N'W', N'维迦召唤一大团黑暗物质轰击目标区域，落地造成魔法伤害。【超凡邪力】的层数会缩短这个技能的冷却时间。', N'/image/HERO/20/20/VeigarBalefulStrike.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1104', N'21', N'扭曲空间', N'E', N'在短暂的延迟后，维迦在目标区域创造一个能够维持3秒的扭曲空间，穿过此区域边界的敌人将会受到短时间的晕眩效果。', N'/image/HERO/20/20/VeigarEventHorizon.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1105', N'21', N'能量爆裂', N'R', N'引爆目标敌方英雄，造成大量魔法伤害，并基于目标已损失生命值提升伤害。', N'/image/HERO/20/20/VeigarR.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1106', N'22', N'暗夜猎手', N'被动', N'薇恩毫不留情的猎杀世间邪恶，向附近敌方英雄移动时增加30点移动速度。', N'/image/HERO/21/21/Vayne_NightHunter.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1107', N'22', N'闪避突袭', N'Q', N'薇恩进行翻滚，并小心地填充她的下一发射击。她的下次攻击造成额外伤害。', N'/image/HERO/21/21/VayneTumble.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1108', N'22', N'圣银弩箭', N'W', N'薇恩用稀有金属制作弩箭，让邪恶敌人中毒。对同一目标的第3次攻击或技能施放会对其造成额外真实伤害，数值相当于目标最大生命值的一定百分比。', N'/image/HERO/21/21/VayneSilveredBolts.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1109', N'22', N'恶魔审判', N'E', N'薇恩从背部展开一张重弩，并且朝她的目标发射一根巨型弩箭，将目标击退并造成伤害。如果目标与地形产生碰撞，那么目标会被贯穿，对其造成额外伤害和晕眩效果。', N'/image/HERO/21/21/VayneCondemn.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1110', N'22', N'终极时刻', N'R', N'薇恩准备进行史诗般的对决，她的攻击力得到提高，能在闪避突袭期间进入隐形状态，闪避突袭的冷却时间缩短，并且暗夜猎手（被动）提供更多移动速度。', N'/image/HERO/21/21/VayneInquisition.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1111', N'23', N'决斗之舞', N'被动', N'菲奥娜对附近一名敌方英雄发起挑战，并发现其身上的一处破绽。如果她成功击中该破绽，她会得到额外奖励，并会发现下一处破绽。', N'/image/HERO/22/22/Fiora_P.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1112', N'23', N'破空斩', N'Q', N'菲奥娜向一个方向冲刺，并刺击一个附近的敌人，造成物理伤害并施加攻击特效。', N'/image/HERO/22/22/FioraQ.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1113', N'23', N'劳伦特心眼刀', N'W', N'菲奥娜在短时间内对所有即将到来的伤害和限制效果进行招架，然后朝着一个方向进行刺击。这个刺击会减速命中的第一个敌方英雄，如果菲奥娜用这个技能格挡掉一个禁锢类效果，那么刺击会造成晕眩效果而非减速效果。', N'/image/HERO/22/22/FioraW.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1114', N'23', N'夺命连刺', N'E', N'菲奥娜的下两次攻击将获得攻击速度加成。第一次攻击会使目标减速，而第二次攻击必定会产生暴击。', N'/image/HERO/22/22/FioraE.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1115', N'23', N'无双挑战', N'R', N'菲奥娜显示出一个敌方英雄身上的所有四处破绽，并在目标附近时获得移动速度加成。如果菲奥娜命中了所有4处破绽，或者目标在死前至少被命中了1处破绽，那么菲奥娜和范围内的友军就会在接下来的几秒里持续获得治疗效果。', N'/image/HERO/22/22/FioraR.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1116', N'24', N'赐死剑气', N'被动', N'每过一段时间，亚托克斯的下次普攻会造成额外物理伤害，并治疗亚托克斯，治疗量基于目标的最大生命值。', N'/image/HERO/23/23/Aatrox_Passive.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1117', N'24', N'暗裔利刃', N'Q', N'亚托克斯向下猛砸他的巨剑，并造成物理伤害。他可以挥击三次，每次都有一个不同的范围效果。', N'/image/HERO/23/23/AatroxQ.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1118', N'24', N'恶火束链', N'W', N'亚托克斯猛砸地面，对命中的第一个敌人造成伤害。英雄和大型野怪需要快速离开被影响的区域，否则就会被拖拽到中心并再次受到伤害。', N'/image/HERO/23/23/AatroxW.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1119', N'24', N'暗影冲决', N'E', N'被动效果：亚托克斯会在对敌方英雄造成伤害时治疗自身。主动效果：他会朝一个方向突进。', N'/image/HERO/23/23/AatroxE.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1120', N'24', N'大灭', N'R', N'亚托克斯现出他的恶魔形态，恐惧附近的敌方小兵，并获得攻击力、治疗效果提升、以及移动速度。如果他参与了一次击杀，这个效果就会延长。', N'/image/HERO/23/23/AatroxR.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1121', N'25', N'光芒四射', N'被动', N'拉克丝的伤害类技能会对敌人施加【启明】效果，持续6秒。拉克丝的下一次攻击将会消耗【启明】效果，来对目标造成额外魔法伤害（基于拉克丝等级）。', N'/image/HERO/24/24/LuxIlluminatingFraulein.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1122', N'25', N'光之束缚', N'Q', N'拉克丝释放一个光球，束缚并伤害最多两个敌方单位。', N'/image/HERO/24/24/LuxLightBinding.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1123', N'25', N'曲光屏障', N'W', N'拉克丝掷出她的魔杖，魔杖所触及的友方单位会有光环环绕，保护他们免受敌方伤害。', N'/image/HERO/24/24/LuxPrismaticWave.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1124', N'25', N'透光奇点', N'E', N'朝一个区域发射一个不规则的扭曲之光，减速附近敌人。拉克丝可以引爆它，对敌人造成区域性伤害。', N'/image/HERO/24/24/LuxLightStrikeKugel.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1125', N'25', N'终极闪光', N'R', N'在积蓄能量之后，拉克丝发射一束光波，对该区域所有目标造成伤害。此外，该技能触发拉克丝的被动技能并刷新光芒四射减益的持续时间。', N'/image/HERO/24/24/LuxMaliceCannon.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1126', N'26', N'花岗岩护盾', N'被动', N'墨菲特被岩石护盾保护，最多吸收最大生命值10%的伤害，若10秒内未受到攻击，护盾将重置。', N'/image/HERO/25/25/Malphite_GraniteShield.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1127', N'26', N'地震碎片', N'Q', N'通过使用他的原初元素魔法，墨菲特发出一块大地碎片穿过他敌人处的地面，在碰撞时造成伤害并且偷取移动速度3秒。', N'/image/HERO/25/25/SeismicShard.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1128', N'26', N'雷霆拍击', N'W', N'墨菲特的攻击蕴含着如此惊人的力道以至于它引发了一次音爆。在接下来的数秒里，他的攻击会在他面前引发余波。', N'/image/HERO/25/25/Obduracy.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1129', N'26', N'大地震颤', N'E', N'墨菲特锤击地面，放射出冲击波对目标造成基础伤害，并根据墨菲特的护甲值附加额外伤害，同时暂时减低目标攻击速度。', N'/image/HERO/25/25/Landslide.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1130', N'26', N'势不可挡', N'R', N'墨菲特冲击目标区域，将所有敌人抛向空中，造成魔法伤害并晕眩。', N'/image/HERO/25/25/UFSlash.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1131', N'27', N'狂怒基因', N'被动', N'被动技能
在战斗时，纳尔会产生怒气。在怒气到达最大值时，他的下一个技能将使他变形成巨型纳尔，获得强化的生存能力并能使用新的技能。
', N'/image/HERO/26/26/Gnar_Passive.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1132', N'27', N'投掷回力标 / 投掷顽石', N'Q', N'纳尔扔出一个回力标，对敌人造成伤害和减速效果，直到开始折返为止。如果纳尔接住了折返的回力标，那么这个技能的冷却时间就会减少。\n

巨型纳尔扔出一颗石头，石头会在命中第一个敌人后停下，对这个敌人附近的所有敌方单位造成伤害和减速效果。巨型纳尔可以通过拾取这颗石头来减少这个技能的冷却时间。
', N'/image/HERO/26/26/GnarQ.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1133', N'27', N'亢奋 / 痛殴', N'W', N'纳尔的攻击和施法会让他亢奋起来，造成额外伤害并为他提供移动速度加成。\n

巨型纳尔已经过于暴怒，所以用不着亢奋了，因此他会用后脚暴跳，并猛击他面前的区域，使区域内的所有敌人晕眩。
', N'/image/HERO/26/26/GnarW.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1134', N'27', N'轻跳 / 猛踏', N'E', N'纳尔跳到一个区域，并在落到任何单位上后，弹跳到更远的区域。\n
巨型纳尔体积太大，无法弹跳，但落地后会使地面震颤，对区域内的敌人造成伤害。
', N'/image/HERO/26/26/GnarE.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1135', N'27', N'呐啊！', N'R', N'巨型纳尔将身边的所有东西都朝着一个选定的方向投掷，对他们造成伤害和减速效果。被投到墙上的敌人会被晕眩，并承受额外的伤害。', N'/image/HERO/26/26/GnarR.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1136', N'28', N'刀锋之末', N'被动', N'泰隆的技能会创伤英雄和史诗级野怪，可叠加3层。当泰隆用普攻攻击一个带有3层创伤效果的目标时，目标会流血，持续受到重度伤害。', N'/image/HERO/27/27/TalonP.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1137', N'28', N'诺克萨斯式外交', N'Q', N'泰隆戳刺目标单位。如果目标在近战距离之内，那么这次攻击会造成致命伤害。如果目标在近战距离之外，那么泰隆将会跃向他的目标然后戳刺目标。如果这个技能击杀了泰隆的目标，那么就会返还给泰隆一些生命值和冷却时间。', N'/image/HERO/27/27/TalonQ.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1138', N'28', N'斩草除根', N'W', N'泰隆放出一排匕首，随后匕首会返回泰隆处，匕首每次穿过敌人时都会造成物理伤害。返程的匕首会造成额外伤害并使被命中的目标减速。', N'/image/HERO/27/27/TalonW.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1139', N'28', N'刺客之道', N'E', N'泰隆翻越任何地形或建筑物，有一个最大距离。这个技能的冷却时间很短，但是需要很长一段时间后才能再次翻越已经翻越过的地形。', N'/image/HERO/27/27/TalonE.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1140', N'28', N'暗影突袭', N'R', N'泰隆散出一圈刀刃并变为隐形状态，同时获得额外移动速度。当泰隆从隐形状态下现身时，刀刃会汇聚向泰隆处。刀刃的每段移动，都会让暗影突袭对被至少一枚刀刃命中的敌人造成物理伤害。', N'/image/HERO/27/27/TalonR.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1141', N'29', N'怒之领域', N'被动', N'雷克顿每次主动攻击都能获得怒气。这些怒气能强化他的技能。此外，雷克顿在低生命值时能获得额外怒气。', N'/image/HERO/28/28/Renekton_Passive.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1142', N'29', N'暴君狂击', N'Q', N'雷克顿挥动他的武器，对周围所有目标造成中等水平物理伤害，并根据造成的伤害来治疗自己。如果他有50点以上怒气，那么此技能的伤害和治疗效果会得到提升。', N'/image/HERO/28/28/RenektonCleave.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1143', N'29', N'冷酷捕猎', N'W', N'雷克顿两次挥击目标，对其造成中等水平物理伤害并晕眩其0.75秒。如果雷克顿有50点以上怒气，他会三次挥击目标，摧毁目标身上的伤害护盾，对其造成高额物理伤害，并晕眩其1.5秒。', N'/image/HERO/28/28/RenektonPreExecute.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1144', N'29', N'横冲直撞', N'E', N'雷克顿冲向前方，对沿途的敌人造成伤害。如果雷克顿有50点以上怒气，就会造成额外伤害，并减少沿途敌人的护甲值。', N'/image/HERO/28/28/RenektonSliceAndDice.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1145', N'29', N'终极统治', N'R', N'雷克顿转换为暴君形态，获得额外生命值，并对周围敌人造成伤害。此形态的雷克顿定时获得怒气。', N'/image/HERO/28/28/RenektonReignOfTheTyrant.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1146', N'30', N'弗雷尔卓德的召唤', N'被动', N'努努提升威朗普和一名附近友军的攻击速度和移动速度，并使威朗普的普攻可以伤害目标周围的敌人。', N'/image/HERO/29/29/NunuPassive.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1147', N'30', N'吞噬', N'Q', N'威朗普撕咬一个小兵、野怪或敌方英雄，造成巨大伤害并回复自己的生命值。', N'/image/HERO/29/29/NunuQ.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1148', N'30', N'史上最大雪球！', N'W', N'威朗普滚起一个雪球，它的尺寸和速度将随着滚动时间而增长。雪球会伤害并击飞敌人。', N'/image/HERO/29/29/NunuW.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1149', N'30', N'雪球飞射', N'E', N'努努掷出多个雪球以伤害敌人。当他完成后，威朗普就会禁锢被雪球命中过的任何英雄或大型野怪。', N'/image/HERO/29/29/NunuE.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1150', N'30', N'绝对零度', N'R', N'努努和威朗普在一个区域内创造一阵强大的暴风雪，来减速敌人并在结束时造成巨额伤害。', N'/image/HERO/29/29/NunuR.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1151', N'31', N'溺水之幸', N'被动', N'当派克消失在敌人视野外时，他可从所受的来自敌方英雄的伤害中回复显著的生命值。派克无法从任何来源（装备、符文等）中获得额外最大生命值加成，而是会获得攻击力作为替代。', N'/image/HERO/30/30/PykePassive.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1152', N'31', N'透骨尖钉', N'Q', N'派克要么戳刺他前方的一名敌人，要么将一名敌人拽向他。', N'/image/HERO/30/30/PykeQ.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1153', N'31', N'幽潭潜行', N'W', N'派克进入伪装状态并获得显著的移动速度加成，此移速加成会逐渐衰减。', N'/image/HERO/30/30/PykeW.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1154', N'31', N'魅影浪洄', N'E', N'派克突进并在身后留下一个幻影。幻影将会返回派克身边，并晕眩沿途的敌人。', N'/image/HERO/30/30/PykeE.png')
    GO

INSERT INTO [dbo].[Skill] ([skill_id], [hero_id], [name], [place], [description], [img_code])
VALUES (N'1155', N'31', N'涌泉之恨', N'R', N'派克进行闪烁以处决低血量的敌人，并且如果处决成功还能再次', N'/image/HERO/30/30/PykeR.png')
    GO

SET IDENTITY_INSERT[dbo].[Skill] OFF GO


-- ----------------------------
-- Table structure for sysdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type IN ('U'))
DROP TABLE [dbo].[sysdiagrams]
    GO

CREATE TABLE [dbo].[sysdiagrams]
(
    [
    name]
    sysname
    NOT
    NULL, [
    principal_id]
    int
    NOT
    NULL, [
    diagram_id]
    int
    IDENTITY
(
    1,
    1
) NOT NULL,
    [version] int NULL,
    [definition] varbinary
(
    max
) NULL
    )
    GO

ALTER TABLE [dbo].[sysdiagrams] SET (LOCK_ESCALATION = TABLE)
    GO


-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------
SET IDENTITY_INSERT[dbo].[sysdiagrams] ON
    GO

SET IDENTITY_INSERT[dbo].[sysdiagrams] OFF GO


-- ----------------------------
-- Table structure for Users
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Users]') AND type IN ('U'))
DROP TABLE [dbo].[Users]
    GO

CREATE TABLE [dbo].[Users]
(
    [
    num]
    int
    IDENTITY
(
    1,
    1
) NOT NULL,
    [name] varchar
(
    50
) COLLATE Chinese_PRC_CI_AS NOT NULL,
    [password] varchar
(
    50
) COLLATE Chinese_PRC_CI_AS NOT NULL
    )
    GO

ALTER TABLE [dbo].[Users] SET (LOCK_ESCALATION = TABLE)
    GO


-- ----------------------------
-- Records of Users
-- ----------------------------
SET IDENTITY_INSERT[dbo].[Users] ON
    GO

INSERT INTO [dbo].[Users] ([num], [name], [password])
VALUES (N'1', N'username', N'5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8')
    GO

INSERT INTO [dbo].[Users] ([num], [name], [password])
VALUES (N'33', N'zhaodongxu', N'5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8')
    GO

INSERT INTO [dbo].[Users] ([num], [name], [password])
VALUES (N'34', N'maxiaobao', N'5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8')
    GO

INSERT INTO [dbo].[Users] ([num], [name], [password])
VALUES (N'35', N'asd234234', N'5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8')
    GO

SET IDENTITY_INSERT[dbo].[Users] OFF GO


-- ----------------------------
-- Table structure for Usert
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Usert]') AND type IN ('U'))
DROP TABLE [dbo].[Usert]
    GO

CREATE TABLE [dbo].[Usert]
(
    [
    num]
    int
    NOT
    NULL, [
    people_name]
    varchar
(
    50
) COLLATE Chinese_PRC_CI_AS NULL,
    [sex] varchar
(
    50
) COLLATE Chinese_PRC_CI_AS NULL,
    [age] varchar
(
    50
) COLLATE Chinese_PRC_CI_AS NULL,
    [form] varchar
(
    50
) COLLATE Chinese_PRC_CI_AS NULL,
    [live] varchar
(
    50
) COLLATE Chinese_PRC_CI_AS NULL
    )
    GO

ALTER TABLE [dbo].[Usert] SET (LOCK_ESCALATION = TABLE)
    GO


-- ----------------------------
-- Records of Usert
-- ----------------------------
INSERT INTO [dbo].[Usert] ([num], [people_name], [sex], [age], [form], [live])
VALUES (N'1', N'darker', N'男', N'18', N'河南', N'看风景')
    GO

INSERT INTO [dbo].[Usert] ([num], [people_name], [sex], [age], [form], [live])
VALUES (N'33', N'b', NULL, NULL, NULL, NULL)
    GO

INSERT INTO [dbo].[Usert] ([num], [people_name], [sex], [age], [form], [live])
VALUES (N'34', N'a', NULL, NULL, NULL, NULL)
    GO


-- ----------------------------
-- procedure structure for sp_upgraddiagrams
-- ----------------------------
    IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
DROP PROCEDURE [dbo].[sp_upgraddiagrams]
    GO

CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
BEGIN IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;

CREATE TABLE dbo.sysdiagrams
(
    name sysname NOT NULL,
    principal_id int NOT NULL, -- we may change it to varbinary(85)
    diagram_id   int PRIMARY KEY IDENTITY,
    version      int,

    definition   varbinary(max
)
    CONSTRAINT UK_principal_name UNIQUE
    (
        principal_id,
        name
    )
);


/* Add this if we need to have some form of extended properties for diagrams */
/*
IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
BEGIN
    CREATE TABLE dbo.sysdiagram_properties
    (
        diagram_id int,
        name sysname,
        value varbinary(max) NOT NULL
    )
END
*/

IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
begin
insert into dbo.sysdiagrams
([name],
    [principal_id],
    [version],
[definition])
select convert(sysname, dgnm.[uvalue]),
       DATABASE_PRINCIPAL_ID(N'dbo'), -- will change to the sid of sa
       0,                             -- zero for old format, dgdef.[version],
       dgdef.[lvalue]
from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd
on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]
    inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]

where dgnm.[property] = 'DtgSchemaNAME'
  and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_'
    return 2;
end
		return 1;
END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type IN ('P', 'PC', 'RF', 'X'))
DROP PROCEDURE [dbo].[sp_helpdiagrams]
    GO

CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH
EXECUTE AS N'dbo'
	AS
BEGIN DECLARE @user sysname
		DECLARE @dboLogin bit
EXECUTE AS CALLER;
SET @user = USER_NAME();
SET @dboLogin = CONVERT(bit, IS_MEMBER('db_owner'));
REVERT;
SELECT
    [Database] = DB_NAME(), [Name] = name, [ID] = diagram_id, [Owner] = USER_NAME(principal_id), [OwnerID] = principal_id
FROM
    sysdiagrams
WHERE
    (@dboLogin = 1
   OR USER_NAME(principal_id) = @ user)
  AND
    (@diagramname IS NULL
   OR name = @diagramname)
  AND
    (@owner_id IS NULL
   OR principal_id = @owner_id)
ORDER BY
    4, 5, 1
    END
    GO


-- ----------------------------
-- procedure structure for sp_helpdiagramdefinition
-- ----------------------------
    IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type IN ('P', 'PC', 'RF', 'X'))
DROP PROCEDURE [dbo].[sp_helpdiagramdefinition]
    GO

CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH
EXECUTE AS N'dbo'
	AS
BEGIN
set nocount on declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
begin
    RAISERROR
    (N'E_INVALIDARG', 16, 1);
return -1
		end

execute as caller;
select @theId = DATABASE_PRINCIPAL_ID();
select @IsDbo = IS_MEMBER(N'db_owner');
if
    (@owner_id is null)
select @owner_id = @theId;
revert;

select @DiagId = diagram_id, @UIDFound = principal_id
from dbo.sysdiagrams
where principal_id = @owner_id
  and name = @diagramname;
if
    (@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
begin
    RAISERROR
    ('Diagram does not exist or you do not have permission.', 16, 1);
return -3
		end

select version, definition
FROM dbo.sysdiagrams
where diagram_id = @DiagId;
return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_creatediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
DROP PROCEDURE [dbo].[sp_creatediagram]
    GO

CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH
EXECUTE AS 'dbo'
	AS
BEGIN
set nocount on declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
begin
    RAISERROR
    (N'E_INVALIDARG', 16, 1);
return -1
		end

execute as caller;
select @theId = DATABASE_PRINCIPAL_ID();
select @IsDbo = IS_MEMBER(N'db_owner');
revert;

if @owner_id is null
begin
select @owner_id = @theId;
end
		else
begin if @theId <> @owner_id
begin if @IsDbo = 0
begin
    RAISERROR
    (N'E_INVALIDARG', 16, 1);
return -1
				end
select @theId = @owner_id
           end end
		-- next 2 line only for test, will be removed after define name unique if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
begin
    RAISERROR
    ('The name is already used.', 16, 1);
return -2
		end

insert into dbo.sysdiagrams(name, principal_id, version, definition)
VALUES (@diagramname, @theId, @version, @definition);

select @retval = @@IDENTITY return @retval
	END
GO


-- ----------------------------
-- procedure structure for sp_renamediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type IN ('P', 'PC', 'RF', 'X'))
DROP PROCEDURE [dbo].[sp_renamediagram]
    GO

CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH
EXECUTE AS 'dbo'
	AS
BEGIN
set nocount on declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
begin
    RAISERROR
    ('Invalid value', 16, 1);
return -1
		end

EXECUTE AS CALLER;
select @theId = DATABASE_PRINCIPAL_ID();
select @IsDbo = IS_MEMBER(N'db_owner');
if
    (@owner_id is null)
select @owner_id = @theId;
REVERT;

select @u_name = USER_NAME(@owner_id)

select @DiagId = diagram_id, @UIDFound = principal_id
from dbo.sysdiagrams
where principal_id = @owner_id
  and name = @diagramname
    if
    (@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
begin
    RAISERROR
    ('Diagram does not exist or you do not have permission.', 16, 1)
    return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
select @DiagIdTarg = diagram_id
from dbo.sysdiagrams
where principal_id = @theId
  and name = @new_diagramname
    else
select @DiagIdTarg = diagram_id
from dbo.sysdiagrams
where principal_id = @owner_id
  and name = @new_diagramname
    if
    ((@DiagIdTarg is not null) and @DiagId <> @DiagIdTarg)
begin
    RAISERROR
    ('The name is already used.', 16, 1);
return -2
		end		
	
		if(@u_name is null)
update dbo.sysdiagrams
set [name] = @new_diagramname, principal_id = @theId
where diagram_id = @DiagId
    else
update dbo.sysdiagrams
set [name] = @new_diagramname
where diagram_id = @DiagId
    return 0
    END
    GO


-- ----------------------------
-- procedure structure for sp_alterdiagram
-- ----------------------------
    IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]')
  AND type IN ('P'
    , 'PC'
    , 'RF'
    , 'X'))
DROP PROCEDURE [dbo].[sp_alterdiagram]
    GO

CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH
EXECUTE AS 'dbo'
	AS
BEGIN
set nocount on declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
begin
    RAISERROR
    ('Invalid ARG', 16, 1)
    return -1
		end

execute as caller;
select @theId = DATABASE_PRINCIPAL_ID();
select @IsDbo = IS_MEMBER(N'db_owner');
if
    (@owner_id is null)
select @owner_id = @theId;
revert;

select @ShouldChangeUID = 0
select @DiagId = diagram_id, @UIDFound = principal_id
from dbo.sysdiagrams
where principal_id = @owner_id
  and name = @diagramname
    if
    (@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
begin
    RAISERROR
    ('Diagram does not exist or you do not have permission.', 16, 1);
return -3
		end
	
		if(@IsDbo <> 0)
begin
    if
    (@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
begin
select @ShouldChangeUID = 1;
end
		end

		-- update dds data			
update dbo.sysdiagrams
set definition = @definition
where diagram_id = @DiagId;

-- change owner
if
    (@ShouldChangeUID = 1)
update dbo.sysdiagrams
set principal_id = @theId
where diagram_id = @DiagId;

-- update dds version
if
    (@version is not null)
update dbo.sysdiagrams
set version = @version
where diagram_id = @DiagId;

return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_dropdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type IN ('P', 'PC', 'RF', 'X'))
DROP PROCEDURE [dbo].[sp_dropdiagram]
    GO

CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH
EXECUTE AS 'dbo'
	AS
BEGIN
set nocount on declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
begin
    RAISERROR
    ('Invalid value', 16, 1);
return -1
		end

EXECUTE AS CALLER;
select @theId = DATABASE_PRINCIPAL_ID();
select @IsDbo = IS_MEMBER(N'db_owner');
if
    (@owner_id is null)
select @owner_id = @theId;
REVERT;

select @DiagId = diagram_id, @UIDFound = principal_id
from dbo.sysdiagrams
where principal_id = @owner_id
  and name = @diagramname
    if
    (@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
begin
    RAISERROR
    ('Diagram does not exist or you do not have permission.', 16, 1)
    return -3
		end

delete
from dbo.sysdiagrams
where diagram_id = @DiagId;

return 0;
END
GO


-- ----------------------------
-- function structure for fn_diagramobjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
DROP FUNCTION [dbo].[fn_diagramobjects]
    GO

CREATE FUNCTION [dbo].[fn_diagramobjects]()
    RETURNS int
    WITH
EXECUTE AS N'dbo'
	AS
BEGIN declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

select @InstalledObjects = 0

select @id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
       @id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
       @id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
       @id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
       @id_creatediagram = object_id(N'dbo.sp_creatediagram'),
       @id_renamediagram = object_id(N'dbo.sp_renamediagram'),
       @id_alterdiagram = object_id(N'dbo.sp_alterdiagram'),
       @id_dropdiagram = object_id(N'dbo.sp_dropdiagram') if @id_upgraddiagrams is not null
select @InstalledObjects = @InstalledObjects + 1 if @id_sysdiagrams is not null
select @InstalledObjects = @InstalledObjects + 2 if @id_helpdiagrams is not null
select @InstalledObjects = @InstalledObjects + 4 if @id_helpdiagramdefinition is not null
select @InstalledObjects = @InstalledObjects + 8 if @id_creatediagram is not null
select @InstalledObjects = @InstalledObjects + 16 if @id_renamediagram is not null
select @InstalledObjects = @InstalledObjects + 32 if @id_alterdiagram  is not null
select @InstalledObjects = @InstalledObjects + 64 if @id_dropdiagram is not null
select @InstalledObjects = @InstalledObjects + 128 return @InstalledObjects
	END
GO


-- ----------------------------
-- Auto increment value for Hero
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[Hero]', RESEED, 33)
GO


-- ----------------------------
-- Primary Key structure for table Hero
-- ----------------------------
ALTER TABLE [dbo].[Hero] ADD CONSTRAINT [PK_Hero] PRIMARY KEY CLUSTERED ([hero_id])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
    GO


    -- ----------------------------
-- Auto increment value for Skill
-- ----------------------------
    DBCC CHECKIDENT ('[dbo].[Skill]', RESEED, 1158)
    GO


-- ----------------------------
-- Primary Key structure for table Skill
-- ----------------------------
ALTER TABLE [dbo].[Skill] ADD CONSTRAINT [PK_skill] PRIMARY KEY CLUSTERED ([skill_id])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
    GO


    -- ----------------------------
-- Auto increment value for sysdiagrams
-- ----------------------------
    DBCC CHECKIDENT ('[dbo].[sysdiagrams]', RESEED, 1)
    GO


-- ----------------------------
-- Uniques structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED ([principal_id] ASC, [name] ASC)
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
    GO


-- ----------------------------
-- Primary Key structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [PK__sysdiagr__C2B05B619D8DB8DA] PRIMARY KEY CLUSTERED ([diagram_id])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
    GO


    -- ----------------------------
-- Auto increment value for Users
-- ----------------------------
    DBCC CHECKIDENT ('[dbo].[Users]', RESEED, 35)
    GO


-- ----------------------------
-- Primary Key structure for table Users
-- ----------------------------
ALTER TABLE [dbo].[Users] ADD CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([num])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
    GO


-- ----------------------------
-- Primary Key structure for table Usert
-- ----------------------------
ALTER TABLE [dbo].[Usert] ADD CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([num])
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
    ON [PRIMARY]
    GO


-- ----------------------------
-- Foreign Keys structure for table Skill
-- ----------------------------
ALTER TABLE [dbo].[Skill] ADD CONSTRAINT [hero_id] FOREIGN KEY ([hero_id]) REFERENCES [dbo].[Hero] ([hero_id]) ON DELETE NO ACTION ON UPDATE NO ACTION
    GO

