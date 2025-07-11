.class public final enum Lcom/netease/mpay/oversea/g6;
.super Ljava/lang/Enum;
.source "LoginType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/mpay/oversea/g6;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/netease/mpay/oversea/g6;

.field public static final enum B:Lcom/netease/mpay/oversea/g6;

.field public static final enum C:Lcom/netease/mpay/oversea/g6;

.field public static final enum D:Lcom/netease/mpay/oversea/g6;

.field public static final enum E:Lcom/netease/mpay/oversea/g6;

.field public static final enum F:Lcom/netease/mpay/oversea/g6;

.field public static final enum G:Lcom/netease/mpay/oversea/g6;

.field public static final enum H:Lcom/netease/mpay/oversea/g6;

.field public static final enum I:Lcom/netease/mpay/oversea/g6;

.field public static final enum J:Lcom/netease/mpay/oversea/g6;

.field public static final enum K:Lcom/netease/mpay/oversea/g6;

.field public static final enum L:Lcom/netease/mpay/oversea/g6;

.field public static final enum M:Lcom/netease/mpay/oversea/g6;

.field public static final enum N:Lcom/netease/mpay/oversea/g6;

.field public static final enum O:Lcom/netease/mpay/oversea/g6;

.field public static final enum P:Lcom/netease/mpay/oversea/g6;

