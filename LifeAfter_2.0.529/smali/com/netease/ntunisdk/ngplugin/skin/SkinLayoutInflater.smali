.class public Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;
.super Landroid/view/LayoutInflater;
.source "SkinLayoutInflater.java"


# instance fields
.field private final pluginKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 25
    iput-object p3, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;->pluginKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 2

    .line 30
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;

    iget-object v1, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;->pluginKey:Ljava/lang/String;

    invoke-direct {v0, p0, p1, v1}, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 3

    .line 61
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/skin/SkinContext;

    invoke-super {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;->pluginKey:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinContext;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSelf()Landroid/view/LayoutInflater;
    .locals 0

    return-object p0
.end method

.method public inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 0

    .line 35
    invoke-super {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;->pluginKey:Ljava/lang/String;

    invoke-static {p2}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getSkinManager()Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/skin/SkinManager;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->replaceFont(Landroid/view/View;Landroid/graphics/Typeface;)V

    .line 37
    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;->pluginKey:Ljava/lang/String;

    invoke-static {p2}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getInstance(Ljava/lang/String;)Lcom/netease/ntunisdk/ngplugin/PluginManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/PluginManager;->getApplySkin()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 38
    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/skin/SkinLayoutInflater;->pluginKey:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->replaceId(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public onCreateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/LayoutInflater;->onCreateView(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 50
    invoke-super {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 45
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
