.class public final enum Lcom/netease/mcount/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/mcount/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netease/mcount/b;

.field public static final enum DISABLED:Lcom/netease/mcount/b;

.field public static final enum ERROR:Lcom/netease/mcount/b;

.field public static final enum FATAL:Lcom/netease/mcount/b;

.field public static final enum INFO:Lcom/netease/mcount/b;

.field public static final enum WARNING:Lcom/netease/mcount/b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/netease/mcount/b;

    const/4 v1, 0x0

    const-string v2, "DISABLED"

    invoke-direct {v0, v2, v1}, Lcom/netease/mcount/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mcount/b;->DISABLED:Lcom/netease/mcount/b;

    new-instance v0, Lcom/netease/mcount/b;

    const/4 v2, 0x1

    const-string v3, "FATAL"

    invoke-direct {v0, v3, v2}, Lcom/netease/mcount/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mcount/b;->FATAL:Lcom/netease/mcount/b;

    new-instance v0, Lcom/netease/mcount/b;

    const/4 v3, 0x2

    const-string v4, "ERROR"

    invoke-direct {v0, v4, v3}, Lcom/netease/mcount/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mcount/b;->ERROR:Lcom/netease/mcount/b;

    new-instance v0, Lcom/netease/mcount/b;

    const/4 v4, 0x3

    const-string v5, "WARNING"

    invoke-direct {v0, v5, v4}, Lcom/netease/mcount/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mcount/b;->WARNING:Lcom/netease/mcount/b;

    new-instance v0, Lcom/netease/mcount/b;

    const/4 v5, 0x4

    const-string v6, "INFO"

    invoke-direct {v0, v6, v5}, Lcom/netease/mcount/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/mcount/b;->INFO:Lcom/netease/mcount/b;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netease/mcount/b;

    sget-object v6, Lcom/netease/mcount/b;->DISABLED:Lcom/netease/mcount/b;

    aput-object v6, v0, v1

    sget-object v1, Lcom/netease/mcount/b;->FATAL:Lcom/netease/mcount/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/mcount/b;->ERROR:Lcom/netease/mcount/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/mcount/b;->WARNING:Lcom/netease/mcount/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/mcount/b;->INFO:Lcom/netease/mcount/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netease/mcount/b;->$VALUES:[Lcom/netease/mcount/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/mcount/b;
    .locals 1

    const-class v0, Lcom/netease/mcount/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/mcount/b;

    return-object p0
.end method

.method public static values()[Lcom/netease/mcount/b;
    .locals 1

    sget-object v0, Lcom/netease/mcount/b;->$VALUES:[Lcom/netease/mcount/b;

    invoke-virtual {v0}, [Lcom/netease/mcount/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/mcount/b;

    return-object v0
.end method
