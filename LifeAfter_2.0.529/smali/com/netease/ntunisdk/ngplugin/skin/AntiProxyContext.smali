.class public Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyContext;
.super Landroid/content/ContextWrapper;
.source "AntiProxyContext.java"


# instance fields
.field private final base:Landroid/content/Context;

.field private final originTheme:Landroid/content/res/Resources$Theme;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 19
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyContext;->base:Landroid/content/Context;

    .line 20
    iput-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyContext;->originTheme:Landroid/content/res/Resources$Theme;

    return-void
.end method


# virtual methods
.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 1

    const-string v0, "AntiProxyContext: getTheme"

    .line 30
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/skin/AntiProxyContext;->base:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    return-object v0
.end method
