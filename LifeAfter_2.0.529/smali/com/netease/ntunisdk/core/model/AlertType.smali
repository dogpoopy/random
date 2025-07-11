.class public final enum Lcom/netease/ntunisdk/core/model/AlertType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/ntunisdk/core/model/AlertType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DIALOG:Lcom/netease/ntunisdk/core/model/AlertType;

.field public static final enum NO_ALERTER:Lcom/netease/ntunisdk/core/model/AlertType;

.field public static final enum SCROLL_DIALOG:Lcom/netease/ntunisdk/core/model/AlertType;

.field public static final enum SPANNABLE_DIALOG:Lcom/netease/ntunisdk/core/model/AlertType;

.field public static final enum TOAST:Lcom/netease/ntunisdk/core/model/AlertType;

.field private static final synthetic a:[Lcom/netease/ntunisdk/core/model/AlertType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/netease/ntunisdk/core/model/AlertType;

    const/4 v1, 0x0

    const-string v2, "NO_ALERTER"

    invoke-direct {v0, v2, v1}, Lcom/netease/ntunisdk/core/model/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/core/model/AlertType;->NO_ALERTER:Lcom/netease/ntunisdk/core/model/AlertType;

    new-instance v0, Lcom/netease/ntunisdk/core/model/AlertType;

    const/4 v2, 0x1

    const-string v3, "TOAST"

    invoke-direct {v0, v3, v2}, Lcom/netease/ntunisdk/core/model/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/core/model/AlertType;->TOAST:Lcom/netease/ntunisdk/core/model/AlertType;

    new-instance v0, Lcom/netease/ntunisdk/core/model/AlertType;

    const/4 v3, 0x2

    const-string v4, "DIALOG"

    invoke-direct {v0, v4, v3}, Lcom/netease/ntunisdk/core/model/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/core/model/AlertType;->DIALOG:Lcom/netease/ntunisdk/core/model/AlertType;

    new-instance v0, Lcom/netease/ntunisdk/core/model/AlertType;

    const/4 v4, 0x3

    const-string v5, "SCROLL_DIALOG"

    invoke-direct {v0, v5, v4}, Lcom/netease/ntunisdk/core/model/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/core/model/AlertType;->SCROLL_DIALOG:Lcom/netease/ntunisdk/core/model/AlertType;

    new-instance v0, Lcom/netease/ntunisdk/core/model/AlertType;

    const/4 v5, 0x4

    const-string v6, "SPANNABLE_DIALOG"

    invoke-direct {v0, v6, v5}, Lcom/netease/ntunisdk/core/model/AlertType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netease/ntunisdk/core/model/AlertType;->SPANNABLE_DIALOG:Lcom/netease/ntunisdk/core/model/AlertType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netease/ntunisdk/core/model/AlertType;

    sget-object v6, Lcom/netease/ntunisdk/core/model/AlertType;->NO_ALERTER:Lcom/netease/ntunisdk/core/model/AlertType;

    aput-object v6, v0, v1

    sget-object v1, Lcom/netease/ntunisdk/core/model/AlertType;->TOAST:Lcom/netease/ntunisdk/core/model/AlertType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netease/ntunisdk/core/model/AlertType;->DIALOG:Lcom/netease/ntunisdk/core/model/AlertType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netease/ntunisdk/core/model/AlertType;->SCROLL_DIALOG:Lcom/netease/ntunisdk/core/model/AlertType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netease/ntunisdk/core/model/AlertType;->SPANNABLE_DIALOG:Lcom/netease/ntunisdk/core/model/AlertType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netease/ntunisdk/core/model/AlertType;->a:[Lcom/netease/ntunisdk/core/model/AlertType;

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

.method public static convert(I)Lcom/netease/ntunisdk/core/model/AlertType;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/netease/ntunisdk/core/model/AlertType;->values()[Lcom/netease/ntunisdk/core/model/AlertType;

    move-result-object v0

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    sget-object p0, Lcom/netease/ntunisdk/core/model/AlertType;->DIALOG:Lcom/netease/ntunisdk/core/model/AlertType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/ntunisdk/core/model/AlertType;
    .locals 1

    const-class v0, Lcom/netease/ntunisdk/core/model/AlertType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/ntunisdk/core/model/AlertType;

    return-object p0
.end method

.method public static values()[Lcom/netease/ntunisdk/core/model/AlertType;
    .locals 1

    sget-object v0, Lcom/netease/ntunisdk/core/model/AlertType;->a:[Lcom/netease/ntunisdk/core/model/AlertType;

    invoke-virtual {v0}, [Lcom/netease/ntunisdk/core/model/AlertType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/ntunisdk/core/model/AlertType;

    return-object v0
.end method
