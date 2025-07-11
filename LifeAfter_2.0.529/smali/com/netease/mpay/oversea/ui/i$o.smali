.class public final enum Lcom/netease/mpay/oversea/ui/i$o;
.super Ljava/lang/Enum;
.source "FinishActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/mpay/oversea/ui/i$o;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/netease/mpay/oversea/ui/i$o;

.field private static final synthetic b:[Lcom/netease/mpay/oversea/ui/i$o;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/ui/i$o;

    const/4 v1, 0x0

    const-string v2, "RESULT"

    invoke-direct {v0, v2, v1}, Lcom/netease/mpay/oversea/ui/i$o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mpay/oversea/ui/i$o;->a:Lcom/netease/mpay/oversea/ui/i$o;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/netease/mpay/oversea/ui/i$o;

    aput-object v0, v2, v1

    sput-object v2, Lcom/netease/mpay/oversea/ui/i$o;->b:[Lcom/netease/mpay/oversea/ui/i$o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mpay/oversea/ui/i$o;
    .locals 1

    .line 1
    const-class v0, Lcom/netease/mpay/oversea/ui/i$o;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/mpay/oversea/ui/i$o;

    return-object p0
.end method

.method public static values()[Lcom/netease/mpay/oversea/ui/i$o;
    .locals 1

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/ui/i$o;->b:[Lcom/netease/mpay/oversea/ui/i$o;

    invoke-virtual {v0}, [Lcom/netease/mpay/oversea/ui/i$o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mpay/oversea/ui/i$o;

    return-object v0
.end method
