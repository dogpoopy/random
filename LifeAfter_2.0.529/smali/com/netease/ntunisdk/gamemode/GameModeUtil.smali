.class public Lcom/netease/ntunisdk/gamemode/GameModeUtil;
.super Ljava/lang/Object;
.source "GameModeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/gamemode/GameModeUtil$Unit;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGameMode(Landroid/content/Context;)Lcom/netease/ntunisdk/gamemode/GameModeUtil$Unit;
    .locals 2

    .line 20
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_3

    .line 21
    new-instance v0, Lcom/netease/ntunisdk/gamemode/GameModeUtil$Unit;

    invoke-direct {v0}, Lcom/netease/ntunisdk/gamemode/GameModeUtil$Unit;-><init>()V

    .line 22
    const-class v1, Landroid/app/GameManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/GameManager;

    invoke-virtual {p0}, Landroid/app/GameManager;->getGameMode()I

    move-result p0

    iput p0, v0, Lcom/netease/ntunisdk/gamemode/GameModeUtil$Unit;->mode:I

    .line 23
    iget p0, v0, Lcom/netease/ntunisdk/gamemode/GameModeUtil$Unit;->mode:I

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const-string p0, "UNSUPPORTED"

    .line 38
    iput-object p0, v0, Lcom/netease/ntunisdk/gamemode/GameModeUtil$Unit;->text:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "BATTERY"

    .line 25
    iput-object p0, v0, Lcom/netease/ntunisdk/gamemode/GameModeUtil$Unit;->text:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, "PERFORMANCE"

    .line 33
    iput-object p0, v0, Lcom/netease/ntunisdk/gamemode/GameModeUtil$Unit;->text:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p0, "STANDARD"

    .line 29
    iput-object p0, v0, Lcom/netease/ntunisdk/gamemode/GameModeUtil$Unit;->text:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
