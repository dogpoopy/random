.class public Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyLayoutInflater;
.super Landroid/view/LayoutInflater;
.source "AntiProxyLayoutInflater.java"


# static fields
.field private static final sClassPrefixList:[Ljava/lang/String;


# instance fields
.field private final base:Landroid/content/Context;

.field private final originTheme:Landroid/content/res/Resources$Theme;

.field private final original:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.widget."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.webkit."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.app."

    aput-object v2, v0, v1

    .line 15
    sput-object v0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 26
    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyLayoutInflater;->base:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyLayoutInflater;->original:Landroid/view/LayoutInflater;

    .line 28
    iput-object p3, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyLayoutInflater;->originTheme:Landroid/content/res/Resources$Theme;

    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 3

    const-string v0, "AntiProxyLayoutInflater cloneInContext(Context newContext)"

    .line 33
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyLayoutInflater;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyLayoutInflater;->original:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyLayoutInflater;->originTheme:Landroid/content/res/Resources$Theme;

    invoke-direct {v0, v1, p1, v2}, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 3

    const-string v0, "AntiProxyLayoutInflater getContext()"

    .line 40
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 41
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyContext;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyLayoutInflater;->base:Landroid/content/Context;

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyLayoutInflater;->originTheme:Landroid/content/res/Resources$Theme;

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyContext;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "AntiProxyLayoutInflater onCreateView"

    .line 52
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 55
    :try_start_0
    invoke-virtual {p0, p1, v3, p2}, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyLayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    return-object v3

    :catch_0
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
