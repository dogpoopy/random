.class public final enum Lcom/netease/download/Const$Stage;
.super Ljava/lang/Enum;
.source "Const.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/download/Const;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/download/Const$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/download/Const$Stage;

.field public static final enum NORMAL:Lcom/netease/download/Const$Stage;

.field public static final enum OTHER_IP_USED:Lcom/netease/download/Const$Stage;

.field public static final enum OTHER_SEG_USED:Lcom/netease/download/Const$Stage;

.field public static final enum RE_DOWNLOAD:Lcom/netease/download/Const$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 215
    new-instance v0, Lcom/netease/download/Const$Stage;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/download/Const$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/download/Const$Stage;->NORMAL:Lcom/netease/download/Const$Stage;

    new-instance v1, Lcom/netease/download/Const$Stage;

    const-string v3, "OTHER_SEG_USED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/netease/download/Const$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/netease/download/Const$Stage;->OTHER_SEG_USED:Lcom/netease/download/Const$Stage;

    new-instance v3, Lcom/netease/download/Const$Stage;

    const-string v5, "OTHER_IP_USED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/netease/download/Const$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/netease/download/Const$Stage;->OTHER_IP_USED:Lcom/netease/download/Const$Stage;

    new-instance v5, Lcom/netease/download/Const$Stage;

    const-string v7, "RE_DOWNLOAD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/netease/download/Const$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/netease/download/Const$Stage;->RE_DOWNLOAD:Lcom/netease/download/Const$Stage;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/netease/download/Const$Stage;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 214
    sput-object v7, Lcom/netease/download/Const$Stage;->$VALUES:[Lcom/netease/download/Const$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/download/Const$Stage;
    .locals 1

    .line 214
    const-class v0, Lcom/netease/download/Const$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/download/Const$Stage;

    return-object p0
.end method

.method public static values()[Lcom/netease/download/Const$Stage;
    .locals 1

    .line 214
    sget-object v0, Lcom/netease/download/Const$Stage;->$VALUES:[Lcom/netease/download/Const$Stage;

    invoke-virtual {v0}, [Lcom/netease/download/Const$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/download/Const$Stage;

    return-object v0
.end method
