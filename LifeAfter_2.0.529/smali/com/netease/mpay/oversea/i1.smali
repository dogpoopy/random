.class public Lcom/netease/mpay/oversea/i1;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
.source "CustomTabPrefetchHelper.java"


# static fields
.field private static a:Landroidx/browser/customtabs/CustomTabsClient;

.field private static b:Landroidx/browser/customtabs/CustomTabsSession;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Landroidx/browser/customtabs/CustomTabsSession;
    .locals 2

    .line 6
    sget-object v0, Lcom/netease/mpay/oversea/i1;->b:Landroidx/browser/customtabs/CustomTabsSession;

    const/4 v1, 0x0

    .line 7
    sput-object v1, Lcom/netease/mpay/oversea/i1;->b:Landroidx/browser/customtabs/CustomTabsSession;

    return-object v0
.end method

.method public static a(Landroid/net/Uri;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/i1;->b:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/i1;->b()V

    .line 4
    :cond_0
    sget-object v0, Lcom/netease/mpay/oversea/i1;->b:Landroidx/browser/customtabs/CustomTabsSession;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p0, v1, v1}, Landroidx/browser/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    :cond_1
    return-void
.end method

.method private static b()V
    .locals 2

    .line 1
    sget-object v0, Lcom/netease/mpay/oversea/i1;->b:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/netease/mpay/oversea/i1;->a:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/netease/mpay/oversea/i1$a;

    invoke-direct {v1}, Lcom/netease/mpay/oversea/i1$a;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    sput-object v0, Lcom/netease/mpay/oversea/i1;->b:Landroidx/browser/customtabs/CustomTabsSession;

    :cond_0
    return-void
.end method
