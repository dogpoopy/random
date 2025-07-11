.class public Lcom/netease/ntunisdk/base/view/a;
.super Ljava/lang/Object;
.source "ConfigUtils.java"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/view/Window;)V
    .locals 1

    .line 1024
    invoke-static {p0}, Lcom/netease/ntunisdk/base/view/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/netease/ntunisdk/base/view/a;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 17
    invoke-static {p1}, Lcom/netease/ntunisdk/base/view/ViewUtils;->hideNavigationBar(Landroid/view/Window;)V

    return-void

    .line 18
    :cond_1
    invoke-static {p0}, Lcom/netease/ntunisdk/base/view/a;->a(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 19
    invoke-static {p1}, Lcom/netease/ntunisdk/base/view/ViewUtils;->refreshWindowWithNavigationBar(Landroid/view/Window;)V

    :cond_2
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 3

    .line 29
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "unisdk__config_landscape"

    const-string v2, "bool"

    invoke-static {p0, v1, v2}, Lcom/netease/ntunisdk/base/utils/ResUtils;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x1

    return p0
.end method

.method public static updateNavigationBarState(Z)V
    .locals 0

    .line 12
    sput-boolean p0, Lcom/netease/ntunisdk/base/view/a;->a:Z

    return-void
.end method
