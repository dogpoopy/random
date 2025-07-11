.class public Lcom/netease/ntunisdk/ngplugin/core/PluginFile;
.super Ljava/lang/Object;
.source "PluginFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;,
        Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;
    }
.end annotation


# instance fields
.field private isLoadPluginOK:Z

.field private mPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

.field private final packageName:Ljava/lang/String;

.field private final pluginKey:Ljava/lang/String;

.field private pluginName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->packageName:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->pluginName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->isLoadPluginOK:Z

    .line 22
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->pluginKey:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$002(Lcom/netease/ntunisdk/ngplugin/core/PluginFile;Z)Z
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->isLoadPluginOK:Z

    return p1
.end method

.method static synthetic access$102(Lcom/netease/ntunisdk/ngplugin/core/PluginFile;Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;)Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->mPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    return-object p1
.end method

.method static synthetic access$202(Lcom/netease/ntunisdk/ngplugin/core/PluginFile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->pluginName:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public checkForceShutdownSkin(Landroid/content/Context;)Z
    .locals 0

    .line 146
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/utils/SkinUtils;->getForceShutdownSkin(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public checkPluginFile(Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;)Z
    .locals 10

    const-string v0, ",minVersionCode: "

    const-string v1, ",SkinSupportVersion: "

    const-string v2, "skin isSupport: "

    const/4 v3, 0x1

    if-nez p2, :cond_0

    return v3

    :cond_0
    const/4 v4, 0x0

    if-eqz p1, :cond_a

    .line 102
    :try_start_0
    iget-object v5, p1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v5, :cond_1

    goto/16 :goto_6

    .line 106
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isStrictCheckMode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->isStrictCheckMode()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :try_start_1
    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->isStrictCheckMode()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 109
    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->getSkinSupportVersion()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->getSkinSupportVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_2
    iget-object v5, p1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v5, v5

    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->getMinVersion()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-ltz v9, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    .line 113
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->getMinVersion()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    move v0, v5

    goto :goto_4

    :catchall_0
    move-exception v5

    .line 116
    :try_start_2
    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->isStrictCheckMode()Z

    move-result v6

    if-nez v6, :cond_4

    .line 117
    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->getSkinSupportVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v6, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->getSkinSupportVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    goto :goto_3

    .line 120
    :cond_4
    iget-object v1, p1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v6, v1

    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->getMinVersion()J

    move-result-wide v8

    cmp-long v1, v6, v8

    if-ltz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 121
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->getMinVersion()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    move v0, v1

    .line 123
    :goto_3
    invoke-static {v5}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->logStackTrace(Ljava/lang/Throwable;)V

    :goto_4
    if-nez v0, :cond_6

    const-string p1, "skin noSupport "

    .line 126
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    return v4

    .line 129
    :cond_6
    iget-object p1, p1, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mSignatures:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    invoke-virtual {p2}, Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;->getSignatures()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v2, :cond_7

    aget-object v6, v1, v5

    .line 131
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "signature: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 132
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "whileList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v6, :cond_8

    return v3

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_9
    return v4

    :catch_0
    move-exception p1

    .line 140
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkPluginFile throw : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    :cond_a
    :goto_6
    return v4
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/core/PluginFileCallBack;)V
    .locals 10

    .line 67
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->mPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 68
    iput-boolean v1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->isLoadPluginOK:Z

    const-string v0, ""

    .line 69
    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->pluginName:Ljava/lang/String;

    const-string v0, "pluginInfo is null. need to be reloaded"

    .line 70
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->pluginName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 73
    iput-boolean v1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->isLoadPluginOK:Z

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->mPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    if-eqz p1, :cond_1

    .line 76
    new-instance v0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;

    const/4 v6, 0x0

    new-instance v9, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$2;

    invoke-direct {v9, p0, p5, p2}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$2;-><init>(Lcom/netease/ntunisdk/ngplugin/core/PluginFile;Lcom/netease/ntunisdk/ngplugin/core/PluginFileCallBack;Ljava/lang/String;)V

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;-><init>(Lcom/netease/ntunisdk/ngplugin/core/PluginFile;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;)V

    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/core/PluginTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-interface {p5, v1, v0}, Lcom/netease/ntunisdk/ngplugin/core/PluginFileCallBack;->onFinish(ZLcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V

    const-string p1, "init plugin file. input that context is null"

    .line 89
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "load skin pack resources in memory"

    .line 92
    invoke-static {p1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 93
    iget-boolean p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->isLoadPluginOK:Z

    iget-object p2, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->mPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    invoke-interface {p5, p1, p2}, Lcom/netease/ntunisdk/ngplugin/core/PluginFileCallBack;->onFinish(ZLcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V

    :goto_0
    return-void
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/core/PluginFileCallBack;)V
    .locals 10

    move-object v8, p0

    move-object/from16 v0, p6

    .line 36
    iget-object v1, v8, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->mPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 37
    iput-boolean v2, v8, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->isLoadPluginOK:Z

    const-string v1, ""

    .line 38
    iput-object v1, v8, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->pluginName:Ljava/lang/String;

    const-string v1, "pluginInfo is null. need to be reloaded"

    .line 39
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->d(Ljava/lang/String;)V

    .line 41
    :cond_0
    iget-object v1, v8, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->pluginName:Ljava/lang/String;

    move-object v3, p2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 42
    iput-boolean v2, v8, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->isLoadPluginOK:Z

    const/4 v1, 0x0

    .line 43
    iput-object v1, v8, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->mPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    if-eqz p1, :cond_1

    .line 45
    new-instance v9, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;

    new-instance v7, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$1;

    invoke-direct {v7, p0, v0}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$1;-><init>(Lcom/netease/ntunisdk/ngplugin/core/PluginFile;Lcom/netease/ntunisdk/ngplugin/core/PluginFileCallBack;)V

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/netease/ntunisdk/ngplugin/core/PluginFile$InitFileRunnable;-><init>(Lcom/netease/ntunisdk/ngplugin/core/PluginFile;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/netease/ntunisdk/ngplugin/core/PluginLanguage;Lcom/netease/ntunisdk/ngplugin/common/skin/SkinCheckInfo;Lcom/netease/ntunisdk/ngplugin/core/PluginFile$Callback;)V

    invoke-static {v9}, Lcom/netease/ntunisdk/ngplugin/core/PluginTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-interface {v0, v2, v1}, Lcom/netease/ntunisdk/ngplugin/core/PluginFileCallBack;->onFinish(ZLcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V

    const-string v0, "init plugin file. input that context is null"

    .line 56
    invoke-static {v0}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v1, "load skin pack resources in memory"

    .line 59
    invoke-static {v1}, Lcom/netease/ntunisdk/ngplugin/common/PluginLogger;->detail(Ljava/lang/String;)V

    .line 60
    iget-boolean v1, v8, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->isLoadPluginOK:Z

    iget-object v2, v8, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->mPluginInfo:Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;

    invoke-interface {v0, v1, v2}, Lcom/netease/ntunisdk/ngplugin/core/PluginFileCallBack;->onFinish(ZLcom/netease/ntunisdk/ngplugin/core/PluginInfo;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized setPluginFileName(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 150
    :try_start_0
    iput-object p1, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginFile;->pluginName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
