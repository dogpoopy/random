.class public Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;
.super Landroid/content/res/Resources;
.source "TextResources.java"


# instance fields
.field private enableDynamicText:Z

.field private final originResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/content/res/Resources;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;->enableDynamicText:Z

    .line 23
    iput-object p4, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;->originResources:Landroid/content/res/Resources;

    .line 24
    iput-boolean p5, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;->enableDynamicText:Z

    return-void
.end method


# virtual methods
.method public getString(I)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 41
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;->enableDynamicText:Z

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getString key: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 47
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->getTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 59
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;->enableDynamicText:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getString key: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 65
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->getTextFromHtml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 70
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x18

    const/16 v1, 0x7e

    if-lt v0, v1, :cond_0

    .line 83
    iget-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;->enableDynamicText:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;->originResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ntunisdk/ngplugin/dynamic/TextCache;->textHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getText key: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 89
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->parseString(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 94
    :cond_0
    invoke-super {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public setEnableDynamicText(Z)V
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/dynamic/TextResources;->enableDynamicText:Z

    return-void
.end method
