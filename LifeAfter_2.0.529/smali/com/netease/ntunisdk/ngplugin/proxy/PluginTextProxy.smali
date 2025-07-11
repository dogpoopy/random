.class public Lcom/netease/ntunisdk/ngplugin/proxy/PluginTextProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginTextProxy;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "com.netease.ntunisdk.ngplugin.PluginManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/PluginText;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/PluginText;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netease/ntunisdk/ngplugin/dynamic/PluginText;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string v0, "getString ClassNotFoundException"

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginTextProxy;->a:Z

    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginTextProxy;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "com.netease.ntunisdk.ngplugin.PluginManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/PluginText;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/PluginText;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/dynamic/PluginText;->getString(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string v0, "getString ClassNotFoundException"

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginTextProxy;->a:Z

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringOnlyDynamic(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    sget-boolean v0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginTextProxy;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "com.netease.ntunisdk.ngplugin.PluginManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/PluginText;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/PluginText;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/netease/ntunisdk/ngplugin/dynamic/PluginText;->getStringOnlyDynamic(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "getString ClassNotFoundException"

    invoke-static {p0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginTextProxy;->a:Z

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs getStringOnlyDynamic(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginTextProxy;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "com.netease.ntunisdk.ngplugin.PluginManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {}, Lcom/netease/ntunisdk/ngplugin/dynamic/PluginText;->getInstance()Lcom/netease/ntunisdk/ngplugin/dynamic/PluginText;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/netease/ntunisdk/ngplugin/dynamic/PluginText;->getStringOnlyDynamic(Landroid/content/Context;I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "getString ClassNotFoundException"

    invoke-static {p0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/netease/ntunisdk/ngplugin/proxy/PluginTextProxy;->a:Z

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