.field private static final synthetic Q:[Lcom/netease/mpay/oversea/g6;

.field public static final enum i:Lcom/netease/mpay/oversea/g6;

.field public static final enum j:Lcom/netease/mpay/oversea/g6;

.field public static final enum k:Lcom/netease/mpay/oversea/g6;

.field public static final enum l:Lcom/netease/mpay/oversea/g6;

.field public static final enum m:Lcom/netease/mpay/oversea/g6;

.field public static final enum n:Lcom/netease/mpay/oversea/g6;

.field public static final enum o:Lcom/netease/mpay/oversea/g6;

.field public static final enum p:Lcom/netease/mpay/oversea/g6;

.field public static final enum q:Lcom/netease/mpay/oversea/g6;

.field public static final enum r:Lcom/netease/mpay/oversea/g6;

.field public static final enum s:Lcom/netease/mpay/oversea/g6;

.field public static final enum t:Lcom/netease/mpay/oversea/g6;

.field public static final enum u:Lcom/netease/mpay/oversea/g6;

.field public static final enum v:Lcom/netease/mpay/oversea/g6;

.field public static final enum w:Lcom/netease/mpay/oversea/g6;

.field public static final enum x:Lcom/netease/mpay/oversea/g6;

.field public static final enum y:Lcom/netease/mpay/oversea/g6;

.field public static final enum z:Lcom/netease/mpay/oversea/g6;


# instance fields
.field public final a:Ljava/lang/String;

.field b:I

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field d:I

.field e:I

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 52

    .line 1
    new-instance v8, Lcom/netease/mpay/oversea/g6;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, "unknown"

    const-string v7, ""

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    .line 2
    new-instance v0, Lcom/netease/mpay/oversea/g6;

    const-string v10, "INHERIT"

    const/4 v11, 0x1

    const/16 v12, 0x64

    const/4 v13, 0x0

    const-string v14, ""

    const-string v15, "inherit"

    const-string v16, "migrate_code"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/netease/mpay/oversea/g6;->j:Lcom/netease/mpay/oversea/g6;

    .line 4
    new-instance v1, Lcom/netease/mpay/oversea/g6;

    const-string v18, "GUEST"

    const/16 v19, 0x2

    const/16 v20, 0x1

    const/16 v21, 0x0

    const-string v22, "/api/users/login/guest"

    const-string v23, "guest"

    const-string v24, "guest"

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    .line 5
    new-instance v2, Lcom/netease/mpay/oversea/g6;

    const-string v10, "GAME_CENTER"

    const/4 v11, 0x3

    const/4 v12, 0x2

    const-string v14, ""

    const-string v15, "game_center"

    const-string v16, "gamecenter"

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/netease/mpay/oversea/g6;->l:Lcom/netease/mpay/oversea/g6;

    .line 6
    new-instance v3, Lcom/netease/mpay/oversea/g6;

    const-string v18, "WECHAT"

    const/16 v19, 0x4

    const/16 v20, 0xe

    const/16 v21, 0x400

    const-string v22, "/api/users/login/v2/wechat"

    const-string v23, "wechat"

    const-string v24, "wechat"

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/netease/mpay/oversea/g6;->m:Lcom/netease/mpay/oversea/g6;

    .line 7
    new-instance v4, Lcom/netease/mpay/oversea/g6;

    const-string v10, "HUAWEI"

    const/4 v11, 0x5

    const/16 v12, 0x12

    const/16 v13, 0x1000

    const-string v14, "/api/users/login/v2/huawei"

    const-string v15, "huawei"

    const-string v16, "huawei"

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/netease/mpay/oversea/g6;->n:Lcom/netease/mpay/oversea/g6;

    .line 8
    new-instance v5, Lcom/netease/mpay/oversea/g6;

    const-string v18, "NINTENDO"

    const/16 v19, 0x6

    const/16 v20, 0xd

    const/16 v21, 0x200

    const-string v22, "/api/users/login/v2/login_code/get_info"

    const-string v23, "nintendo"

    const-string v24, "nintendo"

    move-object/from16 v17, v5

    invoke-direct/range {v17 .. v24}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/netease/mpay/oversea/g6;->o:Lcom/netease/mpay/oversea/g6;

    .line 9
    new-instance v6, Lcom/netease/mpay/oversea/g6;

    const-string v10, "PSN"

    const/4 v11, 0x7

    const/16 v12, 0xb

    const/16 v13, 0x100

    const-string v14, ""

    const-string v15, "psn"

    const-string v16, "psn"

    move-object v9, v6

    invoke-direct/range {v9 .. v16}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/netease/mpay/oversea/g6;->p:Lcom/netease/mpay/oversea/g6;

    .line 10
    new-instance v7, Lcom/netease/mpay/oversea/g6;

    const-string v18, "DMM"

    const/16 v19, 0x8

    const/16 v20, 0x6

    const/16 v21, 0x8

    const-string v22, "/api/users/login/v2/dmm"

    const-string v23, "dmm"

    const-string v24, "dmm"

    move-object/from16 v17, v7

    invoke-direct/range {v17 .. v24}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/netease/mpay/oversea/g6;->q:Lcom/netease/mpay/oversea/g6;

    .line 11
    new-instance v17, Lcom/netease/mpay/oversea/g6;

    const-string v10, "AMAZON"

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/16 v13, 0x20

    const-string v14, "/api/users/login/v2/amazon"

    const-string v15, "amazon"

    const-string v16, "amazon"

    move-object/from16 v9, v17

    invoke-direct/range {v9 .. v16}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v17, Lcom/netease/mpay/oversea/g6;->r:Lcom/netease/mpay/oversea/g6;

    .line 12
    new-instance v9, Lcom/netease/mpay/oversea/g6;

    const-string v19, "STEAM"

    const/16 v20, 0xa

    const/16 v21, 0x7

    const/16 v22, 0x10

    const-string v23, ""

    const-string v24, "steam"

    const-string v25, "steam"

    move-object/from16 v18, v9

    invoke-direct/range {v18 .. v25}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/netease/mpay/oversea/g6;->s:Lcom/netease/mpay/oversea/g6;

    .line 13
    new-instance v10, Lcom/netease/mpay/oversea/g6;

    const-string v27, "LINE"

    const/16 v28, 0xb

    const/16 v29, 0x9

    const/16 v30, 0x40

    const-string v31, "/api/users/login/v2/line"

    const-string v32, "line"

    const-string v33, "line"

    move-object/from16 v26, v10

    invoke-direct/range {v26 .. v33}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/netease/mpay/oversea/g6;->t:Lcom/netease/mpay/oversea/g6;

    .line 14
    new-instance v11, Lcom/netease/mpay/oversea/g6;

    const-string v19, "LINE_GAME"

    const/16 v20, 0xc

    const/16 v21, 0xa

    const/16 v22, 0x80

    const-string v23, "/api/users/login/v2/line_v1"

    const-string v24, "linegame"

    const-string v25, "line_v1"

    move-object/from16 v18, v11

    invoke-direct/range {v18 .. v25}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/netease/mpay/oversea/g6;->u:Lcom/netease/mpay/oversea/g6;

    .line 15
    new-instance v12, Lcom/netease/mpay/oversea/g6;

    const-string v27, "TWITTER"

    const/16 v28, 0xd

    const/16 v29, 0x5

    const/16 v30, 0x4

    const-string v31, "/api/users/login/v2/twitter"

    const-string v32, "twitter"

    const-string v33, "twitter"

    move-object/from16 v26, v12

    invoke-direct/range {v26 .. v33}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v12, Lcom/netease/mpay/oversea/g6;->v:Lcom/netease/mpay/oversea/g6;

    .line 16
    new-instance v13, Lcom/netease/mpay/oversea/g6;

    const-string v19, "FACEBOOK"

    const/16 v20, 0xe

    const/16 v21, 0x4

    const/16 v22, 0x2

    const-string v23, "/api/users/login/v2/facebook"

    const-string v24, "facebook"

    const-string v25, "facebook"

    move-object/from16 v18, v13

    invoke-direct/range {v18 .. v25}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v13, Lcom/netease/mpay/oversea/g6;->w:Lcom/netease/mpay/oversea/g6;

    .line 17
    new-instance v14, Lcom/netease/mpay/oversea/g6;

    const-string v27, "VK"

    const/16 v28, 0xf

    const/16 v29, 0x11

    const/16 v30, 0x800

    const-string v31, "/api/users/login/v2/vk"

    const-string v32, "vk"

    const-string v33, "vk"

    move-object/from16 v26, v14

    invoke-direct/range {v26 .. v33}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v14, Lcom/netease/mpay/oversea/g6;->x:Lcom/netease/mpay/oversea/g6;

    .line 18
    new-instance v15, Lcom/netease/mpay/oversea/g6;

    const-string v19, "KAKAO"

    const/16 v20, 0x10

    const/16 v21, 0x13

    const/16 v22, 0x2000

    const-string v23, "/api/users/login/v2/kakao"

    const-string v24, "kakao"

    const-string v25, "kakao"

    move-object/from16 v18, v15

    invoke-direct/range {v18 .. v25}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v15, Lcom/netease/mpay/oversea/g6;->y:Lcom/netease/mpay/oversea/g6;

    .line 19
    new-instance v16, Lcom/netease/mpay/oversea/g6;

    const-string v27, "NAVER"

    const/16 v28, 0x11

    const/16 v29, 0x14

    const/16 v30, 0x4000

    const-string v31, "/api/users/login/v2/naver"

    const-string v32, "naver"

    const-string v33, "naver"

    move-object/from16 v26, v16

    invoke-direct/range {v26 .. v33}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v16, Lcom/netease/mpay/oversea/g6;->z:Lcom/netease/mpay/oversea/g6;

    .line 20
    new-instance v26, Lcom/netease/mpay/oversea/g6;

    const-string v19, "GOOGLE"

    const/16 v20, 0x12

    const/16 v21, 0x3

    const/16 v22, 0x1

    const-string v23, "/api/users/login/v2/google"

    const-string v24, "google"

    const-string v25, "google"

    move-object/from16 v18, v26

    invoke-direct/range {v18 .. v25}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v26, Lcom/netease/mpay/oversea/g6;->A:Lcom/netease/mpay/oversea/g6;

    .line 22
    new-instance v18, Lcom/netease/mpay/oversea/g6;

    const-string v28, "TIKTOK"

    const/16 v29, 0x13

    const/16 v30, 0x17

    const/high16 v31, 0x10000

    const-string v32, "/api/users/login/v2/tiktok"

    const-string v33, "tiktok"

    const-string v34, "tiktok"

    move-object/from16 v27, v18

    invoke-direct/range {v27 .. v34}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v18, Lcom/netease/mpay/oversea/g6;->B:Lcom/netease/mpay/oversea/g6;

    .line 23
    new-instance v19, Lcom/netease/mpay/oversea/g6;

    const-string v36, "NT_EMAIL"

    const/16 v37, 0x14

    const/16 v38, 0x16

    const/high16 v39, 0x20000

    const-string v40, "/api/users/login/v2/email/login"

    const-string v41, "email"

    const-string v42, "nt_email"

    move-object/from16 v35, v19

    invoke-direct/range {v35 .. v42}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v19, Lcom/netease/mpay/oversea/g6;->C:Lcom/netease/mpay/oversea/g6;

    .line 24
    new-instance v20, Lcom/netease/mpay/oversea/g6;

    const-string v28, "SIGN_IN_WITH_APPLE"

    const/16 v29, 0x15

    const/16 v30, 0x10

    const/high16 v31, 0x40000

    const-string v32, "/api/users/login/v2/login_code/get_info"

    const-string v33, "apple"

    const-string v34, "apple"

    move-object/from16 v27, v20

    invoke-direct/range {v27 .. v34}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v20, Lcom/netease/mpay/oversea/g6;->D:Lcom/netease/mpay/oversea/g6;

    .line 25
    new-instance v21, Lcom/netease/mpay/oversea/g6;

    const-string v36, "DISCORD"

    const/16 v37, 0x16

    const/16 v38, 0x18

    const/high16 v39, 0x80000

    const-string v40, "/api/users/login/v2/login_code/get_info"

    const-string v41, "discord"

    const-string v42, "discord"

    move-object/from16 v35, v21

    invoke-direct/range {v35 .. v42}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v21, Lcom/netease/mpay/oversea/g6;->E:Lcom/netease/mpay/oversea/g6;

    .line 27
    new-instance v22, Lcom/netease/mpay/oversea/g6;

    const-string v28, "EPIC"

    const/16 v29, 0x17

    const/16 v31, 0x0

    const-string v32, ""

    const-string v33, "epic"

    const-string v34, "epic"

    move-object/from16 v27, v22

    invoke-direct/range {v27 .. v34}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v22, Lcom/netease/mpay/oversea/g6;->F:Lcom/netease/mpay/oversea/g6;

    .line 29
    new-instance v23, Lcom/netease/mpay/oversea/g6;

    const-string v36, "PN"

    const/16 v37, 0x18

    const/16 v38, 0x1e

    const/16 v39, 0x0

    const-string v40, "/api/users/login/v2/pn/migrate_account"

    const-string v41, "pn"

    const-string v42, "pn"

    move-object/from16 v35, v23

    invoke-direct/range {v35 .. v42}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v23, Lcom/netease/mpay/oversea/g6;->G:Lcom/netease/mpay/oversea/g6;

    .line 31
    new-instance v24, Lcom/netease/mpay/oversea/g6;

    const-string v28, "NT_PASSPORT"

    const/16 v29, 0x19

    const/16 v30, 0x19

    const/high16 v31, 0x100000

    const-string v32, "/api/users/login/v2/nt_passport/auth"

    const-string v33, "passport"

    const-string v34, "nt_passport"

    move-object/from16 v27, v24

    invoke-direct/range {v27 .. v34}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v24, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    .line 32
    new-instance v25, Lcom/netease/mpay/oversea/g6;

    const-string v36, "LONGYI_PASSPORT"

    const/16 v37, 0x1a

    const/16 v38, 0x1d

    const/high16 v39, 0x100000

    const-string v40, "/api/users/login/v2/nt_passport/auth"

    const-string v41, "passport"

    const-string v42, "ly_passport"

    move-object/from16 v35, v25

    invoke-direct/range {v35 .. v42}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v25, Lcom/netease/mpay/oversea/g6;->I:Lcom/netease/mpay/oversea/g6;

    .line 33
    new-instance v35, Lcom/netease/mpay/oversea/g6;

    const-string v28, "ENYI_PASSPORT"

    const/16 v29, 0x1b

    const/16 v30, 0x1c

    const-string v32, "/api/users/login/v2/nt_passport/auth"

    const-string v33, "passport"

    const-string v34, "enyi_passport"

    move-object/from16 v27, v35

    invoke-direct/range {v27 .. v34}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v35, Lcom/netease/mpay/oversea/g6;->J:Lcom/netease/mpay/oversea/g6;

    .line 34
    new-instance v27, Lcom/netease/mpay/oversea/g6;

    const-string v37, "NT_PASSPORT_WEB"

    const/16 v38, 0x1c

    const/16 v39, 0x3e3

    const/16 v40, 0x0

    const-string v41, "/api/users/login/v2/nt_passport/page/redirect"

    const-string v42, "passport"

    const-string v43, ""

    move-object/from16 v36, v27

    invoke-direct/range {v36 .. v43}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v27, Lcom/netease/mpay/oversea/g6;->K:Lcom/netease/mpay/oversea/g6;

    .line 35
    new-instance v28, Lcom/netease/mpay/oversea/g6;

    const-string v45, "NT_PASSPORT_UPDATE"

    const/16 v46, 0x1d

    const/16 v47, 0x3e4

    const/16 v48, 0x0

    const-string v49, "/api/users/login/v2/nt_passport/bind_email/redirect"

    const-string v50, "passport"

    const-string v51, ""

    move-object/from16 v44, v28

    invoke-direct/range {v44 .. v51}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v28, Lcom/netease/mpay/oversea/g6;->L:Lcom/netease/mpay/oversea/g6;

    .line 38
    new-instance v29, Lcom/netease/mpay/oversea/g6;

    const-string v37, "MORE"

    const/16 v38, 0x1e

    const/16 v39, 0x3e7

    const-string v41, ""

    const-string v42, "more"

    const-string v43, ""

    move-object/from16 v36, v29

    invoke-direct/range {v36 .. v43}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v29, Lcom/netease/mpay/oversea/g6;->M:Lcom/netease/mpay/oversea/g6;

    .line 39
    new-instance v30, Lcom/netease/mpay/oversea/g6;

    const-string v45, "TOKEN"

    const/16 v46, 0x1f

    const/16 v47, 0x3e6

    const-string v49, "/api/users/login/v2/sdk_token"

    const-string v50, "token"

    const-string v51, ""

    move-object/from16 v44, v30

    invoke-direct/range {v44 .. v51}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v30, Lcom/netease/mpay/oversea/g6;->N:Lcom/netease/mpay/oversea/g6;

    .line 40
    new-instance v31, Lcom/netease/mpay/oversea/g6;

    const-string v37, "QUICK_LOGIN"

    const/16 v38, 0x20

    const/16 v39, 0x3e5

    const-string v41, ""

    const-string v42, ""

    const-string v43, ""

    move-object/from16 v36, v31

    invoke-direct/range {v36 .. v43}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v31, Lcom/netease/mpay/oversea/g6;->O:Lcom/netease/mpay/oversea/g6;

    .line 42
    new-instance v32, Lcom/netease/mpay/oversea/g6;

    const-string v45, "LINK_RESTORE_ACCOUNT_PGS"

    const/16 v46, 0x21

    const/16 v47, 0x3

    const-string v49, "/api/users/login/v2/user_link_account/restore"

    const-string v50, "google"

    const-string v51, ""

    move-object/from16 v44, v32

    invoke-direct/range {v44 .. v51}, Lcom/netease/mpay/oversea/g6;-><init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v32, Lcom/netease/mpay/oversea/g6;->P:Lcom/netease/mpay/oversea/g6;

    move-object/from16 v33, v15

    const/16 v15, 0x22

    new-array v15, v15, [Lcom/netease/mpay/oversea/g6;

    const/16 v34, 0x0

    aput-object v8, v15, v34

    const/4 v8, 0x1

    aput-object v0, v15, v8

    const/4 v0, 0x2

    aput-object v1, v15, v0

    const/4 v0, 0x3

    aput-object v2, v15, v0

    const/4 v0, 0x4

    aput-object v3, v15, v0

    const/4 v0, 0x5

    aput-object v4, v15, v0

    const/4 v0, 0x6

    aput-object v5, v15, v0

    const/4 v0, 0x7

    aput-object v6, v15, v0

    const/16 v0, 0x8

    aput-object v7, v15, v0

    const/16 v0, 0x9

    aput-object v17, v15, v0

    const/16 v0, 0xa

    aput-object v9, v15, v0

    const/16 v0, 0xb

    aput-object v10, v15, v0

    const/16 v0, 0xc

    aput-object v11, v15, v0

    const/16 v0, 0xd

    aput-object v12, v15, v0

    const/16 v0, 0xe

    aput-object v13, v15, v0

    const/16 v0, 0xf

    aput-object v14, v15, v0

    const/16 v0, 0x10

    aput-object v33, v15, v0

    const/16 v0, 0x11

    aput-object v16, v15, v0

    const/16 v0, 0x12

    aput-object v26, v15, v0

    const/16 v0, 0x13

    aput-object v18, v15, v0

    const/16 v0, 0x14

    aput-object v19, v15, v0

    const/16 v0, 0x15

    aput-object v20, v15, v0

    const/16 v0, 0x16

    aput-object v21, v15, v0

    const/16 v0, 0x17

    aput-object v22, v15, v0

    const/16 v0, 0x18

    aput-object v23, v15, v0

    const/16 v0, 0x19

    aput-object v24, v15, v0

    const/16 v0, 0x1a

    aput-object v25, v15, v0

    const/16 v0, 0x1b

    aput-object v35, v15, v0

    const/16 v0, 0x1c

    aput-object v27, v15, v0

    const/16 v0, 0x1d

    aput-object v28, v15, v0

    const/16 v0, 0x1e

    aput-object v29, v15, v0

    const/16 v0, 0x1f

    aput-object v30, v15, v0

    const/16 v0, 0x20

    aput-object v31, v15, v0

    const/16 v0, 0x21

    aput-object v32, v15, v0

    .line 43
    sput-object v15, Lcom/netease/mpay/oversea/g6;->Q:[Lcom/netease/mpay/oversea/g6;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 164
    iput p1, p0, Lcom/netease/mpay/oversea/g6;->h:I

    .line 165
    iput p3, p0, Lcom/netease/mpay/oversea/g6;->b:I

    .line 166
    iput p3, p0, Lcom/netease/mpay/oversea/g6;->d:I

    .line 167
    iput p4, p0, Lcom/netease/mpay/oversea/g6;->e:I

    .line 168
    iput-object p5, p0, Lcom/netease/mpay/oversea/g6;->a:Ljava/lang/String;

    .line 169
    iput-object p6, p0, Lcom/netease/mpay/oversea/g6;->f:Ljava/lang/String;

    .line 170
    iput-object p7, p0, Lcom/netease/mpay/oversea/g6;->g:Ljava/lang/String;

    .line 171
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/netease/mpay/oversea/g6;->c:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(I)Lcom/netease/mpay/oversea/g6;
    .locals 6

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    const/16 v1, 0x1d

    if-ne v1, p0, :cond_1

    .line 7
    sget-object v0, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    iget v1, v0, Lcom/netease/mpay/oversea/g6;->b:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/g6;->I:Lcom/netease/mpay/oversea/g6;

    :goto_0
    return-object v0

    :cond_1
    const/16 v1, 0x1c

    if-ne v1, p0, :cond_3

    .line 12
    sget-object v0, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    iget v1, v0, Lcom/netease/mpay/oversea/g6;->b:I

    if-ne p0, v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/netease/mpay/oversea/g6;->J:Lcom/netease/mpay/oversea/g6;

    :goto_1
    return-object v0

    .line 14
    :cond_3
    invoke-static {}, Lcom/netease/mpay/oversea/g6;->values()[Lcom/netease/mpay/oversea/g6;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    .line 15
    invoke-virtual {v4}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v5

    if-ne v5, p0, :cond_4

    move-object v0, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 20
    :cond_5
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convert:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/mpay/oversea/m5;->a(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p0}, Lcom/netease/mpay/oversea/g6;->d(I)V

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/netease/mpay/oversea/g6;
    .locals 6

    .line 22
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    .line 23
    invoke-static {}, Lcom/netease/mpay/oversea/g6;->values()[Lcom/netease/mpay/oversea/g6;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 24
    iget-object v5, v4, Lcom/netease/mpay/oversea/g6;->g:Ljava/lang/String;

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v0, v4

    goto :goto_1

    :cond_0
    const-string v4, "ly_passport"

    .line 27
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 28
    sget-object v0, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/g6;->d(I)V

    .line 29
    iput v1, v0, Lcom/netease/mpay/oversea/g6;->d:I

    .line 30
    iput-object p0, v0, Lcom/netease/mpay/oversea/g6;->g:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const-string v4, "enyi_passport"

    .line 33
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 34
    sget-object v0, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/netease/mpay/oversea/g6;->d(I)V

    .line 35
    iput v1, v0, Lcom/netease/mpay/oversea/g6;->d:I

    .line 36
    iput-object p0, v0, Lcom/netease/mpay/oversea/g6;->g:Ljava/lang/String;

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static a(Lcom/netease/mpay/oversea/g6;)Z
    .locals 1

    .line 52
    sget-object v0, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    if-eq v0, p0, :cond_1

    iget-object p0, p0, Lcom/netease/mpay/oversea/g6;->g:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/oversea/g6;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static a(Ljava/util/ArrayList;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/netease/mpay/oversea/g6;",
            ">;)[I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 37
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 38
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/mpay/oversea/g6;

    .line 41
    sget-object v3, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-ne v2, v3, :cond_1

    .line 42
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g6;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v2}, Lcom/netease/mpay/oversea/g6;->k()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 48
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 49
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object p0

    :cond_4
    :goto_2
    new-array p0, v0, [I

    return-object p0
.end method

.method public static b(Lcom/netease/mpay/oversea/g6;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 3
    sget-object v0, Lcom/netease/mpay/oversea/g6;->k:Lcom/netease/mpay/oversea/g6;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/g6;->O:Lcom/netease/mpay/oversea/g6;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/g6;->M:Lcom/netease/mpay/oversea/g6;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/g6;->j:Lcom/netease/mpay/oversea/g6;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/g6;->N:Lcom/netease/mpay/oversea/g6;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-eq p0, v0, :cond_0

    .line 5
    invoke-static {p0}, Lcom/netease/mpay/oversea/g6;->c(Lcom/netease/mpay/oversea/g6;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Lcom/netease/mpay/oversea/g6;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->s:Lcom/netease/mpay/oversea/g6;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/g6;->K:Lcom/netease/mpay/oversea/g6;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/netease/mpay/oversea/g6;->j:Lcom/netease/mpay/oversea/g6;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/g6;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/mpay/oversea/g6;

    return-object p0
.end method

.method public static values()[Lcom/netease/mpay/oversea/g6;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->Q:[Lcom/netease/mpay/oversea/g6;

    invoke-virtual {v0}, [Lcom/netease/mpay/oversea/g6;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/oversea/g6;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/netease/mpay/oversea/g6;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/g6;->d:I

    return v0
.end method

.method public b(I)Z
    .locals 1

    .line 2
    iget v0, p0, Lcom/netease/mpay/oversea/g6;->e:I

    if-eqz v0, :cond_0

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/netease/mpay/oversea/g6;->h:I

    return v0
.end method

.method public c(I)Lcom/netease/mpay/oversea/g6;
    .locals 0

    .line 3
    iput p1, p0, Lcom/netease/mpay/oversea/g6;->h:I

    return-object p0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/g6;->f:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 2

    .line 2
    iput p1, p0, Lcom/netease/mpay/oversea/g6;->b:I

    .line 3
    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-ne p0, v0, :cond_2

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/netease/mpay/oversea/g6;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/netease/mpay/oversea/g6;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/netease/mpay/oversea/g6;->c:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public e()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/mpay/oversea/g6;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public f()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->C:Lcom/netease/mpay/oversea/g6;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    iget-object v0, v0, Lcom/netease/mpay/oversea/g6;->g:Ljava/lang/String;

    const-string v1, "enyi_passport"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    iget-object v0, v0, Lcom/netease/mpay/oversea/g6;->g:Ljava/lang/String;

    const-string v1, "ly_passport"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->H:Lcom/netease/mpay/oversea/g6;

    if-eq p0, v0, :cond_1

    iget-object v1, p0, Lcom/netease/mpay/oversea/g6;->g:Ljava/lang/String;

    iget-object v0, v0, Lcom/netease/mpay/oversea/g6;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/g6;->O:Lcom/netease/mpay/oversea/g6;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/g6;->M:Lcom/netease/mpay/oversea/g6;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/g6;->j:Lcom/netease/mpay/oversea/g6;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/g6;->N:Lcom/netease/mpay/oversea/g6;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/netease/mpay/oversea/g6;->i:Lcom/netease/mpay/oversea/g6;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/mpay/oversea/g6;->b:I

    return v0
.end method
